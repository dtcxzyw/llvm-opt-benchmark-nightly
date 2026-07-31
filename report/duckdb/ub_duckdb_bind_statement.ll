inline.NumInlined: 16320
inline.NumDeleted: 7419
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb14BoundStatementD2Ev:bb.a
  %i.bc = load ptr, ptr %0, align 8, !tbaa !139   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !119
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bc) #25, !inline_history !181
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder4BindERNS_13CallStatementE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::SelectStatement", align 8 ; 19 uses
  %5 = alloca %"class.duckdb::unique_ptr.334", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::unique_ptr.343", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !182
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !187
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 1, ptr %i.e, align 8, !tbaa !188
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 0, ptr %i.k, align 8, !tbaa !16
  store i8 0, ptr %i.j, align 8, !tbaa !19
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %4, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 5 uses
  store ptr null, ptr %i.l, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.m = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #26
          to label %.noexc unwind label %bb.q     ; 4 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.m)
          to label %bb.c unwind label %bb.b, !noalias !192

bb.b:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.m) #29, !noalias !192
  br label %.body

bb.c:                                             ; preds = %.noexc
  store ptr %i.m, ptr %5, align 8, !tbaa !195, !alias.scope !192
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.o = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26
          to label %.noexc14 unwind label %.body15.thread ; 3 uses

.noexc14:                                         ; preds = %bb.c
  invoke void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121) %i.o)
          to label %bb.e unwind label %bb.d, !noalias !197

bb.d:                                             ; preds = %.noexc14
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.o) #29, !noalias !197
  br label %.body15

bb.e:                                             ; preds = %.noexc14
  store ptr %i.o, ptr %6, align 8, !tbaa !200, !alias.scope !197
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !124
  store ptr null, ptr %i.r, align 8, !tbaa !124
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !124  ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !124
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !119
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #25, !inline_history !202
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.r       ; 3 uses

bb.g:                                             ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26
          to label %.noexc17 unwind label %bb.s   ; 6 uses

.noexc17:                                         ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.aa, ptr %3, align 8, !tbaa !13, !noalias !203
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !16, !noalias !203
  store i8 0, ptr %i.aa, align 8, !tbaa !19, !noalias !203
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.z, ptr noundef nonnull %3)
          to label %bb.h unwind label %bb.i, !noalias !203

bb.h:                                             ; preds = %.noexc17
  %i.ac = load ptr, ptr %3, align 8, !tbaa !25, !noalias !203 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ac) #29, !noalias !203
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.i:                                             ; preds = %.noexc17
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8, !tbaa !25, !noalias !203 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.af) #29, !noalias !203
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #29, !noalias !203
  br label %.body18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 128 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !161 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 136 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.am = ptrtoint ptr %i.z to i64
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !124
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !158 ; 10 uses
  %i.ap = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc20 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit38

.noexc20:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ax, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #26
          to label %.noexc21 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit38 ; 10 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  %i.bb = ptrtoint ptr %i.z to i64
  store i64 %i.bb, ptr %i.ba, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc21
  %i.bc = sub i64 %i.ap, %i.aq
  %i.bd = add i64 %i.bc, -8                       ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader83, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bg = add i64 %i.ap, -8
  %i.bh = sub i64 %i.bg, %i.aq
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bj
  %scevgep79 = getelementptr i8, ptr %i.ao, i64 %i.bj
  %bound0 = icmp ult ptr %i.az, %scevgep79
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bk = shl i64 %n.vec, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.az, i64 %i.bk  ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ao, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.az, i64 %i.bn ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.ao, i64 %i.bn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.bo = getelementptr i8, ptr %next.gep80, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep80, align 8, !tbaa !124, !alias.scope !212, !noalias !207
  %wide.load81 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !124, !alias.scope !212, !noalias !207
  %i.bp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !124, !alias.scope !215, !noalias !212
  store <2 x i64> %wide.load81, ptr %i.bp, align 8, !tbaa !124, !alias.scope !215, !noalias !212
  %i.bq = getelementptr i8, ptr %next.gep80, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep80, align 8, !tbaa !124, !alias.scope !212, !noalias !207
  store <2 x ptr> splat (ptr null), ptr %i.bq, align 8, !tbaa !124, !alias.scope !212, !noalias !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader83

.lr.ph.i.i.i.i.i.i.i.preheader83:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader83, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader83 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader83 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.bs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !210, !noalias !207
  store i64 %i.bs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !207, !noalias !210
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !210, !noalias !207
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !220

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc21
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.az, %.noexc21 ], [ %i.bl, %middle.block ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !158
  store ptr %i.bv, ptr %i.ai, align 8, !tbaa !161
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bw, ptr %i.ak, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.j
  %i.bx = load ptr, ptr %6, align 8, !tbaa !200   ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !200
  %i.by = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !221 ; 3 uses
  store ptr %i.bx, ptr %i.bz, align 8, !tbaa !221
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i23, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.n
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !119
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ca) #25, !inline_history !223
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.n
  %i.ce = load ptr, ptr %5, align 8, !tbaa !195
  store ptr null, ptr %5, align 8, !tbaa !195
  %i.cf = load ptr, ptr %i.l, align 8, !tbaa !224 ; 3 uses
  store ptr %i.ce, ptr %i.l, align 8, !tbaa !224
  %.not.i.i.i.i.i25 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i25, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !119
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cf) #25, !inline_history !225
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.cj = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %.noexc27 unwind label %bb.r   ; 2 uses

.noexc27:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 113
  store i8 1, ptr %i.ck, align 1, !tbaa !141, !noalias !226
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 115
  store i8 0, ptr %i.cl, align 1, !tbaa !149, !noalias !226
  %i.cm = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc28 unwind label %bb.r

.noexc28:                                         ; preds = %.noexc27
  invoke void @_ZN6duckdb6Binder4BindERNS_9QueryNodeE(ptr dead_on_unwind writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.cm)
          to label %_ZN6duckdb6Binder4BindERNS_15SelectStatementE.exit unwind label %bb.r

_ZN6duckdb6Binder4BindERNS_15SelectStatementE.exit: ; preds = %.noexc28
  %i.cn = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %_ZN6duckdb6Binder4BindERNS_15SelectStatementE.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 113
  store i8 0, ptr %i.co, align 1, !tbaa !141
  %i.cp = load ptr, ptr %6, align 8, !tbaa !200   ; 3 uses
  %.not.i30 = icmp eq ptr %i.cp, null
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16TableFunctionRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16TableFunctionRefEEclEPS1_.exit.i: ; preds = %bb.o
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !119
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(121) %i.cp) #25, !inline_history !229
  br label %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb16TableFunctionRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ct = load ptr, ptr %5, align 8, !tbaa !195   ; 3 uses
  %.not.i31 = icmp eq ptr %i.ct, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !119
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(240) %i.ct) #25, !inline_history !230
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %4, align 8, !tbaa !119
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !224 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i32, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !119
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cx) #25, !inline_history !231
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb12SQLStatementE, i64 16), ptr %4, align 8, !tbaa !119
  %i.db = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.j
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.db) #29, !inline_history !232
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !233 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.de, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ] ; 4 uses
  %i.de = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 24
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb6Binder10BindCopyToERNS_13CopyStatementERKNS_12CopyFunctionENS_10CopyToTypeE:bb.a
  %i.se = icmp ult i64 %i.rx, %i.sd
  br i1 %i.se, label %bb.gy, label %._crit_edge1095, !llvm.loop !351

bb.hf:                                            ; preds = %bb.gy
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.hg:                                            ; preds = %bb.gz
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.hh:                                            ; preds = %bb.ha
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.hi:                                            ; preds = %bb.hb
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit476

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

.loopexit.split-lp:                               ; preds = %bb.he
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.hj

bb.hj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i471 = icmp eq ptr %i.qg, null
  br i1 %.not.i471, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit473, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i472

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i472: ; preds = %bb.hj
  %i.sj = load ptr, ptr %i.qg, align 8, !tbaa !119
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(88) %i.qg) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit473

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit473: ; preds = %bb.hj, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i472
  %i.sm = load ptr, ptr %56, align 8, !tbaa !336  ; 3 uses
  %.not.i474 = icmp eq ptr %i.sm, null
  br i1 %.not.i474, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit476, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i475

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i475: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit473
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !119
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load ptr, ptr %i.so, align 8
  call void %i.sp(ptr noundef nonnull align 8 dereferenceable(112) %i.sm) #25, !inline_history !350
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit476

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit476: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i475, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit473, %bb.hi
  %.pn316 = phi { ptr, i32 } [ %i.si, %bb.hi ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit473 ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i475 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %bb.iv

bb.hk:                                            ; preds = %._crit_edge1095
  %i.sq = load ptr, ptr %57, align 16, !tbaa !352 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !352
  %i.st = icmp eq ptr %i.sq, %i.ss
  br i1 %i.st, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  %i.su = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.hm unwind label %bb.ia

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.sv = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc479 unwind label %bb.ia ; 3 uses

.noexc479:                                        ; preds = %bb.hm
  %i.sw = load <2 x ptr>, ptr %57, align 16, !tbaa !352, !noalias !353
  store <2 x ptr> %i.sw, ptr %5, align 16, !tbaa !352, !noalias !353
  %i.sx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.sz = load ptr, ptr %i.sy, align 16, !tbaa !335, !noalias !353
  store ptr %i.sz, ptr %i.sx, align 16, !tbaa !335, !noalias !353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %57, i8 0, i64 24, i1 false), !noalias !353
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.sv, i64 noundef %i.su, ptr noundef nonnull %5)
          to label %bb.hn unwind label %bb.hp, !noalias !353

bb.hn:                                            ; preds = %.noexc479
  %i.ta = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.sv, ptr %58, align 8, !tbaa !356, !alias.scope !353
  %i.tb = load ptr, ptr %5, align 16, !tbaa !333, !noalias !353 ; 3 uses
  %i.tc = load ptr, ptr %i.ta, align 8, !tbaa !334, !noalias !353 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.tb, %i.tc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.hn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.th, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.tb, %bb.hn ] ; 2 uses
  %i.td = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !117, !noalias !353 ; 3 uses
  %.not.i.i.i.i.i.i477 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i.i477, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !119, !noalias !353
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !noalias !353
  call void %i.tg(ptr noundef nonnull align 8 dereferenceable(88) %i.td) #25, !noalias !353, !inline_history !358
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.th = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i478 = icmp eq ptr %i.th, %i.tc
  br i1 %.not.i.i.i.i478, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 16, !tbaa !333, !noalias !353
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.hn
  %i.ti = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.tb, %bb.hn ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i.i1.i.i, label %bb.hq, label %bb.ho

bb.ho:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ti) #29, !noalias !353
  br label %bb.hq

bb.hp:                                            ; preds = %.noexc479
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25, !noalias !353
  call void @_ZdlPv(ptr noundef nonnull %i.sv) #29, !noalias !353
  br label %.body

bb.hq:                                            ; preds = %bb.ho, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.tk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.hr unwind label %bb.ib     ; 3 uses

bb.hr:                                            ; preds = %bb.hq
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 24 ; 3 uses
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !360 ; 6 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 32 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !363
  %.not.i.i480 = icmp eq ptr %i.tn, %i.tp
  br i1 %.not.i.i480, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.tq = load i64, ptr %8, align 8, !tbaa !139
  store i64 %i.tq, ptr %i.tn, align 8, !tbaa !139
  store ptr null, ptr %8, align 8, !tbaa !139
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store ptr %i.tr, ptr %i.tm, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ht:                                            ; preds = %bb.hr
  %i.ts = load ptr, ptr %i.tl, align 8, !tbaa !364 ; 10 uses
  %i.tt = ptrtoint ptr %i.tn to i64               ; 3 uses
  %i.tu = ptrtoint ptr %i.ts to i64               ; 3 uses
  %i.tv = sub i64 %i.tt, %i.tu                    ; 3 uses
  %i.tw = icmp eq i64 %i.tv, 9223372036854775800
  br i1 %i.tw, label %bb.hu, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc490 unwind label %bb.ib

.noexc490:                                        ; preds = %bb.hu
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ht
  %i.tx = ashr exact i64 %i.tv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.tx, i64 1)
  %i.ty = add nsw i64 %.sroa.speculated.i.i.i.i481, %i.tx ; 2 uses
  %i.tz = icmp ult i64 %i.ty, %i.tx
  %i.ua = call i64 @llvm.umin.i64(i64 %i.ty, i64 1152921504606846975)
  %i.ub = select i1 %i.tz, i64 1152921504606846975, i64 %i.ua ; 3 uses
  %.not.i.i.i.i482 = icmp ne i64 %i.ub, 0
  call void @llvm.assume(i1 %.not.i.i.i.i482)
  %i.uc = shl nuw nsw i64 %i.ub, 3
  %i.ud = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uc) #26
          to label %.noexc491 unwind label %bb.ib ; 10 uses

.noexc491:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.tv
  %i.uf = load i64, ptr %8, align 8, !tbaa !139
  store i64 %i.uf, ptr %i.ue, align 8, !tbaa !139
  store ptr null, ptr %8, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i483 = icmp eq ptr %i.ts, %i.tn
  br i1 %.not10.i.i.i.i.i.i.i483, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i484.preheader

.lr.ph.i.i.i.i.i.i.i484.preheader:                ; preds = %.noexc491
  %i.ug = sub i64 %i.tt, %i.tu
  %i.uh = add i64 %i.ug, -8                       ; 2 uses
  %i.ui = lshr i64 %i.uh, 3
  %i.uj = add nuw nsw i64 %i.ui, 1                ; 2 uses
  %min.iters.check1395 = icmp ult i64 %i.uh, 152
  br i1 %min.iters.check1395, label %.lr.ph.i.i.i.i.i.i.i484.preheader1410, label %vector.memcheck1388

vector.memcheck1388:                              ; preds = %.lr.ph.i.i.i.i.i.i.i484.preheader
  %i.uk = add i64 %i.tt, -8
  %i.ul = sub i64 %i.uk, %i.tu
  %i.um = and i64 %i.ul, -8
  %i.un = add i64 %i.um, 8                        ; 2 uses
  %scevgep1389 = getelementptr i8, ptr %i.ud, i64 %i.un
  %scevgep1390 = getelementptr i8, ptr %i.ts, i64 %i.un
  %bound01391 = icmp ult ptr %i.ud, %scevgep1390
  %bound11392 = icmp ult ptr %i.ts, %scevgep1389
  %found.conflict1393 = and i1 %bound01391, %bound11392
  br i1 %found.conflict1393, label %.lr.ph.i.i.i.i.i.i.i484.preheader1410, label %vector.ph1396

vector.ph1396:                                    ; preds = %vector.memcheck1388
  %n.vec1398 = and i64 %i.uj, 4611686018427387900 ; 3 uses
  %i.uo = shl i64 %n.vec1398, 3                   ; 2 uses
  %i.up = getelementptr i8, ptr %i.ud, i64 %i.uo  ; 2 uses
  %i.uq = getelementptr i8, ptr %i.ts, i64 %i.uo
  br label %vector.body1399

vector.body1399:                                  ; preds = %vector.body1399, %vector.ph1396
  %index1400 = phi i64 [ 0, %vector.ph1396 ], [ %index.next1405, %vector.body1399 ] ; 2 uses
  %i.ur = shl i64 %index1400, 3                   ; 2 uses
  %next.gep1401 = getelementptr i8, ptr %i.ud, i64 %i.ur ; 2 uses
  %next.gep1402 = getelementptr i8, ptr %i.ts, i64 %i.ur ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.us = getelementptr i8, ptr %next.gep1402, i64 16
  %wide.load1403 = load <2 x i64>, ptr %next.gep1402, align 8, !tbaa !139, !alias.scope !370, !noalias !365
  %wide.load1404 = load <2 x i64>, ptr %i.us, align 8, !tbaa !139, !alias.scope !370, !noalias !365
  %i.ut = getelementptr i8, ptr %next.gep1401, i64 16
  store <2 x i64> %wide.load1403, ptr %next.gep1401, align 8, !tbaa !139, !alias.scope !373, !noalias !370
  store <2 x i64> %wide.load1404, ptr %i.ut, align 8, !tbaa !139, !alias.scope !373, !noalias !370
  %i.uu = getelementptr i8, ptr %next.gep1402, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1402, align 8, !tbaa !139, !alias.scope !370, !noalias !365
  store <2 x ptr> splat (ptr null), ptr %i.uu, align 8, !tbaa !139, !alias.scope !370, !noalias !365
  %index.next1405 = add nuw i64 %index1400, 4     ; 2 uses
  %i.uv = icmp eq i64 %index.next1405, %n.vec1398
  br i1 %i.uv, label %middle.block1406, label %vector.body1399, !llvm.loop !375

middle.block1406:                                 ; preds = %vector.body1399
  %cmp.n1407 = icmp eq i64 %i.uj, %n.vec1398
  br i1 %cmp.n1407, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i484.preheader1410

.lr.ph.i.i.i.i.i.i.i484.preheader1410:            ; preds = %vector.memcheck1388, %.lr.ph.i.i.i.i.i.i.i484.preheader, %middle.block1406
  %.012.i.i.i.i.i.i.i485.ph = phi ptr [ %i.ud, %vector.memcheck1388 ], [ %i.ud, %.lr.ph.i.i.i.i.i.i.i484.preheader ], [ %i.up, %middle.block1406 ]
  %.0911.i.i.i.i.i.i.i486.ph = phi ptr [ %i.ts, %vector.memcheck1388 ], [ %i.ts, %.lr.ph.i.i.i.i.i.i.i484.preheader ], [ %i.uq, %middle.block1406 ]
  br label %.lr.ph.i.i.i.i.i.i.i484

.lr.ph.i.i.i.i.i.i.i484:                          ; preds = %.lr.ph.i.i.i.i.i.i.i484.preheader1410, %.lr.ph.i.i.i.i.i.i.i484
  %.012.i.i.i.i.i.i.i485 = phi ptr [ %i.uy, %.lr.ph.i.i.i.i.i.i.i484 ], [ %.012.i.i.i.i.i.i.i485.ph, %.lr.ph.i.i.i.i.i.i.i484.preheader1410 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i486 = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i.i.i484 ], [ %.0911.i.i.i.i.i.i.i486.ph, %.lr.ph.i.i.i.i.i.i.i484.preheader1410 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.uw = load i64, ptr %.0911.i.i.i.i.i.i.i486, align 8, !tbaa !139, !alias.scope !368, !noalias !365
  store i64 %i.uw, ptr %.012.i.i.i.i.i.i.i485, align 8, !tbaa !139, !alias.scope !365, !noalias !368
  store ptr null, ptr %.0911.i.i.i.i.i.i.i486, align 8, !tbaa !139, !alias.scope !368, !noalias !365
  %i.ux = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i486, i64 8 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i485, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i487 = icmp eq ptr %i.ux, %i.tn
  br i1 %.not.i.i.i.i.i.i.i487, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i484, !llvm.loop !376

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i484, %middle.block1406, %.noexc491
  %.0.lcssa.i.i.i.i.i.i.i488 = phi ptr [ %i.ud, %.noexc491 ], [ %i.up, %middle.block1406 ], [ %i.uy, %.lr.ph.i.i.i.i.i.i.i484 ]
  %i.uz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i488, i64 8
  %.not.i23.i.i.i489 = icmp eq ptr %i.ts, null
  br i1 %.not.i23.i.i.i489, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.hv

bb.hv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ts) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.hv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ud, ptr %i.tl, align 8, !tbaa !364
  store ptr %i.uz, ptr %i.tm, align 8, !tbaa !360
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.ub
  store ptr %i.va, ptr %i.to, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.hs
  %i.vb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.hw unwind label %bb.ib

bb.hw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  invoke void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97) %i.vb)
          to label %bb.hx unwind label %bb.ib

bb.hx:                                            ; preds = %bb.hw
  %i.vc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !20 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i492 = icmp eq ptr %i.vf, %i.vd
  br i1 %.not.i.i.i492, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i493

.lr.ph.i.i.i.i.i493:                              ; preds = %bb.hx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.vj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.vd, %bb.hx ] ; 3 uses
  %i.vg = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.vi = icmp eq ptr %i.vg, %i.vh
  br i1 %i.vi, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i493
  call void @_ZdlPv(ptr noundef %i.vg) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i493, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i494 = icmp eq ptr %i.vj, %i.vf
  br i1 %.not.i.i.i.i.i494, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i493, !llvm.loop !153

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.vd, ptr %i.ve, align 8, !tbaa !23
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit: ; preds = %bb.hx, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !7  ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !11 ; 2 uses
  %.not.i.i.i495 = icmp eq ptr %i.vn, %i.vl
  br i1 %.not.i.i.i495, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i496

.lr.ph.i.i.i.i.i496:                              ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit, %.lr.ph.i.i.i.i.i496
  %.05.i.i.i.i.i497 = phi ptr [ %i.vo, %.lr.ph.i.i.i.i.i496 ], [ %i.vl, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i497) #25
  %i.vo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i497, i64 24 ; 2 uses
  %.not.i.i.i.i.i498 = icmp eq ptr %i.vo, %i.vn
  br i1 %.not.i.i.i.i.i498, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i496, !llvm.loop !152

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i496
  store ptr %i.vl, ptr %i.vm, align 8, !tbaa !11
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit: ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.vp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.hy unwind label %bb.ic     ; 2 uses

bb.hy:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !352 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 48
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !352 ; 2 uses
  %.not7701096 = icmp eq ptr %i.vr, %i.vt
  br i1 %.not7701096, label %._crit_edge1100, label %.lr.ph1099

.lr.ph1099:                                       ; preds = %bb.hy
  %i.vu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.vv = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.id

._crit_edge1100:                                  ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %bb.hy
  %i.vy = load ptr, ptr %58, align 8, !tbaa !356
  store ptr null, ptr %58, align 8, !tbaa !356
  %i.vz = load ptr, ptr %8, align 8, !tbaa !139   ; 3 uses
  store ptr %i.vy, ptr %8, align 8, !tbaa !139
  %.not.i.i.i.i.i499 = icmp eq ptr %i.vz, null
  br i1 %.not.i.i.i.i.i499, label %bb.iq, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge1100
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !119
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8
  call void %i.wc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.vz) #25, !inline_history !377
  %.pr742 = load ptr, ptr %58, align 8, !tbaa !356 ; 3 uses
  %.not.i501 = icmp eq ptr %.pr742, null
  br i1 %.not.i501, label %bb.iq, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.wd = load ptr, ptr %.pr742, align 8, !tbaa !119
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load ptr, ptr %i.we, align 8
  call void %i.wf(ptr noundef nonnull align 8 dereferenceable(112) %.pr742) #25, !inline_history !378
  br label %bb.iq

bb.hz:                                            ; preds = %._crit_edge1095
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.ia:                                            ; preds = %bb.hm, %bb.hl
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ib:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.hu, %bb.hw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.hq
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.ic:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

bb.id:                                            ; preds = %.lr.ph1099, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %.sroa.0676.01097 = phi ptr [ %i.vr, %.lr.ph1099 ], [ %i.xi, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Binder12BindCopyFromERNS_13CopyStatementERKNS_12CopyFunctionE:bb.a
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.br:                                            ; preds = %bb.bn
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.fm)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.bs

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.br
  %i.ge = add i64 %.sroa.8220.0285, 1             ; 2 uses
  %.not.i160 = icmp eq i64 %i.ge, %i.fh
  br i1 %.not.i160, label %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit, label %bb.bk

bb.bs:                                            ; preds = %bb.br, %.noexc.i.i, %bb.bm, %bb.bl, %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternaldeEv.exit166
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit154, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit, %_ZN6duckdb10ColumnList18ColumnListIterator3endEv.exit159
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 296
  invoke void @_ZN6duckdb28SimpleNamedParameterFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(544) %14, ptr noundef nonnull align 8 dereferenceable(544) %i.gg)
          to label %.noexc172 unwind label %bb.cb

.noexc172:                                        ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13TableFunctionE, i64 16), ptr %14, align 8, !tbaa !119
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 264
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(254) %i.gh, ptr noundef nonnull align 8 dereferenceable(254) %i.gi, i64 254, i1 false)
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 520
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 816
  %i.gl = getelementptr inbounds nuw i8, ptr %14, i64 528
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !175 ; 2 uses
  %i.go = load <2 x ptr>, ptr %i.gk, align 8, !tbaa !280
  store <2 x ptr> %i.go, ptr %i.gj, align 8, !tbaa !280
  %.not.i.i.i.i.i170 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i170, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %.noexc172
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 3 uses
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i.i171 = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i.i.i171, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !3
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gp, align 4, !tbaa !3
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gt = atomicrmw volatile add ptr %i.gp, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.noexc172
  %i.gu = getelementptr inbounds nuw i8, ptr %14, i64 536
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.gw = load i64, ptr %i.gv, align 8
  store i64 %i.gw, ptr %i.gu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.gx = invoke noundef nonnull align 8 dereferenceable(344) ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.bx unwind label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.gx, ptr %15, align 8, !tbaa !289
  %i.gy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %14, ptr %i.gy, align 8, !tbaa !466
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.gz = load ptr, ptr %i.as, align 8, !tbaa !452
  %i.ha = load ptr, ptr %i.bv, align 8, !tbaa !26, !nonnull !95, !align !96
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bq, i64 152 ; 4 uses
  invoke void %i.gz(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.533") align 8 %16, ptr noundef nonnull align 8 dereferenceable(512) %i.ha, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.hb)
          to label %bb.by unwind label %bb.cd

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.hc = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  store i64 %i.hc, ptr %i.b, align 8, !tbaa !97
  invoke void @_ZN6duckdb9make_uniqINS_10LogicalGetEJmNS_13TableFunctionENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS4_ELb1EEERNS_6vectorINS_11LogicalTypeELb1ESaIS9_EEERNS8_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISI_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.652") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(544) %14, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bq, i64 160 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !11
  %i.hf = load ptr, ptr %i.hb, align 8, !tbaa !7
  %.not289 = icmp eq ptr %i.he, %i.hf
  br i1 %.not289, label %._crit_edge, label %.lr.ph288

._crit_edge:                                      ; preds = %bb.cg, %bb.ca
  %i.hg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ci unwind label %bb.cu     ; 3 uses

bb.cb:                                            ; preds = %_ZNK6duckdb10ColumnList18ColumnListIterator29ColumnLogicalIteratorInternalneERKS2_.exit
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.cc:                                            ; preds = %bb.bw
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cd:                                            ; preds = %bb.bx
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit203

bb.ce:                                            ; preds = %bb.bz, %bb.by
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZNSt10unique_ptrIN6duckdb10LogicalGetESt14default_deleteIS1_EED2Ev.exit200

.lr.ph288:                                        ; preds = %bb.ca, %bb.cg
  %.0287 = phi i64 [ %i.hm, %bb.cg ], [ 0, %bb.ca ] ; 2 uses
  %i.hl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10LogicalGetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %.lr.ph288
  invoke void @_ZN6duckdb10LogicalGet11AddColumnIdEm(ptr noundef nonnull align 8 dereferenceable(1104) %i.hl, i64 noundef %.0287)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.hm = add nuw i64 %.0287, 1                   ; 2 uses
  %i.hn = load ptr, ptr %i.hd, align 8, !tbaa !11
  %i.ho = load ptr, ptr %i.hb, align 8, !tbaa !7
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = sdiv exact i64 %i.hr, 24
  %i.ht = icmp ult i64 %i.hm, %i.hs
  br i1 %i.ht, label %.lr.ph288, label %._crit_edge, !llvm.loop !468

bb.ch:                                            ; preds = %bb.cf, %.lr.ph288
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit197

bb.ci:                                            ; preds = %._crit_edge
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %i.hw = load ptr, ptr %17, align 8, !tbaa !469  ; 5 uses
  store ptr null, ptr %17, align 8, !tbaa !469
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !360 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !363
  %.not.i.i173 = icmp eq ptr %i.hy, %i.ia
  br i1 %.not.i.i173, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ib = ptrtoint ptr %i.hw to i64
  store i64 %i.ib, ptr %i.hy, align 8, !tbaa !139
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.ic, ptr %i.hx, align 8, !tbaa !360
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.ck:                                            ; preds = %bb.ci
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !364 ; 10 uses
  %i.ie = ptrtoint ptr %i.hy to i64               ; 3 uses
  %i.if = ptrtoint ptr %i.id to i64               ; 3 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 3 uses
  %i.ih = icmp eq i64 %i.ig, 9223372036854775800
  br i1 %i.ih, label %bb.cl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc175 unwind label %bb.cv

.noexc175:                                        ; preds = %bb.cl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ck
  %i.ii = ashr exact i64 %i.ig, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ii, i64 1)
  %i.ij = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ii ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ii
  %i.il = call i64 @llvm.umin.i64(i64 %i.ij, i64 1152921504606846975)
  %i.im = select i1 %i.ik, i64 1152921504606846975, i64 %i.il ; 3 uses
  %.not.i.i.i.i174 = icmp ne i64 %i.im, 0
  call void @llvm.assume(i1 %.not.i.i.i.i174)
  %i.in = shl nuw nsw i64 %i.im, 3
  %i.io = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.in) #26
          to label %.noexc176 unwind label %bb.cv ; 10 uses

.noexc176:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ig
  %i.iq = ptrtoint ptr %i.hw to i64
  store i64 %i.iq, ptr %i.ip, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.id, %i.hy
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc176
  %i.ir = sub i64 %i.ie, %i.if
  %i.is = add i64 %i.ir, -8                       ; 2 uses
  %i.it = lshr i64 %i.is, 3
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.is, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader345, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.iv = add i64 %i.ie, -8
  %i.iw = sub i64 %i.iv, %i.if
  %i.ix = and i64 %i.iw, -8
  %i.iy = add i64 %i.ix, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.io, i64 %i.iy
  %scevgep341 = getelementptr i8, ptr %i.id, i64 %i.iy
  %bound0 = icmp ult ptr %i.io, %scevgep341
  %bound1 = icmp ult ptr %i.id, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader345, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iu, 4611686018427387900     ; 3 uses
  %i.iz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ja = getelementptr i8, ptr %i.io, i64 %i.iz  ; 2 uses
  %i.jb = getelementptr i8, ptr %i.id, i64 %i.iz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.io, i64 %i.jc ; 2 uses
  %next.gep342 = getelementptr i8, ptr %i.id, i64 %i.jc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.jd = getelementptr i8, ptr %next.gep342, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep342, align 8, !tbaa !139, !alias.scope !476, !noalias !471
  %wide.load343 = load <2 x i64>, ptr %i.jd, align 8, !tbaa !139, !alias.scope !476, !noalias !471
  %i.je = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !139, !alias.scope !479, !noalias !476
  store <2 x i64> %wide.load343, ptr %i.je, align 8, !tbaa !139, !alias.scope !479, !noalias !476
  %i.jf = getelementptr i8, ptr %next.gep342, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep342, align 8, !tbaa !139, !alias.scope !476, !noalias !471
  store <2 x ptr> splat (ptr null), ptr %i.jf, align 8, !tbaa !139, !alias.scope !476, !noalias !471
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader345

.lr.ph.i.i.i.i.i.i.i.preheader345:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.io, %vector.memcheck ], [ %i.io, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ja, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.id, %vector.memcheck ], [ %i.id, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.jb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader345, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader345 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader345 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.jh = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !474, !noalias !471
  store i64 %i.jh, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !471, !noalias !474
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !474, !noalias !471
  %i.ji = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ji, %i.hy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !482

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc176
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.io, %.noexc176 ], [ %i.ja, %middle.block ], [ %i.jj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.id) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.io, ptr %i.hv, align 8, !tbaa !364
  store ptr %i.jk, ptr %i.hx, align 8, !tbaa !360
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.im
  store ptr %i.jl, ptr %i.hz, align 8, !tbaa !363
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.jm = load ptr, ptr %12, align 8, !tbaa !139
  store ptr null, ptr %12, align 8, !tbaa !139
  %i.jn = load ptr, ptr %0, align 8, !tbaa !139   ; 3 uses
  store ptr %i.jm, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i.i178 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i.i178, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !119
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.jn) #25, !inline_history !377
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.jr = load ptr, ptr %17, align 8, !tbaa !469  ; 3 uses
  %.not.i179 = icmp eq ptr %i.jr, null
  br i1 %.not.i179, label %_ZNSt10unique_ptrIN6duckdb10LogicalGetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10LogicalGetEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10LogicalGetEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !119
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(1104) %i.jr) #25, !inline_history !483
  br label %_ZNSt10unique_ptrIN6duckdb10LogicalGetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10LogicalGetESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10LogicalGetEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %i.jv = load ptr, ptr %16, align 8, !tbaa !437  ; 3 uses
  %.not.i180 = icmp eq ptr %i.jv, null
  br i1 %.not.i180, label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10LogicalGetESt14default_deleteIS1_EED2Ev.exit
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !119
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jv) #25, !inline_history !438
  br label %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10LogicalGetESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12FunctionDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb13TableFunctionE, i64 16), ptr %14, align 8, !tbaa !119
  %i.jz = load ptr, ptr %i.gl, align 8, !tbaa !175 ; 8 uses
  %.not.i.i.i.i181 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i181, label %_ZN6duckdb13TableFunctionD2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.ka, align 8, !tbaa !176
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !178
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !119
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #25, !inline_history !484
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !119
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #25, !inline_history !484
  br label %_ZN6duckdb13TableFunctionD2Ev.exit

bb.cp:                                            ; preds = %bb.cn
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i182 = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i182, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i.i = phi i32 [ %i.kd, %bb.cq ], [ %i.kn, %bb.cr ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ko, label %bb.cs, label %_ZN6duckdb13TableFunctionD2Ev.exit, !prof !154

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #25, !inline_history !485
  br label %_ZN6duckdb13TableFunctionD2Ev.exit

_ZN6duckdb13TableFunctionD2Ev.exit:               ; preds = %_ZNSt10unique_ptrIN6duckdb12FunctionDataESt14default_deleteIS1_EED2Ev.exit, %bb.co, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cs
  call void @_ZN6duckdb28SimpleNamedParameterFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(544) %14) #25, !inline_history !485
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.kp = load ptr, ptr %13, align 8, !tbaa !20   ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i183 = icmp eq ptr %i.kp, %i.kr
  br i1 %.not4.i.i.i183, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i191, label %.lr.ph.i.i.i184

.lr.ph.i.i.i184:                                  ; preds = %_ZN6duckdb13TableFunctionD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187
  %.05.i.i.i185 = phi ptr [ %i.kv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187 ], [ %i.kp, %_ZN6duckdb13TableFunctionD2Ev.exit ] ; 3 uses
  %i.ks = load ptr, ptr %.05.i.i.i185, align 8, !tbaa !25 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.05.i.i.i185, i64 16
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186: ; preds = %.lr.ph.i.i.i184
  call void @_ZdlPv(ptr noundef %i.ks) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187: ; preds = %.lr.ph.i.i.i184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186
  %i.kv = getelementptr inbounds nuw i8, ptr %.05.i.i.i185, i64 32 ; 2 uses
  %.not.i.i.i188 = icmp eq ptr %i.kv, %i.kr
  br i1 %.not.i.i.i188, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i189, label %.lr.ph.i.i.i184, !llvm.loop !153

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i189: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i187
  %.pr.i190 = load ptr, ptr %13, align 8, !tbaa !20
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i191
end_hunk_2
begin_hunk_3_@_ZN6duckdb6Binder4BindERNS_13CopyStatementENS_10CopyToTypeE:bb.a
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bz, %vector.memcheck ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader740, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader740 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader740 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !723)
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.dc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !726, !noalias !723
  store i64 %i.dc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !723, !noalias !726
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !726, !noalias !723
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.bu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !734

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc202
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.noexc202 ], [ %i.cv, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread577, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread577: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !158
  store ptr %i.df, ptr %i.bt, align 8, !tbaa !161
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dg, ptr %i.bv, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bz) #29
  %.pre.pre = load ptr, ptr %7, align 8, !tbaa !721 ; 3 uses
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !158
  store ptr %i.df, ptr %i.bt, align 8, !tbaa !161
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ci
  store ptr %i.dh, ptr %i.bv, align 8, !tbaa !206
  %.not.i204 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i204, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.di = load ptr, ptr %.pre.pre, align 8, !tbaa !119
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(80) %.pre.pre) #25, !inline_history !735
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread577, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0356.0465, i64 32 ; 2 uses
  %.not416 = icmp eq ptr %i.dl, %i.bh
  br i1 %.not416, label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

bb.y:                                             ; preds = %.lr.ph
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

bb.z:                                             ; preds = %bb.u
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit210

.loopexit425:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp426:                            ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp426, %.loopexit425
  %lpad.phi428 = phi { ptr, i32 } [ %lpad.loopexit427, %.loopexit425 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp426 ] ; 2 uses
  %.not.i205 = icmp eq ptr %i.bs, null
  br i1 %.not.i205, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit207, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i206

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i206: ; preds = %bb.aa
  %i.do = load ptr, ptr %i.bs, align 8, !tbaa !119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(56) %i.bs) #25, !inline_history !235
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit207

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit207: ; preds = %bb.aa, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i206
  %i.dr = load ptr, ptr %7, align 8, !tbaa !721   ; 3 uses
  %.not.i208 = icmp eq ptr %i.dr, null
  br i1 %.not.i208, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit210, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i209

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i209: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit207
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !119
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(80) %i.dr) #25, !inline_history !735
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit210

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit210: ; preds = %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i209, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit207, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dn, %bb.z ], [ %lpad.phi428, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit207 ], [ %lpad.phi428, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i209 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

bb.ab:                                            ; preds = %bb.m
  %i.dv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ac unwind label %bb.s      ; 3 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dw = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26
          to label %.noexc211 unwind label %bb.aj ; 6 uses

.noexc211:                                        ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.dx, ptr %4, align 8, !tbaa !13, !noalias !736
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dy, align 8, !tbaa !16, !noalias !736
  store i8 0, ptr %i.dx, align 8, !tbaa !19, !noalias !736
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.dw, ptr noundef nonnull %4)
          to label %bb.ad unwind label %bb.ae, !noalias !736

bb.ad:                                            ; preds = %.noexc211
  %i.dz = load ptr, ptr %4, align 8, !tbaa !25, !noalias !736 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dx
  br i1 %i.ea, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.dz) #29, !noalias !736
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.ae:                                            ; preds = %.noexc211
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %4, align 8, !tbaa !25, !noalias !736 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dx
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.ec) #29, !noalias !736
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.dw) #29, !noalias !736
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 120 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 128 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !161 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 136 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !206
  %.not.i.i214 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not.i.i214, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ej = ptrtoint ptr %i.dw to i64
  store i64 %i.ej, ptr %i.eg, align 8, !tbaa !124
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ek, ptr %i.ef, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.el = load ptr, ptr %i.ee, align 8, !tbaa !158 ; 10 uses
  %i.em = ptrtoint ptr %i.eg to i64               ; 3 uses
  %i.en = ptrtoint ptr %i.el to i64               ; 3 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %bb.ah, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i215

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc227 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit239

.noexc227:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i215: ; preds = %bb.ag
  %i.eq = ashr exact i64 %i.eo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i216 = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i.i216, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 1152921504606846975)
  %i.eu = select i1 %i.es, i64 1152921504606846975, i64 %i.et ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #26
          to label %.noexc228 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit239 ; 10 uses

.noexc228:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i215
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eo
  %i.ey = ptrtoint ptr %i.dw to i64
  store i64 %i.ey, ptr %i.ex, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i218 = icmp eq ptr %i.el, %i.eg
  br i1 %.not10.i.i.i.i.i.i.i218, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i223, label %.lr.ph.i.i.i.i.i.i.i219.preheader

.lr.ph.i.i.i.i.i.i.i219.preheader:                ; preds = %.noexc228
  %i.ez = sub i64 %i.em, %i.en
  %i.fa = add i64 %i.ez, -8                       ; 2 uses
  %i.fb = lshr i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check688 = icmp ult i64 %i.fa, 152
  br i1 %min.iters.check688, label %.lr.ph.i.i.i.i.i.i.i219.preheader739, label %vector.memcheck681

vector.memcheck681:                               ; preds = %.lr.ph.i.i.i.i.i.i.i219.preheader
  %i.fd = add i64 %i.em, -8
  %i.fe = sub i64 %i.fd, %i.en
  %i.ff = and i64 %i.fe, -8
  %i.fg = add i64 %i.ff, 8                        ; 2 uses
  %scevgep682 = getelementptr i8, ptr %i.ew, i64 %i.fg
  %scevgep683 = getelementptr i8, ptr %i.el, i64 %i.fg
  %bound0684 = icmp ult ptr %i.ew, %scevgep683
  %bound1685 = icmp ult ptr %i.el, %scevgep682
  %found.conflict686 = and i1 %bound0684, %bound1685
  br i1 %found.conflict686, label %.lr.ph.i.i.i.i.i.i.i219.preheader739, label %vector.ph689

vector.ph689:                                     ; preds = %vector.memcheck681
  %n.vec691 = and i64 %i.fc, 4611686018427387900  ; 3 uses
  %i.fh = shl i64 %n.vec691, 3                    ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ew, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %i.el, i64 %i.fh
  br label %vector.body692

vector.body692:                                   ; preds = %vector.body692, %vector.ph689
  %index693 = phi i64 [ 0, %vector.ph689 ], [ %index.next698, %vector.body692 ] ; 2 uses
  %i.fk = shl i64 %index693, 3                    ; 2 uses
  %next.gep694 = getelementptr i8, ptr %i.ew, i64 %i.fk ; 2 uses
  %next.gep695 = getelementptr i8, ptr %i.el, i64 %i.fk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.fl = getelementptr i8, ptr %next.gep695, i64 16
  %wide.load696 = load <2 x i64>, ptr %next.gep695, align 8, !tbaa !124, !alias.scope !744, !noalias !739
  %wide.load697 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !124, !alias.scope !744, !noalias !739
  %i.fm = getelementptr i8, ptr %next.gep694, i64 16
  store <2 x i64> %wide.load696, ptr %next.gep694, align 8, !tbaa !124, !alias.scope !747, !noalias !744
  store <2 x i64> %wide.load697, ptr %i.fm, align 8, !tbaa !124, !alias.scope !747, !noalias !744
  %i.fn = getelementptr i8, ptr %next.gep695, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep695, align 8, !tbaa !124, !alias.scope !744, !noalias !739
  store <2 x ptr> splat (ptr null), ptr %i.fn, align 8, !tbaa !124, !alias.scope !744, !noalias !739
  %index.next698 = add nuw i64 %index693, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next698, %n.vec691
  br i1 %i.fo, label %middle.block699, label %vector.body692, !llvm.loop !749

middle.block699:                                  ; preds = %vector.body692
  %cmp.n700 = icmp eq i64 %i.fc, %n.vec691
  br i1 %cmp.n700, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i223, label %.lr.ph.i.i.i.i.i.i.i219.preheader739

.lr.ph.i.i.i.i.i.i.i219.preheader739:             ; preds = %vector.memcheck681, %.lr.ph.i.i.i.i.i.i.i219.preheader, %middle.block699
  %.012.i.i.i.i.i.i.i220.ph = phi ptr [ %i.ew, %vector.memcheck681 ], [ %i.ew, %.lr.ph.i.i.i.i.i.i.i219.preheader ], [ %i.fi, %middle.block699 ]
  %.0911.i.i.i.i.i.i.i221.ph = phi ptr [ %i.el, %vector.memcheck681 ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i219.preheader ], [ %i.fj, %middle.block699 ]
  br label %.lr.ph.i.i.i.i.i.i.i219

.lr.ph.i.i.i.i.i.i.i219:                          ; preds = %.lr.ph.i.i.i.i.i.i.i219.preheader739, %.lr.ph.i.i.i.i.i.i.i219
  %.012.i.i.i.i.i.i.i220 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i.i219 ], [ %.012.i.i.i.i.i.i.i220.ph, %.lr.ph.i.i.i.i.i.i.i219.preheader739 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i221 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i219 ], [ %.0911.i.i.i.i.i.i.i221.ph, %.lr.ph.i.i.i.i.i.i.i219.preheader739 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.fp = load i64, ptr %.0911.i.i.i.i.i.i.i221, align 8, !tbaa !124, !alias.scope !742, !noalias !739
  store i64 %i.fp, ptr %.012.i.i.i.i.i.i.i220, align 8, !tbaa !124, !alias.scope !739, !noalias !742
  store ptr null, ptr %.0911.i.i.i.i.i.i.i221, align 8, !tbaa !124, !alias.scope !742, !noalias !739
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i221, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i220, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i222 = icmp eq ptr %i.fq, %i.eg
  br i1 %.not.i.i.i.i.i.i.i222, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i223, label %.lr.ph.i.i.i.i.i.i.i219, !llvm.loop !750

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i223: ; preds = %.lr.ph.i.i.i.i.i.i.i219, %middle.block699, %.noexc228
  %.0.lcssa.i.i.i.i.i.i.i224 = phi ptr [ %i.ew, %.noexc228 ], [ %i.fi, %middle.block699 ], [ %i.fr, %.lr.ph.i.i.i.i.i.i.i219 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i224, i64 8
  %.not.i23.i.i.i225 = icmp eq ptr %i.el, null
  br i1 %.not.i23.i.i.i225, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i226, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i223
  call void @_ZdlPv(ptr noundef nonnull %i.el) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i226

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i226: ; preds = %bb.ai, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i223
  store ptr %i.ew, ptr %i.ee, align 8, !tbaa !158
  store ptr %i.fs, ptr %i.ef, align 8, !tbaa !161
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.ft, ptr %i.eh, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.aj:                                            ; preds = %bb.ac
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit239: ; preds = %bb.ah, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i215
  %i.fv = landingpad { ptr, i32 }
          cleanup
  %i.fw = load ptr, ptr %i.dw, align 8, !tbaa !119
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(56) %i.dw) #25, !inline_history !235
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.o, %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i226
  %i.fz = load ptr, ptr %6, align 8, !tbaa !195   ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !195
  %i.ga = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 336 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !224 ; 3 uses
  store ptr %i.fz, ptr %i.gb, align 8, !tbaa !224
  %.not.i.i.i.i.i240 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i240, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !119
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.gc) #25, !inline_history !225
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.ak
  %i.gg = load ptr, ptr %6, align 8, !tbaa !195   ; 3 uses
  %.not.i242 = icmp eq ptr %i.gg, null
  br i1 %.not.i242, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !119
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(240) %i.gg) #25, !inline_history !230
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.gk = load ptr, ptr %5, align 8, !tbaa !716   ; 3 uses
  %.not.i243 = icmp eq ptr %i.gk, null
  br i1 %.not.i243, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !119
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(208) %i.gk) #25, !inline_history !751
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.an

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i244 = icmp eq ptr %i.fz, null
  br i1 %.not.i244, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i245

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i245: ; preds = %bb.al
  %i.gp = load ptr, ptr %i.fz, align 8, !tbaa !119
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fz) #25, !inline_history !237
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i245, %bb.al, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.aj, %bb.y, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit210, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i199, %bb.r, %bb.t, %bb.s
  %.pn148 = phi { ptr, i32 } [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ], [ %i.dm, %bb.y ], [ %i.bo, %bb.s ], [ %i.bp, %bb.t ], [ %i.bk, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i199 ], [ %i.bk, %bb.r ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit210 ], [ %i.fv, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit239 ], [ %i.fu, %bb.aj ], [ %i.go, %bb.al ], [ %i.go, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i245 ] ; 2 uses
  %i.gs = load ptr, ptr %6, align 8, !tbaa !195   ; 3 uses
  %.not.i247 = icmp eq ptr %i.gs, null
  br i1 %.not.i247, label %.body, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i248

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i248: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !119
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(240) %i.gs) #25, !inline_history !230
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i248, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200, %bb.q, %bb.j
  %.pn148.pn = phi { ptr, i32 } [ %i.ap, %bb.j ], [ %i.bj, %bb.q ], [ %.pn148, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit200 ], [ %.pn148, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i248 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.am

bb.am:                                            ; preds = %.body, %bb.p
  %.pn148.pn.pn = phi { ptr, i32 } [ %.pn148.pn, %.body ], [ %i.bi, %bb.p ]
  %i.gw = load ptr, ptr %5, align 8, !tbaa !716   ; 3 uses
  %.not.i250 = icmp eq ptr %i.gw, null
  br i1 %.not.i250, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit252, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i251

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i251: ; preds = %bb.am
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !119
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(208) %i.gw) #25, !inline_history !751
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit252

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit252: ; preds = %bb.am, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.fh

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit, %bb.b, %bb.a
  %i.ha = call noundef ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 176
  %i.hc = load i8, ptr %i.hb, align 8, !tbaa !674, !range !116, !noundef !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !26, !nonnull !95, !align !96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 32, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 32
end_hunk_3
begin_hunk_4_@_ZN6duckdb6Binder20BindCopyDatabaseDataERNS_7CatalogERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          cleanup
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.split-lp287, %.loopexit286
  %lpad.phi290 = phi { ptr, i32 } [ %lpad.loopexit288, %.loopexit286 ], [ %lpad.loopexit.split-lp289, %.loopexit.split-lp287 ]
  %.not.i117 = icmp eq i64 %i.ft, 0
  br i1 %.not.i117, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit119, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i118

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i118: ; preds = %bb.aw
  %i.ib = inttoptr i64 %i.ft to ptr               ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !119
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ib) #25, !inline_history !181
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit119

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit119: ; preds = %bb.aw, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i118
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #25
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit119, %bb.av
  %.pn54 = phi { ptr, i32 } [ %lpad.phi290, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit119 ], [ %i.ia, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit116

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit116: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i115, %bb.au, %bb.ax
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %bb.ax ], [ %i.hw, %bb.au ], [ %i.hw, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i115 ] ; 2 uses
  %i.if = load ptr, ptr %14, align 8, !tbaa !575  ; 3 uses
  %.not.i120 = icmp eq ptr %i.if, null
  br i1 %.not.i120, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit122, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i121

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i121: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit116
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !119
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(128) %i.if) #25, !inline_history !647
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit122

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit122: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i121, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit116, %bb.at
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.hv, %bb.at ], [ %.pn54.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit116 ], [ %.pn54.pn, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit113

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit113: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i112, %bb.as, %bb.ah, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit89, %bb.z, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit122, %bb.y
  %.pn58.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.y ], [ %.pn54.pn.pn, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit122 ], [ %i.eg, %bb.ah ], [ %i.ck, %bb.z ], [ %i.hr, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i112 ], [ %i.hr, %bb.as ], [ %.pn58, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit89 ] ; 2 uses
  %i.ij = load ptr, ptr %12, align 8, !tbaa !195  ; 3 uses
  %.not.i123 = icmp eq ptr %i.ij, null
  br i1 %.not.i123, label %.body, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i124

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i124: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit113
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !119
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(240) %i.ij) #25, !inline_history !230
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i124, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit113, %bb.x, %bb.m
  %.pn58.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.m ], [ %i.ci, %bb.x ], [ %.pn58.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit113 ], [ %.pn58.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ay

bb.ay:                                            ; preds = %.body, %bb.w
  %.pn58.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn, %.body ], [ %i.ch, %bb.w ] ; 2 uses
  %i.in = load ptr, ptr %11, align 8, !tbaa !716  ; 3 uses
  %.not.i126 = icmp eq ptr %i.in, null
  br i1 %.not.i126, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit128, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i127

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i127: ; preds = %bb.ay
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !119
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(208) %i.in) #25, !inline_history !751
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit128

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit128: ; preds = %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i127, %bb.ay, %bb.v
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn, %bb.ay ], [ %.pn58.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit128, %bb.u
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit128 ], [ %i.cf, %bb.u ]
  call void @_ZN6duckdb15InsertStatementD2Ev(ptr noundef nonnull align 8 dereferenceable(370) %10) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.t
  %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.az ], [ %i.ce, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit238

bb.bb:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.ir = phi ptr [ null, %._crit_edge.thread ], [ %.pre366, %._crit_edge ] ; 4 uses
  %i.is = phi ptr [ null, %._crit_edge.thread ], [ %i.hd, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 noundef zeroext 14)
          to label %bb.bc unwind label %bb.cb

bb.bc:                                            ; preds = %bb.bb
  %i.it = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !11 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !12
  %.not.i.i129 = icmp eq ptr %i.iu, %i.iw
  br i1 %.not.i.i129, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr noundef nonnull align 8 dereferenceable(24) %17) #25
  %i.ix = load ptr, ptr %i.it, align 8, !tbaa !11
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store ptr %i.iy, ptr %i.it, align 8, !tbaa !11
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit

bb.be:                                            ; preds = %bb.bc
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %i.iu, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit unwind label %bb.cc

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.bd, %bb.be
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, i64 noundef 0)
          to label %bb.bf unwind label %bb.ce

bb.bf:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.iz = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc131 unwind label %bb.cf ; 6 uses

.noexc131:                                        ; preds = %bb.bf
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %19) #25, !noalias !869
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.iz, ptr noundef nonnull %6)
          to label %bb.bh unwind label %bb.bg, !noalias !869

bb.bg:                                            ; preds = %.noexc131
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25, !noalias !869
  call void @_ZdlPv(ptr noundef nonnull %i.iz) #29, !noalias !869
  br label %.body132

bb.bh:                                            ; preds = %.noexc131
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25, !noalias !869
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !334 ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !335
  %.not.i.i134 = icmp eq ptr %i.jc, %i.je
  br i1 %.not.i.i134, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jf = ptrtoint ptr %i.iz to i64
  store i64 %i.jf, ptr %i.jc, align 8, !tbaa !117
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store ptr %i.jg, ptr %i.jb, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.jh = load ptr, ptr %18, align 8, !tbaa !333  ; 10 uses
  %i.ji = ptrtoint ptr %i.jc to i64               ; 3 uses
  %i.jj = ptrtoint ptr %i.jh to i64               ; 3 uses
  %i.jk = sub i64 %i.ji, %i.jj                    ; 3 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.bk, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc144 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit201

.noexc144:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bj
  %i.jm = ashr exact i64 %i.jk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i135 = call i64 @llvm.umax.i64(i64 %i.jm, i64 1)
  %i.jn = add nsw i64 %.sroa.speculated.i.i.i.i135, %i.jm ; 2 uses
  %i.jo = icmp ult i64 %i.jn, %i.jm
  %i.jp = call i64 @llvm.umin.i64(i64 %i.jn, i64 1152921504606846975)
  %i.jq = select i1 %i.jo, i64 1152921504606846975, i64 %i.jp ; 3 uses
  %.not.i.i.i.i136 = icmp ne i64 %i.jq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i136)
  %i.jr = shl nuw nsw i64 %i.jq, 3
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #26
          to label %.noexc145 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit201 ; 10 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jk
  %i.ju = ptrtoint ptr %i.iz to i64
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i137 = icmp eq ptr %i.jh, %i.jc
  br i1 %.not10.i.i.i.i.i.i.i137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138.preheader

.lr.ph.i.i.i.i.i.i.i138.preheader:                ; preds = %.noexc145
  %i.jv = sub i64 %i.ji, %i.jj
  %i.jw = add i64 %i.jv, -8                       ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check574 = icmp ult i64 %i.jw, 152
  br i1 %min.iters.check574, label %.lr.ph.i.i.i.i.i.i.i138.preheader612, label %vector.memcheck567

vector.memcheck567:                               ; preds = %.lr.ph.i.i.i.i.i.i.i138.preheader
  %i.jz = add i64 %i.ji, -8
  %i.ka = sub i64 %i.jz, %i.jj
  %i.kb = and i64 %i.ka, -8
  %i.kc = add i64 %i.kb, 8                        ; 2 uses
  %scevgep568 = getelementptr i8, ptr %i.js, i64 %i.kc
  %scevgep569 = getelementptr i8, ptr %i.jh, i64 %i.kc
  %bound0570 = icmp ult ptr %i.js, %scevgep569
  %bound1571 = icmp ult ptr %i.jh, %scevgep568
  %found.conflict572 = and i1 %bound0570, %bound1571
  br i1 %found.conflict572, label %.lr.ph.i.i.i.i.i.i.i138.preheader612, label %vector.ph575

vector.ph575:                                     ; preds = %vector.memcheck567
  %n.vec577 = and i64 %i.jy, 4611686018427387900  ; 3 uses
  %i.kd = shl i64 %n.vec577, 3                    ; 2 uses
  %i.ke = getelementptr i8, ptr %i.js, i64 %i.kd  ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jh, i64 %i.kd
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph575
  %index579 = phi i64 [ 0, %vector.ph575 ], [ %index.next584, %vector.body578 ] ; 2 uses
  %i.kg = shl i64 %index579, 3                    ; 2 uses
  %next.gep580 = getelementptr i8, ptr %i.js, i64 %i.kg ; 2 uses
  %next.gep581 = getelementptr i8, ptr %i.jh, i64 %i.kg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.kh = getelementptr i8, ptr %next.gep581, i64 16
  %wide.load582 = load <2 x i64>, ptr %next.gep581, align 8, !tbaa !117, !alias.scope !877, !noalias !872
  %wide.load583 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !117, !alias.scope !877, !noalias !872
  %i.ki = getelementptr i8, ptr %next.gep580, i64 16
  store <2 x i64> %wide.load582, ptr %next.gep580, align 8, !tbaa !117, !alias.scope !880, !noalias !877
  store <2 x i64> %wide.load583, ptr %i.ki, align 8, !tbaa !117, !alias.scope !880, !noalias !877
  %i.kj = getelementptr i8, ptr %next.gep581, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep581, align 8, !tbaa !117, !alias.scope !877, !noalias !872
  store <2 x ptr> splat (ptr null), ptr %i.kj, align 8, !tbaa !117, !alias.scope !877, !noalias !872
  %index.next584 = add nuw i64 %index579, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next584, %n.vec577
  br i1 %i.kk, label %middle.block585, label %vector.body578, !llvm.loop !882

middle.block585:                                  ; preds = %vector.body578
  %cmp.n586 = icmp eq i64 %i.jy, %n.vec577
  br i1 %cmp.n586, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138.preheader612

.lr.ph.i.i.i.i.i.i.i138.preheader612:             ; preds = %vector.memcheck567, %.lr.ph.i.i.i.i.i.i.i138.preheader, %middle.block585
  %.012.i.i.i.i.i.i.i139.ph = phi ptr [ %i.js, %vector.memcheck567 ], [ %i.js, %.lr.ph.i.i.i.i.i.i.i138.preheader ], [ %i.ke, %middle.block585 ]
  %.0911.i.i.i.i.i.i.i140.ph = phi ptr [ %i.jh, %vector.memcheck567 ], [ %i.jh, %.lr.ph.i.i.i.i.i.i.i138.preheader ], [ %i.kf, %middle.block585 ]
  br label %.lr.ph.i.i.i.i.i.i.i138

.lr.ph.i.i.i.i.i.i.i138:                          ; preds = %.lr.ph.i.i.i.i.i.i.i138.preheader612, %.lr.ph.i.i.i.i.i.i.i138
  %.012.i.i.i.i.i.i.i139 = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i.i138 ], [ %.012.i.i.i.i.i.i.i139.ph, %.lr.ph.i.i.i.i.i.i.i138.preheader612 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i140 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i.i138 ], [ %.0911.i.i.i.i.i.i.i140.ph, %.lr.ph.i.i.i.i.i.i.i138.preheader612 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.kl = load i64, ptr %.0911.i.i.i.i.i.i.i140, align 8, !tbaa !117, !alias.scope !875, !noalias !872
  store i64 %i.kl, ptr %.012.i.i.i.i.i.i.i139, align 8, !tbaa !117, !alias.scope !872, !noalias !875
  store ptr null, ptr %.0911.i.i.i.i.i.i.i140, align 8, !tbaa !117, !alias.scope !875, !noalias !872
  %i.km = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i140, i64 8 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i139, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i141 = icmp eq ptr %i.km, %i.jc
  br i1 %.not.i.i.i.i.i.i.i141, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i138, !llvm.loop !883

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i138, %middle.block585, %.noexc145
  %.0.lcssa.i.i.i.i.i.i.i142 = phi ptr [ %i.js, %.noexc145 ], [ %i.ke, %middle.block585 ], [ %i.kn, %.lr.ph.i.i.i.i.i.i.i138 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i142, i64 8
  %.not.i23.i.i.i143 = icmp eq ptr %i.jh, null
  br i1 %.not.i23.i.i.i143, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jh) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.js, ptr %18, align 8, !tbaa !333
  store ptr %i.ko, ptr %i.jb, align 8, !tbaa !334
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jq
  store ptr %i.kp, ptr %i.jd, align 8, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bi
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.kq = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %20, i64 16
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit unwind label %bb.ch

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ks = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.bm unwind label %bb.ci

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.kt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #26
          to label %.noexc150 unwind label %bb.ci ; 11 uses

.noexc150:                                        ; preds = %bb.bm
  %i.ku = load ptr, ptr %16, align 8, !tbaa !7, !noalias !884 ; 2 uses
  store ptr %i.ku, ptr %4, align 8, !tbaa !7, !noalias !884
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kw = load ptr, ptr %i.it, align 8, !tbaa !11, !noalias !884 ; 2 uses
  store ptr %i.kw, ptr %i.kv, align 8, !tbaa !11, !noalias !884
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ky = load ptr, ptr %i.iv, align 8, !tbaa !12, !noalias !884 ; 2 uses
  store ptr %i.ky, ptr %i.kx, align 8, !tbaa !12, !noalias !884
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !noalias !884
  %i.kz = load ptr, ptr %20, align 8, !tbaa !887, !noalias !884 ; 2 uses
  store ptr %i.kz, ptr %5, align 8, !tbaa !887, !noalias !884
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lb = load ptr, ptr %i.kq, align 8, !tbaa !888, !noalias !884 ; 2 uses
  store ptr %i.lb, ptr %i.la, align 8, !tbaa !888, !noalias !884
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ld = load ptr, ptr %i.kr, align 8, !tbaa !889, !noalias !884 ; 2 uses
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !889, !noalias !884
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !noalias !884
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(160) %i.kt, i8 noundef zeroext 28)
          to label %bb.bo unwind label %bb.bn, !noalias !884

bb.bn:                                            ; preds = %.noexc150
  %i.le = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25, !noalias !884
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25, !noalias !884
  call void @_ZdlPv(ptr noundef nonnull %i.kt) #29, !noalias !884
  br label %.body151

bb.bo:                                            ; preds = %.noexc150
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb20LogicalExpressionGetE, i64 16), ptr %i.kt, align 8, !tbaa !119, !noalias !884
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 104
  store i64 %i.ks, ptr %i.lf, align 8, !tbaa !890, !noalias !884
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kt, i64 112
  store ptr %i.ku, ptr %i.lg, align 8, !tbaa !7, !noalias !884
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kt, i64 120
  store ptr %i.kw, ptr %i.lh, align 8, !tbaa !11, !noalias !884
  %i.li = getelementptr inbounds nuw i8, ptr %i.kt, i64 128
  store ptr %i.ky, ptr %i.li, align 8, !tbaa !12, !noalias !884
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kt, i64 136
  store ptr %i.kz, ptr %i.lj, align 8, !tbaa !887, !noalias !884
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kt, i64 144
  store ptr %i.lb, ptr %i.lk, align 8, !tbaa !888, !noalias !884
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kt, i64 152
  store ptr %i.ld, ptr %i.ll, align 8, !tbaa !889, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.lm = load ptr, ptr %0, align 8, !tbaa !139   ; 3 uses
  store ptr %i.kt, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i.i153 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i.i153, label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bo
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !119
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.lm) #25, !inline_history !377
  br label %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bo, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.lq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bp unwind label %bb.ch     ; 3 uses

bb.bp:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20LogicalExpressionGetESt14default_deleteIS1_EED2Ev.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16 ; 2 uses
  %i.ls = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.bq unwind label %bb.cj

bb.bq:                                            ; preds = %bb.bp
  %i.lt = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc158 unwind label %bb.cj ; 8 uses

.noexc158:                                        ; preds = %bb.bq
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(112) %i.lt, i8 noundef zeroext 29)
          to label %bb.bs unwind label %bb.br, !noalias !892

bb.br:                                            ; preds = %.noexc158
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.lt) #29, !noalias !892
  br label %.body151

bb.bs:                                            ; preds = %.noexc158
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb16LogicalDummyScanE, i64 16), ptr %i.lt, align 8, !tbaa !119, !noalias !892
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 104
  store i64 %i.ls, ptr %i.lv, align 8, !tbaa !598, !noalias !892
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 24 ; 3 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !360 ; 6 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 32 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !363
  %.not.i.i161 = icmp eq ptr %i.lx, %i.lz
  br i1 %.not.i.i161, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ma = ptrtoint ptr %i.lt to i64
  store i64 %i.ma, ptr %i.lx, align 8, !tbaa !139
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %i.mb, ptr %i.lw, align 8, !tbaa !360
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.mc = load ptr, ptr %i.lr, align 8, !tbaa !364 ; 10 uses
  %i.md = ptrtoint ptr %i.lx to i64               ; 3 uses
  %i.me = ptrtoint ptr %i.mc to i64               ; 3 uses
  %i.mf = sub i64 %i.md, %i.me                    ; 3 uses
  %i.mg = icmp eq i64 %i.mf, 9223372036854775800
  br i1 %i.mg, label %bb.bv, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i162

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc174 unwind label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit207

.noexc174:                                        ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i162: ; preds = %bb.bu
  %i.mh = ashr exact i64 %i.mf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i163 = call i64 @llvm.umax.i64(i64 %i.mh, i64 1)
  %i.mi = add nsw i64 %.sroa.speculated.i.i.i.i163, %i.mh ; 2 uses
  %i.mj = icmp ult i64 %i.mi, %i.mh
  %i.mk = call i64 @llvm.umin.i64(i64 %i.mi, i64 1152921504606846975)
  %i.ml = select i1 %i.mj, i64 1152921504606846975, i64 %i.mk ; 3 uses
  %.not.i.i.i.i164 = icmp ne i64 %i.ml, 0
  call void @llvm.assume(i1 %.not.i.i.i.i164)
  %i.mm = shl nuw nsw i64 %i.ml, 3
  %i.mn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mm) #26
          to label %.noexc175 unwind label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit207 ; 10 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i162
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mf
  %i.mp = ptrtoint ptr %i.lt to i64
  store i64 %i.mp, ptr %i.mo, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i165 = icmp eq ptr %i.mc, %i.lx
  br i1 %.not10.i.i.i.i.i.i.i165, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i170, label %.lr.ph.i.i.i.i.i.i.i166.preheader

.lr.ph.i.i.i.i.i.i.i166.preheader:                ; preds = %.noexc175
  %i.mq = sub i64 %i.md, %i.me
  %i.mr = add i64 %i.mq, -8                       ; 2 uses
  %i.ms = lshr i64 %i.mr, 3
  %i.mt = add nuw nsw i64 %i.ms, 1                ; 2 uses
  %min.iters.check596 = icmp ult i64 %i.mr, 152
  br i1 %min.iters.check596, label %.lr.ph.i.i.i.i.i.i.i166.preheader611, label %vector.memcheck589

vector.memcheck589:                               ; preds = %.lr.ph.i.i.i.i.i.i.i166.preheader
  %i.mu = add i64 %i.md, -8
  %i.mv = sub i64 %i.mu, %i.me
  %i.mw = and i64 %i.mv, -8
  %i.mx = add i64 %i.mw, 8                        ; 2 uses
  %scevgep590 = getelementptr i8, ptr %i.mn, i64 %i.mx
  %scevgep591 = getelementptr i8, ptr %i.mc, i64 %i.mx
  %bound0592 = icmp ult ptr %i.mn, %scevgep591
  %bound1593 = icmp ult ptr %i.mc, %scevgep590
  %found.conflict594 = and i1 %bound0592, %bound1593
  br i1 %found.conflict594, label %.lr.ph.i.i.i.i.i.i.i166.preheader611, label %vector.ph597

vector.ph597:                                     ; preds = %vector.memcheck589
  %n.vec599 = and i64 %i.mt, 4611686018427387900  ; 3 uses
  %i.my = shl i64 %n.vec599, 3                    ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mn, i64 %i.my  ; 2 uses
  %i.na = getelementptr i8, ptr %i.mc, i64 %i.my
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %vector.ph597
  %index601 = phi i64 [ 0, %vector.ph597 ], [ %index.next606, %vector.body600 ] ; 2 uses
  %i.nb = shl i64 %index601, 3                    ; 2 uses
  %next.gep602 = getelementptr i8, ptr %i.mn, i64 %i.nb ; 2 uses
  %next.gep603 = getelementptr i8, ptr %i.mc, i64 %i.nb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.nc = getelementptr i8, ptr %next.gep603, i64 16
  %wide.load604 = load <2 x i64>, ptr %next.gep603, align 8, !tbaa !139, !alias.scope !900, !noalias !895
  %wide.load605 = load <2 x i64>, ptr %i.nc, align 8, !tbaa !139, !alias.scope !900, !noalias !895
  %i.nd = getelementptr i8, ptr %next.gep602, i64 16
  store <2 x i64> %wide.load604, ptr %next.gep602, align 8, !tbaa !139, !alias.scope !903, !noalias !900
  store <2 x i64> %wide.load605, ptr %i.nd, align 8, !tbaa !139, !alias.scope !903, !noalias !900
  %i.ne = getelementptr i8, ptr %next.gep603, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep603, align 8, !tbaa !139, !alias.scope !900, !noalias !895
  store <2 x ptr> splat (ptr null), ptr %i.ne, align 8, !tbaa !139, !alias.scope !900, !noalias !895
  %index.next606 = add nuw i64 %index601, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next606, %n.vec599
  br i1 %i.nf, label %middle.block607, label %vector.body600, !llvm.loop !905

middle.block607:                                  ; preds = %vector.body600
  %cmp.n608 = icmp eq i64 %i.mt, %n.vec599
  br i1 %cmp.n608, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i170, label %.lr.ph.i.i.i.i.i.i.i166.preheader611

.lr.ph.i.i.i.i.i.i.i166.preheader611:             ; preds = %vector.memcheck589, %.lr.ph.i.i.i.i.i.i.i166.preheader, %middle.block607
  %.012.i.i.i.i.i.i.i167.ph = phi ptr [ %i.mn, %vector.memcheck589 ], [ %i.mn, %.lr.ph.i.i.i.i.i.i.i166.preheader ], [ %i.mz, %middle.block607 ]
  %.0911.i.i.i.i.i.i.i168.ph = phi ptr [ %i.mc, %vector.memcheck589 ], [ %i.mc, %.lr.ph.i.i.i.i.i.i.i166.preheader ], [ %i.na, %middle.block607 ]
  br label %.lr.ph.i.i.i.i.i.i.i166

.lr.ph.i.i.i.i.i.i.i166:                          ; preds = %.lr.ph.i.i.i.i.i.i.i166.preheader611, %.lr.ph.i.i.i.i.i.i.i166
  %.012.i.i.i.i.i.i.i167 = phi ptr [ %i.ni, %.lr.ph.i.i.i.i.i.i.i166 ], [ %.012.i.i.i.i.i.i.i167.ph, %.lr.ph.i.i.i.i.i.i.i166.preheader611 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i168 = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i.i166 ], [ %.0911.i.i.i.i.i.i.i168.ph, %.lr.ph.i.i.i.i.i.i.i166.preheader611 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.ng = load i64, ptr %.0911.i.i.i.i.i.i.i168, align 8, !tbaa !139, !alias.scope !898, !noalias !895
  store i64 %i.ng, ptr %.012.i.i.i.i.i.i.i167, align 8, !tbaa !139, !alias.scope !895, !noalias !898
  store ptr null, ptr %.0911.i.i.i.i.i.i.i168, align 8, !tbaa !139, !alias.scope !898, !noalias !895
  %i.nh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i168, i64 8 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i167, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i169 = icmp eq ptr %i.nh, %i.lx
  br i1 %.not.i.i.i.i.i.i.i169, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i170, label %.lr.ph.i.i.i.i.i.i.i166, !llvm.loop !906

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i170: ; preds = %.lr.ph.i.i.i.i.i.i.i166, %middle.block607, %.noexc175
  %.0.lcssa.i.i.i.i.i.i.i171 = phi ptr [ %i.mn, %.noexc175 ], [ %i.mz, %middle.block607 ], [ %i.ni, %.lr.ph.i.i.i.i.i.i.i166 ]
  %i.nj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i171, i64 8
  %.not.i23.i.i.i172 = icmp eq ptr %i.mc, null
  br i1 %.not.i23.i.i.i172, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i173, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i170
  call void @_ZdlPv(ptr noundef nonnull %i.mc) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i173

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i173: ; preds = %bb.bw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i170
  store ptr %i.mn, ptr %i.lr, align 8, !tbaa !364
  store ptr %i.nj, ptr %i.lw, align 8, !tbaa !360
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.ml
  store ptr %i.nk, ptr %i.ly, align 8, !tbaa !363
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i173, %bb.bt
  %i.nl = load ptr, ptr %20, align 8, !tbaa !887  ; 3 uses
  %i.nm = load ptr, ptr %i.kq, align 8, !tbaa !888 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.nl, %i.nm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nw, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i ], [ %i.nl, %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.nn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !333 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !334 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.nn, %i.np
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i181

.lr.ph.i.i.i.i.i.i.i181:                          ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.nu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.nn, %.lr.ph.i.i.i ] ; 2 uses
  %i.nq = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i181
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !119
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(88) %i.nq) #25, !inline_history !907
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i181
  %i.nu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i182 = icmp eq ptr %i.nu, %i.np
  br i1 %.not.i.i.i.i.i.i.i182, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i181, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !333
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.nv = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.nn, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.nv) #29
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i: ; preds = %bb.bx, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.nw, %i.nm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !908

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !887
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit
  %i.nx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.nl, %_ZNSt10unique_ptrIN6duckdb16LogicalDummyScanESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.nx) #29
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.ny = load ptr, ptr %18, align 8, !tbaa !333  ; 3 uses
  %i.nz = load ptr, ptr %i.jb, align 8, !tbaa !334 ; 2 uses
  %.not4.i.i.i183 = icmp eq ptr %i.ny, %i.nz
  br i1 %.not4.i.i.i183, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i184

.lr.ph.i.i.i184:                                  ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i185 = phi ptr [ %i.oe, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.ny, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit ] ; 2 uses
  %i.oa = load ptr, ptr %.05.i.i.i185, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i186 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i186, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i184
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !119
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(88) %i.oa) #25, !inline_history !379
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i184
  %i.oe = getelementptr inbounds nuw i8, ptr %.05.i.i.i185, i64 8 ; 2 uses
  %.not.i.i.i187 = icmp eq ptr %i.oe, %i.nz
  br i1 %.not.i.i.i187, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i184, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i188 = load ptr, ptr %18, align 8, !tbaa !333
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit
  %i.of = phi ptr [ %.pr.i188, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ny, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i189 = icmp eq ptr %i.of, null
  br i1 %.not.i.i1.i189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.of) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.og = load ptr, ptr %16, align 8, !tbaa !7    ; 3 uses
  %i.oh = load ptr, ptr %i.it, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i.i190 = icmp eq ptr %i.og, %i.oh
  br i1 %.not4.i.i.i190, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i191

.lr.ph.i.i.i191:                                  ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %.lr.ph.i.i.i191
  %.05.i.i.i192 = phi ptr [ %i.oi, %.lr.ph.i.i.i191 ], [ %i.og, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i192) #25
  %i.oi = getelementptr inbounds nuw i8, ptr %.05.i.i.i192, i64 24 ; 2 uses
  %.not.i.i.i193 = icmp eq ptr %i.oi, %i.oh
  br i1 %.not.i.i.i193, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i191, !llvm.loop !152

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i191
  %.pr.i194 = load ptr, ptr %16, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN6duckdb6Binder4BindERNS_15CreateStatementE:._crit_edge.i.i

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447: ; preds = %bb.ct, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #25
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447, %bb.bt
  %.pn296.pn.pn = phi { ptr, i32 } [ %.pn296.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447 ], [ %i.gh, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.jj = load ptr, ptr %20, align 8, !tbaa !716  ; 3 uses
  %.not.i448 = icmp eq ptr %i.jj, null
  br i1 %.not.i448, label %.body419, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i449

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i449: ; preds = %bb.cu
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !119
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(208) %i.jj) #25, !inline_history !751
  br label %.body419

.body419:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i449, %bb.cu, %bb.bs, %bb.bi
  %.pn296.pn.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.bi ], [ %i.gg, %bb.bs ], [ %.pn296.pn.pn, %bb.cu ], [ %.pn296.pn.pn, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i449 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @_ZN6duckdb16TableDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %19) #25
  br label %bb.cv

bb.cv:                                            ; preds = %.body419, %bb.br
  %.pn296.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn296.pn.pn.pn, %.body419 ], [ %i.gf, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.body353

bb.cw:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  %i.jn = load i64, ptr %i.aq, align 8, !tbaa !809
  store i64 %i.jn, ptr %31, align 8, !tbaa !809
  store ptr null, ptr %i.aq, align 8, !tbaa !809
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.jo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %.noexc456 unwind label %bb.dl

.noexc456:                                        ; preds = %bb.cw
  %i.jp = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN6duckdb6Binder16BindCreateSchemaERNS_10CreateInfoE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(320) %i.jo)
          to label %.noexc457 unwind label %bb.dl

.noexc457:                                        ; preds = %.noexc456
  %i.jq = load i64, ptr %31, align 8, !tbaa !809, !noalias !1180
  store i64 %i.jq, ptr %9, align 8, !tbaa !809, !noalias !1180
  store ptr null, ptr %31, align 8, !tbaa !809, !noalias !1180
  invoke void @_ZN6duckdb6Binder19BindCreateTableInfoENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS2_ELb1EEERNS_18SchemaCatalogEntryE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1183") align 8 %30, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(248) %i.jp)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %.noexc457
  %i.jr = load ptr, ptr %9, align 8, !tbaa !809, !noalias !1180 ; 3 uses
  %.not.i.i454 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i454, label %bb.cz, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i.i455

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i.i455: ; preds = %bb.cx
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !119
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(320) %i.jr) #25, !inline_history !1183
  br label %bb.cz

bb.cy:                                            ; preds = %.noexc457
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %9, align 8, !tbaa !809, !noalias !1180 ; 3 uses
  %.not.i4.i451 = icmp eq ptr %i.jw, null
  br i1 %.not.i4.i451, label %.body458, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i5.i452

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i5.i452: ; preds = %bb.cy
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !119
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(320) %i.jw) #25, !inline_history !1183
  br label %.body458

bb.cz:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i.i455, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ka = load ptr, ptr %31, align 8, !tbaa !809  ; 3 uses
  %.not.i460 = icmp eq ptr %i.ka, null
  br i1 %.not.i460, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i: ; preds = %bb.cz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !119
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(320) %i.ka) #25, !inline_history !826
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cz, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i
  %i.ke = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.da unwind label %bb.dm

bb.da:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 328 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !139 ; 5 uses
  %i.kh = inttoptr i64 %i.kg to ptr               ; 2 uses
  store ptr null, ptr %i.kf, align 8, !tbaa !139
  %i.ki = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.db unwind label %bb.dn

bb.db:                                            ; preds = %bb.da
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !1184, !nonnull !95, !align !96
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.kk = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc462 unwind label %bb.do ; 3 uses

.noexc462:                                        ; preds = %bb.db
  %i.kl = load i64, ptr %30, align 8, !tbaa !1222, !noalias !1219
  store i64 %i.kl, ptr %8, align 8, !tbaa !1222, !noalias !1219
  store ptr null, ptr %30, align 8, !tbaa !1222, !noalias !1219
  invoke void @_ZN6duckdb18LogicalCreateTableC1ERNS_18SchemaCatalogEntryENS_10unique_ptrINS_20BoundCreateTableInfoESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(120) %i.kk, ptr noundef nonnull align 8 dereferenceable(248) %i.kj, ptr noundef nonnull %8)
          to label %bb.dc unwind label %bb.dd, !noalias !1219

bb.dc:                                            ; preds = %.noexc462
  store ptr %i.kk, ptr %32, align 8, !tbaa !1224, !alias.scope !1219
  %i.km = load ptr, ptr %8, align 8, !tbaa !1222, !noalias !1219 ; 3 uses
  %.not.i.i461 = icmp eq ptr %i.km, null
  br i1 %.not.i.i461, label %bb.de, label %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i.i: ; preds = %bb.dc
  call void @_ZN6duckdb20BoundCreateTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.km) #25, !noalias !1219
  call void @_ZdlPv(ptr noundef nonnull %i.km) #29, !noalias !1219
  br label %bb.de

bb.dd:                                            ; preds = %.noexc462
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #25, !noalias !1219
  call void @_ZdlPv(ptr noundef nonnull %i.kk) #29, !noalias !1219
  br label %.body463

bb.de:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not909 = icmp eq i64 %i.kg, 0
  br i1 %.not909, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ko = getelementptr inbounds nuw i8, ptr %i.au, i64 115
  store i8 1, ptr %i.ko, align 1, !tbaa !149
  %i.kp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18LogicalCreateTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dg unwind label %bb.dp     ; 3 uses

bb.dg:                                            ; preds = %bb.df
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 24 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !360 ; 6 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 32 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !363
  %.not.i.i465 = icmp eq ptr %i.ks, %i.ku
  br i1 %.not.i.i465, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i64 %i.kg, ptr %i.ks, align 8, !tbaa !139
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kv, ptr %i.kr, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.di:                                            ; preds = %bb.dg
  %i.kw = load ptr, ptr %i.kq, align 8, !tbaa !364 ; 10 uses
  %i.kx = ptrtoint ptr %i.ks to i64               ; 3 uses
  %i.ky = ptrtoint ptr %i.kw to i64               ; 3 uses
  %i.kz = sub i64 %i.kx, %i.ky                    ; 3 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775800
  br i1 %i.la, label %bb.dj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc467 unwind label %bb.dp

.noexc467:                                        ; preds = %bb.dj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.di
  %i.lb = ashr exact i64 %i.kz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.lc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lb ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  %i.le = call i64 @llvm.umin.i64(i64 %i.lc, i64 1152921504606846975)
  %i.lf = select i1 %i.ld, i64 1152921504606846975, i64 %i.le ; 3 uses
  %.not.i.i.i.i466 = icmp ne i64 %i.lf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i466)
  %i.lg = shl nuw nsw i64 %i.lf, 3
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #26
          to label %.noexc468 unwind label %bb.dp ; 10 uses

.noexc468:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kz
  store i64 %i.kg, ptr %i.li, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.kw, %i.ks
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc468
  %i.lj = sub i64 %i.kx, %i.ky
  %i.lk = add i64 %i.lj, -8                       ; 2 uses
  %i.ll = lshr i64 %i.lk, 3
  %i.lm = add nuw nsw i64 %i.ll, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lk, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1131, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ln = add i64 %i.kx, -8
  %i.lo = sub i64 %i.ln, %i.ky
  %i.lp = and i64 %i.lo, -8
  %i.lq = add i64 %i.lp, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lh, i64 %i.lq
  %scevgep1127 = getelementptr i8, ptr %i.kw, i64 %i.lq
  %bound0 = icmp ult ptr %i.lh, %scevgep1127
  %bound1 = icmp ult ptr %i.kw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1131, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lm, 4611686018427387900     ; 3 uses
  %i.lr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lh, i64 %i.lr  ; 2 uses
  %i.lt = getelementptr i8, ptr %i.kw, i64 %i.lr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lh, i64 %i.lu ; 2 uses
  %next.gep1128 = getelementptr i8, ptr %i.kw, i64 %i.lu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.lv = getelementptr i8, ptr %next.gep1128, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1128, align 8, !tbaa !139, !alias.scope !1231, !noalias !1226
  %wide.load1129 = load <2 x i64>, ptr %i.lv, align 8, !tbaa !139, !alias.scope !1231, !noalias !1226
  %i.lw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !139, !alias.scope !1234, !noalias !1231
  store <2 x i64> %wide.load1129, ptr %i.lw, align 8, !tbaa !139, !alias.scope !1234, !noalias !1231
  %i.lx = getelementptr i8, ptr %next.gep1128, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1128, align 8, !tbaa !139, !alias.scope !1231, !noalias !1226
  store <2 x ptr> splat (ptr null), ptr %i.lx, align 8, !tbaa !139, !alias.scope !1231, !noalias !1226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ly = icmp eq i64 %index.next, %n.vec
  br i1 %i.ly, label %middle.block, label %vector.body, !llvm.loop !1236

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1131

.lr.ph.i.i.i.i.i.i.i.preheader1131:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.lh, %vector.memcheck ], [ %i.lh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ls, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.kw, %vector.memcheck ], [ %i.kw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.lt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1131, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.mb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1131 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1131 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.lz = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !1229, !noalias !1226
  store i64 %i.lz, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !1226, !noalias !1229
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !1229, !noalias !1226
  %i.ma = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ma, %i.ks
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1237

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc468
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.lh, %.noexc468 ], [ %i.ls, %middle.block ], [ %i.mb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.kw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kw) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.dk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.lh, ptr %i.kq, align 8, !tbaa !364
  store ptr %i.mc, ptr %i.kr, align 8, !tbaa !360
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lf
  store ptr %i.md, ptr %i.kt, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.dl:                                            ; preds = %.noexc456, %bb.cw
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %.body458

.body458:                                         ; preds = %bb.cy, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i5.i452, %bb.dl
  %eh.lpad-body459 = phi { ptr, i32 } [ %i.me, %bb.dl ], [ %i.jv, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i5.i452 ], [ %i.jv, %bb.cy ] ; 2 uses
  %i.mf = load ptr, ptr %31, align 8, !tbaa !809  ; 3 uses
  %.not.i469 = icmp eq ptr %i.mf, null
  br i1 %.not.i469, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit471, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i470

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i470: ; preds = %.body458
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !119
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(320) %i.mf) #25, !inline_history !826
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit471

bb.dm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit488

bb.dn:                                            ; preds = %bb.da
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.do:                                            ; preds = %bb.db
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body463

bb.dp:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.dj, %bb.df
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %32, align 8, !tbaa !1224 ; 3 uses
  %.not.i472 = icmp eq ptr %i.mn, null
  br i1 %.not.i472, label %.body463, label %_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i: ; preds = %bb.dp
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !119
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(120) %i.mn) #25, !inline_history !1238
  br label %.body463

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.dh, %bb.de
  %i.mr = load ptr, ptr %32, align 8, !tbaa !1224
  store ptr null, ptr %32, align 8, !tbaa !1224
  %i.ms = load ptr, ptr %15, align 8, !tbaa !139  ; 3 uses
  store ptr %i.mr, ptr %15, align 8, !tbaa !139
  %.not.i.i.i.i.i473 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i.i.i473, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit484, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit478

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit478: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !119
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8
  call void %i.mv(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ms) #25, !inline_history !377
  %.pr874 = load ptr, ptr %32, align 8, !tbaa !1224 ; 3 uses
  %.not.i479 = icmp eq ptr %.pr874, null
  br i1 %.not.i479, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit484, label %_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i480

_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i480: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit478
  %i.mw = load ptr, ptr %.pr874, align 8, !tbaa !119
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(120) %.pr874) #25, !inline_history !1238
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit484

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit484: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i480, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit478
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  %i.mz = load ptr, ptr %30, align 8, !tbaa !1222 ; 3 uses
  %.not.i485 = icmp eq ptr %i.mz, null
  br i1 %.not.i485, label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit484
  call void @_ZN6duckdb20BoundCreateTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %i.mz) #25
  call void @_ZdlPv(ptr noundef nonnull %i.mz) #29
  br label %_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit484, %_ZNKSt14default_deleteIN6duckdb20BoundCreateTableInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalCreateESt14default_deleteIS1_EED2Ev.exit363

.body463:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i, %bb.dp, %bb.do, %bb.dd
  %.pn284 = phi { ptr, i32 } [ %i.kn, %bb.dd ], [ %i.ml, %bb.do ], [ %i.mm, %bb.dp ], [ %i.mm, %_ZNKSt14default_deleteIN6duckdb18LogicalCreateTableEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25
  br label %bb.dq

bb.dq:                                            ; preds = %.body463, %bb.dn
  %.pn284.pn = phi { ptr, i32 } [ %.pn284, %.body463 ], [ %i.mk, %bb.dn ] ; 2 uses
  %.not.i486 = icmp eq i64 %i.kg, 0
  br i1 %.not.i486, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit488, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i487

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i487: ; preds = %bb.dq
  %i.na = load ptr, ptr %i.kh, align 8, !tbaa !119
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.kh) #25, !inline_history !181
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit488

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit488: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i487, %bb.dq, %bb.dm
  %.pn284.pn.pn = phi { ptr, i32 } [ %i.mj, %bb.dm ], [ %.pn284.pn, %bb.dq ], [ %.pn284.pn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i487 ]
  call void @_ZNSt10unique_ptrIN6duckdb20BoundCreateTableInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %30) #25
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit471

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit471: ; preds = %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i470, %.body458, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit488
  %.pn284.pn.pn.pn = phi { ptr, i32 } [ %.pn284.pn.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit488 ], [ %eh.lpad-body459, %.body458 ], [ %eh.lpad-body459, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i470 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #25
  br label %.body353

bb.dr:                                            ; preds = %bb.h
  %i.nd = invoke noundef nonnull align 8 dereferenceable(320) ptr @_ZNK6duckdb10unique_ptrINS_10CreateInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.ds unwind label %bb.ef

bb.ds:                                            ; preds = %bb.dr
  %i.ne = invoke noundef nonnull align 8 dereferenceable(248) ptr @_ZN6duckdb6Binder16BindCreateSchemaERNS_10CreateInfoE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(320) %i.nd)
          to label %bb.dt unwind label %bb.ef
end_hunk_5
begin_hunk_6_@_ZN6duckdb6Binder4BindERNS_16ExecuteStatementE:bb.a
  store ptr %i.my, ptr %i.mx, align 8, !tbaa !102
  %i.mz = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.na = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !1666
  store i64 %i.nb, ptr %i.mz, align 8, !tbaa !1666
  %i.nc = getelementptr inbounds nuw i8, ptr %33, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nc, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !295
  %i.nd = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 5 uses
  store ptr null, ptr %i.nd, align 8, !tbaa !1667
  %i.ne = icmp eq ptr %i.mu, %i.bb
  br i1 %i.ne, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  store ptr %i.nd, ptr %33, align 8, !tbaa !1633
  %i.nf = load ptr, ptr %i.bb, align 8, !tbaa !1667
  store ptr %i.nf, ptr %i.nd, align 8, !tbaa !1667
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %i.ng = phi ptr [ %i.nd, %bb.et ], [ %i.mu, %bb.es ]
  %.not.i.i.i.i149 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i.i149, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nh = getelementptr inbounds nuw i8, ptr %i.my, i64 128
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !757
  %i.nj = urem i64 %i.ni, %i.mw
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nj
  store ptr %i.mx, ptr %i.nk, align 8, !tbaa !756
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.eu, %bb.ev
  store i64 0, ptr %i.bf, align 8, !tbaa !1001
  store i64 1, ptr %i.bc, align 8, !tbaa !1635
  store ptr null, ptr %i.bb, align 8, !tbaa !1667
  store ptr %i.bb, ptr %9, align 8, !tbaa !1633
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb21PreparedStatementData4BindESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_18BoundParameterDataENS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(266) %i.mt, ptr noundef nonnull %33)
          to label %bb.ew unwind label %bb.fk

bb.ew:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  %i.nl = load ptr, ptr %i.mx, align 8, !tbaa !1665 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ew, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.nm, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.nl, %bb.ew ] ; 6 uses
  %i.nm = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 104
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.np) #25
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(88) %i.no) #25
  %i.nq = load ptr, ptr %i.nn, align 8, !tbaa !25 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.nq) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i150 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i.i150, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1668

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.ew
  %i.nt = load ptr, ptr %33, align 8, !tbaa !1633
  %i.nu = load i64, ptr %i.mv, align 8, !tbaa !1635
  %i.nv = shl i64 %i.nu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.nt, i8 0, i64 %i.nv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  %i.nw = load ptr, ptr %33, align 8, !tbaa !1633 ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.nd
  br i1 %i.nx, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.ex

bb.ex:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.nw) #29
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb18BoundParameterDataEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ex
  %.not284 = icmp eq ptr %.sroa.0248.3, null
  br i1 %.not284, label %bb.fn, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ny = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc152 unwind label %bb.fl ; 8 uses

.noexc152:                                        ; preds = %bb.ey
  %i.nz = load ptr, ptr %8, align 16, !tbaa !1672, !noalias !1669 ; 2 uses
  store ptr %i.nz, ptr %4, align 8, !tbaa !1672, !noalias !1669
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ob = load ptr, ptr %i.an, align 8, !tbaa !175, !noalias !1669 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !175, !noalias !1669
  store ptr %i.ob, ptr %i.oa, align 8, !tbaa !175, !noalias !1669
  store ptr null, ptr %8, align 16, !tbaa !1672, !noalias !1669
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.ny, i8 noundef zeroext -80)
          to label %.noexc.i151 unwind label %bb.fb, !noalias !1669

.noexc.i151:                                      ; preds = %.noexc152
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb14LogicalExecuteE, i64 16), ptr %i.ny, align 8, !tbaa !119, !noalias !1669
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 104 ; 3 uses
  store ptr %i.nz, ptr %i.oc, align 8, !tbaa !1672, !noalias !1669
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 112
  store ptr null, ptr %i.oa, align 8, !tbaa !175, !noalias !1669
  store ptr %i.ob, ptr %i.od, align 8, !tbaa !175, !noalias !1669
  store ptr null, ptr %4, align 8, !tbaa !1672, !noalias !1669
  %i.oe = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oc)
          to label %bb.ez unwind label %bb.fa, !noalias !1669

bb.ez:                                            ; preds = %.noexc.i151
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 64
  %i.oh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.og, ptr noundef nonnull align 8 dereferenceable(24) %i.of)
          to label %bb.fc unwind label %bb.fa, !noalias !1669 ; 0 uses

bb.fa:                                            ; preds = %bb.ez, %.noexc.i151
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.oc) #25, !noalias !1669
  call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(120) %i.ny) #25, !noalias !1669
  br label %.body.i

bb.fb:                                            ; preds = %.noexc152
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.fb, %bb.fa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.oj, %bb.fb ], [ %i.oi, %bb.fa ]
  call void @_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25, !noalias !1669
  call void @_ZdlPv(ptr noundef nonnull %i.ny) #29, !noalias !1669
  br label %.body153

bb.fc:                                            ; preds = %bb.ez
  store ptr %i.ny, ptr %34, align 8, !tbaa !1674, !alias.scope !1669
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ok = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14LogicalExecuteESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.fd unwind label %bb.fm     ; 3 uses

bb.fd:                                            ; preds = %bb.fc
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 24 ; 3 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !360 ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 32 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !363
  %.not.i.i155 = icmp eq ptr %i.on, %i.op
  br i1 %.not.i.i155, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.oq = ptrtoint ptr %.sroa.0248.3 to i64
  store i64 %i.oq, ptr %i.on, align 8, !tbaa !139
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store ptr %i.or, ptr %i.om, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ff:                                            ; preds = %bb.fd
  %i.os = load ptr, ptr %i.ol, align 8, !tbaa !364 ; 10 uses
  %i.ot = ptrtoint ptr %i.on to i64               ; 3 uses
  %i.ou = ptrtoint ptr %i.os to i64               ; 3 uses
  %i.ov = sub i64 %i.ot, %i.ou                    ; 3 uses
  %i.ow = icmp eq i64 %i.ov, 9223372036854775800
  br i1 %i.ow, label %bb.fg, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc158 unwind label %bb.fm

.noexc158:                                        ; preds = %bb.fg
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ff
  %i.ox = ashr exact i64 %i.ov, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ox, i64 1)
  %i.oy = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ox ; 2 uses
  %i.oz = icmp ult i64 %i.oy, %i.ox
  %i.pa = call i64 @llvm.umin.i64(i64 %i.oy, i64 1152921504606846975)
  %i.pb = select i1 %i.oz, i64 1152921504606846975, i64 %i.pa ; 3 uses
  %.not.i.i.i.i156 = icmp ne i64 %i.pb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i156)
  %i.pc = shl nuw nsw i64 %i.pb, 3
  %i.pd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pc) #26
          to label %.noexc159 unwind label %bb.fm ; 10 uses

.noexc159:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.ov
  %i.pf = ptrtoint ptr %.sroa.0248.3 to i64
  store i64 %i.pf, ptr %i.pe, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.os, %i.on
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc159
  %i.pg = sub i64 %i.ot, %i.ou
  %i.ph = add i64 %i.pg, -8                       ; 2 uses
  %i.pi = lshr i64 %i.ph, 3
  %i.pj = add nuw nsw i64 %i.pi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ph, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader413, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.pk = add i64 %i.ot, -8
  %i.pl = sub i64 %i.pk, %i.ou
  %i.pm = and i64 %i.pl, -8
  %i.pn = add i64 %i.pm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.pd, i64 %i.pn
  %scevgep409 = getelementptr i8, ptr %i.os, i64 %i.pn
  %bound0 = icmp ult ptr %i.pd, %scevgep409
  %bound1 = icmp ult ptr %i.os, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader413, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.pj, 4611686018427387900     ; 3 uses
  %i.po = shl i64 %n.vec, 3                       ; 2 uses
  %i.pp = getelementptr i8, ptr %i.pd, i64 %i.po  ; 2 uses
  %i.pq = getelementptr i8, ptr %i.os, i64 %i.po
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.pr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.pd, i64 %i.pr ; 2 uses
  %next.gep410 = getelementptr i8, ptr %i.os, i64 %i.pr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.ps = getelementptr i8, ptr %next.gep410, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep410, align 8, !tbaa !139, !alias.scope !1681, !noalias !1676
  %wide.load411 = load <2 x i64>, ptr %i.ps, align 8, !tbaa !139, !alias.scope !1681, !noalias !1676
  %i.pt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !139, !alias.scope !1684, !noalias !1681
  store <2 x i64> %wide.load411, ptr %i.pt, align 8, !tbaa !139, !alias.scope !1684, !noalias !1681
  %i.pu = getelementptr i8, ptr %next.gep410, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep410, align 8, !tbaa !139, !alias.scope !1681, !noalias !1676
  store <2 x ptr> splat (ptr null), ptr %i.pu, align 8, !tbaa !139, !alias.scope !1681, !noalias !1676
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pv = icmp eq i64 %index.next, %n.vec
  br i1 %i.pv, label %middle.block, label %vector.body, !llvm.loop !1686

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.pj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader413

.lr.ph.i.i.i.i.i.i.i.preheader413:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.pd, %vector.memcheck ], [ %i.pd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.pp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.os, %vector.memcheck ], [ %i.os, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.pq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader413, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.py, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader413 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader413 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  %i.pw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !1679, !noalias !1676
  store i64 %i.pw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !1676, !noalias !1679
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !1679, !noalias !1676
  %i.px = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i157 = icmp eq ptr %i.px, %i.on
  br i1 %.not.i.i.i.i.i.i.i157, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1687

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc159
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.pd, %.noexc159 ], [ %i.pp, %middle.block ], [ %i.py, %.lr.ph.i.i.i.i.i.i.i ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.os) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.fh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.pd, ptr %i.ol, align 8, !tbaa !364
  store ptr %i.pz, ptr %i.om, align 8, !tbaa !360
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pb
  store ptr %i.qa, ptr %i.oo, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.fe
  %i.qb = load ptr, ptr %34, align 8, !tbaa !1674
  store ptr null, ptr %34, align 8, !tbaa !1674
  %i.qc = load ptr, ptr %0, align 8, !tbaa !139   ; 3 uses
  store ptr %i.qb, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i.i160 = icmp eq ptr %i.qc, null
  br i1 %.not.i.i.i.i.i160, label %_ZNSt10unique_ptrIN6duckdb14LogicalExecuteESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !119
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qc) #25, !inline_history !377
  %.pr275 = load ptr, ptr %34, align 8, !tbaa !1674 ; 3 uses
  %.not.i164 = icmp eq ptr %.pr275, null
  br i1 %.not.i164, label %_ZNSt10unique_ptrIN6duckdb14LogicalExecuteESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.qg = load ptr, ptr %.pr275, align 8, !tbaa !119
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(120) %.pr275) #25, !inline_history !1688
  br label %_ZNSt10unique_ptrIN6duckdb14LogicalExecuteESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14LogicalExecuteESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit186

bb.fi:                                            ; preds = %.noexc145, %bb.eo, %bb.em, %bb.el
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gg

bb.fj:                                            ; preds = %bb.er, %bb.eq, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %bb.ep
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %.body172

bb.fk:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  %i.ql = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %33) #25
  br label %.body172

bb.fl:                                            ; preds = %bb.ey
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.fm:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.fg, %bb.fc
  %i.qn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qo = load ptr, ptr %34, align 8, !tbaa !1674 ; 3 uses
  %.not.i165 = icmp eq ptr %i.qo, null
  br i1 %.not.i165, label %.body153, label %_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i166

_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i166: ; preds = %bb.fm
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !119
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(120) %i.qo) #25, !inline_history !1688
  br label %.body153

.body153:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i166, %bb.fm, %bb.fl, %.body.i
  %.pn74 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.qm, %bb.fl ], [ %i.qn, %bb.fm ], [ %i.qn, %_ZNKSt14default_deleteIN6duckdb14LogicalExecuteEEclEPS1_.exit.i166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  br label %.body172

bb.fn:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb18BoundParameterDataENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.qs = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc171 unwind label %bb.fs ; 8 uses

.noexc171:                                        ; preds = %bb.fn
  %i.qt = load ptr, ptr %8, align 16, !tbaa !1672, !noalias !1689 ; 2 uses
  store ptr %i.qt, ptr %3, align 8, !tbaa !1672, !noalias !1689
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.qv = load ptr, ptr %i.an, align 8, !tbaa !175, !noalias !1689 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !175, !noalias !1689
  store ptr %i.qv, ptr %i.qu, align 8, !tbaa !175, !noalias !1689
  store ptr null, ptr %8, align 16, !tbaa !1672, !noalias !1689
  invoke void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(120) %i.qs, i8 noundef zeroext -80)
          to label %.noexc.i170 unwind label %bb.fq, !noalias !1689

.noexc.i170:                                      ; preds = %.noexc171
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb14LogicalExecuteE, i64 16), ptr %i.qs, align 8, !tbaa !119, !noalias !1689
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qs, i64 104 ; 3 uses
  store ptr %i.qt, ptr %i.qw, align 8, !tbaa !1672, !noalias !1689
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 112
  store ptr null, ptr %i.qu, align 8, !tbaa !175, !noalias !1689
  store ptr %i.qv, ptr %i.qx, align 8, !tbaa !175, !noalias !1689
  store ptr null, ptr %3, align 8, !tbaa !1672, !noalias !1689
  %i.qy = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qw)
          to label %bb.fo unwind label %bb.fp, !noalias !1689

bb.fo:                                            ; preds = %.noexc.i170
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 48
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qs, i64 64
  %i.rb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ra, ptr noundef nonnull align 8 dereferenceable(24) %i.qz)
          to label %bb.fr unwind label %bb.fp, !noalias !1689 ; 0 uses

bb.fp:                                            ; preds = %bb.fo, %.noexc.i170
  %i.rc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qw) #25, !noalias !1689
  call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(120) %i.qs) #25, !noalias !1689
  br label %.body.i168

bb.fq:                                            ; preds = %.noexc171
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i168

.body.i168:                                       ; preds = %bb.fq, %bb.fp
  %eh.lpad-body.i169 = phi { ptr, i32 } [ %i.rd, %bb.fq ], [ %i.rc, %bb.fp ]
  call void @_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25, !noalias !1689
  call void @_ZdlPv(ptr noundef nonnull %i.qs) #29, !noalias !1689
  br label %.body172

bb.fr:                                            ; preds = %bb.fo
end_hunk_6
begin_hunk_7_@_ZN6duckdb6Binder4BindERNS_15ExportStatementE:bb.a
.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.jw
  %lpad.loopexit.split-lp1050 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ke:                                            ; preds = %bb.kd, %.noexc.i.i
  %i.ari = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %.noexc787, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.kd, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %.sroa.0934.0 = load ptr, ptr %.sroa.0934.01260, align 8, !tbaa !102 ; 2 uses
  %.not1045 = icmp eq ptr %.sroa.0934.0, null
  br i1 %.not1045, label %._crit_edge1263, label %bb.ju

._crit_edge1268.loopexit:                         ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINS6_5ValueELb1ESaIS8_EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SA_EEE5eraseERSE_.exit810
  %.pre1402 = load ptr, ptr %57, align 8, !tbaa !20
  %.pre1403 = load ptr, ptr %i.apt, align 8, !tbaa !23
  br label %._crit_edge1268

._crit_edge1268:                                  ; preds = %._crit_edge1268.loopexit, %._crit_edge1263
  %i.arj = phi ptr [ %.pre1403, %._crit_edge1268.loopexit ], [ %.pre1401, %._crit_edge1263 ] ; 2 uses
  %i.ark = phi ptr [ %.pre1402, %._crit_edge1268.loopexit ], [ %.pre1399, %._crit_edge1263 ] ; 3 uses
  %.not4.i.i.i793 = icmp eq ptr %i.ark, %i.arj
  br i1 %.not4.i.i.i793, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i801, label %.lr.ph.i.i.i794

.lr.ph.i.i.i794:                                  ; preds = %._crit_edge1268, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i797
  %.05.i.i.i795 = phi ptr [ %i.aro, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i797 ], [ %i.ark, %._crit_edge1268 ] ; 3 uses
  %i.arl = load ptr, ptr %.05.i.i.i795, align 8, !tbaa !25 ; 2 uses
  %i.arm = getelementptr inbounds nuw i8, ptr %.05.i.i.i795, i64 16
  %i.arn = icmp eq ptr %i.arl, %i.arm
  br i1 %i.arn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i797, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i796

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i796: ; preds = %.lr.ph.i.i.i794
  call void @_ZdlPv(ptr noundef %i.arl) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i797

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i797: ; preds = %.lr.ph.i.i.i794, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i796
  %i.aro = getelementptr inbounds nuw i8, ptr %.05.i.i.i795, i64 32 ; 2 uses
  %.not.i.i.i798 = icmp eq ptr %i.aro, %i.arj
  br i1 %.not.i.i.i798, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i799, label %.lr.ph.i.i.i794, !llvm.loop !153

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i799: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i797
  %.pr.i800 = load ptr, ptr %57, align 8, !tbaa !20
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i801

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i801: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i799, %._crit_edge1268
  %i.arp = phi ptr [ %.pr.i800, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i799 ], [ %i.ark, %._crit_edge1268 ] ; 2 uses
  %.not.i.i1.i802 = icmp eq ptr %i.arp, null
  br i1 %.not.i.i1.i802, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit804, label %bb.kf

bb.kf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i801
  call void @_ZdlPv(ptr noundef nonnull %i.arp) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit804

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit804: ; preds = %bb.js, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i801, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25
  %i.arq = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 2 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !283 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.arr, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10CopyOptionEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i805

.lr.ph.i.i.i.i805:                                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit804, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ars, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.arr, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit804 ] ; 5 uses
  %i.ars = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.aru = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %i.aru) #25
  %i.arv = load ptr, ptr %i.art, align 8, !tbaa !25 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.arx = icmp eq ptr %i.arv, %i.arw
  br i1 %i.arx, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i806

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i806: ; preds = %.lr.ph.i.i.i.i805
  call void @_ZdlPv(ptr noundef %i.arv) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i805, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i806
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i807 = icmp eq ptr %i.ars, null
  br i1 %.not.i.i.i.i807, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10CopyOptionEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i805, !llvm.loop !284

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10CopyOptionEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit804
  %i.ary = load ptr, ptr %56, align 8, !tbaa !246
  %i.arz = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.asa = load i64, ptr %i.arz, align 8, !tbaa !248
  %i.asb = shl i64 %i.asa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ary, i8 0, i64 %i.asb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arq, i8 0, i64 16, i1 false)
  %i.asc = load ptr, ptr %56, align 8, !tbaa !246 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %56, i64 48
  %i.ase = icmp eq ptr %i.asc, %i.asd
  br i1 %i.ase, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.kg

bb.kg:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10CopyOptionEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.asc) #29
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10CopyOptionEESaISA_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %bb.kj

.lr.ph1267:                                       ; preds = %._crit_edge1263, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINS6_5ValueELb1ESaIS8_EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SA_EEE5eraseERSE_.exit810
  %.sroa.0928.01265 = phi ptr [ %i.asg, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINS6_5ValueELb1ESaIS8_EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SA_EEE5eraseERSE_.exit810 ], [ %.pre1399, %._crit_edge1263 ] ; 2 uses
  %i.asf = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.ago, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0928.01265)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINS6_5ValueELb1ESaIS8_EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SA_EEE5eraseERSE_.exit810 unwind label %bb.kh ; 0 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINS6_5ValueELb1ESaIS8_EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SA_EEE5eraseERSE_.exit810: ; preds = %.lr.ph1267
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.0928.01265, i64 32 ; 2 uses
  %.not1046 = icmp eq ptr %i.asg, %.pre1401
  br i1 %.not1046, label %._crit_edge1268.loopexit, label %.lr.ph1267

bb.kh:                                            ; preds = %.lr.ph1267
  %i.ash = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ke, %bb.kh
  %.pn244.pn = phi { ptr, i32 } [ %i.ash, %bb.kh ], [ %i.ari, %bb.ke ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1049, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp1050, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %57) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %56) #25
  br label %bb.ki

bb.ki:                                            ; preds = %.loopexit.split-lp, %bb.jt
  %.pn244.pn.pn = phi { ptr, i32 } [ %.pn244.pn, %.loopexit.split-lp ], [ %i.apu, %bb.jt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %bb.la

bb.kj:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10CopyOptionENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1029
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  invoke void @_ZN6duckdb9make_uniqINS_13LogicalExportEJRNS_12CopyFunctionENS_10unique_ptrINS_8CopyInfoESt14default_deleteIS5_ELb1EEENS4_INS_15BoundExportDataES6_IS9_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1798") align 8 %58, ptr noundef nonnull align 8 dereferenceable(888) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.kk unwind label %bb.kr

bb.kk:                                            ; preds = %bb.kj
  %i.asi = load ptr, ptr %42, align 8             ; 2 uses
  %.not1047 = icmp eq ptr %i.asi, null
  %i.asj = ptrtoint ptr %i.asi to i64             ; 2 uses
  br i1 %.not1047, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit826, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ask = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalExportESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.km unwind label %bb.ks     ; 3 uses

bb.km:                                            ; preds = %bb.kl
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 16 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 24 ; 3 uses
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !360 ; 6 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ask, i64 32 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !363
  %.not.i.i811 = icmp eq ptr %i.asn, %i.asp
  br i1 %.not.i.i811, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  store i64 %i.asj, ptr %i.asn, align 8, !tbaa !139
  store ptr null, ptr %42, align 8, !tbaa !139
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  store ptr %i.asq, ptr %i.asm, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit826

bb.ko:                                            ; preds = %bb.km
  %i.asr = load ptr, ptr %i.asl, align 8, !tbaa !364 ; 10 uses
  %i.ass = ptrtoint ptr %i.asn to i64             ; 3 uses
  %i.ast = ptrtoint ptr %i.asr to i64             ; 3 uses
  %i.asu = sub i64 %i.ass, %i.ast                 ; 3 uses
  %i.asv = icmp eq i64 %i.asu, 9223372036854775800
  br i1 %i.asv, label %bb.kp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i812

bb.kp:                                            ; preds = %bb.ko
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc824 unwind label %bb.ks

.noexc824:                                        ; preds = %bb.kp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i812: ; preds = %bb.ko
  %i.asw = ashr exact i64 %i.asu, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i813 = call i64 @llvm.umax.i64(i64 %i.asw, i64 1)
  %i.asx = add nsw i64 %.sroa.speculated.i.i.i.i813, %i.asw ; 2 uses
  %i.asy = icmp ult i64 %i.asx, %i.asw
  %i.asz = call i64 @llvm.umin.i64(i64 %i.asx, i64 1152921504606846975)
  %i.ata = select i1 %i.asy, i64 1152921504606846975, i64 %i.asz ; 3 uses
  %.not.i.i.i.i814 = icmp ne i64 %i.ata, 0
  call void @llvm.assume(i1 %.not.i.i.i.i814)
  %i.atb = shl nuw nsw i64 %i.ata, 3
  %i.atc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atb) #26
          to label %.noexc825 unwind label %bb.ks ; 10 uses

.noexc825:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i812
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 %i.asu
  store i64 %i.asj, ptr %i.atd, align 8, !tbaa !139
  store ptr null, ptr %42, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i815 = icmp eq ptr %i.asr, %i.asn
  br i1 %.not10.i.i.i.i.i.i.i815, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i820, label %.lr.ph.i.i.i.i.i.i.i816.preheader

.lr.ph.i.i.i.i.i.i.i816.preheader:                ; preds = %.noexc825
  %i.ate = sub i64 %i.ass, %i.ast
  %i.atf = add i64 %i.ate, -8                     ; 2 uses
  %i.atg = lshr i64 %i.atf, 3
  %i.ath = add nuw nsw i64 %i.atg, 1              ; 2 uses
  %min.iters.check1921 = icmp ult i64 %i.atf, 152
  br i1 %min.iters.check1921, label %.lr.ph.i.i.i.i.i.i.i816.preheader1936, label %vector.memcheck1914

vector.memcheck1914:                              ; preds = %.lr.ph.i.i.i.i.i.i.i816.preheader
  %i.ati = add i64 %i.ass, -8
  %i.atj = sub i64 %i.ati, %i.ast
  %i.atk = and i64 %i.atj, -8
  %i.atl = add i64 %i.atk, 8                      ; 2 uses
  %scevgep1915 = getelementptr i8, ptr %i.atc, i64 %i.atl
  %scevgep1916 = getelementptr i8, ptr %i.asr, i64 %i.atl
  %bound01917 = icmp ult ptr %i.atc, %scevgep1916
  %bound11918 = icmp ult ptr %i.asr, %scevgep1915
  %found.conflict1919 = and i1 %bound01917, %bound11918
  br i1 %found.conflict1919, label %.lr.ph.i.i.i.i.i.i.i816.preheader1936, label %vector.ph1922

vector.ph1922:                                    ; preds = %vector.memcheck1914
  %n.vec1924 = and i64 %i.ath, 4611686018427387900 ; 3 uses
  %i.atm = shl i64 %n.vec1924, 3                  ; 2 uses
  %i.atn = getelementptr i8, ptr %i.atc, i64 %i.atm ; 2 uses
  %i.ato = getelementptr i8, ptr %i.asr, i64 %i.atm
  br label %vector.body1925

vector.body1925:                                  ; preds = %vector.body1925, %vector.ph1922
  %index1926 = phi i64 [ 0, %vector.ph1922 ], [ %index.next1931, %vector.body1925 ] ; 2 uses
  %i.atp = shl i64 %index1926, 3                  ; 2 uses
  %next.gep1927 = getelementptr i8, ptr %i.atc, i64 %i.atp ; 2 uses
  %next.gep1928 = getelementptr i8, ptr %i.asr, i64 %i.atp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  %i.atq = getelementptr i8, ptr %next.gep1928, i64 16
  %wide.load1929 = load <2 x i64>, ptr %next.gep1928, align 8, !tbaa !139, !alias.scope !1859, !noalias !1854
  %wide.load1930 = load <2 x i64>, ptr %i.atq, align 8, !tbaa !139, !alias.scope !1859, !noalias !1854
  %i.atr = getelementptr i8, ptr %next.gep1927, i64 16
  store <2 x i64> %wide.load1929, ptr %next.gep1927, align 8, !tbaa !139, !alias.scope !1862, !noalias !1859
  store <2 x i64> %wide.load1930, ptr %i.atr, align 8, !tbaa !139, !alias.scope !1862, !noalias !1859
  %i.ats = getelementptr i8, ptr %next.gep1928, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1928, align 8, !tbaa !139, !alias.scope !1859, !noalias !1854
  store <2 x ptr> splat (ptr null), ptr %i.ats, align 8, !tbaa !139, !alias.scope !1859, !noalias !1854
  %index.next1931 = add nuw i64 %index1926, 4     ; 2 uses
  %i.att = icmp eq i64 %index.next1931, %n.vec1924
  br i1 %i.att, label %middle.block1932, label %vector.body1925, !llvm.loop !1864

middle.block1932:                                 ; preds = %vector.body1925
  %cmp.n1933 = icmp eq i64 %i.ath, %n.vec1924
  br i1 %cmp.n1933, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i820, label %.lr.ph.i.i.i.i.i.i.i816.preheader1936

.lr.ph.i.i.i.i.i.i.i816.preheader1936:            ; preds = %vector.memcheck1914, %.lr.ph.i.i.i.i.i.i.i816.preheader, %middle.block1932
  %.012.i.i.i.i.i.i.i817.ph = phi ptr [ %i.atc, %vector.memcheck1914 ], [ %i.atc, %.lr.ph.i.i.i.i.i.i.i816.preheader ], [ %i.atn, %middle.block1932 ]
  %.0911.i.i.i.i.i.i.i818.ph = phi ptr [ %i.asr, %vector.memcheck1914 ], [ %i.asr, %.lr.ph.i.i.i.i.i.i.i816.preheader ], [ %i.ato, %middle.block1932 ]
  br label %.lr.ph.i.i.i.i.i.i.i816

.lr.ph.i.i.i.i.i.i.i816:                          ; preds = %.lr.ph.i.i.i.i.i.i.i816.preheader1936, %.lr.ph.i.i.i.i.i.i.i816
  %.012.i.i.i.i.i.i.i817 = phi ptr [ %i.atw, %.lr.ph.i.i.i.i.i.i.i816 ], [ %.012.i.i.i.i.i.i.i817.ph, %.lr.ph.i.i.i.i.i.i.i816.preheader1936 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i818 = phi ptr [ %i.atv, %.lr.ph.i.i.i.i.i.i.i816 ], [ %.0911.i.i.i.i.i.i.i818.ph, %.lr.ph.i.i.i.i.i.i.i816.preheader1936 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  call void @llvm.experimental.noalias.scope.decl(metadata !1857)
  %i.atu = load i64, ptr %.0911.i.i.i.i.i.i.i818, align 8, !tbaa !139, !alias.scope !1857, !noalias !1854
  store i64 %i.atu, ptr %.012.i.i.i.i.i.i.i817, align 8, !tbaa !139, !alias.scope !1854, !noalias !1857
  store ptr null, ptr %.0911.i.i.i.i.i.i.i818, align 8, !tbaa !139, !alias.scope !1857, !noalias !1854
  %i.atv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i818, i64 8 ; 2 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i817, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i819 = icmp eq ptr %i.atv, %i.asn
  br i1 %.not.i.i.i.i.i.i.i819, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i820, label %.lr.ph.i.i.i.i.i.i.i816, !llvm.loop !1865

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i820: ; preds = %.lr.ph.i.i.i.i.i.i.i816, %middle.block1932, %.noexc825
  %.0.lcssa.i.i.i.i.i.i.i821 = phi ptr [ %i.atc, %.noexc825 ], [ %i.atn, %middle.block1932 ], [ %i.atw, %.lr.ph.i.i.i.i.i.i.i816 ]
  %i.atx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i821, i64 8
  %.not.i23.i.i.i822 = icmp eq ptr %i.asr, null
  br i1 %.not.i23.i.i.i822, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i823, label %bb.kq

bb.kq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i820
  call void @_ZdlPv(ptr noundef nonnull %i.asr) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i823

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i823: ; preds = %bb.kq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i820
  store ptr %i.atc, ptr %i.asl, align 8, !tbaa !364
  store ptr %i.atx, ptr %i.asm, align 8, !tbaa !360
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %i.ata
  store ptr %i.aty, ptr %i.aso, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit826

bb.kr:                                            ; preds = %bb.kj
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalExportESt14default_deleteIS1_EED2Ev.exit862

bb.ks:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i812, %bb.kp, %bb.kl
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %bb.kz

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit826: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i823, %bb.kn, %bb.kk
  %i.aub = load ptr, ptr %58, align 8, !tbaa !1866
  store ptr null, ptr %58, align 8, !tbaa !1866
  %i.auc = load ptr, ptr %0, align 8, !tbaa !139  ; 3 uses
  store ptr %i.aub, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i.i827 = icmp eq ptr %i.auc, null
  br i1 %.not.i.i.i.i.i827, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit831, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i828

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i828: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit826
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !119
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.auf = load ptr, ptr %i.aue, align 8
  call void %i.auf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.auc) #25, !inline_history !377
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit831

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit831: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i828, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit826
  %i.aug = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.kt unwind label %bb.ky     ; 2 uses

bb.kt:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit831
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 113
  store i8 0, ptr %i.auh, align 1, !tbaa !141
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aug, i64 115
  store i8 2, ptr %i.aui, align 1, !tbaa !149
  %i.auj = load ptr, ptr %58, align 8, !tbaa !1866 ; 3 uses
  %.not.i832 = icmp eq ptr %i.auj, null
  br i1 %.not.i832, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit835, label %_ZNKSt14default_deleteIN6duckdb13LogicalExportEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LogicalExportEEclEPS1_.exit.i: ; preds = %bb.kt
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !119
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %i.aum = load ptr, ptr %i.aul, align 8
  call void %i.aum(ptr noundef nonnull align 8 dereferenceable(1008) %i.auj) #25, !inline_history !1868
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit835

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit835: ; preds = %_ZNKSt14default_deleteIN6duckdb13LogicalExportEEclEPS1_.exit.i, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  %i.aun = load ptr, ptr %25, align 16, !tbaa !364 ; 4 uses
  %i.auo = load ptr, ptr %i.gu, align 8, !tbaa !360 ; 2 uses
  %.not4.i.i.i836 = icmp eq ptr %i.aun, %i.auo
  br i1 %.not4.i.i.i836, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i845, label %.lr.ph.i.i.i837

.lr.ph.i.i.i837:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit835, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i841
  %.05.i.i.i838 = phi ptr [ %i.aut, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i841 ], [ %i.aun, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit835 ] ; 2 uses
  %i.aup = load ptr, ptr %.05.i.i.i838, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i.i839 = icmp eq ptr %i.aup, null
  br i1 %.not.i.i.i.i.i839, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i841, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i840

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i840: ; preds = %.lr.ph.i.i.i837
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !119
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 8
  %i.aus = load ptr, ptr %i.aur, align 8
  call void %i.aus(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aup) #25, !inline_history !909
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i841

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i841: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i840, %.lr.ph.i.i.i837
  %i.aut = getelementptr inbounds nuw i8, ptr %.05.i.i.i838, i64 8 ; 2 uses
  %.not.i.i.i842 = icmp eq ptr %i.aut, %i.auo
  br i1 %.not.i.i.i842, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i845, label %.lr.ph.i.i.i837, !llvm.loop !910

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i845: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i841, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit835
  %.not.i.i1.i846 = icmp eq ptr %i.aun, null
  br i1 %.not.i.i1.i846, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit847, label %bb.ku

bb.ku:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i845
  call void @_ZdlPv(ptr noundef nonnull %i.aun) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit847

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit847: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i845, %bb.ku
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  %i.auu = load ptr, ptr %i.dt, align 8, !tbaa !1494 ; 2 uses
  %.not5.i.i.i.i848 = icmp eq ptr %i.auu, null
  br i1 %.not5.i.i.i.i848, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i849

.lr.ph.i.i.i.i849:                                ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit847, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i850 = phi ptr [ %i.auv, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.auu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit847 ] ; 4 uses
  %i.auv = load ptr, ptr %.06.i.i.i.i850, align 8, !tbaa !102 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i850, i64 8
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !25 ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i850, i64 24
  %i.auz = icmp eq ptr %i.aux, %i.auy
  br i1 %i.auz, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i851

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i851: ; preds = %.lr.ph.i.i.i.i849
  call void @_ZdlPv(ptr noundef %i.aux) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i849, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i851
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i850) #29
  %.not.i.i.i.i852 = icmp eq ptr %i.auv, null
  br i1 %.not.i.i.i.i852, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i849, !llvm.loop !1495

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit847
  %i.ava = load ptr, ptr %24, align 8, !tbaa !1478
  %i.avb = load i64, ptr %i.ds, align 8, !tbaa !1480
  %i.avc = shl i64 %i.avb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ava, i8 0, i64 %i.avc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 0, i64 16, i1 false)
  %i.avd = load ptr, ptr %24, align 8, !tbaa !1478 ; 2 uses
  %i.ave = icmp eq ptr %i.avd, %i.dr
  br i1 %i.ave, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.avd) #29
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.kv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  %i.avf = load ptr, ptr %23, align 8, !tbaa !1769 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb6Binder17GenerateMergeIntoERNS_15InsertStatementERNS_17TableCatalogEntryE:bb.a
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit764

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit764: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i763, %.body639, %bb.iz
  %.pn272.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ahx, %bb.iz ], [ %.pn272.pn.pn.pn.pn.ph, %.body639 ], [ %.pn272.pn.pn.pn.pn1186, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i763 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  br label %bb.na

bb.kd:                                            ; preds = %._crit_edge1412
  %i.apw = getelementptr inbounds nuw i8, ptr %i.agy, i64 128 ; 2 uses
  %i.apx = load ptr, ptr %39, align 8, !tbaa !221
  store ptr null, ptr %39, align 8, !tbaa !221
  %i.apy = load ptr, ptr %i.apw, align 8, !tbaa !221 ; 3 uses
  store ptr %i.apx, ptr %i.apw, align 8, !tbaa !221
  %.not.i.i.i.i.i765 = icmp eq ptr %i.apy, null
  br i1 %.not.i.i.i.i.i765, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit767, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i766

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i766: ; preds = %bb.kd
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !119
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqb = load ptr, ptr %i.aqa, align 8
  call void %i.aqb(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.apy) #25, !inline_history !223
  br label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit767

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit767: ; preds = %bb.kd, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i766
  %i.aqc = load i8, ptr %i.h, align 8, !tbaa !2029
  %i.aqd = icmp eq i8 %i.aqc, 3
  br i1 %i.aqd, label %bb.ke, label %bb.kk

bb.ke:                                            ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit767
  %i.aqe = load i8, ptr %i.xu, align 1, !tbaa !522
  %.not261 = icmp eq i8 %i.aqe, 1
  br i1 %.not261, label %bb.kj, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  invoke void @_ZN6duckdb23CreateSetInfoForReplaceERNS_17TableCatalogEntryERNS_15InsertStatementERKNS_16TableStorageInfoE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1867") align 8 %52, ptr noundef nonnull align 8 dereferenceable(448) %3, ptr noundef nonnull align 8 dereferenceable(370) %2, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.kg unwind label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.aqg = load ptr, ptr %52, align 8, !tbaa !645
  store ptr null, ptr %52, align 8, !tbaa !645
  %i.aqh = load ptr, ptr %i.aqf, align 8, !tbaa !645 ; 2 uses
  store ptr %i.aqg, ptr %i.aqf, align 8, !tbaa !645
  %.not.i.i.i.i.i768 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i.i.i.i768, label %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.kg
  call void @_ZNKSt14default_deleteIN6duckdb13UpdateSetInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aqf, ptr noundef nonnull %i.aqh)
  %.pr1188 = load ptr, ptr %52, align 8, !tbaa !645 ; 2 uses
  %.not.i769 = icmp eq ptr %.pr1188, null
  br i1 %.not.i769, label %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.kh

bb.kh:                                            ; preds = %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZNKSt14default_deleteIN6duckdb13UpdateSetInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef nonnull %.pr1188)
  br label %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.kg, %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br label %bb.kj

bb.ki:                                            ; preds = %bb.kf
  %i.aqi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25
  br label %bb.na

bb.kj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit, %bb.ke
  store i8 2, ptr %i.h, align 8, !tbaa !2029
  br label %bb.kk

bb.kk:                                            ; preds = %bb.kj, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit767
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.aqj = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %bb.kl unwind label %bb.ky     ; 2 uses

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aqj, i8 0, i64 80, i1 false), !noalias !2161
  store ptr %i.aqj, ptr %53, align 8, !tbaa !2164, !alias.scope !2161
  %i.aqk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.km unwind label %bb.kz

bb.km:                                            ; preds = %bb.kl
  store i8 2, ptr %i.aqk, align 8, !tbaa !2166
  %i.aql = load i8, ptr %i.xu, align 1, !tbaa !522
  %i.aqm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.kn unwind label %bb.kz

bb.kn:                                            ; preds = %bb.km
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 72
  store i8 %i.aql, ptr %i.aqn, align 8, !tbaa !2169
  %i.aqo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18MergeIntoStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ko unwind label %bb.kz     ; 3 uses

bb.ko:                                            ; preds = %bb.kn
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i8 2, ptr %i.e, align 1, !tbaa !2170
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqo, i64 184
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !1138 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqo, i64 176 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aqr, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i771

.lr.ph.i.i.i.i771:                                ; preds = %bb.ko, %.lr.ph.i.i.i.i771
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i771 ], [ %i.aqr, %bb.ko ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i771 ], [ %i.aqs, %bb.ko ]
  %i.aqt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !2170
  %i.aqv = icmp ult i8 %i.aqu, 2                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.aqv, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.aqv, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !2172 ; 2 uses
  %.not.i.i.i.i772 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i772, label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i, label %.lr.ph.i.i.i.i771, !llvm.loop !2173

_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i: ; preds = %.lr.ph.i.i.i.i771
  %i.aqw = icmp eq ptr %.19.i.i.i.i, %i.aqs
  br i1 %i.aqw, label %.critedge.i, label %bb.kp

bb.kp:                                            ; preds = %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !2170
  %i.aqz = icmp ugt i8 %i.aqy, 2
  br i1 %i.aqz, label %.critedge.i, label %bb.kq

.critedge.i:                                      ; preds = %bb.kp, %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i, %bb.ko
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.kp ], [ %.19.i.i.i.i, %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i ], [ %i.aqs, %bb.ko ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %i.e, ptr %6, align 8, !tbaa !280, !alias.scope !2174
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ara = invoke ptr @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.aqp, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc773 unwind label %bb.la

.noexc773:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.kq

bb.kq:                                            ; preds = %.noexc773, %bb.kp
  %.sroa.06.0.i = phi ptr [ %i.ara, %.noexc773 ], [ %.19.i.i.i.i, %bb.kp ] ; 3 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !2177 ; 6 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !2180
  %.not.i.i774 = icmp eq ptr %i.ard, %i.arf
  br i1 %.not.i.i774, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.arg = load i64, ptr %53, align 8, !tbaa !2164
  store i64 %i.arg, ptr %i.ard, align 8, !tbaa !2164
  store ptr null, ptr %53, align 8, !tbaa !2164
  %i.arh = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  store ptr %i.arh, ptr %i.arc, align 8, !tbaa !2177
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ks:                                            ; preds = %bb.kq
  %i.ari = load ptr, ptr %i.arb, align 8, !tbaa !2181 ; 10 uses
  %i.arj = ptrtoint ptr %i.ard to i64             ; 3 uses
  %i.ark = ptrtoint ptr %i.ari to i64             ; 3 uses
  %i.arl = sub i64 %i.arj, %i.ark                 ; 3 uses
  %i.arm = icmp eq i64 %i.arl, 9223372036854775800
  br i1 %i.arm, label %bb.kt, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.kt:                                            ; preds = %bb.ks
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc784 unwind label %bb.la

.noexc784:                                        ; preds = %bb.kt
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ks
  %i.arn = ashr exact i64 %i.arl, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i775 = call i64 @llvm.umax.i64(i64 %i.arn, i64 1)
  %i.aro = add nsw i64 %.sroa.speculated.i.i.i.i775, %i.arn ; 2 uses
  %i.arp = icmp ult i64 %i.aro, %i.arn
  %i.arq = call i64 @llvm.umin.i64(i64 %i.aro, i64 1152921504606846975)
  %i.arr = select i1 %i.arp, i64 1152921504606846975, i64 %i.arq ; 3 uses
  %.not.i.i.i.i776 = icmp ne i64 %i.arr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i776)
  %i.ars = shl nuw nsw i64 %i.arr, 3
  %i.art = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ars) #26
          to label %.noexc785 unwind label %bb.la ; 10 uses

.noexc785:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.arl
  %i.arv = load i64, ptr %53, align 8, !tbaa !2164
  store i64 %i.arv, ptr %i.aru, align 8, !tbaa !2164
  store ptr null, ptr %53, align 8, !tbaa !2164
  %.not10.i.i.i.i.i.i.i777 = icmp eq ptr %i.ari, %i.ard
  br i1 %.not10.i.i.i.i.i.i.i777, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i778.preheader

.lr.ph.i.i.i.i.i.i.i778.preheader:                ; preds = %.noexc785
  %i.arw = sub i64 %i.arj, %i.ark
  %i.arx = add i64 %i.arw, -8                     ; 2 uses
  %i.ary = lshr i64 %i.arx, 3
  %i.arz = add nuw nsw i64 %i.ary, 1              ; 2 uses
  %min.iters.check2114 = icmp ult i64 %i.arx, 152
  br i1 %min.iters.check2114, label %.lr.ph.i.i.i.i.i.i.i778.preheader2153, label %vector.memcheck2107

vector.memcheck2107:                              ; preds = %.lr.ph.i.i.i.i.i.i.i778.preheader
  %i.asa = add i64 %i.arj, -8
  %i.asb = sub i64 %i.asa, %i.ark
  %i.asc = and i64 %i.asb, -8
  %i.asd = add i64 %i.asc, 8                      ; 2 uses
  %scevgep2108 = getelementptr i8, ptr %i.art, i64 %i.asd
  %scevgep2109 = getelementptr i8, ptr %i.ari, i64 %i.asd
  %bound02110 = icmp ult ptr %i.art, %scevgep2109
  %bound12111 = icmp ult ptr %i.ari, %scevgep2108
  %found.conflict2112 = and i1 %bound02110, %bound12111
  br i1 %found.conflict2112, label %.lr.ph.i.i.i.i.i.i.i778.preheader2153, label %vector.ph2115

vector.ph2115:                                    ; preds = %vector.memcheck2107
  %n.vec2117 = and i64 %i.arz, 4611686018427387900 ; 3 uses
  %i.ase = shl i64 %n.vec2117, 3                  ; 2 uses
  %i.asf = getelementptr i8, ptr %i.art, i64 %i.ase ; 2 uses
  %i.asg = getelementptr i8, ptr %i.ari, i64 %i.ase
  br label %vector.body2118

vector.body2118:                                  ; preds = %vector.body2118, %vector.ph2115
  %index2119 = phi i64 [ 0, %vector.ph2115 ], [ %index.next2124, %vector.body2118 ] ; 2 uses
  %i.ash = shl i64 %index2119, 3                  ; 2 uses
  %next.gep2120 = getelementptr i8, ptr %i.art, i64 %i.ash ; 2 uses
  %next.gep2121 = getelementptr i8, ptr %i.ari, i64 %i.ash ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.asi = getelementptr i8, ptr %next.gep2121, i64 16
  %wide.load2122 = load <2 x i64>, ptr %next.gep2121, align 8, !tbaa !2164, !alias.scope !2187, !noalias !2182
  %wide.load2123 = load <2 x i64>, ptr %i.asi, align 8, !tbaa !2164, !alias.scope !2187, !noalias !2182
  %i.asj = getelementptr i8, ptr %next.gep2120, i64 16
  store <2 x i64> %wide.load2122, ptr %next.gep2120, align 8, !tbaa !2164, !alias.scope !2190, !noalias !2187
  store <2 x i64> %wide.load2123, ptr %i.asj, align 8, !tbaa !2164, !alias.scope !2190, !noalias !2187
  %i.ask = getelementptr i8, ptr %next.gep2121, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2121, align 8, !tbaa !2164, !alias.scope !2187, !noalias !2182
  store <2 x ptr> splat (ptr null), ptr %i.ask, align 8, !tbaa !2164, !alias.scope !2187, !noalias !2182
  %index.next2124 = add nuw i64 %index2119, 4     ; 2 uses
  %i.asl = icmp eq i64 %index.next2124, %n.vec2117
  br i1 %i.asl, label %middle.block2125, label %vector.body2118, !llvm.loop !2192

middle.block2125:                                 ; preds = %vector.body2118
  %cmp.n2126 = icmp eq i64 %i.arz, %n.vec2117
  br i1 %cmp.n2126, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i778.preheader2153

.lr.ph.i.i.i.i.i.i.i778.preheader2153:            ; preds = %vector.memcheck2107, %.lr.ph.i.i.i.i.i.i.i778.preheader, %middle.block2125
  %.012.i.i.i.i.i.i.i779.ph = phi ptr [ %i.art, %vector.memcheck2107 ], [ %i.art, %.lr.ph.i.i.i.i.i.i.i778.preheader ], [ %i.asf, %middle.block2125 ]
  %.0911.i.i.i.i.i.i.i780.ph = phi ptr [ %i.ari, %vector.memcheck2107 ], [ %i.ari, %.lr.ph.i.i.i.i.i.i.i778.preheader ], [ %i.asg, %middle.block2125 ]
  br label %.lr.ph.i.i.i.i.i.i.i778

.lr.ph.i.i.i.i.i.i.i778:                          ; preds = %.lr.ph.i.i.i.i.i.i.i778.preheader2153, %.lr.ph.i.i.i.i.i.i.i778
  %.012.i.i.i.i.i.i.i779 = phi ptr [ %i.aso, %.lr.ph.i.i.i.i.i.i.i778 ], [ %.012.i.i.i.i.i.i.i779.ph, %.lr.ph.i.i.i.i.i.i.i778.preheader2153 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i780 = phi ptr [ %i.asn, %.lr.ph.i.i.i.i.i.i.i778 ], [ %.0911.i.i.i.i.i.i.i780.ph, %.lr.ph.i.i.i.i.i.i.i778.preheader2153 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  %i.asm = load i64, ptr %.0911.i.i.i.i.i.i.i780, align 8, !tbaa !2164, !alias.scope !2185, !noalias !2182
  store i64 %i.asm, ptr %.012.i.i.i.i.i.i.i779, align 8, !tbaa !2164, !alias.scope !2182, !noalias !2185
  store ptr null, ptr %.0911.i.i.i.i.i.i.i780, align 8, !tbaa !2164, !alias.scope !2185, !noalias !2182
  %i.asn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i780, i64 8 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i779, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i781 = icmp eq ptr %i.asn, %i.ard
  br i1 %.not.i.i.i.i.i.i.i781, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i778, !llvm.loop !2193

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i778, %middle.block2125, %.noexc785
  %.0.lcssa.i.i.i.i.i.i.i782 = phi ptr [ %i.art, %.noexc785 ], [ %i.asf, %middle.block2125 ], [ %i.aso, %.lr.ph.i.i.i.i.i.i.i778 ]
  %i.asp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i782, i64 8
  %.not.i23.i.i.i783 = icmp eq ptr %i.ari, null
  br i1 %.not.i23.i.i.i783, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ku

bb.ku:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ari) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ku, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.art, ptr %i.arb, align 8, !tbaa !2181
  store ptr %i.asp, ptr %i.arc, align 8, !tbaa !2177
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.art, i64 %i.arr
  store ptr %i.asq, ptr %i.are, align 8, !tbaa !2180
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  %i.asr = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !124
  %.not1207 = icmp eq ptr %i.ass, null
  br i1 %.not1207, label %bb.ld, label %bb.kv

bb.kv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ast = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @.str.134, ptr noundef nonnull align 1 dereferenceable(1) %55)
          to label %bb.kw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788.thread

bb.kw:                                            ; preds = %bb.kv
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ast, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %bb.kx unwind label %bb.lb

bb.kx:                                            ; preds = %bb.kw
  invoke void @__cxa_throw(ptr nonnull %i.ast, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.nf unwind label %bb.lb

bb.ky:                                            ; preds = %bb.kk
  %i.asu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit885

bb.kz:                                            ; preds = %_ZN6duckdb24CommonTableExpressionMapaSEOS0_.exit, %bb.mn, %bb.kn, %bb.km, %bb.kl
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %bb.my

bb.la:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.kt, %.critedge.i
  %i.asw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.my

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788.thread: ; preds = %bb.kv
  %i.asx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kx, %bb.kw
  %.0148 = phi i1 [ false, %bb.kx ], [ true, %bb.kw ] ; 2 uses
  %i.asy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.asz = load ptr, ptr %54, align 8, !tbaa !25  ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.atb = icmp eq ptr %i.asz, %i.ata
  br i1 %i.atb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786: ; preds = %bb.lb
  call void @_ZdlPv(ptr noundef %i.asz) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  br i1 %.0148, label %bb.lc, label %bb.my

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788: ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  br i1 %.0148, label %bb.lc, label %bb.my

bb.lc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788
  %.pn2661192 = phi { ptr, i32 } [ %i.asx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788.thread ], [ %i.asy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788 ], [ %i.asy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786 ]
  call void @__cxa_free_exception(ptr %i.ast) #25
  br label %bb.my

bb.ld:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.atc = load i8, ptr %i.h, align 8, !tbaa !2029
  %i.atd = icmp eq i8 %i.atc, 2
  br i1 %i.atd, label %bb.le, label %bb.mn

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2194)
  %i.ate = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %bb.lf unwind label %bb.lk     ; 2 uses

bb.lf:                                            ; preds = %bb.le
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ate, i8 0, i64 80, i1 false), !noalias !2194
  store ptr %i.ate, ptr %56, align 8, !tbaa !2164, !alias.scope !2194
  %i.atf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.lg unwind label %bb.ll

bb.lg:                                            ; preds = %bb.lf
  store i8 0, ptr %i.atf, align 8, !tbaa !2166
  %i.atg = load i8, ptr %i.xu, align 1, !tbaa !522
  %i.ath = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.lh unwind label %bb.ll

bb.lh:                                            ; preds = %bb.lg
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 72
  store i8 %i.atg, ptr %i.ati, align 8, !tbaa !2169
  %i.atj = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 7 uses
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !645
  %.not1208 = icmp eq ptr %i.atk, null
  br i1 %.not1208, label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit819, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.atl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.atj)
          to label %bb.lj unwind label %bb.lm     ; 2 uses

bb.lj:                                            ; preds = %bb.li
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 32
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !591 ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atl, i64 40
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !591 ; 2 uses
  %.not12091413 = icmp eq ptr %i.atn, %i.atp
  br i1 %.not12091413, label %._crit_edge1417, label %.lr.ph1416

.lr.ph1416:                                       ; preds = %bb.lj
  %i.atq = getelementptr inbounds nuw i8, ptr %57, i64 8
  br label %bb.ln

._crit_edge1417:                                  ; preds = %_ZNSt6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESaISC_EED2Ev.exit, %bb.lj
  %i.atr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.atj)
          to label %bb.ls unwind label %bb.ll
end_hunk_8
begin_hunk_9_@_ZN6duckdb6Binder17GenerateMergeIntoERNS_15InsertStatementERNS_17TableCatalogEntryE:bb.a
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.auy = load ptr, ptr %i.aux, align 8
  call void %i.auy(ptr noundef nonnull align 8 dereferenceable(56) %i.auv) #25, !inline_history !202
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit799

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit799: ; preds = %bb.lx, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i798
  %i.auz = load ptr, ptr %58, align 8, !tbaa !2197 ; 3 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !1917 ; 2 uses
  %.not4.i.i.i800 = icmp eq ptr %i.auz, %i.avb
  br i1 %.not4.i.i.i800, label %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exit.i814, label %.lr.ph.i.i.i801

.lr.ph.i.i.i801:                                  ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit799, %_ZSt8_DestroyISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEvPT_.exit.i.i.i810
  %.05.i.i.i802 = phi ptr [ %i.avq, %_ZSt8_DestroyISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEvPT_.exit.i.i.i810 ], [ %i.auz, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit799 ] ; 6 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %.05.i.i.i802, i64 16 ; 2 uses
  %i.avd = load ptr, ptr %i.avc, align 8, !tbaa !1494 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i803 = icmp eq ptr %i.avd, null
  br i1 %.not5.i.i.i.i.i.i.i.i803, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i809, label %.lr.ph.i.i.i.i.i.i.i.i804

.lr.ph.i.i.i.i.i.i.i.i804:                        ; preds = %.lr.ph.i.i.i801, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i.i807
  %.06.i.i.i.i.i.i.i.i805 = phi ptr [ %i.ave, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i.i807 ], [ %i.avd, %.lr.ph.i.i.i801 ] ; 4 uses
  %i.ave = load ptr, ptr %.06.i.i.i.i.i.i.i.i805, align 8, !tbaa !102 ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i805, i64 8
  %i.avg = load ptr, ptr %i.avf, align 8, !tbaa !25 ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i805, i64 24
  %i.avi = icmp eq ptr %i.avg, %i.avh
  br i1 %i.avi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i.i807, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i806

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i806: ; preds = %.lr.ph.i.i.i.i.i.i.i.i804
  call void @_ZdlPv(ptr noundef %i.avg) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i.i807

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i.i807: ; preds = %.lr.ph.i.i.i.i.i.i.i.i804, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i806
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i805) #29
  %.not.i.i.i.i.i.i.i.i808 = icmp eq ptr %i.ave, null
  br i1 %.not.i.i.i.i.i.i.i.i808, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i809, label %.lr.ph.i.i.i.i.i.i.i.i804, !llvm.loop !1495

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i809: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i.i.i.i.i807, %.lr.ph.i.i.i801
  %i.avj = load ptr, ptr %.05.i.i.i802, align 8, !tbaa !1478
  %i.avk = getelementptr inbounds nuw i8, ptr %.05.i.i.i802, i64 8
  %i.avl = load i64, ptr %i.avk, align 8, !tbaa !1480
  %i.avm = shl i64 %i.avl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.avj, i8 0, i64 %i.avm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avc, i8 0, i64 16, i1 false)
  %i.avn = load ptr, ptr %.05.i.i.i802, align 8, !tbaa !1478 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %.05.i.i.i802, i64 48
  %i.avp = icmp eq ptr %i.avn, %i.avo
  br i1 %i.avp, label %_ZSt8_DestroyISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEvPT_.exit.i.i.i810, label %bb.ly

bb.ly:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i809
  call void @_ZdlPv(ptr noundef %i.avn) #29
  br label %_ZSt8_DestroyISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEvPT_.exit.i.i.i810

_ZSt8_DestroyISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEvPT_.exit.i.i.i810: ; preds = %bb.ly, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i809
  %i.avq = getelementptr inbounds nuw i8, ptr %.05.i.i.i802, i64 56 ; 2 uses
  %.not.i.i.i811 = icmp eq ptr %i.avq, %i.avb
  br i1 %.not.i.i.i811, label %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i812, label %.lr.ph.i.i.i801, !llvm.loop !2198

_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i812: ; preds = %_ZSt8_DestroyISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EEEvPT_.exit.i.i.i810
  %.pr.i813 = load ptr, ptr %58, align 8, !tbaa !2197
  br label %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exit.i814

_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exit.i814: ; preds = %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i812, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit799
  %i.avr = phi ptr [ %.pr.i813, %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i812 ], [ %i.auz, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit799 ] ; 2 uses
  %.not.i.i1.i815 = icmp eq ptr %i.avr, null
  br i1 %.not.i.i1.i815, label %_ZNSt6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESaISC_EED2Ev.exit817, label %bb.lz

bb.lz:                                            ; preds = %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exit.i814
  call void @_ZdlPv(ptr noundef nonnull %i.avr) #29
  br label %_ZNSt6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESaISC_EED2Ev.exit817

_ZNSt6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESaISC_EED2Ev.exit817: ; preds = %_ZSt8_DestroyIPSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESC_EvT_SE_RSaIT0_E.exit.i814, %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lw, %bb.lv, %bb.lu, %bb.lt
  %i.avs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESaISC_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br label %bb.ml

bb.mb:                                            ; preds = %_ZNSt6vectorISt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_ESt8equal_toIS6_ESaIS6_EESaISC_EED2Ev.exit817, %bb.ls
  %i.avt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.mc unwind label %bb.ll

bb.mc:                                            ; preds = %bb.mb
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 16 ; 3 uses
  %i.avv = load ptr, ptr %i.atj, align 8, !tbaa !645
  store ptr null, ptr %i.atj, align 8, !tbaa !645
  %i.avw = load ptr, ptr %i.avu, align 8, !tbaa !645 ; 2 uses
  store ptr %i.avv, ptr %i.avu, align 8, !tbaa !645
  %.not.i.i.i.i.i818 = icmp eq ptr %i.avw, null
  br i1 %.not.i.i.i.i.i818, label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit819, label %bb.md

bb.md:                                            ; preds = %bb.mc
  call void @_ZNKSt14default_deleteIN6duckdb13UpdateSetInfoEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.avu, ptr noundef nonnull %i.avw)
  br label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit819

_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit819: ; preds = %bb.md, %bb.mc, %bb.lh
  %i.avx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18MergeIntoStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.me unwind label %bb.ll     ; 3 uses

bb.me:                                            ; preds = %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit819
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i8 0, ptr %i.f, align 1, !tbaa !2170
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avx, i64 184
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !1138 ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avx, i64 176 ; 2 uses
  %.not10.i.i.i.i820 = icmp eq ptr %i.awa, null
  br i1 %.not10.i.i.i.i820, label %.critedge.i831, label %.lr.ph.i.i.i.i821

.lr.ph.i.i.i.i821:                                ; preds = %bb.me, %.lr.ph.i.i.i.i821
  %.012.i.i.i.i822 = phi ptr [ %.1.i.i.i.i827, %.lr.ph.i.i.i.i821 ], [ %i.awa, %bb.me ] ; 5 uses
  %.1.in.i.i.i.i826 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i822, i64 16
  %.1.i.i.i.i827 = load ptr, ptr %.1.in.i.i.i.i826, align 8, !tbaa !2172 ; 2 uses
  %.not.i.i.i.i828 = icmp eq ptr %.1.i.i.i.i827, null
  br i1 %.not.i.i.i.i828, label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i829, label %.lr.ph.i.i.i.i821, !llvm.loop !2173

_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i829: ; preds = %.lr.ph.i.i.i.i821
  %i.awc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i822, i64 32
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !2170
  %i.awe = icmp eq ptr %.012.i.i.i.i822, %i.awb
  %i.awf = icmp ne i8 %i.awd, 0
  %or.cond1199 = select i1 %i.awe, i1 true, i1 %i.awf
  br i1 %or.cond1199, label %.critedge.i831, label %bb.mf

.critedge.i831:                                   ; preds = %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i829, %bb.me
  %.08.lcssa.i.i.i11.i832 = phi ptr [ %i.awb, %bb.me ], [ %.012.i.i.i.i822, %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i829 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.f, ptr %4, align 8, !tbaa !280, !alias.scope !2199
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.awg = invoke ptr @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.avy, ptr nonnull %.08.lcssa.i.i.i11.i832, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc833 unwind label %bb.mk

.noexc833:                                        ; preds = %.critedge.i831
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.mf

bb.mf:                                            ; preds = %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i829, %.noexc833
  %.sroa.06.0.i830 = phi ptr [ %i.awg, %.noexc833 ], [ %.012.i.i.i.i822, %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE11lower_boundERSD_.exit.i829 ] ; 3 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i830, i64 40 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i830, i64 48 ; 3 uses
  %i.awj = load ptr, ptr %i.awi, align 8, !tbaa !2177 ; 6 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i830, i64 56 ; 2 uses
  %i.awl = load ptr, ptr %i.awk, align 8, !tbaa !2180
  %.not.i.i835 = icmp eq ptr %i.awj, %i.awl
  br i1 %.not.i.i835, label %bb.mg, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850.thread: ; preds = %bb.mf
  %i.awm = load i64, ptr %56, align 8, !tbaa !2164
  store i64 %i.awm, ptr %i.awj, align 8, !tbaa !2164
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awj, i64 8
  store ptr %i.awn, ptr %i.awi, align 8, !tbaa !2177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit

bb.mg:                                            ; preds = %bb.mf
  %i.awo = load ptr, ptr %i.awh, align 8, !tbaa !2181 ; 10 uses
  %i.awp = ptrtoint ptr %i.awj to i64             ; 3 uses
  %i.awq = ptrtoint ptr %i.awo to i64             ; 3 uses
  %i.awr = sub i64 %i.awp, %i.awq                 ; 3 uses
  %i.aws = icmp eq i64 %i.awr, 9223372036854775800
  br i1 %i.aws, label %bb.mh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i836

bb.mh:                                            ; preds = %bb.mg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc848 unwind label %bb.mk

.noexc848:                                        ; preds = %bb.mh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i836: ; preds = %bb.mg
  %i.awt = ashr exact i64 %i.awr, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i837 = call i64 @llvm.umax.i64(i64 %i.awt, i64 1)
  %i.awu = add nsw i64 %.sroa.speculated.i.i.i.i837, %i.awt ; 2 uses
  %i.awv = icmp ult i64 %i.awu, %i.awt
  %i.aww = call i64 @llvm.umin.i64(i64 %i.awu, i64 1152921504606846975)
  %i.awx = select i1 %i.awv, i64 1152921504606846975, i64 %i.aww ; 3 uses
  %.not.i.i.i.i838 = icmp ne i64 %i.awx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i838)
  %i.awy = shl nuw nsw i64 %i.awx, 3
  %i.awz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awy) #26
          to label %.noexc849 unwind label %bb.mk ; 10 uses

.noexc849:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i836
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awz, i64 %i.awr
  %i.axb = load i64, ptr %56, align 8, !tbaa !2164
  store i64 %i.axb, ptr %i.axa, align 8, !tbaa !2164
  store ptr null, ptr %56, align 8, !tbaa !2164
  %.not10.i.i.i.i.i.i.i839 = icmp eq ptr %i.awo, %i.awj
  br i1 %.not10.i.i.i.i.i.i.i839, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i844, label %.lr.ph.i.i.i.i.i.i.i840.preheader

.lr.ph.i.i.i.i.i.i.i840.preheader:                ; preds = %.noexc849
  %i.axc = sub i64 %i.awp, %i.awq
  %i.axd = add i64 %i.axc, -8                     ; 2 uses
  %i.axe = lshr i64 %i.axd, 3
  %i.axf = add nuw nsw i64 %i.axe, 1              ; 2 uses
  %min.iters.check2136 = icmp ult i64 %i.axd, 152
  br i1 %min.iters.check2136, label %.lr.ph.i.i.i.i.i.i.i840.preheader2152, label %vector.memcheck2129

vector.memcheck2129:                              ; preds = %.lr.ph.i.i.i.i.i.i.i840.preheader
  %i.axg = add i64 %i.awp, -8
  %i.axh = sub i64 %i.axg, %i.awq
  %i.axi = and i64 %i.axh, -8
  %i.axj = add i64 %i.axi, 8                      ; 2 uses
  %scevgep2130 = getelementptr i8, ptr %i.awz, i64 %i.axj
  %scevgep2131 = getelementptr i8, ptr %i.awo, i64 %i.axj
  %bound02132 = icmp ult ptr %i.awz, %scevgep2131
  %bound12133 = icmp ult ptr %i.awo, %scevgep2130
  %found.conflict2134 = and i1 %bound02132, %bound12133
  br i1 %found.conflict2134, label %.lr.ph.i.i.i.i.i.i.i840.preheader2152, label %vector.ph2137

vector.ph2137:                                    ; preds = %vector.memcheck2129
  %n.vec2139 = and i64 %i.axf, 4611686018427387900 ; 3 uses
  %i.axk = shl i64 %n.vec2139, 3                  ; 2 uses
  %i.axl = getelementptr i8, ptr %i.awz, i64 %i.axk ; 2 uses
  %i.axm = getelementptr i8, ptr %i.awo, i64 %i.axk
  br label %vector.body2140

vector.body2140:                                  ; preds = %vector.body2140, %vector.ph2137
  %index2141 = phi i64 [ 0, %vector.ph2137 ], [ %index.next2146, %vector.body2140 ] ; 2 uses
  %i.axn = shl i64 %index2141, 3                  ; 2 uses
  %next.gep2142 = getelementptr i8, ptr %i.awz, i64 %i.axn ; 2 uses
  %next.gep2143 = getelementptr i8, ptr %i.awo, i64 %i.axn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.axo = getelementptr i8, ptr %next.gep2143, i64 16
  %wide.load2144 = load <2 x i64>, ptr %next.gep2143, align 8, !tbaa !2164, !alias.scope !2207, !noalias !2202
  %wide.load2145 = load <2 x i64>, ptr %i.axo, align 8, !tbaa !2164, !alias.scope !2207, !noalias !2202
  %i.axp = getelementptr i8, ptr %next.gep2142, i64 16
  store <2 x i64> %wide.load2144, ptr %next.gep2142, align 8, !tbaa !2164, !alias.scope !2210, !noalias !2207
  store <2 x i64> %wide.load2145, ptr %i.axp, align 8, !tbaa !2164, !alias.scope !2210, !noalias !2207
  %i.axq = getelementptr i8, ptr %next.gep2143, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep2143, align 8, !tbaa !2164, !alias.scope !2207, !noalias !2202
  store <2 x ptr> splat (ptr null), ptr %i.axq, align 8, !tbaa !2164, !alias.scope !2207, !noalias !2202
  %index.next2146 = add nuw i64 %index2141, 4     ; 2 uses
  %i.axr = icmp eq i64 %index.next2146, %n.vec2139
  br i1 %i.axr, label %middle.block2147, label %vector.body2140, !llvm.loop !2212

middle.block2147:                                 ; preds = %vector.body2140
  %cmp.n2148 = icmp eq i64 %i.axf, %n.vec2139
  br i1 %cmp.n2148, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i844, label %.lr.ph.i.i.i.i.i.i.i840.preheader2152

.lr.ph.i.i.i.i.i.i.i840.preheader2152:            ; preds = %vector.memcheck2129, %.lr.ph.i.i.i.i.i.i.i840.preheader, %middle.block2147
  %.012.i.i.i.i.i.i.i841.ph = phi ptr [ %i.awz, %vector.memcheck2129 ], [ %i.awz, %.lr.ph.i.i.i.i.i.i.i840.preheader ], [ %i.axl, %middle.block2147 ]
  %.0911.i.i.i.i.i.i.i842.ph = phi ptr [ %i.awo, %vector.memcheck2129 ], [ %i.awo, %.lr.ph.i.i.i.i.i.i.i840.preheader ], [ %i.axm, %middle.block2147 ]
  br label %.lr.ph.i.i.i.i.i.i.i840

.lr.ph.i.i.i.i.i.i.i840:                          ; preds = %.lr.ph.i.i.i.i.i.i.i840.preheader2152, %.lr.ph.i.i.i.i.i.i.i840
  %.012.i.i.i.i.i.i.i841 = phi ptr [ %i.axu, %.lr.ph.i.i.i.i.i.i.i840 ], [ %.012.i.i.i.i.i.i.i841.ph, %.lr.ph.i.i.i.i.i.i.i840.preheader2152 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i842 = phi ptr [ %i.axt, %.lr.ph.i.i.i.i.i.i.i840 ], [ %.0911.i.i.i.i.i.i.i842.ph, %.lr.ph.i.i.i.i.i.i.i840.preheader2152 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  %i.axs = load i64, ptr %.0911.i.i.i.i.i.i.i842, align 8, !tbaa !2164, !alias.scope !2205, !noalias !2202
  store i64 %i.axs, ptr %.012.i.i.i.i.i.i.i841, align 8, !tbaa !2164, !alias.scope !2202, !noalias !2205
  store ptr null, ptr %.0911.i.i.i.i.i.i.i842, align 8, !tbaa !2164, !alias.scope !2205, !noalias !2202
  %i.axt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i842, i64 8 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i841, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i843 = icmp eq ptr %i.axt, %i.awj
  br i1 %.not.i.i.i.i.i.i.i843, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i844, label %.lr.ph.i.i.i.i.i.i.i840, !llvm.loop !2213

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i844: ; preds = %.lr.ph.i.i.i.i.i.i.i840, %middle.block2147, %.noexc849
  %.0.lcssa.i.i.i.i.i.i.i845 = phi ptr [ %i.awz, %.noexc849 ], [ %i.axl, %middle.block2147 ], [ %i.axu, %.lr.ph.i.i.i.i.i.i.i840 ]
  %i.axv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i845, i64 8
  %.not.i23.i.i.i846 = icmp eq ptr %i.awo, null
  br i1 %.not.i23.i.i.i846, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850, label %bb.mi

bb.mi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i844
  call void @_ZdlPv(ptr noundef nonnull %i.awo) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i844, %bb.mi
  store ptr %i.awz, ptr %i.awh, align 8, !tbaa !2181
  store ptr %i.axv, ptr %i.awi, align 8, !tbaa !2177
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.awz, i64 %i.awx
  store ptr %i.axw, ptr %i.awk, align 8, !tbaa !2180
  %.pr1193 = load ptr, ptr %56, align 8, !tbaa !2164 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.not.i851 = icmp eq ptr %.pr1193, null
  br i1 %.not.i851, label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit, label %bb.mj

bb.mj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850
  call void @_ZNKSt14default_deleteIN6duckdb15MergeIntoActionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull %.pr1193)
  br label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit850, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %bb.mn

bb.mk:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i836, %bb.mh, %.critedge.i831
  %i.axx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.ml

bb.ml:                                            ; preds = %bb.lm, %bb.lr, %bb.mk, %bb.ma, %bb.ll
  %.pn262.pn = phi { ptr, i32 } [ %i.avs, %bb.ma ], [ %i.axx, %bb.mk ], [ %i.att, %bb.ll ], [ %i.auo, %bb.lr ], [ %i.atu, %bb.lm ] ; 2 uses
  %i.axy = load ptr, ptr %56, align 8, !tbaa !2164 ; 2 uses
  %.not.i852 = icmp eq ptr %i.axy, null
  br i1 %.not.i852, label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit853, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  call void @_ZNKSt14default_deleteIN6duckdb15MergeIntoActionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull %i.axy)
  br label %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit853

_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit853: ; preds = %bb.mm, %bb.ml, %bb.lk
  %.pn262.pn.pn = phi { ptr, i32 } [ %i.ats, %bb.lk ], [ %.pn262.pn, %bb.ml ], [ %.pn262.pn, %bb.mm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  br label %bb.my

bb.mn:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15MergeIntoActionESt14default_deleteIS1_EED2Ev.exit, %bb.ld
  %i.axz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18MergeIntoStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.mo unwind label %bb.kz     ; 4 uses

bb.mo:                                            ; preds = %bb.mn
  %i.aya = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axz, i64 240 ; 2 uses
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !2214 ; 4 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axz, i64 248
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !2215 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axz, i64 256
  %i.ayg = load <2 x ptr>, ptr %i.aya, align 8, !tbaa !2216
  store <2 x ptr> %i.ayg, ptr %i.ayb, align 8, !tbaa !2216
  %i.ayh = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !2217
  store ptr %i.ayi, ptr %i.ayf, align 8, !tbaa !2217
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ayc, %i.aye
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aya, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i854

.lr.ph.i.i.i.i.i.i.i.i854:                        ; preds = %bb.mo, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ayo, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ayc, %bb.mo ] ; 4 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !2218 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ayk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i854
  call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.ayk) #25
  call void @_ZdlPv(ptr noundef nonnull %i.ayk) #29
  br label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i854
  %i.ayl = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.ayn = icmp eq ptr %i.ayl, %i.aym
  br i1 %i.ayn, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ayl) #29
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ayo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i855 = icmp eq ptr %i.ayo, %i.aye
  br i1 %.not.i.i.i.i.i.i.i.i855, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i854, !llvm.loop !2220

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEEEvPT_.exit.i.i.i.i.i.i.i.i, %bb.mo
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ayc, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEaSEOSF_.exit.i.i, label %bb.mp

bb.mp:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ayc) #29
  br label %_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEaSEOSF_.exit.i.i

_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEaSEOSF_.exit.i.i: ; preds = %bb.mp, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS7_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEESD_EvT_SF_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axz, i64 264
  %i.ayq = getelementptr inbounds nuw i8, ptr %2, i64 312
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ayp, ptr noundef nonnull align 8 dereferenceable(56) %i.ayq)
          to label %_ZN6duckdb24CommonTableExpressionMapaSEOS0_.exit unwind label %bb.mq

bb.mq:                                            ; preds = %_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEaSEOSF_.exit.i.i
  %i.ayr = landingpad { ptr, i32 }
          catch ptr null
  %i.ays = extractvalue { ptr, i32 } %i.ayr, 0
  call void @__clang_call_terminate(ptr %i.ays) #28
  unreachable

_ZN6duckdb24CommonTableExpressionMapaSEOS0_.exit: ; preds = %_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEaSEOSF_.exit.i.i
  %i.ayt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18MergeIntoStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.mr unwind label %bb.kz     ; 3 uses

bb.mr:                                            ; preds = %_ZN6duckdb24CommonTableExpressionMapaSEOS0_.exit
  %i.ayu = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayt, i64 216 ; 2 uses
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !158 ; 4 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayt, i64 224
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !161 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayt, i64 232
  %i.aza = load <2 x ptr>, ptr %i.ayu, align 8, !tbaa !591
  store <2 x ptr> %i.aza, ptr %i.ayv, align 8, !tbaa !591
  %i.azb = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.azc = load ptr, ptr %i.azb, align 8, !tbaa !206
  store ptr %i.azc, ptr %i.ayz, align 8, !tbaa !206
  %.not4.i.i.i.i.i.i856 = icmp eq ptr %i.ayw, %i.ayy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayu, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i856, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i857

end_hunk_9
begin_hunk_10_@_ZN6duckdb6Binder4BindERNS_18MergeIntoStatementE:bb.a
  %i.ru = and i64 %i.rt, -8                       ; 2 uses
  %scevgep1135 = getelementptr i8, ptr %scevgep1134, i64 %i.ru
  %scevgep1136 = getelementptr i8, ptr %i.qp, i64 8
  %scevgep1137 = getelementptr i8, ptr %scevgep1136, i64 %i.ru
  %bound01138 = icmp ult ptr %i.rl, %scevgep1137
  %bound11139 = icmp ult ptr %i.qp, %scevgep1135
  %found.conflict1140 = and i1 %bound01138, %bound11139
  br i1 %found.conflict1140, label %.lr.ph.i.i.i.i.i.i.i327.preheader1228, label %vector.ph1143

vector.ph1143:                                    ; preds = %vector.memcheck1133
  %n.vec1145 = and i64 %i.rr, 4611686018427387900 ; 3 uses
  %i.rv = shl i64 %n.vec1145, 3                   ; 2 uses
  %i.rw = getelementptr i8, ptr %i.rl, i64 %i.rv  ; 2 uses
  %i.rx = getelementptr i8, ptr %i.qp, i64 %i.rv
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %vector.ph1143
  %index1147 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1152, %vector.body1146 ] ; 2 uses
  %i.ry = shl i64 %index1147, 3                   ; 2 uses
  %next.gep1148 = getelementptr i8, ptr %i.rl, i64 %i.ry ; 2 uses
  %next.gep1149 = getelementptr i8, ptr %i.qp, i64 %i.ry ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.rz = getelementptr i8, ptr %next.gep1149, i64 16
  %wide.load1150 = load <2 x i64>, ptr %next.gep1149, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  %wide.load1151 = load <2 x i64>, ptr %i.rz, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  %i.sa = getelementptr i8, ptr %next.gep1148, i64 16
  store <2 x i64> %wide.load1150, ptr %next.gep1148, align 8, !tbaa !117, !alias.scope !2296, !noalias !2293
  store <2 x i64> %wide.load1151, ptr %i.sa, align 8, !tbaa !117, !alias.scope !2296, !noalias !2293
  %i.sb = getelementptr i8, ptr %next.gep1149, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1149, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  store <2 x ptr> splat (ptr null), ptr %i.sb, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  %index.next1152 = add nuw i64 %index1147, 4     ; 2 uses
  %i.sc = icmp eq i64 %index.next1152, %n.vec1145
  br i1 %i.sc, label %middle.block1153, label %vector.body1146, !llvm.loop !2298

middle.block1153:                                 ; preds = %vector.body1146
  %cmp.n1154 = icmp eq i64 %i.rr, %n.vec1145
  br i1 %cmp.n1154, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i327.preheader1228

.lr.ph.i.i.i.i.i.i.i327.preheader1228:            ; preds = %vector.memcheck1133, %.lr.ph.i.i.i.i.i.i.i327.preheader, %middle.block1153
  %.012.i.i.i.i.i.i.i328.ph = phi ptr [ %i.rl, %vector.memcheck1133 ], [ %i.rl, %.lr.ph.i.i.i.i.i.i.i327.preheader ], [ %i.rw, %middle.block1153 ]
  %.0911.i.i.i.i.i.i.i329.ph = phi ptr [ %i.qp, %vector.memcheck1133 ], [ %i.qp, %.lr.ph.i.i.i.i.i.i.i327.preheader ], [ %i.rx, %middle.block1153 ]
  br label %.lr.ph.i.i.i.i.i.i.i327

.lr.ph.i.i.i.i.i.i.i327:                          ; preds = %.lr.ph.i.i.i.i.i.i.i327.preheader1228, %.lr.ph.i.i.i.i.i.i.i327
  %.012.i.i.i.i.i.i.i328 = phi ptr [ %i.sf, %.lr.ph.i.i.i.i.i.i.i327 ], [ %.012.i.i.i.i.i.i.i328.ph, %.lr.ph.i.i.i.i.i.i.i327.preheader1228 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i329 = phi ptr [ %i.se, %.lr.ph.i.i.i.i.i.i.i327 ], [ %.0911.i.i.i.i.i.i.i329.ph, %.lr.ph.i.i.i.i.i.i.i327.preheader1228 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.sd = load i64, ptr %.0911.i.i.i.i.i.i.i329, align 8, !tbaa !117, !alias.scope !2291, !noalias !2288
  store i64 %i.sd, ptr %.012.i.i.i.i.i.i.i328, align 8, !tbaa !117, !alias.scope !2288, !noalias !2291
  store ptr null, ptr %.0911.i.i.i.i.i.i.i329, align 8, !tbaa !117, !alias.scope !2291, !noalias !2288
  %i.se = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i329, i64 8 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i328, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i330 = icmp eq ptr %i.se, %i.qq
  br i1 %.not.i.i.i.i.i.i.i330, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i327, !llvm.loop !2299

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i327, %middle.block1153, %.noexc334
  %.0.lcssa.i.i.i.i.i.i.i331 = phi ptr [ %i.rl, %.noexc334 ], [ %i.rw, %middle.block1153 ], [ %i.sf, %.lr.ph.i.i.i.i.i.i.i327 ]
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i331, i64 8 ; 2 uses
  %.not.i23.i.i.i332 = icmp eq ptr %i.qp, null
  br i1 %.not.i23.i.i.i332, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qp) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ft, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.rl, ptr %43, align 8, !tbaa !333
  store ptr %i.sg, ptr %i.qh, align 8, !tbaa !334
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rj ; 2 uses
  store ptr %i.sh, ptr %i.qi, align 8, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.fq
  %i.si = phi ptr [ %i.rl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.qp, %bb.fq ] ; 2 uses
  %i.sj = phi ptr [ %i.sh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.qq, %bb.fq ] ; 2 uses
  %i.sk = phi ptr [ %i.sg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ra, %bb.fq ] ; 2 uses
  %i.sl = add nuw i64 %.0156858, 1                ; 2 uses
  %i.sm = load ptr, ptr %i.qe, align 8, !tbaa !329
  %i.sn = load ptr, ptr %42, align 8, !tbaa !332
  %i.so = ptrtoint ptr %i.sm to i64
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = ashr exact i64 %i.sq, 4
  %i.ss = icmp ult i64 %i.sl, %i.sr
  br i1 %i.ss, label %bb.fh, label %._crit_edge861, !llvm.loop !2300

bb.fu:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %.body321

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp: ; preds = %bb.fs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp ]
  %i.su = load ptr, ptr %i.qw, align 8, !tbaa !119
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull align 8 dereferenceable(88) %i.qw) #25, !inline_history !121
  br label %.body321

bb.fv:                                            ; preds = %._crit_edge861
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.sx = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc343 unwind label %bb.gm ; 3 uses

.noexc343:                                        ; preds = %bb.fv
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %45) #25, !noalias !2301
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.sx, ptr noundef nonnull %9)
          to label %bb.fx unwind label %bb.fw, !noalias !2301

bb.fw:                                            ; preds = %.noexc343
  %i.sy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25, !noalias !2301
  call void @_ZdlPv(ptr noundef nonnull %i.sx) #29, !noalias !2301
  br label %.body344

bb.fx:                                            ; preds = %.noexc343
  store ptr %i.sx, ptr %44, align 8, !tbaa !2304, !alias.scope !2301
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25, !noalias !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  %i.sz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.fy unwind label %bb.go     ; 2 uses

bb.fy:                                            ; preds = %bb.fx
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 24
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !16
  %i.td = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ta, i64 noundef 0, i64 noundef %i.tc, ptr noundef nonnull @.str.150, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.go ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.fy
  %i.te = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.tf = ptrtoint ptr %i.ql to i64
  %i.tg = ptrtoint ptr %i.qk to i64               ; 3 uses
  %i.th = sub i64 %i.tf, %i.tg                    ; 3 uses
  %i.ti = ashr exact i64 %i.th, 3                 ; 4 uses
  %i.tj = load ptr, ptr %44, align 8, !tbaa !2304 ; 5 uses
  store ptr null, ptr %44, align 8, !tbaa !2304
  %i.tk = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %.not.i.i347 = icmp eq ptr %i.ql, %i.qj
  br i1 %.not.i.i347, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.tl = ptrtoint ptr %i.tj to i64
  store i64 %i.tl, ptr %i.ql, align 8, !tbaa !117
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8 ; 2 uses
  store ptr %i.tm, ptr %i.te, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.tn = icmp eq i64 %i.th, 9223372036854775800
  br i1 %i.tn, label %bb.gb, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc360 unwind label %bb.gp

.noexc360:                                        ; preds = %bb.gb
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348: ; preds = %bb.ga
  %.sroa.speculated.i.i.i.i349 = call i64 @llvm.umax.i64(i64 %i.ti, i64 1)
  %i.to = add nsw i64 %.sroa.speculated.i.i.i.i349, %i.ti ; 2 uses
  %i.tp = icmp ult i64 %i.to, %i.ti
  %i.tq = call i64 @llvm.umin.i64(i64 %i.to, i64 1152921504606846975)
  %i.tr = select i1 %i.tp, i64 1152921504606846975, i64 %i.tq ; 3 uses
  %.not.i.i.i.i350 = icmp ne i64 %i.tr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i350)
  %i.ts = shl nuw nsw i64 %i.tr, 3
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #26
          to label %.noexc361 unwind label %bb.gp ; 10 uses

.noexc361:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.th
  %i.tv = ptrtoint ptr %i.tj to i64
  store i64 %i.tv, ptr %i.tu, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i351 = icmp eq ptr %i.qk, %i.qj
  br i1 %.not10.i.i.i.i.i.i.i351, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356, label %.lr.ph.i.i.i.i.i.i.i352.preheader

.lr.ph.i.i.i.i.i.i.i352.preheader:                ; preds = %.noexc361
  %i.tw = sub i64 %i.qm, %i.tg
  %i.tx = add i64 %i.tw, -8                       ; 2 uses
  %i.ty = lshr i64 %i.tx, 3
  %i.tz = add nuw nsw i64 %i.ty, 1                ; 2 uses
  %min.iters.check1164 = icmp ult i64 %i.tx, 152
  br i1 %min.iters.check1164, label %.lr.ph.i.i.i.i.i.i.i352.preheader1226, label %vector.memcheck1157

vector.memcheck1157:                              ; preds = %.lr.ph.i.i.i.i.i.i.i352.preheader
  %i.ua = add i64 %i.qm, -8
  %i.ub = sub i64 %i.ua, %i.tg
  %i.uc = and i64 %i.ub, -8
  %i.ud = add i64 %i.uc, 8                        ; 2 uses
  %scevgep1158 = getelementptr i8, ptr %i.tt, i64 %i.ud
  %scevgep1159 = getelementptr i8, ptr %i.qk, i64 %i.ud
  %bound01160 = icmp ult ptr %i.tt, %scevgep1159
  %bound11161 = icmp ult ptr %i.qk, %scevgep1158
  %found.conflict1162 = and i1 %bound01160, %bound11161
  br i1 %found.conflict1162, label %.lr.ph.i.i.i.i.i.i.i352.preheader1226, label %vector.ph1165

vector.ph1165:                                    ; preds = %vector.memcheck1157
  %n.vec1167 = and i64 %i.tz, 4611686018427387900 ; 3 uses
  %i.ue = shl i64 %n.vec1167, 3                   ; 2 uses
  %i.uf = getelementptr i8, ptr %i.tt, i64 %i.ue  ; 2 uses
  %i.ug = getelementptr i8, ptr %i.qk, i64 %i.ue
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %vector.ph1165
  %index1169 = phi i64 [ 0, %vector.ph1165 ], [ %index.next1174, %vector.body1168 ] ; 2 uses
  %i.uh = shl i64 %index1169, 3                   ; 2 uses
  %next.gep1170 = getelementptr i8, ptr %i.tt, i64 %i.uh ; 2 uses
  %next.gep1171 = getelementptr i8, ptr %i.qk, i64 %i.uh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.ui = getelementptr i8, ptr %next.gep1171, i64 16
  %wide.load1172 = load <2 x i64>, ptr %next.gep1171, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  %wide.load1173 = load <2 x i64>, ptr %i.ui, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  %i.uj = getelementptr i8, ptr %next.gep1170, i64 16
  store <2 x i64> %wide.load1172, ptr %next.gep1170, align 8, !tbaa !117, !alias.scope !2314, !noalias !2311
  store <2 x i64> %wide.load1173, ptr %i.uj, align 8, !tbaa !117, !alias.scope !2314, !noalias !2311
  %i.uk = getelementptr i8, ptr %next.gep1171, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1171, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  store <2 x ptr> splat (ptr null), ptr %i.uk, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  %index.next1174 = add nuw i64 %index1169, 4     ; 2 uses
  %i.ul = icmp eq i64 %index.next1174, %n.vec1167
  br i1 %i.ul, label %middle.block1175, label %vector.body1168, !llvm.loop !2316

middle.block1175:                                 ; preds = %vector.body1168
  %cmp.n1176 = icmp eq i64 %i.tz, %n.vec1167
  br i1 %cmp.n1176, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356, label %.lr.ph.i.i.i.i.i.i.i352.preheader1226

.lr.ph.i.i.i.i.i.i.i352.preheader1226:            ; preds = %vector.memcheck1157, %.lr.ph.i.i.i.i.i.i.i352.preheader, %middle.block1175
  %.012.i.i.i.i.i.i.i353.ph = phi ptr [ %i.tt, %vector.memcheck1157 ], [ %i.tt, %.lr.ph.i.i.i.i.i.i.i352.preheader ], [ %i.uf, %middle.block1175 ]
  %.0911.i.i.i.i.i.i.i354.ph = phi ptr [ %i.qk, %vector.memcheck1157 ], [ %i.qk, %.lr.ph.i.i.i.i.i.i.i352.preheader ], [ %i.ug, %middle.block1175 ]
  br label %.lr.ph.i.i.i.i.i.i.i352

.lr.ph.i.i.i.i.i.i.i352:                          ; preds = %.lr.ph.i.i.i.i.i.i.i352.preheader1226, %.lr.ph.i.i.i.i.i.i.i352
  %.012.i.i.i.i.i.i.i353 = phi ptr [ %i.uo, %.lr.ph.i.i.i.i.i.i.i352 ], [ %.012.i.i.i.i.i.i.i353.ph, %.lr.ph.i.i.i.i.i.i.i352.preheader1226 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i354 = phi ptr [ %i.un, %.lr.ph.i.i.i.i.i.i.i352 ], [ %.0911.i.i.i.i.i.i.i354.ph, %.lr.ph.i.i.i.i.i.i.i352.preheader1226 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.um = load i64, ptr %.0911.i.i.i.i.i.i.i354, align 8, !tbaa !117, !alias.scope !2309, !noalias !2306
  store i64 %i.um, ptr %.012.i.i.i.i.i.i.i353, align 8, !tbaa !117, !alias.scope !2306, !noalias !2309
  store ptr null, ptr %.0911.i.i.i.i.i.i.i354, align 8, !tbaa !117, !alias.scope !2309, !noalias !2306
  %i.un = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i354, i64 8 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i353, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i355 = icmp eq ptr %i.un, %i.qj
  br i1 %.not.i.i.i.i.i.i.i355, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356, label %.lr.ph.i.i.i.i.i.i.i352, !llvm.loop !2317

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356: ; preds = %.lr.ph.i.i.i.i.i.i.i352, %middle.block1175, %.noexc361
  %.0.lcssa.i.i.i.i.i.i.i357 = phi ptr [ %i.tt, %.noexc361 ], [ %i.uf, %middle.block1175 ], [ %i.uo, %.lr.ph.i.i.i.i.i.i.i352 ]
  %i.up = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i357, i64 8 ; 2 uses
  %.not.i23.i.i.i358 = icmp eq ptr %i.qk, null
  br i1 %.not.i23.i.i.i358, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356
  call void @_ZdlPv(ptr noundef nonnull %i.qk) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359: ; preds = %bb.gc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356
  store ptr %i.tt, ptr %43, align 8, !tbaa !333
  store ptr %i.up, ptr %i.te, align 8, !tbaa !334
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr
  store ptr %i.uq, ptr %i.tk, align 8, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365: ; preds = %bb.fz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359
  %i.ur = phi ptr [ %i.tm, %bb.fz ], [ %i.up, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.us = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc368 unwind label %bb.gq ; 3 uses

.noexc368:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365
  %i.ut = load ptr, ptr %43, align 8, !tbaa !333, !noalias !2318
  store ptr %i.ut, ptr %8, align 8, !tbaa !333, !noalias !2318
  %i.uu = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.ur, ptr %i.uu, align 8, !tbaa !334, !noalias !2318
  %i.uv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.uw = load ptr, ptr %i.tk, align 8, !tbaa !335, !noalias !2318
  store ptr %i.uw, ptr %i.uv, align 8, !tbaa !335, !noalias !2318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false), !noalias !2318
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.us, i64 noundef %i.py, ptr noundef nonnull %8)
          to label %bb.gd unwind label %bb.gf, !noalias !2318

bb.gd:                                            ; preds = %.noexc368
  store ptr %i.us, ptr %46, align 8, !tbaa !356, !alias.scope !2318
  %i.ux = load ptr, ptr %8, align 8, !tbaa !333, !noalias !2318 ; 3 uses
  %i.uy = load ptr, ptr %i.uu, align 8, !tbaa !334, !noalias !2318 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ux, %i.uy
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.gd, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.vd, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.ux, %bb.gd ] ; 2 uses
  %i.uz = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !117, !noalias !2318 ; 3 uses
  %.not.i.i.i.i.i.i366 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i.i.i.i.i366, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !119, !noalias !2318
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !noalias !2318
  call void %i.vc(ptr noundef nonnull align 8 dereferenceable(88) %i.uz) #25, !noalias !2318, !inline_history !2321
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.vd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i367 = icmp eq ptr %i.vd, %i.uy
  br i1 %.not.i.i.i.i367, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !333, !noalias !2318
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.gd
  %i.ve = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ux, %bb.gd ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ve, null
  br i1 %.not.i.i1.i.i, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ve) #29, !noalias !2318
  br label %bb.gg

bb.gf:                                            ; preds = %.noexc368
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25, !noalias !2318
  call void @_ZdlPv(ptr noundef nonnull %i.us) #29, !noalias !2318
  br label %.body369

bb.gg:                                            ; preds = %bb.ge, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.vg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.gh unwind label %bb.gr     ; 3 uses

bb.gh:                                            ; preds = %bb.gg
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 24 ; 3 uses
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !360 ; 6 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 32 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !363
  %.not.i.i371 = icmp eq ptr %i.vj, %i.vl
  br i1 %.not.i.i371, label %bb.gi, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.gh
  %i.vm = load i64, ptr %i.it, align 8, !tbaa !139
  store i64 %i.vm, ptr %i.vj, align 8, !tbaa !139
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  store ptr %i.vn, ptr %i.vi, align 8, !tbaa !360
  %i.vo = load ptr, ptr %46, align 8, !tbaa !356
  store ptr null, ptr %46, align 8, !tbaa !356
  store ptr %i.vo, ptr %i.it, align 8, !tbaa !139
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.gi:                                            ; preds = %bb.gh
  %i.vp = load ptr, ptr %i.vh, align 8, !tbaa !364 ; 10 uses
  %i.vq = ptrtoint ptr %i.vj to i64               ; 3 uses
  %i.vr = ptrtoint ptr %i.vp to i64               ; 3 uses
  %i.vs = sub i64 %i.vq, %i.vr                    ; 3 uses
  %i.vt = icmp eq i64 %i.vs, 9223372036854775800
  br i1 %i.vt, label %bb.gj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.gj:                                            ; preds = %bb.gi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc381 unwind label %bb.gr

.noexc381:                                        ; preds = %bb.gj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gi
  %i.vu = ashr exact i64 %i.vs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i372 = call i64 @llvm.umax.i64(i64 %i.vu, i64 1)
  %i.vv = add nsw i64 %.sroa.speculated.i.i.i.i372, %i.vu ; 2 uses
  %i.vw = icmp ult i64 %i.vv, %i.vu
  %i.vx = call i64 @llvm.umin.i64(i64 %i.vv, i64 1152921504606846975)
  %i.vy = select i1 %i.vw, i64 1152921504606846975, i64 %i.vx ; 3 uses
  %.not.i.i.i.i373 = icmp ne i64 %i.vy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i373)
  %i.vz = shl nuw nsw i64 %i.vy, 3
  %i.wa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vz) #26
          to label %.noexc382 unwind label %bb.gr ; 10 uses

.noexc382:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vs
  %i.wc = load i64, ptr %i.it, align 8, !tbaa !139
  store i64 %i.wc, ptr %i.wb, align 8, !tbaa !139
  store ptr null, ptr %i.it, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i374 = icmp eq ptr %i.vp, %i.vj
  br i1 %.not10.i.i.i.i.i.i.i374, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i375.preheader

.lr.ph.i.i.i.i.i.i.i375.preheader:                ; preds = %.noexc382
  %i.wd = sub i64 %i.vq, %i.vr
  %i.we = add i64 %i.wd, -8                       ; 2 uses
  %i.wf = lshr i64 %i.we, 3
  %i.wg = add nuw nsw i64 %i.wf, 1                ; 2 uses
  %min.iters.check1186 = icmp ult i64 %i.we, 152
  br i1 %min.iters.check1186, label %.lr.ph.i.i.i.i.i.i.i375.preheader1224, label %vector.memcheck1179

vector.memcheck1179:                              ; preds = %.lr.ph.i.i.i.i.i.i.i375.preheader
  %i.wh = add i64 %i.vq, -8
  %i.wi = sub i64 %i.wh, %i.vr
  %i.wj = and i64 %i.wi, -8
  %i.wk = add i64 %i.wj, 8                        ; 2 uses
  %scevgep1180 = getelementptr i8, ptr %i.wa, i64 %i.wk
  %scevgep1181 = getelementptr i8, ptr %i.vp, i64 %i.wk
  %bound01182 = icmp ult ptr %i.wa, %scevgep1181
  %bound11183 = icmp ult ptr %i.vp, %scevgep1180
  %found.conflict1184 = and i1 %bound01182, %bound11183
  br i1 %found.conflict1184, label %.lr.ph.i.i.i.i.i.i.i375.preheader1224, label %vector.ph1187

vector.ph1187:                                    ; preds = %vector.memcheck1179
  %n.vec1189 = and i64 %i.wg, 4611686018427387900 ; 3 uses
  %i.wl = shl i64 %n.vec1189, 3                   ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wa, i64 %i.wl  ; 2 uses
  %i.wn = getelementptr i8, ptr %i.vp, i64 %i.wl
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %vector.ph1187
  %index1191 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1196, %vector.body1190 ] ; 2 uses
  %i.wo = shl i64 %index1191, 3                   ; 2 uses
  %next.gep1192 = getelementptr i8, ptr %i.wa, i64 %i.wo ; 2 uses
  %next.gep1193 = getelementptr i8, ptr %i.vp, i64 %i.wo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.wp = getelementptr i8, ptr %next.gep1193, i64 16
  %wide.load1194 = load <2 x i64>, ptr %next.gep1193, align 8, !tbaa !139, !alias.scope !2327, !noalias !2322
  %wide.load1195 = load <2 x i64>, ptr %i.wp, align 8, !tbaa !139, !alias.scope !2327, !noalias !2322
  %i.wq = getelementptr i8, ptr %next.gep1192, i64 16
  store <2 x i64> %wide.load1194, ptr %next.gep1192, align 8, !tbaa !139, !alias.scope !2330, !noalias !2327
  store <2 x i64> %wide.load1195, ptr %i.wq, align 8, !tbaa !139, !alias.scope !2330, !noalias !2327
  %i.wr = getelementptr i8, ptr %next.gep1193, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1193, align 8, !tbaa !139, !alias.scope !2327, !noalias !2322
  store <2 x ptr> splat (ptr null), ptr %i.wr, align 8, !tbaa !139, !alias.scope !2327, !noalias !2322
  %index.next1196 = add nuw i64 %index1191, 4     ; 2 uses
  %i.ws = icmp eq i64 %index.next1196, %n.vec1189
  br i1 %i.ws, label %middle.block1197, label %vector.body1190, !llvm.loop !2332

middle.block1197:                                 ; preds = %vector.body1190
  %cmp.n1198 = icmp eq i64 %i.wg, %n.vec1189
  br i1 %cmp.n1198, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i375.preheader1224

.lr.ph.i.i.i.i.i.i.i375.preheader1224:            ; preds = %vector.memcheck1179, %.lr.ph.i.i.i.i.i.i.i375.preheader, %middle.block1197
  %.012.i.i.i.i.i.i.i376.ph = phi ptr [ %i.wa, %vector.memcheck1179 ], [ %i.wa, %.lr.ph.i.i.i.i.i.i.i375.preheader ], [ %i.wm, %middle.block1197 ]
  %.0911.i.i.i.i.i.i.i377.ph = phi ptr [ %i.vp, %vector.memcheck1179 ], [ %i.vp, %.lr.ph.i.i.i.i.i.i.i375.preheader ], [ %i.wn, %middle.block1197 ]
  br label %.lr.ph.i.i.i.i.i.i.i375

.lr.ph.i.i.i.i.i.i.i375:                          ; preds = %.lr.ph.i.i.i.i.i.i.i375.preheader1224, %.lr.ph.i.i.i.i.i.i.i375
  %.012.i.i.i.i.i.i.i376 = phi ptr [ %i.wv, %.lr.ph.i.i.i.i.i.i.i375 ], [ %.012.i.i.i.i.i.i.i376.ph, %.lr.ph.i.i.i.i.i.i.i375.preheader1224 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i377 = phi ptr [ %i.wu, %.lr.ph.i.i.i.i.i.i.i375 ], [ %.0911.i.i.i.i.i.i.i377.ph, %.lr.ph.i.i.i.i.i.i.i375.preheader1224 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  call void @llvm.experimental.noalias.scope.decl(metadata !2325)
  %i.wt = load i64, ptr %.0911.i.i.i.i.i.i.i377, align 8, !tbaa !139, !alias.scope !2325, !noalias !2322
  store i64 %i.wt, ptr %.012.i.i.i.i.i.i.i376, align 8, !tbaa !139, !alias.scope !2322, !noalias !2325
  store ptr null, ptr %.0911.i.i.i.i.i.i.i377, align 8, !tbaa !139, !alias.scope !2325, !noalias !2322
  %i.wu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i377, i64 8 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i376, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i378 = icmp eq ptr %i.wu, %i.vj
  br i1 %.not.i.i.i.i.i.i.i378, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i375, !llvm.loop !2333

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i375, %middle.block1197, %.noexc382
  %.0.lcssa.i.i.i.i.i.i.i379 = phi ptr [ %i.wa, %.noexc382 ], [ %i.wm, %middle.block1197 ], [ %i.wv, %.lr.ph.i.i.i.i.i.i.i375 ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i379, i64 8
  %.not.i23.i.i.i380 = icmp eq ptr %i.vp, null
  br i1 %.not.i23.i.i.i380, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.vp) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.gk
  store ptr %i.wa, ptr %i.vh, align 8, !tbaa !364
  store ptr %i.ww, ptr %i.vi, align 8, !tbaa !360
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.vy
  store ptr %i.wx, ptr %i.vk, align 8, !tbaa !363
  %.pr785 = load ptr, ptr %i.it, align 8, !tbaa !139 ; 3 uses
  %i.wy = load ptr, ptr %46, align 8, !tbaa !356
  store ptr null, ptr %46, align 8, !tbaa !356
  store ptr %i.wy, ptr %i.it, align 8, !tbaa !139
  %.not.i.i.i.i.i383 = icmp eq ptr %.pr785, null
  br i1 %.not.i.i.i.i.i383, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.wz = load ptr, ptr %.pr785, align 8, !tbaa !119
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pr785) #25, !inline_history !377
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  %i.xc = load ptr, ptr %39, align 16, !tbaa !352 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 6 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !352 ; 2 uses
  %.not806862 = icmp eq ptr %i.xc, %i.xe
  br i1 %.not806862, label %._crit_edge865, label %.lr.ph864

._crit_edge865:                                   ; preds = %bb.gs, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.xf = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.gu unwind label %bb.gr

bb.gl:                                            ; preds = %._crit_edge861
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gm:                                            ; preds = %bb.fv
  %i.xh = landingpad { ptr, i32 }
          cleanup
  br label %.body344

.body344:                                         ; preds = %bb.fw, %bb.gm
  %eh.lpad-body345 = phi { ptr, i32 } [ %i.xh, %bb.gm ], [ %i.sy, %bb.fw ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #25
  br label %bb.gn

bb.gn:                                            ; preds = %.body344, %bb.gl
  %.pn164 = phi { ptr, i32 } [ %eh.lpad-body345, %.body344 ], [ %i.xg, %bb.gl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit457

bb.go:                                            ; preds = %bb.fy, %bb.fx
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387

bb.gp:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348, %bb.gb
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i385 = icmp eq ptr %i.tj, null
  br i1 %.not.i385, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i386

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i386: ; preds = %bb.gp
  %i.xk = load ptr, ptr %i.tj, align 8, !tbaa !119
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8
  call void %i.xm(ptr noundef nonnull align 8 dereferenceable(88) %i.tj) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387

bb.gq:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %.body369

bb.gr:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.gj, %bb.hi, %._crit_edge865, %bb.gg
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %.body389

.lr.ph864:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %bb.gs
  %.sroa.0696.0863 = phi ptr [ %i.xp, %bb.gs ], [ %i.xc, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  invoke void @_ZN6duckdb20RewriteMergeBindingsERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERKNS_6vectorINS_13ColumnBindingELb1ESaIS7_EEEm(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0696.0863, ptr noundef nonnull align 8 dereferenceable(24) %42, i64 noundef %i.py)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %.lr.ph864
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0696.0863, i64 8 ; 2 uses
  %.not806 = icmp eq ptr %i.xp, %i.xe
  br i1 %.not806, label %._crit_edge865, label %.lr.ph864

bb.gt:                                            ; preds = %.lr.ph864
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %.body389

bb.gu:                                            ; preds = %._crit_edge865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.py, ptr %i.h, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.xr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %42, ptr %7, align 8, !tbaa !2334
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !313
  store ptr @"_ZNSt17_Function_handlerIFvPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_20RewriteMergeBindingsERNS0_15LogicalOperatorERKNS0_6vectorINS0_13ColumnBindingELb1ESaISB_EEEmE3$_0E9_M_invokeERKSt9_Any_dataOS6_", ptr %i.xs, align 8, !tbaa !2336
  store ptr @"_ZNSt17_Function_handlerIFvPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_20RewriteMergeBindingsERNS0_15LogicalOperatorERKNS0_6vectorINS0_13ColumnBindingELb1ESaISB_EEEmE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.xr, align 8, !tbaa !761
  invoke void @_ZN6duckdb22LogicalOperatorVisitor20EnumerateExpressionsERNS_15LogicalOperatorERKSt8functionIFvPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(97) %i.xf, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.gv unwind label %bb.gy

bb.gv:                                            ; preds = %bb.gu
  %i.xt = load ptr, ptr %i.xr, align 8, !tbaa !761 ; 2 uses
  %.not.i.i388 = icmp eq ptr %i.xt, null
  br i1 %.not.i.i388, label %bb.hb, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.xu = invoke noundef zeroext i1 %i.xt(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.hb unwind label %bb.gx     ; 0 uses

bb.gx:                                            ; preds = %bb.gw
  %i.xv = landingpad { ptr, i32 }
          catch ptr null
  %i.xw = extractvalue { ptr, i32 } %i.xv, 0
  call void @__clang_call_terminate(ptr %i.xw) #28
  unreachable

bb.gy:                                            ; preds = %bb.gu
  %i.xx = landingpad { ptr, i32 }
          cleanup
  %i.xy = load ptr, ptr %i.xr, align 8, !tbaa !761 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb6Binder4BindERNS_18MergeIntoStatementE:bb.a
          cleanup
  %i.yj = load ptr, ptr %i.yc, align 8, !tbaa !761 ; 2 uses
  %.not.i3.i392 = icmp eq ptr %i.yj, null
  br i1 %.not.i3.i392, label %_ZNSt14_Function_baseD2Ev.exit4.i393, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.yk = invoke noundef zeroext i1 %i.yj(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i393 unwind label %bb.hh ; 0 uses

bb.hh:                                            ; preds = %bb.hg
  %i.yl = landingpad { ptr, i32 }
          catch ptr null
  %i.ym = extractvalue { ptr, i32 } %i.yl, 0
  call void @__clang_call_terminate(ptr %i.ym) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i393:             ; preds = %bb.hg, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body389

bb.hi:                                            ; preds = %bb.hd, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.yn = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_16LogicalMergeIntoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.hj unwind label %bb.gr

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.py, ptr %i.f, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.yo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %42, ptr %5, align 8, !tbaa !2334
  %.sroa.5.0..sroa_idx.i398 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i398, align 8, !tbaa !313
  store ptr @"_ZNSt17_Function_handlerIFvPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_20RewriteMergeBindingsERNS0_15LogicalOperatorERKNS0_6vectorINS0_13ColumnBindingELb1ESaISB_EEEmE3$_0E9_M_invokeERKSt9_Any_dataOS6_", ptr %i.yp, align 8, !tbaa !2336
  store ptr @"_ZNSt17_Function_handlerIFvPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_20RewriteMergeBindingsERNS0_15LogicalOperatorERKNS0_6vectorINS0_13ColumnBindingELb1ESaISB_EEEmE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.yo, align 8, !tbaa !761
  invoke void @_ZN6duckdb22LogicalOperatorVisitor20EnumerateExpressionsERNS_15LogicalOperatorERKSt8functionIFvPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(97) %i.yn, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.hk unwind label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  %i.yq = load ptr, ptr %i.yo, align 8, !tbaa !761 ; 2 uses
  %.not.i.i401 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i401, label %bb.hq, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.yr = invoke noundef zeroext i1 %i.yq(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.hq unwind label %bb.hm     ; 0 uses

bb.hm:                                            ; preds = %bb.hl
  %i.ys = landingpad { ptr, i32 }
          catch ptr null
  %i.yt = extractvalue { ptr, i32 } %i.ys, 0
  call void @__clang_call_terminate(ptr %i.yt) #28
  unreachable

bb.hn:                                            ; preds = %bb.hj
  %i.yu = landingpad { ptr, i32 }
          cleanup
  %i.yv = load ptr, ptr %i.yo, align 8, !tbaa !761 ; 2 uses
  %.not.i3.i399 = icmp eq ptr %i.yv, null
  br i1 %.not.i3.i399, label %_ZNSt14_Function_baseD2Ev.exit4.i400, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.yw = invoke noundef zeroext i1 %i.yv(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i400 unwind label %bb.hp ; 0 uses

bb.hp:                                            ; preds = %bb.ho
  %i.yx = landingpad { ptr, i32 }
          catch ptr null
  %i.yy = extractvalue { ptr, i32 } %i.yx, 0
  call void @__clang_call_terminate(ptr %i.yy) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i400:             ; preds = %bb.ho, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body389

bb.hq:                                            ; preds = %bb.hl, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.yz = load ptr, ptr %i.xd, align 8, !tbaa !334
  %i.za = load ptr, ptr %39, align 16, !tbaa !333
  %i.zb = ptrtoint ptr %i.yz to i64
  %i.zc = ptrtoint ptr %i.za to i64
  %i.zd = sub i64 %i.zb, %i.zc
  %i.ze = ashr exact i64 %i.zd, 3
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %47, i64 noundef %i.ze)
          to label %bb.hr unwind label %bb.ic

bb.hr:                                            ; preds = %bb.hq
  %i.zf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalMergeIntoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.hs unwind label %bb.ic

bb.hs:                                            ; preds = %bb.hr
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 152
  %i.zh = load i64, ptr %47, align 8, !tbaa !97
  store i64 %i.zh, ptr %i.zg, align 8, !tbaa !97
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.zi = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc409 unwind label %bb.id ; 3 uses

.noexc409:                                        ; preds = %bb.hs
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 13)
          to label %bb.ht unwind label %bb.hu, !noalias !2338

bb.ht:                                            ; preds = %.noexc409
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.zi, ptr noundef nonnull %4, i64 %i.py, i64 %i.ti, i64 noundef 0)
          to label %bb.hx unwind label %bb.hv, !noalias !2338

bb.hu:                                            ; preds = %.noexc409
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.hv:                                            ; preds = %bb.ht
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25, !noalias !2338
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu
  %.pn.i405 = phi { ptr, i32 } [ %i.zk, %bb.hv ], [ %i.zj, %bb.hu ]
  call void @_ZdlPv(ptr noundef nonnull %i.zi) #29, !noalias !2338
  br label %.body410

bb.hx:                                            ; preds = %bb.ht
  store ptr %i.zi, ptr %48, align 8, !tbaa !336, !alias.scope !2338
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25, !noalias !2338
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.zl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24BoundColumnRefExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.hy unwind label %bb.ie     ; 2 uses

bb.hy:                                            ; preds = %bb.hx
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !16
  %i.zp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.zm, i64 noundef 0, i64 noundef %i.zo, ptr noundef nonnull @.str.150, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit413 unwind label %bb.ie ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit413: ; preds = %bb.hy
  %i.zq = load ptr, ptr %48, align 8, !tbaa !336  ; 5 uses
  store ptr null, ptr %48, align 8, !tbaa !336
  %i.zr = load ptr, ptr %i.xd, align 8, !tbaa !334 ; 6 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.zt = load ptr, ptr %i.zs, align 16, !tbaa !335
  %.not.i.i414 = icmp eq ptr %i.zr, %i.zt
  br i1 %.not.i.i414, label %bb.hz, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit413
  %i.zu = ptrtoint ptr %i.zq to i64
  store i64 %i.zu, ptr %i.zr, align 8, !tbaa !117
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  store ptr %i.zv, ptr %i.xd, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435

bb.hz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit413
  %i.zw = load ptr, ptr %39, align 16, !tbaa !333 ; 10 uses
  %i.zx = ptrtoint ptr %i.zr to i64               ; 3 uses
  %i.zy = ptrtoint ptr %i.zw to i64               ; 3 uses
  %i.zz = sub i64 %i.zx, %i.zy                    ; 3 uses
  %i.aaa = icmp eq i64 %i.zz, 9223372036854775800
  br i1 %i.aaa, label %bb.ia, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415

bb.ia:                                            ; preds = %bb.hz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc427 unwind label %bb.if

.noexc427:                                        ; preds = %bb.ia
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415: ; preds = %bb.hz
  %i.aab = ashr exact i64 %i.zz, 3                ; 3 uses
  %.sroa.speculated.i.i.i.i416 = call i64 @llvm.umax.i64(i64 %i.aab, i64 1)
  %i.aac = add nsw i64 %.sroa.speculated.i.i.i.i416, %i.aab ; 2 uses
  %i.aad = icmp ult i64 %i.aac, %i.aab
  %i.aae = call i64 @llvm.umin.i64(i64 %i.aac, i64 1152921504606846975)
  %i.aaf = select i1 %i.aad, i64 1152921504606846975, i64 %i.aae ; 4 uses
  %.not.i.i.i.i417 = icmp ne i64 %i.aaf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i417)
  %i.aag = shl nuw nsw i64 %i.aaf, 3
  %i.aah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aag) #26
          to label %.noexc428 unwind label %bb.if ; 12 uses

.noexc428:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 %i.zz
  %i.aaj = ptrtoint ptr %i.zq to i64
  store i64 %i.aaj, ptr %i.aai, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i418 = icmp eq ptr %i.zw, %i.zr
  br i1 %.not10.i.i.i.i.i.i.i418, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423, label %.lr.ph.i.i.i.i.i.i.i419.preheader

.lr.ph.i.i.i.i.i.i.i419.preheader:                ; preds = %.noexc428
  %i.aak = sub i64 %i.zx, %i.zy
  %i.aal = add i64 %i.aak, -8                     ; 2 uses
  %i.aam = lshr i64 %i.aal, 3
  %i.aan = add nuw nsw i64 %i.aam, 1              ; 2 uses
  %min.iters.check1208 = icmp ult i64 %i.aal, 152
  br i1 %min.iters.check1208, label %.lr.ph.i.i.i.i.i.i.i419.preheader1223, label %vector.memcheck1201

vector.memcheck1201:                              ; preds = %.lr.ph.i.i.i.i.i.i.i419.preheader
  %i.aao = add i64 %i.zx, -8
  %i.aap = sub i64 %i.aao, %i.zy
  %i.aaq = and i64 %i.aap, -8
  %i.aar = add i64 %i.aaq, 8                      ; 2 uses
  %scevgep1202 = getelementptr i8, ptr %i.aah, i64 %i.aar
  %scevgep1203 = getelementptr i8, ptr %i.zw, i64 %i.aar
  %bound01204 = icmp ult ptr %i.aah, %scevgep1203
  %bound11205 = icmp ult ptr %i.zw, %scevgep1202
  %found.conflict1206 = and i1 %bound01204, %bound11205
  br i1 %found.conflict1206, label %.lr.ph.i.i.i.i.i.i.i419.preheader1223, label %vector.ph1209

vector.ph1209:                                    ; preds = %vector.memcheck1201
  %n.vec1211 = and i64 %i.aan, 4611686018427387900 ; 3 uses
  %i.aas = shl i64 %n.vec1211, 3                  ; 2 uses
  %i.aat = getelementptr i8, ptr %i.aah, i64 %i.aas ; 2 uses
  %i.aau = getelementptr i8, ptr %i.zw, i64 %i.aas
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %vector.ph1209
  %index1213 = phi i64 [ 0, %vector.ph1209 ], [ %index.next1218, %vector.body1212 ] ; 2 uses
  %i.aav = shl i64 %index1213, 3                  ; 2 uses
  %next.gep1214 = getelementptr i8, ptr %i.aah, i64 %i.aav ; 2 uses
  %next.gep1215 = getelementptr i8, ptr %i.zw, i64 %i.aav ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  %i.aaw = getelementptr i8, ptr %next.gep1215, i64 16
  %wide.load1216 = load <2 x i64>, ptr %next.gep1215, align 8, !tbaa !117, !alias.scope !2346, !noalias !2341
  %wide.load1217 = load <2 x i64>, ptr %i.aaw, align 8, !tbaa !117, !alias.scope !2346, !noalias !2341
  %i.aax = getelementptr i8, ptr %next.gep1214, i64 16
  store <2 x i64> %wide.load1216, ptr %next.gep1214, align 8, !tbaa !117, !alias.scope !2349, !noalias !2346
  store <2 x i64> %wide.load1217, ptr %i.aax, align 8, !tbaa !117, !alias.scope !2349, !noalias !2346
  %i.aay = getelementptr i8, ptr %next.gep1215, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1215, align 8, !tbaa !117, !alias.scope !2346, !noalias !2341
  store <2 x ptr> splat (ptr null), ptr %i.aay, align 8, !tbaa !117, !alias.scope !2346, !noalias !2341
  %index.next1218 = add nuw i64 %index1213, 4     ; 2 uses
  %i.aaz = icmp eq i64 %index.next1218, %n.vec1211
  br i1 %i.aaz, label %middle.block1219, label %vector.body1212, !llvm.loop !2351

middle.block1219:                                 ; preds = %vector.body1212
  %cmp.n1220 = icmp eq i64 %i.aan, %n.vec1211
  br i1 %cmp.n1220, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423, label %.lr.ph.i.i.i.i.i.i.i419.preheader1223

.lr.ph.i.i.i.i.i.i.i419.preheader1223:            ; preds = %vector.memcheck1201, %.lr.ph.i.i.i.i.i.i.i419.preheader, %middle.block1219
  %.012.i.i.i.i.i.i.i420.ph = phi ptr [ %i.aah, %vector.memcheck1201 ], [ %i.aah, %.lr.ph.i.i.i.i.i.i.i419.preheader ], [ %i.aat, %middle.block1219 ]
  %.0911.i.i.i.i.i.i.i421.ph = phi ptr [ %i.zw, %vector.memcheck1201 ], [ %i.zw, %.lr.ph.i.i.i.i.i.i.i419.preheader ], [ %i.aau, %middle.block1219 ]
  br label %.lr.ph.i.i.i.i.i.i.i419

.lr.ph.i.i.i.i.i.i.i419:                          ; preds = %.lr.ph.i.i.i.i.i.i.i419.preheader1223, %.lr.ph.i.i.i.i.i.i.i419
  %.012.i.i.i.i.i.i.i420 = phi ptr [ %i.abc, %.lr.ph.i.i.i.i.i.i.i419 ], [ %.012.i.i.i.i.i.i.i420.ph, %.lr.ph.i.i.i.i.i.i.i419.preheader1223 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i421 = phi ptr [ %i.abb, %.lr.ph.i.i.i.i.i.i.i419 ], [ %.0911.i.i.i.i.i.i.i421.ph, %.lr.ph.i.i.i.i.i.i.i419.preheader1223 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  call void @llvm.experimental.noalias.scope.decl(metadata !2344)
  %i.aba = load i64, ptr %.0911.i.i.i.i.i.i.i421, align 8, !tbaa !117, !alias.scope !2344, !noalias !2341
  store i64 %i.aba, ptr %.012.i.i.i.i.i.i.i420, align 8, !tbaa !117, !alias.scope !2341, !noalias !2344
  store ptr null, ptr %.0911.i.i.i.i.i.i.i421, align 8, !tbaa !117, !alias.scope !2344, !noalias !2341
  %i.abb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i421, i64 8 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i420, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i422 = icmp eq ptr %i.abb, %i.zr
  br i1 %.not.i.i.i.i.i.i.i422, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423, label %.lr.ph.i.i.i.i.i.i.i419, !llvm.loop !2352

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423: ; preds = %.lr.ph.i.i.i.i.i.i.i419, %middle.block1219, %.noexc428
  %.0.lcssa.i.i.i.i.i.i.i424 = phi ptr [ %i.aah, %.noexc428 ], [ %i.aat, %middle.block1219 ], [ %i.abc, %.lr.ph.i.i.i.i.i.i.i419 ]
  %i.abd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i424, i64 8 ; 2 uses
  %.not.i23.i.i.i425 = icmp eq ptr %i.zw, null
  br i1 %.not.i23.i.i.i425, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432.thread1085, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432.thread1085: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423
  store ptr %i.aah, ptr %39, align 16, !tbaa !333
  store ptr %i.abd, ptr %i.xd, align 8, !tbaa !334
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %i.aaf
  store ptr %i.abe, ptr %i.zs, align 16, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423
  call void @_ZdlPv(ptr noundef nonnull %i.zw) #29
  %.pre.pre = load ptr, ptr %48, align 8, !tbaa !336 ; 3 uses
  store ptr %i.aah, ptr %39, align 16, !tbaa !333
  store ptr %i.abd, ptr %i.xd, align 8, !tbaa !334
  %i.abf = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %i.aaf
  store ptr %i.abf, ptr %i.zs, align 16, !tbaa !335
  %.not.i433 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i433, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i434

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i434: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432
  %i.abg = load ptr, ptr %.pre.pre, align 8, !tbaa !119
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  %i.abi = load ptr, ptr %i.abh, align 8
  call void %i.abi(ptr noundef nonnull align 8 dereferenceable(112) %.pre.pre) #25, !inline_history !350
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432.thread1085, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit432, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i434
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  %i.abj = load ptr, ptr %46, align 8, !tbaa !356 ; 3 uses
  %.not.i436 = icmp eq ptr %i.abj, null
  br i1 %.not.i436, label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !119
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8
  call void %i.abm(ptr noundef nonnull align 8 dereferenceable(112) %i.abj) #25, !inline_history !378
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit435, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  %i.abn = load ptr, ptr %44, align 8, !tbaa !2304 ; 3 uses
  %.not.i437 = icmp eq ptr %i.abn, null
  br i1 %.not.i437, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !119
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8
  call void %i.abq(ptr noundef nonnull align 8 dereferenceable(152) %i.abn) #25, !inline_history !2353
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  %.pre884 = load ptr, ptr %42, align 8, !tbaa !332 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  %.not.i.i.i445 = icmp eq ptr %.pre884, null
  br i1 %.not.i.i.i445, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre884) #29
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  br label %bb.ih

bb.ic:                                            ; preds = %bb.hr, %bb.hq
  %i.abr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  br label %.body389

bb.id:                                            ; preds = %bb.hs
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %.body410

bb.ie:                                            ; preds = %bb.hy, %bb.hx
  %i.abt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448

bb.if:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415, %bb.ia
  %i.abu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i446 = icmp eq ptr %i.zq, null
  br i1 %.not.i446, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i447

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i447: ; preds = %bb.if
  %i.abv = load ptr, ptr %i.zq, align 8, !tbaa !119
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.abx = load ptr, ptr %i.abw, align 8
  call void %i.abx(ptr noundef nonnull align 8 dereferenceable(88) %i.zq) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i447, %bb.if, %bb.ie
  %.pn166 = phi { ptr, i32 } [ %i.abt, %bb.ie ], [ %i.abu, %bb.if ], [ %i.abu, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i447 ] ; 2 uses
  %i.aby = load ptr, ptr %48, align 8, !tbaa !336 ; 3 uses
  %.not.i449 = icmp eq ptr %i.aby, null
  br i1 %.not.i449, label %.body410, label %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i450

_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i450: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !119
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8
  call void %i.acb(ptr noundef nonnull align 8 dereferenceable(112) %i.aby) #25, !inline_history !350
  br label %.body410

.body410:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i450, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448, %bb.id, %bb.hw
  %.pn166.pn = phi { ptr, i32 } [ %.pn.i405, %bb.hw ], [ %i.abs, %bb.id ], [ %.pn166, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit448 ], [ %.pn166, %_ZNKSt14default_deleteIN6duckdb24BoundColumnRefExpressionEEclEPS1_.exit.i450 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  br label %.body389

.body389:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i, %bb.gr, %_ZNSt14_Function_baseD2Ev.exit4.i400, %_ZNSt14_Function_baseD2Ev.exit4.i393, %.body410, %bb.ic, %bb.gt
  %.pn184 = phi { ptr, i32 } [ %i.xq, %bb.gt ], [ %.pn166.pn, %.body410 ], [ %i.abr, %bb.ic ], [ %i.xx, %_ZNSt14_Function_baseD2Ev.exit4.i ], [ %i.yi, %_ZNSt14_Function_baseD2Ev.exit4.i393 ], [ %i.xo, %bb.gr ], [ %i.yu, %_ZNSt14_Function_baseD2Ev.exit4.i400 ] ; 2 uses
  %i.acc = load ptr, ptr %46, align 8, !tbaa !356 ; 3 uses
  %.not.i452 = icmp eq ptr %i.acc, null
  br i1 %.not.i452, label %.body369, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i453

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i453: ; preds = %.body389
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !119
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8
  call void %i.acf(ptr noundef nonnull align 8 dereferenceable(112) %i.acc) #25, !inline_history !378
  br label %.body369

.body369:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i453, %.body389, %bb.gq, %bb.gf
  %.pn184.pn = phi { ptr, i32 } [ %i.vf, %bb.gf ], [ %i.xn, %bb.gq ], [ %.pn184, %.body389 ], [ %.pn184, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i453 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387: ; preds = %.body369, %bb.gp, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i386, %bb.go
end_hunk_11
begin_hunk_12_@_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm:bb.a
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder15BindMergeActionERNS_16LogicalMergeIntoERNS_17TableCatalogEntryERNS_10LogicalGetEmRNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEERNS8_INS_15LogicalOperatorESA_ISG_ELb1EEERNS_15MergeIntoActionERKNS7_INS_12BindingAliasELb1ESaISM_EEERKNS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISW_EEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.2016") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %2, ptr noundef nonnull align 8 dereferenceable(448) %3, ptr noundef nonnull align 8 dereferenceable(1104) %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(74) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %14 = alloca %"class.duckdb::WhereBinder", align 8 ; 7 uses
  %15 = alloca %"class.duckdb::unique_ptr.264", align 8 ; 11 uses
  %16 = alloca %"class.duckdb::ProjectionBinder", align 8 ; 13 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %19 = alloca %"class.duckdb::unique_ptr.264", align 8 ; 8 uses
  %20 = alloca %"class.duckdb::unique_ptr.1867", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %23 = alloca %"class.duckdb::vector.20", align 16 ; 11 uses
  %24 = alloca %"class.duckdb::LogicalProjection", align 8 ; 9 uses
  %25 = alloca %"class.duckdb::vector.508", align 16 ; 7 uses
  %26 = alloca %"class.duckdb::LogicalUpdate", align 8 ; 21 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %29 = alloca %"class.duckdb::vector.1827", align 8 ; 8 uses
  %30 = alloca %"class.duckdb::vector", align 8   ; 10 uses
  %31 = alloca %"class.duckdb::vector.508", align 8 ; 10 uses
  %32 = alloca %"class.duckdb::vector.20", align 16 ; 10 uses
  %33 = alloca %"class.duckdb::InsertBinder", align 8 ; 11 uses
  %34 = alloca %"class.duckdb::unique_ptr.264", align 8 ; 10 uses
  %35 = alloca %"class.duckdb::ProjectionBinder", align 8 ; 13 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %38 = alloca %"class.duckdb::unique_ptr.264", align 8 ; 9 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  %i.d = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26, !noalias !2397 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false), !noalias !2397
  store ptr %i.d, ptr %0, align 8, !tbaa !2268, !alias.scope !2397
  %i.e = load i8, ptr %8, align 8, !tbaa !2166
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20BoundMergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  store i8 %i.e, ptr %i.f, align 8, !tbaa !2400
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %.not555 = icmp eq ptr %i.h, null
  br i1 %.not555, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.t       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.m, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26, !nonnull !95, !align !96
  invoke void @_ZN6duckdb11WhereBinderC1ERNS_6BinderERNS_13ClientContextENS_12optional_ptrINS_17ColumnAliasBinderELb1EEE(ptr noundef nonnull align 8 dereferenceable(112) %14, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(512) %i.o, ptr null)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.264") align 8 %15, ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr null, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6duckdb6Binder14PlanSubqueriesERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERNS1_INS_15LogicalOperatorES3_IS7_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.j unwind label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !334
  %i.s = load ptr, ptr %6, align 8, !tbaa !333
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.x = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc unwind label %bb.y     ; 5 uses

.noexc:                                           ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %bb.k unwind label %bb.l, !noalias !2402

bb.k:                                             ; preds = %.noexc
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull %13, i64 %5, i64 %i.w, i64 noundef 0)
          to label %bb.o unwind label %bb.m, !noalias !2402

bb.l:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25, !noalias !2402
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.z, %bb.l ]
  call void @_ZdlPv(ptr noundef nonnull %i.x) #29, !noalias !2402
  br label %.body

bb.o:                                             ; preds = %bb.k
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25, !noalias !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20BoundMergeIntoActionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.p unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit191

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !117 ; 3 uses
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !117
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !119
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(88) %i.ad) #25, !inline_history !1351
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.p, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !334 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !335
  %.not.i.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i.i, label %bb.q, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ak = load i64, ptr %15, align 8, !tbaa !117
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !117
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.q, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit185

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.am = load ptr, ptr %6, align 8, !tbaa !333   ; 10 uses
  %i.an = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64               ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc181 unwind label %bb.w

.noexc181:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #26
          to label %.noexc182 unwind label %bb.w  ; 10 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ap
  %i.az = load i64, ptr %15, align 8, !tbaa !117
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !117
  store ptr null, ptr %15, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc182
  %i.ba = sub i64 %i.an, %i.ao
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader903, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.be = add i64 %i.an, -8
  %i.bf = sub i64 %i.be, %i.ao
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ax, i64 %i.bh
  %scevgep789 = getelementptr i8, ptr %i.am, i64 %i.bh
  %bound0 = icmp ult ptr %i.ax, %scevgep789
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader903, label %vector.ph

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
  %next.gep790 = getelementptr i8, ptr %i.am, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.bm = getelementptr i8, ptr %next.gep790, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep790, align 8, !tbaa !117, !alias.scope !2410, !noalias !2405
  %wide.load791 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !117, !alias.scope !2410, !noalias !2405
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !117, !alias.scope !2413, !noalias !2410
  store <2 x i64> %wide.load791, ptr %i.bn, align 8, !tbaa !117, !alias.scope !2413, !noalias !2410
  %i.bo = getelementptr i8, ptr %next.gep790, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep790, align 8, !tbaa !117, !alias.scope !2410, !noalias !2405
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !117, !alias.scope !2410, !noalias !2405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !2415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader903

.lr.ph.i.i.i.i.i.i.i.preheader903:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader903, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader903 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader903 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !2408, !noalias !2405
  store i64 %i.bq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !2405, !noalias !2408
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !2408, !noalias !2405
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2416

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc182
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.noexc182 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.am) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.s
  store ptr %i.ax, ptr %6, align 8, !tbaa !333
  store ptr %i.bt, ptr %i.q, align 8, !tbaa !334
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bu, ptr %i.ai, align 8, !tbaa !335
  %.pr = load ptr, ptr %15, align 8, !tbaa !117   ; 3 uses
  %.not.i183 = icmp eq ptr %.pr, null
  br i1 %.not.i183, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit185, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i184

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i184: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bv = load ptr, ptr %.pr, align 8, !tbaa !119
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit185

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit185: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ai

bb.t:                                             ; preds = %bb.dh, %bb.ap, %bb.by, %bb.bx, %bb.bw, %bb.bv, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %bb.ao, %bb.d, %bb.c, %bb.a
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.gm

bb.u:                                             ; preds = %bb.f
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.v:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit194

bb.w:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.r, %bb.h
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.y:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit191: ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %i.x, align 8, !tbaa !119
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(88) %i.x) #25, !inline_history !121
  br label %.body

.body:                                            ; preds = %bb.x, %bb.y, %bb.n, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit191, %bb.w
  %.pn141 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %i.cc, %bb.x ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit191 ], [ %i.cd, %bb.y ], [ %.pn.i, %bb.n ] ; 2 uses
  %i.ci = load ptr, ptr %15, align 8, !tbaa !117  ; 3 uses
  %.not.i192 = icmp eq ptr %i.ci, null
  br i1 %.not.i192, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit194, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i193

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i193: ; preds = %.body
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !119
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(88) %i.ci) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit194

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit194: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i193, %.body, %bb.v
  %.pn141.pn = phi { ptr, i32 } [ %i.ca, %bb.v ], [ %.pn141, %.body ], [ %.pn141, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #25
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit194, %bb.u
  %.pn141.pn.pn = phi { ptr, i32 } [ %.pn141.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit194 ], [ %i.bz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.gm

._crit_edge.i.i:                                  ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.cm = load ptr, ptr %i.n, align 8, !tbaa !26, !nonnull !95, !align !96
  %i.cn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.cn, ptr %17, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cn, ptr noundef nonnull align 1 dereferenceable(12) @.str.141, i64 12, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 12, ptr %i.co, align 8, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 28
  store i8 0, ptr %i.cp, align 4, !tbaa !19
  invoke void @_ZN6duckdb16ProjectionBinderC1ERNS_6BinderERNS_13ClientContextEmRNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %16, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(512) %i.cm, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %17)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.cq = load ptr, ptr %17, align 8, !tbaa !25   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cn
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.cq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 noundef zeroext 10)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.ae

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ct = load i8, ptr %18, align 8, !tbaa !278
  store i8 %i.ct, ptr %i.cs, align 8, !tbaa !278
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !279
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 9
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !279
  %i.cx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !280
  %i.da = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !280
  store <2 x ptr> %i.cz, ptr %i.cx, align 8, !tbaa !280
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !280
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #25
end_hunk_12
begin_hunk_13_@_ZN6duckdb6Binder4BindERNS_20SetVariableStatementE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit88

bb.v:                                             ; preds = %bb.l, %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread: ; preds = %bb.n
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.x

bb.w:                                             ; preds = %bb.p, %bb.o
  %.017 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.bn) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.017, label %bb.x, label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br i1 %.017, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn49177 = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ]
  call void @__cxa_free_exception(ptr %i.az) #25
  br label %bb.ac

bb.y:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bq = load ptr, ptr %i.am, align 8, !tbaa !26, !nonnull !95, !align !96
  %i.br = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(512) %i.bq, ptr noundef nonnull align 8 dereferenceable(88) %i.br, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6duckdb5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %12) #25 ; 0 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.bt = load ptr, ptr %9, align 8, !tbaa !117   ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.aa
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !119
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(88) %i.bt) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aa, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb14ConstantBinderE, i64 16), ptr %7, align 8, !tbaa !119
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN6duckdb14ConstantBinderD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.by) #29
  br label %_ZN6duckdb14ConstantBinderD2Ev.exit

_ZN6duckdb14ConstantBinderD2Ev.exit:              ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @_ZN6duckdb16ExpressionBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(136) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bb

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.x, %bb.ab, %bb.v
  %.pn49.pn = phi { ptr, i32 } [ %.pn49177, %bb.x ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.cb, %bb.ab ], [ %i.bk, %bb.v ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ] ; 2 uses
  %i.cc = load ptr, ptr %9, align 8, !tbaa !117   ; 3 uses
  %.not.i86 = icmp eq ptr %i.cc, null
  br i1 %.not.i86, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit88, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i87

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i87: ; preds = %bb.ac
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !119
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(88) %i.cc) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit88

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit88: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i87, %bb.ac, %bb.u
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.u ], [ %.pn49.pn, %bb.ac ], [ %.pn49.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZN6duckdb14ConstantBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %7) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit88
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit88 ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80 ], [ %i.bg, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134

bb.ad:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  %i.cg = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #26
          to label %.noexc89 unwind label %bb.as  ; 3 uses

.noexc89:                                         ; preds = %bb.ad
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.cg)
          to label %bb.af unwind label %bb.ae, !noalias !2602

bb.ae:                                            ; preds = %.noexc89
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #29, !noalias !2602
  br label %.body90

bb.af:                                            ; preds = %.noexc89
  store ptr %i.cg, ptr %13, align 8, !tbaa !195, !alias.scope !2602
  %i.ci = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ag unwind label %bb.at     ; 3 uses

bb.ag:                                            ; preds = %bb.af
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 120 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 128 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !161 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 136 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cp = load i64, ptr %i.ck, align 8, !tbaa !124
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !124
  store ptr null, ptr %i.ck, align 8, !tbaa !124
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !161
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !158 ; 10 uses
  %i.cs = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.aj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc93 unwind label %bb.at

.noexc93:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ai
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i.i92 = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i.i.i92)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #26
          to label %.noexc94 unwind label %bb.at  ; 10 uses

.noexc94:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = load i64, ptr %i.ck, align 8, !tbaa !124
  store i64 %i.de, ptr %i.dd, align 8, !tbaa !124
  store ptr null, ptr %i.ck, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc94
  %i.df = sub i64 %i.cs, %i.ct
  %i.dg = add i64 %i.df, -8                       ; 2 uses
  %i.dh = lshr i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader262, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dj = add i64 %i.cs, -8
  %i.dk = sub i64 %i.dj, %i.ct
  %i.dl = and i64 %i.dk, -8
  %i.dm = add i64 %i.dl, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dc, i64 %i.dm
  %scevgep235 = getelementptr i8, ptr %i.cr, i64 %i.dm
  %bound0 = icmp ult ptr %i.dc, %scevgep235
  %bound1 = icmp ult ptr %i.cr, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader262, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.dc, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cr, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dq ; 2 uses
  %next.gep236 = getelementptr i8, ptr %i.cr, i64 %i.dq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.dr = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep236, align 8, !tbaa !124, !alias.scope !2610, !noalias !2605
  %wide.load237 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !124, !alias.scope !2610, !noalias !2605
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !124, !alias.scope !2613, !noalias !2610
  store <2 x i64> %wide.load237, ptr %i.ds, align 8, !tbaa !124, !alias.scope !2613, !noalias !2610
  %i.dt = getelementptr i8, ptr %next.gep236, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep236, align 8, !tbaa !124, !alias.scope !2610, !noalias !2605
  store <2 x ptr> splat (ptr null), ptr %i.dt, align 8, !tbaa !124, !alias.scope !2610, !noalias !2605
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !2615

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader262

.lr.ph.i.i.i.i.i.i.i.preheader262:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader262, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader262 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader262 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.dv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !2608, !noalias !2605
  store i64 %i.dv, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !2605, !noalias !2608
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !2608, !noalias !2605
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, %i.cm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2616

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc94
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.noexc94 ], [ %i.do, %middle.block ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cr) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dc, ptr %i.cj, align 8, !tbaa !158
  store ptr %i.dy, ptr %i.cl, align 8, !tbaa !161
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dz, ptr %i.cn, align 8, !tbaa !206
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ah
  %i.ea = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %bb.al unwind label %bb.au     ; 11 uses

bb.al:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 8, ptr %i.eb, align 8, !tbaa !697, !noalias !2617
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !13, !noalias !2617
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store i64 0, ptr %i.ee, align 8, !tbaa !16, !noalias !2617
  store i8 0, ptr %i.ed, align 8, !tbaa !19, !noalias !2617
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr null, ptr %i.ef, align 8, !tbaa !712, !noalias !2617
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store i64 -1, ptr %i.eg, align 8, !tbaa !287, !noalias !2617
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.eh, i8 0, i64 40, i1 false), !noalias !2617
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb13EmptyTableRefE, i64 16), ptr %i.ea, align 8, !tbaa !119, !noalias !2617
  %i.ei = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.am unwind label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit103

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 144 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !221 ; 3 uses
  store ptr %i.ea, ptr %i.ej, align 8, !tbaa !221
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.am
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !119
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ek) #25, !inline_history !223
  br label %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.am, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.eo = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.an unwind label %bb.av

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb6Binder4BindERNS_9QueryNodeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BoundStatement") align 8 %14, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(120) %i.eo)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !11
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !7
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 24
  %i.ex = icmp ugt i64 %i.ew, 1
  br i1 %i.ex, label %bb.ap, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ey = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.ey, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.bn unwind label %bb.aw

bb.as:                                            ; preds = %bb.ad
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body90

bb.at:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.aj, %bb.af
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.au:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit103: ; preds = %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %i.ea, align 8, !tbaa !119
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ea) #25, !inline_history !236
  br label %bb.ba

bb.av:                                            ; preds = %bb.an, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.thread: ; preds = %bb.ap
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ax

bb.aw:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fj = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.fj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br i1 %.0, label %bb.ax, label %bb.ay

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br i1 %.0, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn42181 = phi { ptr, i32 } [ %i.fh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.thread ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ]
  call void @__cxa_free_exception(ptr %i.ey) #25
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn42180 = phi { ptr, i32 } [ %.pn42181, %bb.ax ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %i.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ]
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #25
  br label %bb.az

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ao
  %i.fm = load ptr, ptr %14, align 8, !tbaa !139
  store ptr null, ptr %14, align 8, !tbaa !139
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.fn = load ptr, ptr %13, align 8, !tbaa !195  ; 3 uses
  %.not.i108 = icmp eq ptr %i.fn, null
  br i1 %.not.i108, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !119
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(240) %i.fn) #25, !inline_history !230
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.pn42.pn = phi { ptr, i32 } [ %.pn42180, %bb.ay ], [ %i.fg, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit103, %bb.az, %bb.at
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.az ], [ %i.fa, %bb.at ], [ %i.fc, %_ZNSt10unique_ptrIN6duckdb13EmptyTableRefESt14default_deleteIS1_EED2Ev.exit103 ], [ %i.fb, %bb.au ] ; 2 uses
  %i.fr = load ptr, ptr %13, align 8, !tbaa !195  ; 3 uses
  %.not.i109 = icmp eq ptr %i.fr, null
  br i1 %.not.i109, label %.body90, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i110

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i110: ; preds = %bb.ba
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !119
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(240) %i.fr) #25, !inline_history !230
  br label %.body90

.body90:                                          ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i110, %bb.ba, %bb.as, %bb.ae
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.ae ], [ %i.ez, %bb.as ], [ %.pn42.pn.pn, %bb.ba ], [ %.pn42.pn.pn, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb14ConstantBinderD2Ev.exit
  %.sroa.0151.0 = phi ptr [ %i.fm, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit ], [ null, %_ZN6duckdb14ConstantBinderD2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 120
  invoke void @_ZN6duckdb9make_uniqINS_10LogicalSetEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueERNS_8SetScopeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2159") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.fv, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.ak)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.fw = load ptr, ptr %17, align 8, !tbaa !2620
  store ptr null, ptr %17, align 8, !tbaa !2620
  %i.fx = load ptr, ptr %0, align 8, !tbaa !139   ; 3 uses
  store ptr %i.fw, ptr %0, align 8, !tbaa !139
  %.not.i.i.i.i.i112 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i112, label %_ZNSt10unique_ptrIN6duckdb10LogicalSetESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bc
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !119
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fx) #25, !inline_history !377
  %.pr = load ptr, ptr %17, align 8, !tbaa !2620  ; 3 uses
  %.not.i116 = icmp eq ptr %.pr, null
  br i1 %.not.i116, label %_ZNSt10unique_ptrIN6duckdb10LogicalSetESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10LogicalSetEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10LogicalSetEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.gb = load ptr, ptr %.pr, align 8, !tbaa !119
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(201) %.pr) #25, !inline_history !2622
  br label %_ZNSt10unique_ptrIN6duckdb10LogicalSetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10LogicalSetESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bc, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10LogicalSetEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %.not194 = icmp eq ptr %.sroa.0151.0, null
  br i1 %.not194, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10LogicalSetESt14default_deleteIS1_EED2Ev.exit
  %i.ge = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.be unwind label %.thread188 ; 3 uses

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 24 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !360 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !363
  %.not.i.i117 = icmp eq ptr %i.gh, %i.gj
  br i1 %.not.i.i117, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gk = ptrtoint ptr %.sroa.0151.0 to i64
  store i64 %i.gk, ptr %i.gh, align 8, !tbaa !139
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.bg:                                            ; preds = %bb.be
  %i.gm = load ptr, ptr %i.gf, align 8, !tbaa !364 ; 10 uses
  %i.gn = ptrtoint ptr %i.gh to i64               ; 3 uses
  %i.go = ptrtoint ptr %i.gm to i64               ; 3 uses
  %i.gp = sub i64 %i.gn, %i.go                    ; 3 uses
  %i.gq = icmp eq i64 %i.gp, 9223372036854775800
  br i1 %i.gq, label %bb.bh, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc127 unwind label %.thread188

.noexc127:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
  %i.gr = ashr exact i64 %i.gp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i118 = call i64 @llvm.umax.i64(i64 %i.gr, i64 1)
  %i.gs = add nsw i64 %.sroa.speculated.i.i.i.i118, %i.gr ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gr
  %i.gu = call i64 @llvm.umin.i64(i64 %i.gs, i64 1152921504606846975)
  %i.gv = select i1 %i.gt, i64 1152921504606846975, i64 %i.gu ; 3 uses
  %.not.i.i.i.i119 = icmp ne i64 %i.gv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i119)
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gw) #26
          to label %.noexc128 unwind label %.thread188 ; 10 uses

.noexc128:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.gp
  %i.gz = ptrtoint ptr %.sroa.0151.0 to i64
  store i64 %i.gz, ptr %i.gy, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i120 = icmp eq ptr %i.gm, %i.gh
  br i1 %.not10.i.i.i.i.i.i.i120, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i121.preheader

.lr.ph.i.i.i.i.i.i.i121.preheader:                ; preds = %.noexc128
  %i.ha = sub i64 %i.gn, %i.go
  %i.hb = add i64 %i.ha, -8                       ; 2 uses
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check246 = icmp ult i64 %i.hb, 152
  br i1 %min.iters.check246, label %.lr.ph.i.i.i.i.i.i.i121.preheader261, label %vector.memcheck239

vector.memcheck239:                               ; preds = %.lr.ph.i.i.i.i.i.i.i121.preheader
  %i.he = add i64 %i.gn, -8
  %i.hf = sub i64 %i.he, %i.go
  %i.hg = and i64 %i.hf, -8
  %i.hh = add i64 %i.hg, 8                        ; 2 uses
  %scevgep240 = getelementptr i8, ptr %i.gx, i64 %i.hh
  %scevgep241 = getelementptr i8, ptr %i.gm, i64 %i.hh
  %bound0242 = icmp ult ptr %i.gx, %scevgep241
  %bound1243 = icmp ult ptr %i.gm, %scevgep240
  %found.conflict244 = and i1 %bound0242, %bound1243
  br i1 %found.conflict244, label %.lr.ph.i.i.i.i.i.i.i121.preheader261, label %vector.ph247

vector.ph247:                                     ; preds = %vector.memcheck239
  %n.vec249 = and i64 %i.hd, 4611686018427387900  ; 3 uses
  %i.hi = shl i64 %n.vec249, 3                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gm, i64 %i.hi
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph247
  %index251 = phi i64 [ 0, %vector.ph247 ], [ %index.next256, %vector.body250 ] ; 2 uses
  %i.hl = shl i64 %index251, 3                    ; 2 uses
  %next.gep252 = getelementptr i8, ptr %i.gx, i64 %i.hl ; 2 uses
  %next.gep253 = getelementptr i8, ptr %i.gm, i64 %i.hl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  %i.hm = getelementptr i8, ptr %next.gep253, i64 16
  %wide.load254 = load <2 x i64>, ptr %next.gep253, align 8, !tbaa !139, !alias.scope !2628, !noalias !2623
  %wide.load255 = load <2 x i64>, ptr %i.hm, align 8, !tbaa !139, !alias.scope !2628, !noalias !2623
  %i.hn = getelementptr i8, ptr %next.gep252, i64 16
  store <2 x i64> %wide.load254, ptr %next.gep252, align 8, !tbaa !139, !alias.scope !2631, !noalias !2628
  store <2 x i64> %wide.load255, ptr %i.hn, align 8, !tbaa !139, !alias.scope !2631, !noalias !2628
  %i.ho = getelementptr i8, ptr %next.gep253, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep253, align 8, !tbaa !139, !alias.scope !2628, !noalias !2623
  store <2 x ptr> splat (ptr null), ptr %i.ho, align 8, !tbaa !139, !alias.scope !2628, !noalias !2623
  %index.next256 = add nuw i64 %index251, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next256, %n.vec249
  br i1 %i.hp, label %middle.block257, label %vector.body250, !llvm.loop !2633

middle.block257:                                  ; preds = %vector.body250
  %cmp.n258 = icmp eq i64 %i.hd, %n.vec249
  br i1 %cmp.n258, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i121.preheader261

.lr.ph.i.i.i.i.i.i.i121.preheader261:             ; preds = %vector.memcheck239, %.lr.ph.i.i.i.i.i.i.i121.preheader, %middle.block257
  %.012.i.i.i.i.i.i.i122.ph = phi ptr [ %i.gx, %vector.memcheck239 ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.i121.preheader ], [ %i.hj, %middle.block257 ]
  %.0911.i.i.i.i.i.i.i123.ph = phi ptr [ %i.gm, %vector.memcheck239 ], [ %i.gm, %.lr.ph.i.i.i.i.i.i.i121.preheader ], [ %i.hk, %middle.block257 ]
  br label %.lr.ph.i.i.i.i.i.i.i121

.lr.ph.i.i.i.i.i.i.i121:                          ; preds = %.lr.ph.i.i.i.i.i.i.i121.preheader261, %.lr.ph.i.i.i.i.i.i.i121
  %.012.i.i.i.i.i.i.i122 = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i121 ], [ %.012.i.i.i.i.i.i.i122.ph, %.lr.ph.i.i.i.i.i.i.i121.preheader261 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i123 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i.i.i121 ], [ %.0911.i.i.i.i.i.i.i123.ph, %.lr.ph.i.i.i.i.i.i.i121.preheader261 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2623)
  call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  %i.hq = load i64, ptr %.0911.i.i.i.i.i.i.i123, align 8, !tbaa !139, !alias.scope !2626, !noalias !2623
  store i64 %i.hq, ptr %.012.i.i.i.i.i.i.i122, align 8, !tbaa !139, !alias.scope !2623, !noalias !2626
  store ptr null, ptr %.0911.i.i.i.i.i.i.i123, align 8, !tbaa !139, !alias.scope !2626, !noalias !2623
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i123, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i122, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i124 = icmp eq ptr %i.hr, %i.gh
  br i1 %.not.i.i.i.i.i.i.i124, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i121, !llvm.loop !2634

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i121, %middle.block257, %.noexc128
  %.0.lcssa.i.i.i.i.i.i.i125 = phi ptr [ %i.gx, %.noexc128 ], [ %i.hj, %middle.block257 ], [ %i.hs, %.lr.ph.i.i.i.i.i.i.i121 ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i125, i64 8
  %.not.i23.i.i.i126 = icmp eq ptr %i.gm, null
  br i1 %.not.i23.i.i.i126, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gm) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.gx, ptr %i.gf, align 8, !tbaa !364
  store ptr %i.ht, ptr %i.gg, align 8, !tbaa !360
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gv
  store ptr %i.hu, ptr %i.gi, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

.thread188:                                       ; preds = %bb.bd, %bb.bh, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i133

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bf, %_ZNSt10unique_ptrIN6duckdb10LogicalSetESt14default_deleteIS1_EED2Ev.exit
  %i.hw = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit131 unwind label %bb.bj

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit131: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 115
  store i8 2, ptr %i.hx, align 1, !tbaa !149
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134

bb.bk:                                            ; preds = %bb.bb
  %i.hz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  %.not.i132 = icmp eq ptr %.sroa.0151.0, null
  br i1 %.not.i132, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i133

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i133: ; preds = %.thread188, %bb.bk
  %.pn49.pn.pn.pn.pn193 = phi { ptr, i32 } [ %i.hv, %.thread188 ], [ %i.hz, %bb.bk ]
  %i.ia = load ptr, ptr %.sroa.0151.0, align 8, !tbaa !119
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.sroa.0151.0) #25, !inline_history !181
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %bb.bj, %.body90, %bb.bk, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i133
  %.pn49.pn.pn.pn.pn187 = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn193, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i133 ], [ %i.hz, %bb.bk ], [ %.pn42.pn.pn.pn, %.body90 ], [ %i.hy, %bb.bj ], [ %.pn49.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  br label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134, %bb.s, %bb.r
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn187, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit134 ], [ %i.bf, %bb.s ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %.loopexit
  %.pn49.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn, %bb.bl ], [ %eh.lpad-body58231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.pn, %.loopexit ]
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #25
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn.pn

bb.bn:                                            ; preds = %bb.ar, %bb.p
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(240) ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !195    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !154

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.222, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
end_hunk_13
begin_hunk_14_@_ZN6duckdb6Binder13BindSummarizeERNS_7ShowRefE:bb.a
  %80 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %89 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %92 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %93 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %94 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %97 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %98 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %99 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %102 = alloca %"class.duckdb::Value", align 8   ; 7 uses
  %103 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %106 = alloca %"class.duckdb::Value", align 8   ; 7 uses
  %107 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 8 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %110 = alloca %"class.duckdb::Value", align 8   ; 7 uses
  %111 = alloca %"class.duckdb::Value", align 8   ; 7 uses
  %112 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %113 = alloca %"class.duckdb::Value", align 8   ; 7 uses
  %114 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %115 = alloca %"class.duckdb::Value", align 8   ; 7 uses
  %116 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %118 = alloca %"class.duckdb::unique_ptr.1938", align 8 ; 9 uses
  %119 = alloca %"class.duckdb::unique_ptr.334", align 8 ; 21 uses
  %120 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %121 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %122 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %124 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %125 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %126 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %128 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %129 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %130 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %131 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %132 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %134 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %136 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %138 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %139 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %140 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %142 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 7 uses
  %143 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %144 = alloca %"class.duckdb::unique_ptr.365", align 8 ; 9 uses
  %145 = alloca %"class.duckdb::unique_ptr.1938", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  store ptr null, ptr %56, align 8, !tbaa !189
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !224  ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a
  store ptr null, ptr %i.l, align 8, !tbaa !224
  store ptr %i.m, ptr %56, align 8, !tbaa !224
  br label %bb.z

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 104
  invoke void @_ZN6duckdb13QualifiedName5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::QualifiedName") align 8 %57, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  %i.o = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #26
          to label %.noexc unwind label %bb.s     ; 3 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.o)
          to label %bb.e unwind label %bb.d, !noalias !2710

bb.d:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.o) #29, !noalias !2710
  br label %.body

bb.e:                                             ; preds = %.noexc
  store ptr %i.o, ptr %58, align 8, !tbaa !195, !alias.scope !2710
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.f unwind label %bb.t       ; 3 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %55)
  %i.r = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #26
          to label %.noexc247 unwind label %bb.u  ; 6 uses

.noexc247:                                        ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  store ptr %i.s, ptr %55, align 8, !tbaa !13, !noalias !2713
  %i.t = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !16, !noalias !2713
  store i8 0, ptr %i.s, align 8, !tbaa !19, !noalias !2713
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.r, ptr noundef nonnull %55)
          to label %bb.g unwind label %bb.h, !noalias !2713

bb.g:                                             ; preds = %.noexc247
  %i.u = load ptr, ptr %55, align 8, !tbaa !25, !noalias !2713 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.u) #29, !noalias !2713
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc247
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %55, align 8, !tbaa !25, !noalias !2713 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.s
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.x) #29, !noalias !2713
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.r) #29, !noalias !2713
  br label %.body248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55)
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !161 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ae = ptrtoint ptr %i.r to i64
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !158 ; 10 uses
  %i.ah = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc250 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit274

.noexc250:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26
          to label %.noexc251 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit274 ; 10 uses

.noexc251:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %i.at = ptrtoint ptr %i.r to i64
  store i64 %i.at, ptr %i.as, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc251
  %i.au = sub i64 %i.ah, %i.ai
  %i.av = add i64 %i.au, -8                       ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader8377, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ay = add i64 %i.ah, -8
  %i.az = sub i64 %i.ay, %i.ai
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.bb
  %scevgep6988 = getelementptr i8, ptr %i.ag, i64 %i.bb
  %bound0 = icmp ult ptr %i.ar, %scevgep6988
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader8377, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ar, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.ag, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bf ; 2 uses
  %next.gep6989 = getelementptr i8, ptr %i.ag, i64 %i.bf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  %i.bg = getelementptr i8, ptr %next.gep6989, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6989, align 8, !tbaa !124, !alias.scope !2721, !noalias !2716
  %wide.load6990 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !124, !alias.scope !2721, !noalias !2716
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !124, !alias.scope !2724, !noalias !2721
  store <2 x i64> %wide.load6990, ptr %i.bh, align 8, !tbaa !124, !alias.scope !2724, !noalias !2721
  %i.bi = getelementptr i8, ptr %next.gep6989, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6989, align 8, !tbaa !124, !alias.scope !2721, !noalias !2716
  store <2 x ptr> splat (ptr null), ptr %i.bi, align 8, !tbaa !124, !alias.scope !2721, !noalias !2716
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !2726

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader8377

.lr.ph.i.i.i.i.i.i.i.preheader8377:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader8377, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8377 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader8377 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2716)
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  %i.bk = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !2719, !noalias !2716
  store i64 %i.bk, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !2716, !noalias !2719
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !2719, !noalias !2716
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2727

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc251
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc251 ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !158
  store ptr %i.bn, ptr %i.aa, align 8, !tbaa !161
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bo, ptr %i.ac, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  %i.bp = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #26
          to label %bb.m unwind label %bb.v       ; 19 uses

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i8 1, ptr %i.bq, align 8, !tbaa !697, !noalias !2728
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !13, !noalias !2728
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 0, ptr %i.bt, align 8, !tbaa !16, !noalias !2728
  store i8 0, ptr %i.bs, align 8, !tbaa !19, !noalias !2728
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store ptr null, ptr %i.bu, align 8, !tbaa !712, !noalias !2728
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store i64 -1, ptr %i.bv, align 8, !tbaa !287, !noalias !2728
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i8 0, i64 40, i1 false), !noalias !2728
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6duckdb12BaseTableRefE, i64 16), ptr %i.bp, align 8, !tbaa !119, !noalias !2728
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 120 ; 2 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !13, !noalias !2728
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store i64 0, ptr %i.bz, align 8, !tbaa !16, !noalias !2728
  store i8 0, ptr %i.by, align 8, !tbaa !19, !noalias !2728
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 152 ; 2 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !13, !noalias !2728
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  store i64 0, ptr %i.cc, align 8, !tbaa !16, !noalias !2728
  store i8 0, ptr %i.cb, align 8, !tbaa !19, !noalias !2728
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 184 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !13, !noalias !2728
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 176
  store i64 0, ptr %i.cf, align 8, !tbaa !16, !noalias !2728
  store i8 0, ptr %i.ce, align 8, !tbaa !19, !noalias !2728
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 200
  store ptr null, ptr %i.cg, align 8, !tbaa !713, !noalias !2728
  store ptr %i.bp, ptr %59, align 8, !tbaa !716, !alias.scope !2728
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12BaseTableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.n unwind label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %57)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.n
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12BaseTableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %57, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit256 unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit256: ; preds = %bb.o
  %i.cm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12BaseTableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit256
  %i.cn = getelementptr inbounds nuw i8, ptr %57, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 168
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258 unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258: ; preds = %bb.p
  %i.cp = load ptr, ptr %59, align 8, !tbaa !716  ; 4 uses
  store ptr null, ptr %59, align 8, !tbaa !716
  %i.cq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 144 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !221 ; 3 uses
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !221
  %.not.i.i.i.i.i259 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i259, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !119
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cs) #25, !inline_history !223
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %bb.q
  %i.cw = load ptr, ptr %58, align 8, !tbaa !195
  store ptr null, ptr %58, align 8, !tbaa !195
  %i.cx = load ptr, ptr %56, align 8, !tbaa !224  ; 3 uses
  store ptr %i.cw, ptr %56, align 8, !tbaa !224
  %.not.i.i.i.i.i261 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i261, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i262

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i262: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !119
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cx) #25, !inline_history !225
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i262, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.db = load ptr, ptr %59, align 8, !tbaa !716  ; 3 uses
  %.not.i265 = icmp eq ptr %i.db, null
  br i1 %.not.i265, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !119
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(208) %i.db) #25, !inline_history !751
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
end_hunk_14
begin_hunk_15_@_ZN6duckdb6Binder13BindSummarizeERNS_7ShowRefE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  %i.bfb = load i64, ptr %.0911.i.i.i.i.i.i.i911, align 8, !tbaa !124, !alias.scope !3014, !noalias !3011
  store i64 %i.bfb, ptr %.012.i.i.i.i.i.i.i910, align 8, !tbaa !124, !alias.scope !3011, !noalias !3014
  store ptr null, ptr %.0911.i.i.i.i.i.i.i911, align 8, !tbaa !124, !alias.scope !3014, !noalias !3011
  %i.bfc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i911, i64 8 ; 2 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i910, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i912 = icmp eq ptr %i.bfc, %i.bdu
  br i1 %.not.i.i.i.i.i.i.i912, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i913, label %.lr.ph.i.i.i.i.i.i.i909, !llvm.loop !3022

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i913: ; preds = %.lr.ph.i.i.i.i.i.i.i909, %middle.block7012, %.noexc918
  %.0.lcssa.i.i.i.i.i.i.i914 = phi ptr [ %i.bej, %.noexc918 ], [ %i.beu, %middle.block7012 ], [ %i.bfd, %.lr.ph.i.i.i.i.i.i.i909 ]
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i914, i64 8
  %.not.i23.i.i.i915 = icmp eq ptr %i.bdy, null
  br i1 %.not.i23.i.i.i915, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i916, label %bb.md

bb.md:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i913
  call void @_ZdlPv(ptr noundef nonnull %i.bdy) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i916

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i916: ; preds = %bb.md, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i913
  store ptr %i.bej, ptr %74, align 8, !tbaa !158
  store ptr %i.bfe, ptr %i.iu, align 8, !tbaa !161
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %i.bej, i64 %i.beh
  store ptr %i.bff, ptr %i.iv, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit922

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit922: ; preds = %bb.ma, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i916
  %i.bfg = load ptr, ptr %117, align 8, !tbaa !25 ; 2 uses
  %i.bfh = icmp eq ptr %i.bfg, %i.ib
  br i1 %i.bfh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit922
  call void @_ZdlPv(ptr noundef %i.bfg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit922, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923
  %i.bfi = add nuw i64 %.04523, 1                 ; 2 uses
  %i.bfj = load ptr, ptr %i.fr, align 8, !tbaa !23
  %i.bfk = load ptr, ptr %i.fq, align 8, !tbaa !20
  %i.bfl = ptrtoint ptr %i.bfj to i64
  %i.bfm = ptrtoint ptr %i.bfk to i64
  %i.bfn = sub i64 %i.bfl, %i.bfm
  %i.bfo = ashr exact i64 %i.bfn, 5
  %i.bfp = icmp ult i64 %i.bfi, %i.bfo
  br i1 %i.bfp, label %bb.an, label %._crit_edge, !llvm.loop !3023

.loopexit1709:                                    ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i872
  %lpad.loopexit1711 = landingpad { ptr, i32 }
          cleanup
  br label %bb.me

.loopexit.split-lp1710:                           ; preds = %bb.jc
  %lpad.loopexit.split-lp1712 = landingpad { ptr, i32 }
          cleanup
  br label %bb.me

bb.me:                                            ; preds = %.loopexit.split-lp1710, %.loopexit1709
  %lpad.phi1713 = phi { ptr, i32 } [ %lpad.loopexit1711, %.loopexit1709 ], [ %lpad.loopexit.split-lp1712, %.loopexit.split-lp1710 ] ; 2 uses
  %.not.i926 = icmp eq ptr %i.aro, null
  br i1 %.not.i926, label %.body869, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i927

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i927: ; preds = %bb.me
  %i.bfq = load ptr, ptr %i.aro, align 8, !tbaa !119
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 8
  %i.bfs = load ptr, ptr %i.bfr, align 8
  call void %i.bfs(ptr noundef nonnull align 8 dereferenceable(56) %i.aro) #25, !inline_history !235
  br label %.body869

bb.mf:                                            ; preds = %.noexc.i891, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit889
  %i.bft = landingpad { ptr, i32 }
          cleanup
  br label %.body869

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i905
  %lpad.loopexit1714 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931.loopexit.split-lp: ; preds = %bb.mc
  %lpad.loopexit.split-lp1715 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931.loopexit
  %lpad.phi1716 = phi { ptr, i32 } [ %lpad.loopexit1714, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931.loopexit ], [ %lpad.loopexit.split-lp1715, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931.loopexit.split-lp ]
  %i.bfu = load ptr, ptr %i.ayz, align 8, !tbaa !119
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8
  %i.bfw = load ptr, ptr %i.bfv, align 8
  call void %i.bfw(ptr noundef nonnull align 8 dereferenceable(56) %i.ayz) #25, !inline_history !235
  br label %.body902

.body902:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit288.thread347.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit288.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i212.i, %.body.i, %bb.jj, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931
  %.pn237 = phi { ptr, i32 } [ %lpad.phi1716, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit931 ], [ %.pn53.pn.pn.pn.pn.pn.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit288.thread.i ], [ %i.auf, %bb.jj ], [ %eh.lpad-body.i, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i212.i ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.i898, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222.i ], [ %i.ban, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit288.thread347.i ] ; 2 uses
  %i.bfx = load ptr, ptr %117, align 8, !tbaa !25 ; 2 uses
  %i.bfy = icmp eq ptr %i.bfx, %i.ib
  br i1 %i.bfy, label %.body869, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i932: ; preds = %.body902
  call void @_ZdlPv(ptr noundef %i.bfx) #29
  br label %.body869

bb.mg:                                            ; preds = %._crit_edge
  %i.bfz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11SubqueryRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %118)
          to label %bb.mh unwind label %bb.ph

bb.mh:                                            ; preds = %bb.mg
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 80
  %i.bgb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bga, ptr noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.ph ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3024)
  %i.bgc = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #26
          to label %.noexc936 unwind label %bb.pi ; 3 uses

.noexc936:                                        ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.bgc)
          to label %bb.mj unwind label %bb.mi, !noalias !3024

bb.mi:                                            ; preds = %.noexc936
  %i.bgd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bgc) #29, !noalias !3024
  br label %.body937

bb.mj:                                            ; preds = %.noexc936
  store ptr %i.bgc, ptr %119, align 8, !tbaa !195, !alias.scope !3024
  %i.bge = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i940 unwind label %bb.pj ; 3 uses

._crit_edge.i.i940:                               ; preds = %bb.mj
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bge, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #25
  %i.bgg = getelementptr inbounds nuw i8, ptr %121, i64 16 ; 4 uses
  store ptr %i.bgg, ptr %121, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bgg, ptr noundef nonnull align 1 dereferenceable(11) @.str.170, i64 11, i1 false)
  %i.bgh = getelementptr inbounds nuw i8, ptr %121, i64 8
  store i64 11, ptr %i.bgh, align 8, !tbaa !16
  %i.bgi = getelementptr inbounds nuw i8, ptr %121, i64 27
  store i8 0, ptr %i.bgi, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %120, ptr noundef nonnull align 8 dereferenceable(24) %63, ptr noundef nonnull align 8 dereferenceable(32) %121)
          to label %bb.mk unwind label %bb.pk

bb.mk:                                            ; preds = %._crit_edge.i.i940
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bge, i64 128 ; 3 uses
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !161 ; 6 uses
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bge, i64 136 ; 2 uses
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !206
  %.not.i.i944 = icmp eq ptr %i.bgk, %i.bgm
  br i1 %.not.i.i944, label %bb.ml, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959.thread: ; preds = %bb.mk
  %i.bgn = load i64, ptr %120, align 8, !tbaa !124
  store i64 %i.bgn, ptr %i.bgk, align 8, !tbaa !124
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgk, i64 8
  store ptr %i.bgo, ptr %i.bgj, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit962

bb.ml:                                            ; preds = %bb.mk
  %i.bgp = load ptr, ptr %i.bgf, align 8, !tbaa !158 ; 10 uses
  %i.bgq = ptrtoint ptr %i.bgk to i64             ; 3 uses
  %i.bgr = ptrtoint ptr %i.bgp to i64             ; 3 uses
  %i.bgs = sub i64 %i.bgq, %i.bgr                 ; 3 uses
  %i.bgt = icmp eq i64 %i.bgs, 9223372036854775800
  br i1 %i.bgt, label %bb.mm, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i945

bb.mm:                                            ; preds = %bb.ml
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc957 unwind label %bb.pl

.noexc957:                                        ; preds = %bb.mm
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i945: ; preds = %bb.ml
  %i.bgu = ashr exact i64 %i.bgs, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i946 = call i64 @llvm.umax.i64(i64 %i.bgu, i64 1)
  %i.bgv = add nsw i64 %.sroa.speculated.i.i.i.i946, %i.bgu ; 2 uses
  %i.bgw = icmp ult i64 %i.bgv, %i.bgu
  %i.bgx = call i64 @llvm.umin.i64(i64 %i.bgv, i64 1152921504606846975)
  %i.bgy = select i1 %i.bgw, i64 1152921504606846975, i64 %i.bgx ; 3 uses
  %.not.i.i.i.i947 = icmp ne i64 %i.bgy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i947)
  %i.bgz = shl nuw nsw i64 %i.bgy, 3
  %i.bha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bgz) #26
          to label %.noexc958 unwind label %bb.pl ; 10 uses

.noexc958:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i945
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bgs
  %i.bhc = load i64, ptr %120, align 8, !tbaa !124
  store i64 %i.bhc, ptr %i.bhb, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i948 = icmp eq ptr %i.bgp, %i.bgk
  br i1 %.not10.i.i.i.i.i.i.i948, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i953, label %.lr.ph.i.i.i.i.i.i.i949.preheader

.lr.ph.i.i.i.i.i.i.i949.preheader:                ; preds = %.noexc958
  %i.bhd = sub i64 %i.bgq, %i.bgr
  %i.bhe = add i64 %i.bhd, -8                     ; 2 uses
  %i.bhf = lshr i64 %i.bhe, 3
  %i.bhg = add nuw nsw i64 %i.bhf, 1              ; 2 uses
  %min.iters.check7407 = icmp ult i64 %i.bhe, 152
  br i1 %min.iters.check7407, label %.lr.ph.i.i.i.i.i.i.i949.preheader7685, label %vector.memcheck7400

vector.memcheck7400:                              ; preds = %.lr.ph.i.i.i.i.i.i.i949.preheader
  %i.bhh = add i64 %i.bgq, -8
  %i.bhi = sub i64 %i.bhh, %i.bgr
  %i.bhj = and i64 %i.bhi, -8
  %i.bhk = add i64 %i.bhj, 8                      ; 2 uses
  %scevgep7401 = getelementptr i8, ptr %i.bha, i64 %i.bhk
  %scevgep7402 = getelementptr i8, ptr %i.bgp, i64 %i.bhk
  %bound07403 = icmp ult ptr %i.bha, %scevgep7402
  %bound17404 = icmp ult ptr %i.bgp, %scevgep7401
  %found.conflict7405 = and i1 %bound07403, %bound17404
  br i1 %found.conflict7405, label %.lr.ph.i.i.i.i.i.i.i949.preheader7685, label %vector.ph7408

vector.ph7408:                                    ; preds = %vector.memcheck7400
  %n.vec7410 = and i64 %i.bhg, 4611686018427387900 ; 3 uses
  %i.bhl = shl i64 %n.vec7410, 3                  ; 2 uses
  %i.bhm = getelementptr i8, ptr %i.bha, i64 %i.bhl ; 2 uses
  %i.bhn = getelementptr i8, ptr %i.bgp, i64 %i.bhl
  br label %vector.body7411

vector.body7411:                                  ; preds = %vector.body7411, %vector.ph7408
  %index7412 = phi i64 [ 0, %vector.ph7408 ], [ %index.next7417, %vector.body7411 ] ; 2 uses
  %i.bho = shl i64 %index7412, 3                  ; 2 uses
  %next.gep7413 = getelementptr i8, ptr %i.bha, i64 %i.bho ; 2 uses
  %next.gep7414 = getelementptr i8, ptr %i.bgp, i64 %i.bho ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.bhp = getelementptr i8, ptr %next.gep7414, i64 16
  %wide.load7415 = load <2 x i64>, ptr %next.gep7414, align 8, !tbaa !124, !alias.scope !3032, !noalias !3027
  %wide.load7416 = load <2 x i64>, ptr %i.bhp, align 8, !tbaa !124, !alias.scope !3032, !noalias !3027
  %i.bhq = getelementptr i8, ptr %next.gep7413, i64 16
  store <2 x i64> %wide.load7415, ptr %next.gep7413, align 8, !tbaa !124, !alias.scope !3035, !noalias !3032
  store <2 x i64> %wide.load7416, ptr %i.bhq, align 8, !tbaa !124, !alias.scope !3035, !noalias !3032
  %i.bhr = getelementptr i8, ptr %next.gep7414, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7414, align 8, !tbaa !124, !alias.scope !3032, !noalias !3027
  store <2 x ptr> splat (ptr null), ptr %i.bhr, align 8, !tbaa !124, !alias.scope !3032, !noalias !3027
  %index.next7417 = add nuw i64 %index7412, 4     ; 2 uses
  %i.bhs = icmp eq i64 %index.next7417, %n.vec7410
  br i1 %i.bhs, label %middle.block7418, label %vector.body7411, !llvm.loop !3037

middle.block7418:                                 ; preds = %vector.body7411
  %cmp.n7419 = icmp eq i64 %i.bhg, %n.vec7410
  br i1 %cmp.n7419, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i953, label %.lr.ph.i.i.i.i.i.i.i949.preheader7685

.lr.ph.i.i.i.i.i.i.i949.preheader7685:            ; preds = %vector.memcheck7400, %.lr.ph.i.i.i.i.i.i.i949.preheader, %middle.block7418
  %.012.i.i.i.i.i.i.i950.ph = phi ptr [ %i.bha, %vector.memcheck7400 ], [ %i.bha, %.lr.ph.i.i.i.i.i.i.i949.preheader ], [ %i.bhm, %middle.block7418 ]
  %.0911.i.i.i.i.i.i.i951.ph = phi ptr [ %i.bgp, %vector.memcheck7400 ], [ %i.bgp, %.lr.ph.i.i.i.i.i.i.i949.preheader ], [ %i.bhn, %middle.block7418 ]
  br label %.lr.ph.i.i.i.i.i.i.i949

.lr.ph.i.i.i.i.i.i.i949:                          ; preds = %.lr.ph.i.i.i.i.i.i.i949.preheader7685, %.lr.ph.i.i.i.i.i.i.i949
  %.012.i.i.i.i.i.i.i950 = phi ptr [ %i.bhv, %.lr.ph.i.i.i.i.i.i.i949 ], [ %.012.i.i.i.i.i.i.i950.ph, %.lr.ph.i.i.i.i.i.i.i949.preheader7685 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i951 = phi ptr [ %i.bhu, %.lr.ph.i.i.i.i.i.i.i949 ], [ %.0911.i.i.i.i.i.i.i951.ph, %.lr.ph.i.i.i.i.i.i.i949.preheader7685 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.bht = load i64, ptr %.0911.i.i.i.i.i.i.i951, align 8, !tbaa !124, !alias.scope !3030, !noalias !3027
  store i64 %i.bht, ptr %.012.i.i.i.i.i.i.i950, align 8, !tbaa !124, !alias.scope !3027, !noalias !3030
  store ptr null, ptr %.0911.i.i.i.i.i.i.i951, align 8, !tbaa !124, !alias.scope !3030, !noalias !3027
  %i.bhu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i951, i64 8 ; 2 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i950, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i952 = icmp eq ptr %i.bhu, %i.bgk
  br i1 %.not.i.i.i.i.i.i.i952, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i953, label %.lr.ph.i.i.i.i.i.i.i949, !llvm.loop !3038

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i953: ; preds = %.lr.ph.i.i.i.i.i.i.i949, %middle.block7418, %.noexc958
  %.0.lcssa.i.i.i.i.i.i.i954 = phi ptr [ %i.bha, %.noexc958 ], [ %i.bhm, %middle.block7418 ], [ %i.bhv, %.lr.ph.i.i.i.i.i.i.i949 ]
  %i.bhw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i954, i64 8
  %.not.i23.i.i.i955 = icmp eq ptr %i.bgp, null
  br i1 %.not.i23.i.i.i955, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959, label %bb.mn

bb.mn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i953
  call void @_ZdlPv(ptr noundef nonnull %i.bgp) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i953, %bb.mn
  store ptr %i.bha, ptr %i.bgf, align 8, !tbaa !158
  store ptr %i.bhw, ptr %i.bgj, align 8, !tbaa !161
  %i.bhx = getelementptr inbounds nuw [8 x i8], ptr %i.bha, i64 %i.bgy
  store ptr %i.bhx, ptr %i.bgl, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit962

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit962: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit959.thread
  %i.bhy = load ptr, ptr %121, align 8, !tbaa !25 ; 2 uses
  %i.bhz = icmp eq ptr %i.bhy, %i.bgg
  br i1 %i.bhz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit962
  call void @_ZdlPv(ptr noundef %i.bhy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit962, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i963
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #25
  %i.bia = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i966 unwind label %bb.pj ; 3 uses

._crit_edge.i.i966:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #25
  %i.bic = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 4 uses
  store ptr %i.bic, ptr %123, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bic, ptr noundef nonnull align 1 dereferenceable(11) @.str.171, i64 11, i1 false)
  %i.bid = getelementptr inbounds nuw i8, ptr %123, i64 8
  store i64 11, ptr %i.bid, align 8, !tbaa !16
  %i.bie = getelementptr inbounds nuw i8, ptr %123, i64 27
  store i8 0, ptr %i.bie, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %122, ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(32) %123)
          to label %bb.mo unwind label %bb.pm

bb.mo:                                            ; preds = %._crit_edge.i.i966
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bia, i64 128 ; 3 uses
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !161 ; 6 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bia, i64 136 ; 2 uses
  %i.bii = load ptr, ptr %i.bih, align 8, !tbaa !206
  %.not.i.i970 = icmp eq ptr %i.big, %i.bii
  br i1 %.not.i.i970, label %bb.mp, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985.thread: ; preds = %bb.mo
  %i.bij = load i64, ptr %122, align 8, !tbaa !124
  store i64 %i.bij, ptr %i.big, align 8, !tbaa !124
  %i.bik = getelementptr inbounds nuw i8, ptr %i.big, i64 8
  store ptr %i.bik, ptr %i.bif, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit988

bb.mp:                                            ; preds = %bb.mo
  %i.bil = load ptr, ptr %i.bib, align 8, !tbaa !158 ; 10 uses
  %i.bim = ptrtoint ptr %i.big to i64             ; 3 uses
  %i.bin = ptrtoint ptr %i.bil to i64             ; 3 uses
  %i.bio = sub i64 %i.bim, %i.bin                 ; 3 uses
  %i.bip = icmp eq i64 %i.bio, 9223372036854775800
  br i1 %i.bip, label %bb.mq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i971

bb.mq:                                            ; preds = %bb.mp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc983 unwind label %bb.pn

.noexc983:                                        ; preds = %bb.mq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i971: ; preds = %bb.mp
  %i.biq = ashr exact i64 %i.bio, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i972 = call i64 @llvm.umax.i64(i64 %i.biq, i64 1)
  %i.bir = add nsw i64 %.sroa.speculated.i.i.i.i972, %i.biq ; 2 uses
  %i.bis = icmp ult i64 %i.bir, %i.biq
  %i.bit = call i64 @llvm.umin.i64(i64 %i.bir, i64 1152921504606846975)
  %i.biu = select i1 %i.bis, i64 1152921504606846975, i64 %i.bit ; 3 uses
  %.not.i.i.i.i973 = icmp ne i64 %i.biu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i973)
  %i.biv = shl nuw nsw i64 %i.biu, 3
  %i.biw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.biv) #26
          to label %.noexc984 unwind label %bb.pn ; 10 uses

.noexc984:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i971
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 %i.bio
  %i.biy = load i64, ptr %122, align 8, !tbaa !124
  store i64 %i.biy, ptr %i.bix, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i974 = icmp eq ptr %i.bil, %i.big
  br i1 %.not10.i.i.i.i.i.i.i974, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i979, label %.lr.ph.i.i.i.i.i.i.i975.preheader

.lr.ph.i.i.i.i.i.i.i975.preheader:                ; preds = %.noexc984
  %i.biz = sub i64 %i.bim, %i.bin
  %i.bja = add i64 %i.biz, -8                     ; 2 uses
  %i.bjb = lshr i64 %i.bja, 3
  %i.bjc = add nuw nsw i64 %i.bjb, 1              ; 2 uses
  %min.iters.check7429 = icmp ult i64 %i.bja, 152
  br i1 %min.iters.check7429, label %.lr.ph.i.i.i.i.i.i.i975.preheader7683, label %vector.memcheck7422

vector.memcheck7422:                              ; preds = %.lr.ph.i.i.i.i.i.i.i975.preheader
  %i.bjd = add i64 %i.bim, -8
  %i.bje = sub i64 %i.bjd, %i.bin
  %i.bjf = and i64 %i.bje, -8
  %i.bjg = add i64 %i.bjf, 8                      ; 2 uses
  %scevgep7423 = getelementptr i8, ptr %i.biw, i64 %i.bjg
  %scevgep7424 = getelementptr i8, ptr %i.bil, i64 %i.bjg
  %bound07425 = icmp ult ptr %i.biw, %scevgep7424
  %bound17426 = icmp ult ptr %i.bil, %scevgep7423
  %found.conflict7427 = and i1 %bound07425, %bound17426
  br i1 %found.conflict7427, label %.lr.ph.i.i.i.i.i.i.i975.preheader7683, label %vector.ph7430

vector.ph7430:                                    ; preds = %vector.memcheck7422
  %n.vec7432 = and i64 %i.bjc, 4611686018427387900 ; 3 uses
  %i.bjh = shl i64 %n.vec7432, 3                  ; 2 uses
  %i.bji = getelementptr i8, ptr %i.biw, i64 %i.bjh ; 2 uses
  %i.bjj = getelementptr i8, ptr %i.bil, i64 %i.bjh
  br label %vector.body7433

vector.body7433:                                  ; preds = %vector.body7433, %vector.ph7430
  %index7434 = phi i64 [ 0, %vector.ph7430 ], [ %index.next7439, %vector.body7433 ] ; 2 uses
  %i.bjk = shl i64 %index7434, 3                  ; 2 uses
  %next.gep7435 = getelementptr i8, ptr %i.biw, i64 %i.bjk ; 2 uses
  %next.gep7436 = getelementptr i8, ptr %i.bil, i64 %i.bjk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  %i.bjl = getelementptr i8, ptr %next.gep7436, i64 16
  %wide.load7437 = load <2 x i64>, ptr %next.gep7436, align 8, !tbaa !124, !alias.scope !3044, !noalias !3039
  %wide.load7438 = load <2 x i64>, ptr %i.bjl, align 8, !tbaa !124, !alias.scope !3044, !noalias !3039
  %i.bjm = getelementptr i8, ptr %next.gep7435, i64 16
  store <2 x i64> %wide.load7437, ptr %next.gep7435, align 8, !tbaa !124, !alias.scope !3047, !noalias !3044
  store <2 x i64> %wide.load7438, ptr %i.bjm, align 8, !tbaa !124, !alias.scope !3047, !noalias !3044
  %i.bjn = getelementptr i8, ptr %next.gep7436, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7436, align 8, !tbaa !124, !alias.scope !3044, !noalias !3039
  store <2 x ptr> splat (ptr null), ptr %i.bjn, align 8, !tbaa !124, !alias.scope !3044, !noalias !3039
  %index.next7439 = add nuw i64 %index7434, 4     ; 2 uses
  %i.bjo = icmp eq i64 %index.next7439, %n.vec7432
  br i1 %i.bjo, label %middle.block7440, label %vector.body7433, !llvm.loop !3049

middle.block7440:                                 ; preds = %vector.body7433
  %cmp.n7441 = icmp eq i64 %i.bjc, %n.vec7432
  br i1 %cmp.n7441, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i979, label %.lr.ph.i.i.i.i.i.i.i975.preheader7683

.lr.ph.i.i.i.i.i.i.i975.preheader7683:            ; preds = %vector.memcheck7422, %.lr.ph.i.i.i.i.i.i.i975.preheader, %middle.block7440
  %.012.i.i.i.i.i.i.i976.ph = phi ptr [ %i.biw, %vector.memcheck7422 ], [ %i.biw, %.lr.ph.i.i.i.i.i.i.i975.preheader ], [ %i.bji, %middle.block7440 ]
  %.0911.i.i.i.i.i.i.i977.ph = phi ptr [ %i.bil, %vector.memcheck7422 ], [ %i.bil, %.lr.ph.i.i.i.i.i.i.i975.preheader ], [ %i.bjj, %middle.block7440 ]
  br label %.lr.ph.i.i.i.i.i.i.i975

.lr.ph.i.i.i.i.i.i.i975:                          ; preds = %.lr.ph.i.i.i.i.i.i.i975.preheader7683, %.lr.ph.i.i.i.i.i.i.i975
  %.012.i.i.i.i.i.i.i976 = phi ptr [ %i.bjr, %.lr.ph.i.i.i.i.i.i.i975 ], [ %.012.i.i.i.i.i.i.i976.ph, %.lr.ph.i.i.i.i.i.i.i975.preheader7683 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i977 = phi ptr [ %i.bjq, %.lr.ph.i.i.i.i.i.i.i975 ], [ %.0911.i.i.i.i.i.i.i977.ph, %.lr.ph.i.i.i.i.i.i.i975.preheader7683 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  call void @llvm.experimental.noalias.scope.decl(metadata !3042)
  %i.bjp = load i64, ptr %.0911.i.i.i.i.i.i.i977, align 8, !tbaa !124, !alias.scope !3042, !noalias !3039
  store i64 %i.bjp, ptr %.012.i.i.i.i.i.i.i976, align 8, !tbaa !124, !alias.scope !3039, !noalias !3042
  store ptr null, ptr %.0911.i.i.i.i.i.i.i977, align 8, !tbaa !124, !alias.scope !3042, !noalias !3039
  %i.bjq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i977, i64 8 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i976, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i978 = icmp eq ptr %i.bjq, %i.big
  br i1 %.not.i.i.i.i.i.i.i978, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i979, label %.lr.ph.i.i.i.i.i.i.i975, !llvm.loop !3050

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i979: ; preds = %.lr.ph.i.i.i.i.i.i.i975, %middle.block7440, %.noexc984
  %.0.lcssa.i.i.i.i.i.i.i980 = phi ptr [ %i.biw, %.noexc984 ], [ %i.bji, %middle.block7440 ], [ %i.bjr, %.lr.ph.i.i.i.i.i.i.i975 ]
  %i.bjs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i980, i64 8
  %.not.i23.i.i.i981 = icmp eq ptr %i.bil, null
  br i1 %.not.i23.i.i.i981, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985, label %bb.mr

bb.mr:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i979
  call void @_ZdlPv(ptr noundef nonnull %i.bil) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i979, %bb.mr
  store ptr %i.biw, ptr %i.bib, align 8, !tbaa !158
  store ptr %i.bjs, ptr %i.bif, align 8, !tbaa !161
  %i.bjt = getelementptr inbounds nuw [8 x i8], ptr %i.biw, i64 %i.biu
  store ptr %i.bjt, ptr %i.bih, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit988

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit988: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit985.thread
  %i.bju = load ptr, ptr %123, align 8, !tbaa !25 ; 2 uses
  %i.bjv = icmp eq ptr %i.bju, %i.bic
  br i1 %i.bjv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i989

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i989: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit988
  call void @_ZdlPv(ptr noundef %i.bju) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit988, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i989
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #25
  %i.bjw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i992 unwind label %bb.pj ; 3 uses

._crit_edge.i.i992:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit991
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjw, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #25
  %i.bjy = getelementptr inbounds nuw i8, ptr %125, i64 16 ; 4 uses
  store ptr %i.bjy, ptr %125, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bjy, ptr noundef nonnull align 1 dereferenceable(3) @.str.163, i64 3, i1 false)
  %i.bjz = getelementptr inbounds nuw i8, ptr %125, i64 8
  store i64 3, ptr %i.bjz, align 8, !tbaa !16
  %i.bka = getelementptr inbounds nuw i8, ptr %125, i64 19
  store i8 0, ptr %i.bka, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %124, ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(32) %125)
          to label %bb.ms unwind label %bb.po

bb.ms:                                            ; preds = %._crit_edge.i.i992
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bjw, i64 128 ; 3 uses
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !161 ; 6 uses
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjw, i64 136 ; 2 uses
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !206
  %.not.i.i996 = icmp eq ptr %i.bkc, %i.bke
  br i1 %.not.i.i996, label %bb.mt, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011.thread: ; preds = %bb.ms
  %i.bkf = load i64, ptr %124, align 8, !tbaa !124
  store i64 %i.bkf, ptr %i.bkc, align 8, !tbaa !124
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkc, i64 8
  store ptr %i.bkg, ptr %i.bkb, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1014

bb.mt:                                            ; preds = %bb.ms
  %i.bkh = load ptr, ptr %i.bjx, align 8, !tbaa !158 ; 10 uses
  %i.bki = ptrtoint ptr %i.bkc to i64             ; 3 uses
  %i.bkj = ptrtoint ptr %i.bkh to i64             ; 3 uses
  %i.bkk = sub i64 %i.bki, %i.bkj                 ; 3 uses
  %i.bkl = icmp eq i64 %i.bkk, 9223372036854775800
  br i1 %i.bkl, label %bb.mu, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i997

bb.mu:                                            ; preds = %bb.mt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1009 unwind label %bb.pp

.noexc1009:                                       ; preds = %bb.mu
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i997: ; preds = %bb.mt
  %i.bkm = ashr exact i64 %i.bkk, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i998 = call i64 @llvm.umax.i64(i64 %i.bkm, i64 1)
  %i.bkn = add nsw i64 %.sroa.speculated.i.i.i.i998, %i.bkm ; 2 uses
  %i.bko = icmp ult i64 %i.bkn, %i.bkm
  %i.bkp = call i64 @llvm.umin.i64(i64 %i.bkn, i64 1152921504606846975)
  %i.bkq = select i1 %i.bko, i64 1152921504606846975, i64 %i.bkp ; 3 uses
  %.not.i.i.i.i999 = icmp ne i64 %i.bkq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i999)
  %i.bkr = shl nuw nsw i64 %i.bkq, 3
  %i.bks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bkr) #26
          to label %.noexc1010 unwind label %bb.pp ; 10 uses

.noexc1010:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i997
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 %i.bkk
  %i.bku = load i64, ptr %124, align 8, !tbaa !124
  store i64 %i.bku, ptr %i.bkt, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1000 = icmp eq ptr %i.bkh, %i.bkc
  br i1 %.not10.i.i.i.i.i.i.i1000, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1005, label %.lr.ph.i.i.i.i.i.i.i1001.preheader

.lr.ph.i.i.i.i.i.i.i1001.preheader:               ; preds = %.noexc1010
  %i.bkv = sub i64 %i.bki, %i.bkj
  %i.bkw = add i64 %i.bkv, -8                     ; 2 uses
  %i.bkx = lshr i64 %i.bkw, 3
  %i.bky = add nuw nsw i64 %i.bkx, 1              ; 2 uses
  %min.iters.check7451 = icmp ult i64 %i.bkw, 152
  br i1 %min.iters.check7451, label %.lr.ph.i.i.i.i.i.i.i1001.preheader7681, label %vector.memcheck7444

vector.memcheck7444:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1001.preheader
  %i.bkz = add i64 %i.bki, -8
  %i.bla = sub i64 %i.bkz, %i.bkj
  %i.blb = and i64 %i.bla, -8
  %i.blc = add i64 %i.blb, 8                      ; 2 uses
  %scevgep7445 = getelementptr i8, ptr %i.bks, i64 %i.blc
  %scevgep7446 = getelementptr i8, ptr %i.bkh, i64 %i.blc
  %bound07447 = icmp ult ptr %i.bks, %scevgep7446
  %bound17448 = icmp ult ptr %i.bkh, %scevgep7445
  %found.conflict7449 = and i1 %bound07447, %bound17448
  br i1 %found.conflict7449, label %.lr.ph.i.i.i.i.i.i.i1001.preheader7681, label %vector.ph7452

vector.ph7452:                                    ; preds = %vector.memcheck7444
  %n.vec7454 = and i64 %i.bky, 4611686018427387900 ; 3 uses
  %i.bld = shl i64 %n.vec7454, 3                  ; 2 uses
  %i.ble = getelementptr i8, ptr %i.bks, i64 %i.bld ; 2 uses
  %i.blf = getelementptr i8, ptr %i.bkh, i64 %i.bld
  br label %vector.body7455

vector.body7455:                                  ; preds = %vector.body7455, %vector.ph7452
  %index7456 = phi i64 [ 0, %vector.ph7452 ], [ %index.next7461, %vector.body7455 ] ; 2 uses
  %i.blg = shl i64 %index7456, 3                  ; 2 uses
  %next.gep7457 = getelementptr i8, ptr %i.bks, i64 %i.blg ; 2 uses
  %next.gep7458 = getelementptr i8, ptr %i.bkh, i64 %i.blg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.blh = getelementptr i8, ptr %next.gep7458, i64 16
  %wide.load7459 = load <2 x i64>, ptr %next.gep7458, align 8, !tbaa !124, !alias.scope !3056, !noalias !3051
  %wide.load7460 = load <2 x i64>, ptr %i.blh, align 8, !tbaa !124, !alias.scope !3056, !noalias !3051
  %i.bli = getelementptr i8, ptr %next.gep7457, i64 16
  store <2 x i64> %wide.load7459, ptr %next.gep7457, align 8, !tbaa !124, !alias.scope !3059, !noalias !3056
  store <2 x i64> %wide.load7460, ptr %i.bli, align 8, !tbaa !124, !alias.scope !3059, !noalias !3056
  %i.blj = getelementptr i8, ptr %next.gep7458, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7458, align 8, !tbaa !124, !alias.scope !3056, !noalias !3051
  store <2 x ptr> splat (ptr null), ptr %i.blj, align 8, !tbaa !124, !alias.scope !3056, !noalias !3051
  %index.next7461 = add nuw i64 %index7456, 4     ; 2 uses
  %i.blk = icmp eq i64 %index.next7461, %n.vec7454
  br i1 %i.blk, label %middle.block7462, label %vector.body7455, !llvm.loop !3061

middle.block7462:                                 ; preds = %vector.body7455
  %cmp.n7463 = icmp eq i64 %i.bky, %n.vec7454
  br i1 %cmp.n7463, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1005, label %.lr.ph.i.i.i.i.i.i.i1001.preheader7681

.lr.ph.i.i.i.i.i.i.i1001.preheader7681:           ; preds = %vector.memcheck7444, %.lr.ph.i.i.i.i.i.i.i1001.preheader, %middle.block7462
  %.012.i.i.i.i.i.i.i1002.ph = phi ptr [ %i.bks, %vector.memcheck7444 ], [ %i.bks, %.lr.ph.i.i.i.i.i.i.i1001.preheader ], [ %i.ble, %middle.block7462 ]
  %.0911.i.i.i.i.i.i.i1003.ph = phi ptr [ %i.bkh, %vector.memcheck7444 ], [ %i.bkh, %.lr.ph.i.i.i.i.i.i.i1001.preheader ], [ %i.blf, %middle.block7462 ]
  br label %.lr.ph.i.i.i.i.i.i.i1001

.lr.ph.i.i.i.i.i.i.i1001:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1001.preheader7681, %.lr.ph.i.i.i.i.i.i.i1001
  %.012.i.i.i.i.i.i.i1002 = phi ptr [ %i.bln, %.lr.ph.i.i.i.i.i.i.i1001 ], [ %.012.i.i.i.i.i.i.i1002.ph, %.lr.ph.i.i.i.i.i.i.i1001.preheader7681 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1003 = phi ptr [ %i.blm, %.lr.ph.i.i.i.i.i.i.i1001 ], [ %.0911.i.i.i.i.i.i.i1003.ph, %.lr.ph.i.i.i.i.i.i.i1001.preheader7681 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3051)
  call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %i.bll = load i64, ptr %.0911.i.i.i.i.i.i.i1003, align 8, !tbaa !124, !alias.scope !3054, !noalias !3051
  store i64 %i.bll, ptr %.012.i.i.i.i.i.i.i1002, align 8, !tbaa !124, !alias.scope !3051, !noalias !3054
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1003, align 8, !tbaa !124, !alias.scope !3054, !noalias !3051
  %i.blm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1003, i64 8 ; 2 uses
  %i.bln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1002, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1004 = icmp eq ptr %i.blm, %i.bkc
  br i1 %.not.i.i.i.i.i.i.i1004, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1005, label %.lr.ph.i.i.i.i.i.i.i1001, !llvm.loop !3062

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1005: ; preds = %.lr.ph.i.i.i.i.i.i.i1001, %middle.block7462, %.noexc1010
  %.0.lcssa.i.i.i.i.i.i.i1006 = phi ptr [ %i.bks, %.noexc1010 ], [ %i.ble, %middle.block7462 ], [ %i.bln, %.lr.ph.i.i.i.i.i.i.i1001 ]
  %i.blo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1006, i64 8
  %.not.i23.i.i.i1007 = icmp eq ptr %i.bkh, null
  br i1 %.not.i23.i.i.i1007, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011, label %bb.mv

bb.mv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1005
  call void @_ZdlPv(ptr noundef nonnull %i.bkh) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1005, %bb.mv
  store ptr %i.bks, ptr %i.bjx, align 8, !tbaa !158
  store ptr %i.blo, ptr %i.bkb, align 8, !tbaa !161
  %i.blp = getelementptr inbounds nuw [8 x i8], ptr %i.bks, i64 %i.bkq
  store ptr %i.blp, ptr %i.bkd, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1014

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1014: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1011.thread
  %i.blq = load ptr, ptr %125, align 8, !tbaa !25 ; 2 uses
  %i.blr = icmp eq ptr %i.blq, %i.bjy
  br i1 %i.blr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1014
  call void @_ZdlPv(ptr noundef %i.blq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1014, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1015
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #25
  %i.bls = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1018 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1018:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #25
  %i.blu = getelementptr inbounds nuw i8, ptr %127, i64 16 ; 4 uses
  store ptr %i.blu, ptr %127, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.blu, ptr noundef nonnull align 1 dereferenceable(3) @.str.164, i64 3, i1 false)
  %i.blv = getelementptr inbounds nuw i8, ptr %127, i64 8
  store i64 3, ptr %i.blv, align 8, !tbaa !16
  %i.blw = getelementptr inbounds nuw i8, ptr %127, i64 19
  store i8 0, ptr %i.blw, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %126, ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(32) %127)
          to label %bb.mw unwind label %bb.pq

bb.mw:                                            ; preds = %._crit_edge.i.i1018
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bls, i64 128 ; 3 uses
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !161 ; 6 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bls, i64 136 ; 2 uses
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !206
  %.not.i.i1022 = icmp eq ptr %i.bly, %i.bma
  br i1 %.not.i.i1022, label %bb.mx, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037.thread: ; preds = %bb.mw
  %i.bmb = load i64, ptr %126, align 8, !tbaa !124
  store i64 %i.bmb, ptr %i.bly, align 8, !tbaa !124
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bly, i64 8
  store ptr %i.bmc, ptr %i.blx, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1040

bb.mx:                                            ; preds = %bb.mw
  %i.bmd = load ptr, ptr %i.blt, align 8, !tbaa !158 ; 10 uses
  %i.bme = ptrtoint ptr %i.bly to i64             ; 3 uses
  %i.bmf = ptrtoint ptr %i.bmd to i64             ; 3 uses
  %i.bmg = sub i64 %i.bme, %i.bmf                 ; 3 uses
  %i.bmh = icmp eq i64 %i.bmg, 9223372036854775800
  br i1 %i.bmh, label %bb.my, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1023

bb.my:                                            ; preds = %bb.mx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1035 unwind label %bb.pr

.noexc1035:                                       ; preds = %bb.my
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1023: ; preds = %bb.mx
  %i.bmi = ashr exact i64 %i.bmg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1024 = call i64 @llvm.umax.i64(i64 %i.bmi, i64 1)
  %i.bmj = add nsw i64 %.sroa.speculated.i.i.i.i1024, %i.bmi ; 2 uses
  %i.bmk = icmp ult i64 %i.bmj, %i.bmi
  %i.bml = call i64 @llvm.umin.i64(i64 %i.bmj, i64 1152921504606846975)
  %i.bmm = select i1 %i.bmk, i64 1152921504606846975, i64 %i.bml ; 3 uses
  %.not.i.i.i.i1025 = icmp ne i64 %i.bmm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1025)
  %i.bmn = shl nuw nsw i64 %i.bmm, 3
  %i.bmo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bmn) #26
          to label %.noexc1036 unwind label %bb.pr ; 10 uses

.noexc1036:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1023
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 %i.bmg
  %i.bmq = load i64, ptr %126, align 8, !tbaa !124
  store i64 %i.bmq, ptr %i.bmp, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1026 = icmp eq ptr %i.bmd, %i.bly
  br i1 %.not10.i.i.i.i.i.i.i1026, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1031, label %.lr.ph.i.i.i.i.i.i.i1027.preheader

.lr.ph.i.i.i.i.i.i.i1027.preheader:               ; preds = %.noexc1036
  %i.bmr = sub i64 %i.bme, %i.bmf
  %i.bms = add i64 %i.bmr, -8                     ; 2 uses
  %i.bmt = lshr i64 %i.bms, 3
  %i.bmu = add nuw nsw i64 %i.bmt, 1              ; 2 uses
  %min.iters.check7473 = icmp ult i64 %i.bms, 152
  br i1 %min.iters.check7473, label %.lr.ph.i.i.i.i.i.i.i1027.preheader7679, label %vector.memcheck7466

vector.memcheck7466:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1027.preheader
  %i.bmv = add i64 %i.bme, -8
  %i.bmw = sub i64 %i.bmv, %i.bmf
  %i.bmx = and i64 %i.bmw, -8
  %i.bmy = add i64 %i.bmx, 8                      ; 2 uses
  %scevgep7467 = getelementptr i8, ptr %i.bmo, i64 %i.bmy
  %scevgep7468 = getelementptr i8, ptr %i.bmd, i64 %i.bmy
  %bound07469 = icmp ult ptr %i.bmo, %scevgep7468
  %bound17470 = icmp ult ptr %i.bmd, %scevgep7467
  %found.conflict7471 = and i1 %bound07469, %bound17470
  br i1 %found.conflict7471, label %.lr.ph.i.i.i.i.i.i.i1027.preheader7679, label %vector.ph7474

vector.ph7474:                                    ; preds = %vector.memcheck7466
  %n.vec7476 = and i64 %i.bmu, 4611686018427387900 ; 3 uses
  %i.bmz = shl i64 %n.vec7476, 3                  ; 2 uses
  %i.bna = getelementptr i8, ptr %i.bmo, i64 %i.bmz ; 2 uses
  %i.bnb = getelementptr i8, ptr %i.bmd, i64 %i.bmz
  br label %vector.body7477

vector.body7477:                                  ; preds = %vector.body7477, %vector.ph7474
  %index7478 = phi i64 [ 0, %vector.ph7474 ], [ %index.next7483, %vector.body7477 ] ; 2 uses
  %i.bnc = shl i64 %index7478, 3                  ; 2 uses
  %next.gep7479 = getelementptr i8, ptr %i.bmo, i64 %i.bnc ; 2 uses
  %next.gep7480 = getelementptr i8, ptr %i.bmd, i64 %i.bnc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  %i.bnd = getelementptr i8, ptr %next.gep7480, i64 16
  %wide.load7481 = load <2 x i64>, ptr %next.gep7480, align 8, !tbaa !124, !alias.scope !3068, !noalias !3063
  %wide.load7482 = load <2 x i64>, ptr %i.bnd, align 8, !tbaa !124, !alias.scope !3068, !noalias !3063
  %i.bne = getelementptr i8, ptr %next.gep7479, i64 16
  store <2 x i64> %wide.load7481, ptr %next.gep7479, align 8, !tbaa !124, !alias.scope !3071, !noalias !3068
  store <2 x i64> %wide.load7482, ptr %i.bne, align 8, !tbaa !124, !alias.scope !3071, !noalias !3068
  %i.bnf = getelementptr i8, ptr %next.gep7480, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7480, align 8, !tbaa !124, !alias.scope !3068, !noalias !3063
  store <2 x ptr> splat (ptr null), ptr %i.bnf, align 8, !tbaa !124, !alias.scope !3068, !noalias !3063
  %index.next7483 = add nuw i64 %index7478, 4     ; 2 uses
  %i.bng = icmp eq i64 %index.next7483, %n.vec7476
  br i1 %i.bng, label %middle.block7484, label %vector.body7477, !llvm.loop !3073

middle.block7484:                                 ; preds = %vector.body7477
  %cmp.n7485 = icmp eq i64 %i.bmu, %n.vec7476
  br i1 %cmp.n7485, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1031, label %.lr.ph.i.i.i.i.i.i.i1027.preheader7679

.lr.ph.i.i.i.i.i.i.i1027.preheader7679:           ; preds = %vector.memcheck7466, %.lr.ph.i.i.i.i.i.i.i1027.preheader, %middle.block7484
  %.012.i.i.i.i.i.i.i1028.ph = phi ptr [ %i.bmo, %vector.memcheck7466 ], [ %i.bmo, %.lr.ph.i.i.i.i.i.i.i1027.preheader ], [ %i.bna, %middle.block7484 ]
  %.0911.i.i.i.i.i.i.i1029.ph = phi ptr [ %i.bmd, %vector.memcheck7466 ], [ %i.bmd, %.lr.ph.i.i.i.i.i.i.i1027.preheader ], [ %i.bnb, %middle.block7484 ]
  br label %.lr.ph.i.i.i.i.i.i.i1027

.lr.ph.i.i.i.i.i.i.i1027:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1027.preheader7679, %.lr.ph.i.i.i.i.i.i.i1027
  %.012.i.i.i.i.i.i.i1028 = phi ptr [ %i.bnj, %.lr.ph.i.i.i.i.i.i.i1027 ], [ %.012.i.i.i.i.i.i.i1028.ph, %.lr.ph.i.i.i.i.i.i.i1027.preheader7679 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1029 = phi ptr [ %i.bni, %.lr.ph.i.i.i.i.i.i.i1027 ], [ %.0911.i.i.i.i.i.i.i1029.ph, %.lr.ph.i.i.i.i.i.i.i1027.preheader7679 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  %i.bnh = load i64, ptr %.0911.i.i.i.i.i.i.i1029, align 8, !tbaa !124, !alias.scope !3066, !noalias !3063
  store i64 %i.bnh, ptr %.012.i.i.i.i.i.i.i1028, align 8, !tbaa !124, !alias.scope !3063, !noalias !3066
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1029, align 8, !tbaa !124, !alias.scope !3066, !noalias !3063
  %i.bni = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1029, i64 8 ; 2 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1028, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1030 = icmp eq ptr %i.bni, %i.bly
  br i1 %.not.i.i.i.i.i.i.i1030, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1031, label %.lr.ph.i.i.i.i.i.i.i1027, !llvm.loop !3074

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1031: ; preds = %.lr.ph.i.i.i.i.i.i.i1027, %middle.block7484, %.noexc1036
  %.0.lcssa.i.i.i.i.i.i.i1032 = phi ptr [ %i.bmo, %.noexc1036 ], [ %i.bna, %middle.block7484 ], [ %i.bnj, %.lr.ph.i.i.i.i.i.i.i1027 ]
  %i.bnk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1032, i64 8
  %.not.i23.i.i.i1033 = icmp eq ptr %i.bmd, null
  br i1 %.not.i23.i.i.i1033, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037, label %bb.mz

bb.mz:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1031
  call void @_ZdlPv(ptr noundef nonnull %i.bmd) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1031, %bb.mz
  store ptr %i.bmo, ptr %i.blt, align 8, !tbaa !158
  store ptr %i.bnk, ptr %i.blx, align 8, !tbaa !161
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %i.bmo, i64 %i.bmm
  store ptr %i.bnl, ptr %i.blz, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1040

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1040: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1037.thread
  %i.bnm = load ptr, ptr %127, align 8, !tbaa !25 ; 2 uses
  %i.bnn = icmp eq ptr %i.bnm, %i.blu
  br i1 %i.bnn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1041

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1041: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1040
  call void @_ZdlPv(ptr noundef %i.bnm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1040, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1041
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #25
  %i.bno = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1044 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1044:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #25
  %i.bnq = getelementptr inbounds nuw i8, ptr %129, i64 16 ; 4 uses
  store ptr %i.bnq, ptr %129, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bnq, ptr noundef nonnull align 1 dereferenceable(13) @.str.172, i64 13, i1 false)
  %i.bnr = getelementptr inbounds nuw i8, ptr %129, i64 8
  store i64 13, ptr %i.bnr, align 8, !tbaa !16
  %i.bns = getelementptr inbounds nuw i8, ptr %129, i64 29
  store i8 0, ptr %i.bns, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %128, ptr noundef nonnull align 8 dereferenceable(24) %67, ptr noundef nonnull align 8 dereferenceable(32) %129)
          to label %bb.na unwind label %bb.ps

bb.na:                                            ; preds = %._crit_edge.i.i1044
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bno, i64 128 ; 3 uses
  %i.bnu = load ptr, ptr %i.bnt, align 8, !tbaa !161 ; 6 uses
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bno, i64 136 ; 2 uses
  %i.bnw = load ptr, ptr %i.bnv, align 8, !tbaa !206
  %.not.i.i1048 = icmp eq ptr %i.bnu, %i.bnw
  br i1 %.not.i.i1048, label %bb.nb, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063.thread: ; preds = %bb.na
  %i.bnx = load i64, ptr %128, align 8, !tbaa !124
  store i64 %i.bnx, ptr %i.bnu, align 8, !tbaa !124
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnu, i64 8
  store ptr %i.bny, ptr %i.bnt, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1066

bb.nb:                                            ; preds = %bb.na
  %i.bnz = load ptr, ptr %i.bnp, align 8, !tbaa !158 ; 10 uses
  %i.boa = ptrtoint ptr %i.bnu to i64             ; 3 uses
  %i.bob = ptrtoint ptr %i.bnz to i64             ; 3 uses
  %i.boc = sub i64 %i.boa, %i.bob                 ; 3 uses
  %i.bod = icmp eq i64 %i.boc, 9223372036854775800
  br i1 %i.bod, label %bb.nc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1049

bb.nc:                                            ; preds = %bb.nb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1061 unwind label %bb.pt

.noexc1061:                                       ; preds = %bb.nc
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1049: ; preds = %bb.nb
  %i.boe = ashr exact i64 %i.boc, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1050 = call i64 @llvm.umax.i64(i64 %i.boe, i64 1)
  %i.bof = add nsw i64 %.sroa.speculated.i.i.i.i1050, %i.boe ; 2 uses
  %i.bog = icmp ult i64 %i.bof, %i.boe
  %i.boh = call i64 @llvm.umin.i64(i64 %i.bof, i64 1152921504606846975)
  %i.boi = select i1 %i.bog, i64 1152921504606846975, i64 %i.boh ; 3 uses
  %.not.i.i.i.i1051 = icmp ne i64 %i.boi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1051)
  %i.boj = shl nuw nsw i64 %i.boi, 3
  %i.bok = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.boj) #26
          to label %.noexc1062 unwind label %bb.pt ; 10 uses

.noexc1062:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1049
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 %i.boc
  %i.bom = load i64, ptr %128, align 8, !tbaa !124
  store i64 %i.bom, ptr %i.bol, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1052 = icmp eq ptr %i.bnz, %i.bnu
  br i1 %.not10.i.i.i.i.i.i.i1052, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1057, label %.lr.ph.i.i.i.i.i.i.i1053.preheader

.lr.ph.i.i.i.i.i.i.i1053.preheader:               ; preds = %.noexc1062
  %i.bon = sub i64 %i.boa, %i.bob
  %i.boo = add i64 %i.bon, -8                     ; 2 uses
  %i.bop = lshr i64 %i.boo, 3
  %i.boq = add nuw nsw i64 %i.bop, 1              ; 2 uses
  %min.iters.check7495 = icmp ult i64 %i.boo, 152
  br i1 %min.iters.check7495, label %.lr.ph.i.i.i.i.i.i.i1053.preheader7677, label %vector.memcheck7488

vector.memcheck7488:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1053.preheader
  %i.bor = add i64 %i.boa, -8
  %i.bos = sub i64 %i.bor, %i.bob
  %i.bot = and i64 %i.bos, -8
  %i.bou = add i64 %i.bot, 8                      ; 2 uses
  %scevgep7489 = getelementptr i8, ptr %i.bok, i64 %i.bou
  %scevgep7490 = getelementptr i8, ptr %i.bnz, i64 %i.bou
  %bound07491 = icmp ult ptr %i.bok, %scevgep7490
  %bound17492 = icmp ult ptr %i.bnz, %scevgep7489
  %found.conflict7493 = and i1 %bound07491, %bound17492
  br i1 %found.conflict7493, label %.lr.ph.i.i.i.i.i.i.i1053.preheader7677, label %vector.ph7496

vector.ph7496:                                    ; preds = %vector.memcheck7488
  %n.vec7498 = and i64 %i.boq, 4611686018427387900 ; 3 uses
  %i.bov = shl i64 %n.vec7498, 3                  ; 2 uses
  %i.bow = getelementptr i8, ptr %i.bok, i64 %i.bov ; 2 uses
  %i.box = getelementptr i8, ptr %i.bnz, i64 %i.bov
  br label %vector.body7499

vector.body7499:                                  ; preds = %vector.body7499, %vector.ph7496
  %index7500 = phi i64 [ 0, %vector.ph7496 ], [ %index.next7505, %vector.body7499 ] ; 2 uses
  %i.boy = shl i64 %index7500, 3                  ; 2 uses
  %next.gep7501 = getelementptr i8, ptr %i.bok, i64 %i.boy ; 2 uses
  %next.gep7502 = getelementptr i8, ptr %i.bnz, i64 %i.boy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %i.boz = getelementptr i8, ptr %next.gep7502, i64 16
  %wide.load7503 = load <2 x i64>, ptr %next.gep7502, align 8, !tbaa !124, !alias.scope !3080, !noalias !3075
  %wide.load7504 = load <2 x i64>, ptr %i.boz, align 8, !tbaa !124, !alias.scope !3080, !noalias !3075
  %i.bpa = getelementptr i8, ptr %next.gep7501, i64 16
  store <2 x i64> %wide.load7503, ptr %next.gep7501, align 8, !tbaa !124, !alias.scope !3083, !noalias !3080
  store <2 x i64> %wide.load7504, ptr %i.bpa, align 8, !tbaa !124, !alias.scope !3083, !noalias !3080
  %i.bpb = getelementptr i8, ptr %next.gep7502, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7502, align 8, !tbaa !124, !alias.scope !3080, !noalias !3075
  store <2 x ptr> splat (ptr null), ptr %i.bpb, align 8, !tbaa !124, !alias.scope !3080, !noalias !3075
  %index.next7505 = add nuw i64 %index7500, 4     ; 2 uses
  %i.bpc = icmp eq i64 %index.next7505, %n.vec7498
  br i1 %i.bpc, label %middle.block7506, label %vector.body7499, !llvm.loop !3085

middle.block7506:                                 ; preds = %vector.body7499
  %cmp.n7507 = icmp eq i64 %i.boq, %n.vec7498
  br i1 %cmp.n7507, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1057, label %.lr.ph.i.i.i.i.i.i.i1053.preheader7677

.lr.ph.i.i.i.i.i.i.i1053.preheader7677:           ; preds = %vector.memcheck7488, %.lr.ph.i.i.i.i.i.i.i1053.preheader, %middle.block7506
  %.012.i.i.i.i.i.i.i1054.ph = phi ptr [ %i.bok, %vector.memcheck7488 ], [ %i.bok, %.lr.ph.i.i.i.i.i.i.i1053.preheader ], [ %i.bow, %middle.block7506 ]
  %.0911.i.i.i.i.i.i.i1055.ph = phi ptr [ %i.bnz, %vector.memcheck7488 ], [ %i.bnz, %.lr.ph.i.i.i.i.i.i.i1053.preheader ], [ %i.box, %middle.block7506 ]
  br label %.lr.ph.i.i.i.i.i.i.i1053

.lr.ph.i.i.i.i.i.i.i1053:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1053.preheader7677, %.lr.ph.i.i.i.i.i.i.i1053
  %.012.i.i.i.i.i.i.i1054 = phi ptr [ %i.bpf, %.lr.ph.i.i.i.i.i.i.i1053 ], [ %.012.i.i.i.i.i.i.i1054.ph, %.lr.ph.i.i.i.i.i.i.i1053.preheader7677 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1055 = phi ptr [ %i.bpe, %.lr.ph.i.i.i.i.i.i.i1053 ], [ %.0911.i.i.i.i.i.i.i1055.ph, %.lr.ph.i.i.i.i.i.i.i1053.preheader7677 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3075)
  call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %i.bpd = load i64, ptr %.0911.i.i.i.i.i.i.i1055, align 8, !tbaa !124, !alias.scope !3078, !noalias !3075
  store i64 %i.bpd, ptr %.012.i.i.i.i.i.i.i1054, align 8, !tbaa !124, !alias.scope !3075, !noalias !3078
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1055, align 8, !tbaa !124, !alias.scope !3078, !noalias !3075
  %i.bpe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1055, i64 8 ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1054, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1056 = icmp eq ptr %i.bpe, %i.bnu
  br i1 %.not.i.i.i.i.i.i.i1056, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1057, label %.lr.ph.i.i.i.i.i.i.i1053, !llvm.loop !3086

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1057: ; preds = %.lr.ph.i.i.i.i.i.i.i1053, %middle.block7506, %.noexc1062
  %.0.lcssa.i.i.i.i.i.i.i1058 = phi ptr [ %i.bok, %.noexc1062 ], [ %i.bow, %middle.block7506 ], [ %i.bpf, %.lr.ph.i.i.i.i.i.i.i1053 ]
  %i.bpg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1058, i64 8
  %.not.i23.i.i.i1059 = icmp eq ptr %i.bnz, null
  br i1 %.not.i23.i.i.i1059, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063, label %bb.nd

bb.nd:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1057
  call void @_ZdlPv(ptr noundef nonnull %i.bnz) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1057, %bb.nd
  store ptr %i.bok, ptr %i.bnp, align 8, !tbaa !158
  store ptr %i.bpg, ptr %i.bnt, align 8, !tbaa !161
  %i.bph = getelementptr inbounds nuw [8 x i8], ptr %i.bok, i64 %i.boi
  store ptr %i.bph, ptr %i.bnv, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1066

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1066: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1063.thread
  %i.bpi = load ptr, ptr %129, align 8, !tbaa !25 ; 2 uses
  %i.bpj = icmp eq ptr %i.bpi, %i.bnq
  br i1 %i.bpj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1066
  call void @_ZdlPv(ptr noundef %i.bpi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1066, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1067
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #25
  %i.bpk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1070 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1070:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1069
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #25
  %i.bpm = getelementptr inbounds nuw i8, ptr %131, i64 16 ; 4 uses
  store ptr %i.bpm, ptr %131, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bpm, ptr noundef nonnull align 1 dereferenceable(3) @.str.166, i64 3, i1 false)
  %i.bpn = getelementptr inbounds nuw i8, ptr %131, i64 8
  store i64 3, ptr %i.bpn, align 8, !tbaa !16
  %i.bpo = getelementptr inbounds nuw i8, ptr %131, i64 19
  store i8 0, ptr %i.bpo, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %130, ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(32) %131)
          to label %bb.ne unwind label %bb.pu

bb.ne:                                            ; preds = %._crit_edge.i.i1070
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bpk, i64 128 ; 3 uses
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !161 ; 6 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpk, i64 136 ; 2 uses
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !206
  %.not.i.i1074 = icmp eq ptr %i.bpq, %i.bps
  br i1 %.not.i.i1074, label %bb.nf, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089.thread: ; preds = %bb.ne
  %i.bpt = load i64, ptr %130, align 8, !tbaa !124
  store i64 %i.bpt, ptr %i.bpq, align 8, !tbaa !124
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpq, i64 8
  store ptr %i.bpu, ptr %i.bpp, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1092

bb.nf:                                            ; preds = %bb.ne
  %i.bpv = load ptr, ptr %i.bpl, align 8, !tbaa !158 ; 10 uses
  %i.bpw = ptrtoint ptr %i.bpq to i64             ; 3 uses
  %i.bpx = ptrtoint ptr %i.bpv to i64             ; 3 uses
  %i.bpy = sub i64 %i.bpw, %i.bpx                 ; 3 uses
  %i.bpz = icmp eq i64 %i.bpy, 9223372036854775800
  br i1 %i.bpz, label %bb.ng, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1075

bb.ng:                                            ; preds = %bb.nf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1087 unwind label %bb.pv

.noexc1087:                                       ; preds = %bb.ng
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1075: ; preds = %bb.nf
  %i.bqa = ashr exact i64 %i.bpy, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1076 = call i64 @llvm.umax.i64(i64 %i.bqa, i64 1)
  %i.bqb = add nsw i64 %.sroa.speculated.i.i.i.i1076, %i.bqa ; 2 uses
  %i.bqc = icmp ult i64 %i.bqb, %i.bqa
  %i.bqd = call i64 @llvm.umin.i64(i64 %i.bqb, i64 1152921504606846975)
  %i.bqe = select i1 %i.bqc, i64 1152921504606846975, i64 %i.bqd ; 3 uses
  %.not.i.i.i.i1077 = icmp ne i64 %i.bqe, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1077)
  %i.bqf = shl nuw nsw i64 %i.bqe, 3
  %i.bqg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bqf) #26
          to label %.noexc1088 unwind label %bb.pv ; 10 uses

.noexc1088:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1075
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqg, i64 %i.bpy
  %i.bqi = load i64, ptr %130, align 8, !tbaa !124
  store i64 %i.bqi, ptr %i.bqh, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1078 = icmp eq ptr %i.bpv, %i.bpq
  br i1 %.not10.i.i.i.i.i.i.i1078, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1083, label %.lr.ph.i.i.i.i.i.i.i1079.preheader

.lr.ph.i.i.i.i.i.i.i1079.preheader:               ; preds = %.noexc1088
  %i.bqj = sub i64 %i.bpw, %i.bpx
  %i.bqk = add i64 %i.bqj, -8                     ; 2 uses
  %i.bql = lshr i64 %i.bqk, 3
  %i.bqm = add nuw nsw i64 %i.bql, 1              ; 2 uses
  %min.iters.check7517 = icmp ult i64 %i.bqk, 152
  br i1 %min.iters.check7517, label %.lr.ph.i.i.i.i.i.i.i1079.preheader7675, label %vector.memcheck7510

vector.memcheck7510:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1079.preheader
  %i.bqn = add i64 %i.bpw, -8
  %i.bqo = sub i64 %i.bqn, %i.bpx
  %i.bqp = and i64 %i.bqo, -8
  %i.bqq = add i64 %i.bqp, 8                      ; 2 uses
  %scevgep7511 = getelementptr i8, ptr %i.bqg, i64 %i.bqq
  %scevgep7512 = getelementptr i8, ptr %i.bpv, i64 %i.bqq
  %bound07513 = icmp ult ptr %i.bqg, %scevgep7512
  %bound17514 = icmp ult ptr %i.bpv, %scevgep7511
  %found.conflict7515 = and i1 %bound07513, %bound17514
  br i1 %found.conflict7515, label %.lr.ph.i.i.i.i.i.i.i1079.preheader7675, label %vector.ph7518

vector.ph7518:                                    ; preds = %vector.memcheck7510
  %n.vec7520 = and i64 %i.bqm, 4611686018427387900 ; 3 uses
  %i.bqr = shl i64 %n.vec7520, 3                  ; 2 uses
  %i.bqs = getelementptr i8, ptr %i.bqg, i64 %i.bqr ; 2 uses
  %i.bqt = getelementptr i8, ptr %i.bpv, i64 %i.bqr
  br label %vector.body7521

vector.body7521:                                  ; preds = %vector.body7521, %vector.ph7518
  %index7522 = phi i64 [ 0, %vector.ph7518 ], [ %index.next7527, %vector.body7521 ] ; 2 uses
  %i.bqu = shl i64 %index7522, 3                  ; 2 uses
  %next.gep7523 = getelementptr i8, ptr %i.bqg, i64 %i.bqu ; 2 uses
  %next.gep7524 = getelementptr i8, ptr %i.bpv, i64 %i.bqu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3087)
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.bqv = getelementptr i8, ptr %next.gep7524, i64 16
  %wide.load7525 = load <2 x i64>, ptr %next.gep7524, align 8, !tbaa !124, !alias.scope !3092, !noalias !3087
  %wide.load7526 = load <2 x i64>, ptr %i.bqv, align 8, !tbaa !124, !alias.scope !3092, !noalias !3087
  %i.bqw = getelementptr i8, ptr %next.gep7523, i64 16
  store <2 x i64> %wide.load7525, ptr %next.gep7523, align 8, !tbaa !124, !alias.scope !3095, !noalias !3092
  store <2 x i64> %wide.load7526, ptr %i.bqw, align 8, !tbaa !124, !alias.scope !3095, !noalias !3092
  %i.bqx = getelementptr i8, ptr %next.gep7524, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7524, align 8, !tbaa !124, !alias.scope !3092, !noalias !3087
  store <2 x ptr> splat (ptr null), ptr %i.bqx, align 8, !tbaa !124, !alias.scope !3092, !noalias !3087
  %index.next7527 = add nuw i64 %index7522, 4     ; 2 uses
  %i.bqy = icmp eq i64 %index.next7527, %n.vec7520
  br i1 %i.bqy, label %middle.block7528, label %vector.body7521, !llvm.loop !3097

middle.block7528:                                 ; preds = %vector.body7521
  %cmp.n7529 = icmp eq i64 %i.bqm, %n.vec7520
  br i1 %cmp.n7529, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1083, label %.lr.ph.i.i.i.i.i.i.i1079.preheader7675

.lr.ph.i.i.i.i.i.i.i1079.preheader7675:           ; preds = %vector.memcheck7510, %.lr.ph.i.i.i.i.i.i.i1079.preheader, %middle.block7528
  %.012.i.i.i.i.i.i.i1080.ph = phi ptr [ %i.bqg, %vector.memcheck7510 ], [ %i.bqg, %.lr.ph.i.i.i.i.i.i.i1079.preheader ], [ %i.bqs, %middle.block7528 ]
  %.0911.i.i.i.i.i.i.i1081.ph = phi ptr [ %i.bpv, %vector.memcheck7510 ], [ %i.bpv, %.lr.ph.i.i.i.i.i.i.i1079.preheader ], [ %i.bqt, %middle.block7528 ]
  br label %.lr.ph.i.i.i.i.i.i.i1079

.lr.ph.i.i.i.i.i.i.i1079:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1079.preheader7675, %.lr.ph.i.i.i.i.i.i.i1079
  %.012.i.i.i.i.i.i.i1080 = phi ptr [ %i.brb, %.lr.ph.i.i.i.i.i.i.i1079 ], [ %.012.i.i.i.i.i.i.i1080.ph, %.lr.ph.i.i.i.i.i.i.i1079.preheader7675 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1081 = phi ptr [ %i.bra, %.lr.ph.i.i.i.i.i.i.i1079 ], [ %.0911.i.i.i.i.i.i.i1081.ph, %.lr.ph.i.i.i.i.i.i.i1079.preheader7675 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3087)
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.bqz = load i64, ptr %.0911.i.i.i.i.i.i.i1081, align 8, !tbaa !124, !alias.scope !3090, !noalias !3087
  store i64 %i.bqz, ptr %.012.i.i.i.i.i.i.i1080, align 8, !tbaa !124, !alias.scope !3087, !noalias !3090
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1081, align 8, !tbaa !124, !alias.scope !3090, !noalias !3087
  %i.bra = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1081, i64 8 ; 2 uses
  %i.brb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1080, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1082 = icmp eq ptr %i.bra, %i.bpq
  br i1 %.not.i.i.i.i.i.i.i1082, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1083, label %.lr.ph.i.i.i.i.i.i.i1079, !llvm.loop !3098

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1083: ; preds = %.lr.ph.i.i.i.i.i.i.i1079, %middle.block7528, %.noexc1088
  %.0.lcssa.i.i.i.i.i.i.i1084 = phi ptr [ %i.bqg, %.noexc1088 ], [ %i.bqs, %middle.block7528 ], [ %i.brb, %.lr.ph.i.i.i.i.i.i.i1079 ]
  %i.brc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1084, i64 8
  %.not.i23.i.i.i1085 = icmp eq ptr %i.bpv, null
  br i1 %.not.i23.i.i.i1085, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089, label %bb.nh

bb.nh:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1083
  call void @_ZdlPv(ptr noundef nonnull %i.bpv) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1083, %bb.nh
  store ptr %i.bqg, ptr %i.bpl, align 8, !tbaa !158
  store ptr %i.brc, ptr %i.bpp, align 8, !tbaa !161
  %i.brd = getelementptr inbounds nuw [8 x i8], ptr %i.bqg, i64 %i.bqe
  store ptr %i.brd, ptr %i.bpr, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1092

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1092: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1089.thread
  %i.bre = load ptr, ptr %131, align 8, !tbaa !25 ; 2 uses
  %i.brf = icmp eq ptr %i.bre, %i.bpm
  br i1 %i.brf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1092
  call void @_ZdlPv(ptr noundef %i.bre) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1092, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #25
  %i.brg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1096 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1096:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %132) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #25
  %i.bri = getelementptr inbounds nuw i8, ptr %133, i64 16 ; 4 uses
  store ptr %i.bri, ptr %133, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bri, ptr noundef nonnull align 1 dereferenceable(3) @.str.173, i64 3, i1 false)
  %i.brj = getelementptr inbounds nuw i8, ptr %133, i64 8
  store i64 3, ptr %i.brj, align 8, !tbaa !16
  %i.brk = getelementptr inbounds nuw i8, ptr %133, i64 19
  store i8 0, ptr %i.brk, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %132, ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(32) %133)
          to label %bb.ni unwind label %bb.pw

bb.ni:                                            ; preds = %._crit_edge.i.i1096
  %i.brl = getelementptr inbounds nuw i8, ptr %i.brg, i64 128 ; 3 uses
  %i.brm = load ptr, ptr %i.brl, align 8, !tbaa !161 ; 6 uses
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brg, i64 136 ; 2 uses
  %i.bro = load ptr, ptr %i.brn, align 8, !tbaa !206
  %.not.i.i1100 = icmp eq ptr %i.brm, %i.bro
  br i1 %.not.i.i1100, label %bb.nj, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115.thread: ; preds = %bb.ni
  %i.brp = load i64, ptr %132, align 8, !tbaa !124
  store i64 %i.brp, ptr %i.brm, align 8, !tbaa !124
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brm, i64 8
  store ptr %i.brq, ptr %i.brl, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1118

bb.nj:                                            ; preds = %bb.ni
  %i.brr = load ptr, ptr %i.brh, align 8, !tbaa !158 ; 10 uses
  %i.brs = ptrtoint ptr %i.brm to i64             ; 3 uses
  %i.brt = ptrtoint ptr %i.brr to i64             ; 3 uses
  %i.bru = sub i64 %i.brs, %i.brt                 ; 3 uses
  %i.brv = icmp eq i64 %i.bru, 9223372036854775800
  br i1 %i.brv, label %bb.nk, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1101

bb.nk:                                            ; preds = %bb.nj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1113 unwind label %bb.px

.noexc1113:                                       ; preds = %bb.nk
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1101: ; preds = %bb.nj
  %i.brw = ashr exact i64 %i.bru, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1102 = call i64 @llvm.umax.i64(i64 %i.brw, i64 1)
  %i.brx = add nsw i64 %.sroa.speculated.i.i.i.i1102, %i.brw ; 2 uses
  %i.bry = icmp ult i64 %i.brx, %i.brw
  %i.brz = call i64 @llvm.umin.i64(i64 %i.brx, i64 1152921504606846975)
  %i.bsa = select i1 %i.bry, i64 1152921504606846975, i64 %i.brz ; 3 uses
  %.not.i.i.i.i1103 = icmp ne i64 %i.bsa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1103)
  %i.bsb = shl nuw nsw i64 %i.bsa, 3
  %i.bsc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bsb) #26
          to label %.noexc1114 unwind label %bb.px ; 10 uses

.noexc1114:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1101
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 %i.bru
  %i.bse = load i64, ptr %132, align 8, !tbaa !124
  store i64 %i.bse, ptr %i.bsd, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1104 = icmp eq ptr %i.brr, %i.brm
  br i1 %.not10.i.i.i.i.i.i.i1104, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1109, label %.lr.ph.i.i.i.i.i.i.i1105.preheader

.lr.ph.i.i.i.i.i.i.i1105.preheader:               ; preds = %.noexc1114
  %i.bsf = sub i64 %i.brs, %i.brt
  %i.bsg = add i64 %i.bsf, -8                     ; 2 uses
  %i.bsh = lshr i64 %i.bsg, 3
  %i.bsi = add nuw nsw i64 %i.bsh, 1              ; 2 uses
  %min.iters.check7539 = icmp ult i64 %i.bsg, 152
  br i1 %min.iters.check7539, label %.lr.ph.i.i.i.i.i.i.i1105.preheader7673, label %vector.memcheck7532

vector.memcheck7532:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1105.preheader
  %i.bsj = add i64 %i.brs, -8
  %i.bsk = sub i64 %i.bsj, %i.brt
  %i.bsl = and i64 %i.bsk, -8
  %i.bsm = add i64 %i.bsl, 8                      ; 2 uses
  %scevgep7533 = getelementptr i8, ptr %i.bsc, i64 %i.bsm
  %scevgep7534 = getelementptr i8, ptr %i.brr, i64 %i.bsm
  %bound07535 = icmp ult ptr %i.bsc, %scevgep7534
  %bound17536 = icmp ult ptr %i.brr, %scevgep7533
  %found.conflict7537 = and i1 %bound07535, %bound17536
  br i1 %found.conflict7537, label %.lr.ph.i.i.i.i.i.i.i1105.preheader7673, label %vector.ph7540

vector.ph7540:                                    ; preds = %vector.memcheck7532
  %n.vec7542 = and i64 %i.bsi, 4611686018427387900 ; 3 uses
  %i.bsn = shl i64 %n.vec7542, 3                  ; 2 uses
  %i.bso = getelementptr i8, ptr %i.bsc, i64 %i.bsn ; 2 uses
  %i.bsp = getelementptr i8, ptr %i.brr, i64 %i.bsn
  br label %vector.body7543

vector.body7543:                                  ; preds = %vector.body7543, %vector.ph7540
  %index7544 = phi i64 [ 0, %vector.ph7540 ], [ %index.next7549, %vector.body7543 ] ; 2 uses
  %i.bsq = shl i64 %index7544, 3                  ; 2 uses
  %next.gep7545 = getelementptr i8, ptr %i.bsc, i64 %i.bsq ; 2 uses
  %next.gep7546 = getelementptr i8, ptr %i.brr, i64 %i.bsq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  %i.bsr = getelementptr i8, ptr %next.gep7546, i64 16
  %wide.load7547 = load <2 x i64>, ptr %next.gep7546, align 8, !tbaa !124, !alias.scope !3104, !noalias !3099
  %wide.load7548 = load <2 x i64>, ptr %i.bsr, align 8, !tbaa !124, !alias.scope !3104, !noalias !3099
  %i.bss = getelementptr i8, ptr %next.gep7545, i64 16
  store <2 x i64> %wide.load7547, ptr %next.gep7545, align 8, !tbaa !124, !alias.scope !3107, !noalias !3104
  store <2 x i64> %wide.load7548, ptr %i.bss, align 8, !tbaa !124, !alias.scope !3107, !noalias !3104
  %i.bst = getelementptr i8, ptr %next.gep7546, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7546, align 8, !tbaa !124, !alias.scope !3104, !noalias !3099
  store <2 x ptr> splat (ptr null), ptr %i.bst, align 8, !tbaa !124, !alias.scope !3104, !noalias !3099
  %index.next7549 = add nuw i64 %index7544, 4     ; 2 uses
  %i.bsu = icmp eq i64 %index.next7549, %n.vec7542
  br i1 %i.bsu, label %middle.block7550, label %vector.body7543, !llvm.loop !3109

middle.block7550:                                 ; preds = %vector.body7543
  %cmp.n7551 = icmp eq i64 %i.bsi, %n.vec7542
  br i1 %cmp.n7551, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1109, label %.lr.ph.i.i.i.i.i.i.i1105.preheader7673

.lr.ph.i.i.i.i.i.i.i1105.preheader7673:           ; preds = %vector.memcheck7532, %.lr.ph.i.i.i.i.i.i.i1105.preheader, %middle.block7550
  %.012.i.i.i.i.i.i.i1106.ph = phi ptr [ %i.bsc, %vector.memcheck7532 ], [ %i.bsc, %.lr.ph.i.i.i.i.i.i.i1105.preheader ], [ %i.bso, %middle.block7550 ]
  %.0911.i.i.i.i.i.i.i1107.ph = phi ptr [ %i.brr, %vector.memcheck7532 ], [ %i.brr, %.lr.ph.i.i.i.i.i.i.i1105.preheader ], [ %i.bsp, %middle.block7550 ]
  br label %.lr.ph.i.i.i.i.i.i.i1105

.lr.ph.i.i.i.i.i.i.i1105:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1105.preheader7673, %.lr.ph.i.i.i.i.i.i.i1105
  %.012.i.i.i.i.i.i.i1106 = phi ptr [ %i.bsx, %.lr.ph.i.i.i.i.i.i.i1105 ], [ %.012.i.i.i.i.i.i.i1106.ph, %.lr.ph.i.i.i.i.i.i.i1105.preheader7673 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1107 = phi ptr [ %i.bsw, %.lr.ph.i.i.i.i.i.i.i1105 ], [ %.0911.i.i.i.i.i.i.i1107.ph, %.lr.ph.i.i.i.i.i.i.i1105.preheader7673 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  %i.bsv = load i64, ptr %.0911.i.i.i.i.i.i.i1107, align 8, !tbaa !124, !alias.scope !3102, !noalias !3099
  store i64 %i.bsv, ptr %.012.i.i.i.i.i.i.i1106, align 8, !tbaa !124, !alias.scope !3099, !noalias !3102
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1107, align 8, !tbaa !124, !alias.scope !3102, !noalias !3099
  %i.bsw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1107, i64 8 ; 2 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1106, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1108 = icmp eq ptr %i.bsw, %i.brm
  br i1 %.not.i.i.i.i.i.i.i1108, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1109, label %.lr.ph.i.i.i.i.i.i.i1105, !llvm.loop !3110

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1109: ; preds = %.lr.ph.i.i.i.i.i.i.i1105, %middle.block7550, %.noexc1114
  %.0.lcssa.i.i.i.i.i.i.i1110 = phi ptr [ %i.bsc, %.noexc1114 ], [ %i.bso, %middle.block7550 ], [ %i.bsx, %.lr.ph.i.i.i.i.i.i.i1105 ]
  %i.bsy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1110, i64 8
  %.not.i23.i.i.i1111 = icmp eq ptr %i.brr, null
  br i1 %.not.i23.i.i.i1111, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115, label %bb.nl

bb.nl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1109
  call void @_ZdlPv(ptr noundef nonnull %i.brr) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1109, %bb.nl
  store ptr %i.bsc, ptr %i.brh, align 8, !tbaa !158
  store ptr %i.bsy, ptr %i.brl, align 8, !tbaa !161
  %i.bsz = getelementptr inbounds nuw [8 x i8], ptr %i.bsc, i64 %i.bsa
  store ptr %i.bsz, ptr %i.brn, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1118

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1118: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1115.thread
  %i.bta = load ptr, ptr %133, align 8, !tbaa !25 ; 2 uses
  %i.btb = icmp eq ptr %i.bta, %i.bri
  br i1 %i.btb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1119: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1118
  call void @_ZdlPv(ptr noundef %i.bta) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1121: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1119
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #25
  %i.btc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1122 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1122:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1121
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #25
  %i.bte = getelementptr inbounds nuw i8, ptr %135, i64 16 ; 4 uses
  store ptr %i.bte, ptr %135, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bte, ptr noundef nonnull align 1 dereferenceable(3) @.str.174, i64 3, i1 false)
  %i.btf = getelementptr inbounds nuw i8, ptr %135, i64 8
  store i64 3, ptr %i.btf, align 8, !tbaa !16
  %i.btg = getelementptr inbounds nuw i8, ptr %135, i64 19
  store i8 0, ptr %i.btg, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %134, ptr noundef nonnull align 8 dereferenceable(24) %70, ptr noundef nonnull align 8 dereferenceable(32) %135)
          to label %bb.nm unwind label %bb.py

bb.nm:                                            ; preds = %._crit_edge.i.i1122
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btc, i64 128 ; 3 uses
  %i.bti = load ptr, ptr %i.bth, align 8, !tbaa !161 ; 6 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btc, i64 136 ; 2 uses
  %i.btk = load ptr, ptr %i.btj, align 8, !tbaa !206
  %.not.i.i1126 = icmp eq ptr %i.bti, %i.btk
  br i1 %.not.i.i1126, label %bb.nn, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141.thread: ; preds = %bb.nm
  %i.btl = load i64, ptr %134, align 8, !tbaa !124
  store i64 %i.btl, ptr %i.bti, align 8, !tbaa !124
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bti, i64 8
  store ptr %i.btm, ptr %i.bth, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1144

bb.nn:                                            ; preds = %bb.nm
  %i.btn = load ptr, ptr %i.btd, align 8, !tbaa !158 ; 10 uses
  %i.bto = ptrtoint ptr %i.bti to i64             ; 3 uses
  %i.btp = ptrtoint ptr %i.btn to i64             ; 3 uses
  %i.btq = sub i64 %i.bto, %i.btp                 ; 3 uses
  %i.btr = icmp eq i64 %i.btq, 9223372036854775800
  br i1 %i.btr, label %bb.no, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1127

bb.no:                                            ; preds = %bb.nn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1139 unwind label %bb.pz

.noexc1139:                                       ; preds = %bb.no
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1127: ; preds = %bb.nn
  %i.bts = ashr exact i64 %i.btq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1128 = call i64 @llvm.umax.i64(i64 %i.bts, i64 1)
  %i.btt = add nsw i64 %.sroa.speculated.i.i.i.i1128, %i.bts ; 2 uses
  %i.btu = icmp ult i64 %i.btt, %i.bts
  %i.btv = call i64 @llvm.umin.i64(i64 %i.btt, i64 1152921504606846975)
  %i.btw = select i1 %i.btu, i64 1152921504606846975, i64 %i.btv ; 3 uses
  %.not.i.i.i.i1129 = icmp ne i64 %i.btw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1129)
  %i.btx = shl nuw nsw i64 %i.btw, 3
  %i.bty = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.btx) #26
          to label %.noexc1140 unwind label %bb.pz ; 10 uses

.noexc1140:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1127
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bty, i64 %i.btq
  %i.bua = load i64, ptr %134, align 8, !tbaa !124
  store i64 %i.bua, ptr %i.btz, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1130 = icmp eq ptr %i.btn, %i.bti
  br i1 %.not10.i.i.i.i.i.i.i1130, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1135, label %.lr.ph.i.i.i.i.i.i.i1131.preheader

.lr.ph.i.i.i.i.i.i.i1131.preheader:               ; preds = %.noexc1140
  %i.bub = sub i64 %i.bto, %i.btp
  %i.buc = add i64 %i.bub, -8                     ; 2 uses
  %i.bud = lshr i64 %i.buc, 3
  %i.bue = add nuw nsw i64 %i.bud, 1              ; 2 uses
  %min.iters.check7561 = icmp ult i64 %i.buc, 152
  br i1 %min.iters.check7561, label %.lr.ph.i.i.i.i.i.i.i1131.preheader7671, label %vector.memcheck7554

vector.memcheck7554:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1131.preheader
  %i.buf = add i64 %i.bto, -8
  %i.bug = sub i64 %i.buf, %i.btp
  %i.buh = and i64 %i.bug, -8
  %i.bui = add i64 %i.buh, 8                      ; 2 uses
  %scevgep7555 = getelementptr i8, ptr %i.bty, i64 %i.bui
  %scevgep7556 = getelementptr i8, ptr %i.btn, i64 %i.bui
  %bound07557 = icmp ult ptr %i.bty, %scevgep7556
  %bound17558 = icmp ult ptr %i.btn, %scevgep7555
  %found.conflict7559 = and i1 %bound07557, %bound17558
  br i1 %found.conflict7559, label %.lr.ph.i.i.i.i.i.i.i1131.preheader7671, label %vector.ph7562

vector.ph7562:                                    ; preds = %vector.memcheck7554
  %n.vec7564 = and i64 %i.bue, 4611686018427387900 ; 3 uses
  %i.buj = shl i64 %n.vec7564, 3                  ; 2 uses
  %i.buk = getelementptr i8, ptr %i.bty, i64 %i.buj ; 2 uses
  %i.bul = getelementptr i8, ptr %i.btn, i64 %i.buj
  br label %vector.body7565

vector.body7565:                                  ; preds = %vector.body7565, %vector.ph7562
  %index7566 = phi i64 [ 0, %vector.ph7562 ], [ %index.next7571, %vector.body7565 ] ; 2 uses
  %i.bum = shl i64 %index7566, 3                  ; 2 uses
  %next.gep7567 = getelementptr i8, ptr %i.bty, i64 %i.bum ; 2 uses
  %next.gep7568 = getelementptr i8, ptr %i.btn, i64 %i.bum ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  %i.bun = getelementptr i8, ptr %next.gep7568, i64 16
  %wide.load7569 = load <2 x i64>, ptr %next.gep7568, align 8, !tbaa !124, !alias.scope !3116, !noalias !3111
  %wide.load7570 = load <2 x i64>, ptr %i.bun, align 8, !tbaa !124, !alias.scope !3116, !noalias !3111
  %i.buo = getelementptr i8, ptr %next.gep7567, i64 16
  store <2 x i64> %wide.load7569, ptr %next.gep7567, align 8, !tbaa !124, !alias.scope !3119, !noalias !3116
  store <2 x i64> %wide.load7570, ptr %i.buo, align 8, !tbaa !124, !alias.scope !3119, !noalias !3116
  %i.bup = getelementptr i8, ptr %next.gep7568, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7568, align 8, !tbaa !124, !alias.scope !3116, !noalias !3111
  store <2 x ptr> splat (ptr null), ptr %i.bup, align 8, !tbaa !124, !alias.scope !3116, !noalias !3111
  %index.next7571 = add nuw i64 %index7566, 4     ; 2 uses
  %i.buq = icmp eq i64 %index.next7571, %n.vec7564
  br i1 %i.buq, label %middle.block7572, label %vector.body7565, !llvm.loop !3121

middle.block7572:                                 ; preds = %vector.body7565
  %cmp.n7573 = icmp eq i64 %i.bue, %n.vec7564
  br i1 %cmp.n7573, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1135, label %.lr.ph.i.i.i.i.i.i.i1131.preheader7671

.lr.ph.i.i.i.i.i.i.i1131.preheader7671:           ; preds = %vector.memcheck7554, %.lr.ph.i.i.i.i.i.i.i1131.preheader, %middle.block7572
  %.012.i.i.i.i.i.i.i1132.ph = phi ptr [ %i.bty, %vector.memcheck7554 ], [ %i.bty, %.lr.ph.i.i.i.i.i.i.i1131.preheader ], [ %i.buk, %middle.block7572 ]
  %.0911.i.i.i.i.i.i.i1133.ph = phi ptr [ %i.btn, %vector.memcheck7554 ], [ %i.btn, %.lr.ph.i.i.i.i.i.i.i1131.preheader ], [ %i.bul, %middle.block7572 ]
  br label %.lr.ph.i.i.i.i.i.i.i1131

.lr.ph.i.i.i.i.i.i.i1131:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1131.preheader7671, %.lr.ph.i.i.i.i.i.i.i1131
  %.012.i.i.i.i.i.i.i1132 = phi ptr [ %i.but, %.lr.ph.i.i.i.i.i.i.i1131 ], [ %.012.i.i.i.i.i.i.i1132.ph, %.lr.ph.i.i.i.i.i.i.i1131.preheader7671 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1133 = phi ptr [ %i.bus, %.lr.ph.i.i.i.i.i.i.i1131 ], [ %.0911.i.i.i.i.i.i.i1133.ph, %.lr.ph.i.i.i.i.i.i.i1131.preheader7671 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  %i.bur = load i64, ptr %.0911.i.i.i.i.i.i.i1133, align 8, !tbaa !124, !alias.scope !3114, !noalias !3111
  store i64 %i.bur, ptr %.012.i.i.i.i.i.i.i1132, align 8, !tbaa !124, !alias.scope !3111, !noalias !3114
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1133, align 8, !tbaa !124, !alias.scope !3114, !noalias !3111
  %i.bus = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1133, i64 8 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1132, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1134 = icmp eq ptr %i.bus, %i.bti
  br i1 %.not.i.i.i.i.i.i.i1134, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1135, label %.lr.ph.i.i.i.i.i.i.i1131, !llvm.loop !3122

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1135: ; preds = %.lr.ph.i.i.i.i.i.i.i1131, %middle.block7572, %.noexc1140
  %.0.lcssa.i.i.i.i.i.i.i1136 = phi ptr [ %i.bty, %.noexc1140 ], [ %i.buk, %middle.block7572 ], [ %i.but, %.lr.ph.i.i.i.i.i.i.i1131 ]
  %i.buu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1136, i64 8
  %.not.i23.i.i.i1137 = icmp eq ptr %i.btn, null
  br i1 %.not.i23.i.i.i1137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141, label %bb.np

bb.np:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1135
  call void @_ZdlPv(ptr noundef nonnull %i.btn) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1135, %bb.np
  store ptr %i.bty, ptr %i.btd, align 8, !tbaa !158
  store ptr %i.buu, ptr %i.bth, align 8, !tbaa !161
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %i.bty, i64 %i.btw
  store ptr %i.buv, ptr %i.btj, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1144

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1144: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1141.thread
  %i.buw = load ptr, ptr %135, align 8, !tbaa !25 ; 2 uses
  %i.bux = icmp eq ptr %i.buw, %i.bte
  br i1 %i.bux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1145: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1144
  call void @_ZdlPv(ptr noundef %i.buw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1144, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1145
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #25
  %i.buy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1148 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1148:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1147
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buy, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %136) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %137) #25
  %i.bva = getelementptr inbounds nuw i8, ptr %137, i64 16 ; 4 uses
  store ptr %i.bva, ptr %137, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bva, ptr noundef nonnull align 1 dereferenceable(3) @.str.175, i64 3, i1 false)
  %i.bvb = getelementptr inbounds nuw i8, ptr %137, i64 8
  store i64 3, ptr %i.bvb, align 8, !tbaa !16
  %i.bvc = getelementptr inbounds nuw i8, ptr %137, i64 19
  store i8 0, ptr %i.bvc, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %136, ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(32) %137)
          to label %bb.nq unwind label %bb.qa

bb.nq:                                            ; preds = %._crit_edge.i.i1148
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.buy, i64 128 ; 3 uses
  %i.bve = load ptr, ptr %i.bvd, align 8, !tbaa !161 ; 6 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.buy, i64 136 ; 2 uses
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !206
  %.not.i.i1152 = icmp eq ptr %i.bve, %i.bvg
  br i1 %.not.i.i1152, label %bb.nr, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167.thread: ; preds = %bb.nq
  %i.bvh = load i64, ptr %136, align 8, !tbaa !124
  store i64 %i.bvh, ptr %i.bve, align 8, !tbaa !124
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bve, i64 8
  store ptr %i.bvi, ptr %i.bvd, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1170

bb.nr:                                            ; preds = %bb.nq
  %i.bvj = load ptr, ptr %i.buz, align 8, !tbaa !158 ; 10 uses
  %i.bvk = ptrtoint ptr %i.bve to i64             ; 3 uses
  %i.bvl = ptrtoint ptr %i.bvj to i64             ; 3 uses
  %i.bvm = sub i64 %i.bvk, %i.bvl                 ; 3 uses
  %i.bvn = icmp eq i64 %i.bvm, 9223372036854775800
  br i1 %i.bvn, label %bb.ns, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1153

bb.ns:                                            ; preds = %bb.nr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1165 unwind label %bb.qb

.noexc1165:                                       ; preds = %bb.ns
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1153: ; preds = %bb.nr
  %i.bvo = ashr exact i64 %i.bvm, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1154 = call i64 @llvm.umax.i64(i64 %i.bvo, i64 1)
  %i.bvp = add nsw i64 %.sroa.speculated.i.i.i.i1154, %i.bvo ; 2 uses
  %i.bvq = icmp ult i64 %i.bvp, %i.bvo
  %i.bvr = call i64 @llvm.umin.i64(i64 %i.bvp, i64 1152921504606846975)
  %i.bvs = select i1 %i.bvq, i64 1152921504606846975, i64 %i.bvr ; 3 uses
  %.not.i.i.i.i1155 = icmp ne i64 %i.bvs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1155)
  %i.bvt = shl nuw nsw i64 %i.bvs, 3
  %i.bvu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bvt) #26
          to label %.noexc1166 unwind label %bb.qb ; 10 uses

.noexc1166:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1153
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 %i.bvm
  %i.bvw = load i64, ptr %136, align 8, !tbaa !124
  store i64 %i.bvw, ptr %i.bvv, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1156 = icmp eq ptr %i.bvj, %i.bve
  br i1 %.not10.i.i.i.i.i.i.i1156, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1161, label %.lr.ph.i.i.i.i.i.i.i1157.preheader

.lr.ph.i.i.i.i.i.i.i1157.preheader:               ; preds = %.noexc1166
  %i.bvx = sub i64 %i.bvk, %i.bvl
  %i.bvy = add i64 %i.bvx, -8                     ; 2 uses
  %i.bvz = lshr i64 %i.bvy, 3
  %i.bwa = add nuw nsw i64 %i.bvz, 1              ; 2 uses
  %min.iters.check7583 = icmp ult i64 %i.bvy, 152
  br i1 %min.iters.check7583, label %.lr.ph.i.i.i.i.i.i.i1157.preheader7669, label %vector.memcheck7576

vector.memcheck7576:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1157.preheader
  %i.bwb = add i64 %i.bvk, -8
  %i.bwc = sub i64 %i.bwb, %i.bvl
  %i.bwd = and i64 %i.bwc, -8
  %i.bwe = add i64 %i.bwd, 8                      ; 2 uses
  %scevgep7577 = getelementptr i8, ptr %i.bvu, i64 %i.bwe
  %scevgep7578 = getelementptr i8, ptr %i.bvj, i64 %i.bwe
  %bound07579 = icmp ult ptr %i.bvu, %scevgep7578
  %bound17580 = icmp ult ptr %i.bvj, %scevgep7577
  %found.conflict7581 = and i1 %bound07579, %bound17580
  br i1 %found.conflict7581, label %.lr.ph.i.i.i.i.i.i.i1157.preheader7669, label %vector.ph7584

vector.ph7584:                                    ; preds = %vector.memcheck7576
  %n.vec7586 = and i64 %i.bwa, 4611686018427387900 ; 3 uses
  %i.bwf = shl i64 %n.vec7586, 3                  ; 2 uses
  %i.bwg = getelementptr i8, ptr %i.bvu, i64 %i.bwf ; 2 uses
  %i.bwh = getelementptr i8, ptr %i.bvj, i64 %i.bwf
  br label %vector.body7587

vector.body7587:                                  ; preds = %vector.body7587, %vector.ph7584
  %index7588 = phi i64 [ 0, %vector.ph7584 ], [ %index.next7593, %vector.body7587 ] ; 2 uses
  %i.bwi = shl i64 %index7588, 3                  ; 2 uses
  %next.gep7589 = getelementptr i8, ptr %i.bvu, i64 %i.bwi ; 2 uses
  %next.gep7590 = getelementptr i8, ptr %i.bvj, i64 %i.bwi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  %i.bwj = getelementptr i8, ptr %next.gep7590, i64 16
  %wide.load7591 = load <2 x i64>, ptr %next.gep7590, align 8, !tbaa !124, !alias.scope !3128, !noalias !3123
  %wide.load7592 = load <2 x i64>, ptr %i.bwj, align 8, !tbaa !124, !alias.scope !3128, !noalias !3123
  %i.bwk = getelementptr i8, ptr %next.gep7589, i64 16
  store <2 x i64> %wide.load7591, ptr %next.gep7589, align 8, !tbaa !124, !alias.scope !3131, !noalias !3128
  store <2 x i64> %wide.load7592, ptr %i.bwk, align 8, !tbaa !124, !alias.scope !3131, !noalias !3128
  %i.bwl = getelementptr i8, ptr %next.gep7590, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7590, align 8, !tbaa !124, !alias.scope !3128, !noalias !3123
  store <2 x ptr> splat (ptr null), ptr %i.bwl, align 8, !tbaa !124, !alias.scope !3128, !noalias !3123
  %index.next7593 = add nuw i64 %index7588, 4     ; 2 uses
  %i.bwm = icmp eq i64 %index.next7593, %n.vec7586
  br i1 %i.bwm, label %middle.block7594, label %vector.body7587, !llvm.loop !3133

middle.block7594:                                 ; preds = %vector.body7587
  %cmp.n7595 = icmp eq i64 %i.bwa, %n.vec7586
  br i1 %cmp.n7595, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1161, label %.lr.ph.i.i.i.i.i.i.i1157.preheader7669

.lr.ph.i.i.i.i.i.i.i1157.preheader7669:           ; preds = %vector.memcheck7576, %.lr.ph.i.i.i.i.i.i.i1157.preheader, %middle.block7594
  %.012.i.i.i.i.i.i.i1158.ph = phi ptr [ %i.bvu, %vector.memcheck7576 ], [ %i.bvu, %.lr.ph.i.i.i.i.i.i.i1157.preheader ], [ %i.bwg, %middle.block7594 ]
  %.0911.i.i.i.i.i.i.i1159.ph = phi ptr [ %i.bvj, %vector.memcheck7576 ], [ %i.bvj, %.lr.ph.i.i.i.i.i.i.i1157.preheader ], [ %i.bwh, %middle.block7594 ]
  br label %.lr.ph.i.i.i.i.i.i.i1157

.lr.ph.i.i.i.i.i.i.i1157:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1157.preheader7669, %.lr.ph.i.i.i.i.i.i.i1157
  %.012.i.i.i.i.i.i.i1158 = phi ptr [ %i.bwp, %.lr.ph.i.i.i.i.i.i.i1157 ], [ %.012.i.i.i.i.i.i.i1158.ph, %.lr.ph.i.i.i.i.i.i.i1157.preheader7669 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1159 = phi ptr [ %i.bwo, %.lr.ph.i.i.i.i.i.i.i1157 ], [ %.0911.i.i.i.i.i.i.i1159.ph, %.lr.ph.i.i.i.i.i.i.i1157.preheader7669 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3123)
  call void @llvm.experimental.noalias.scope.decl(metadata !3126)
  %i.bwn = load i64, ptr %.0911.i.i.i.i.i.i.i1159, align 8, !tbaa !124, !alias.scope !3126, !noalias !3123
  store i64 %i.bwn, ptr %.012.i.i.i.i.i.i.i1158, align 8, !tbaa !124, !alias.scope !3123, !noalias !3126
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1159, align 8, !tbaa !124, !alias.scope !3126, !noalias !3123
  %i.bwo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1159, i64 8 ; 2 uses
  %i.bwp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1158, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1160 = icmp eq ptr %i.bwo, %i.bve
  br i1 %.not.i.i.i.i.i.i.i1160, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1161, label %.lr.ph.i.i.i.i.i.i.i1157, !llvm.loop !3134

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1161: ; preds = %.lr.ph.i.i.i.i.i.i.i1157, %middle.block7594, %.noexc1166
  %.0.lcssa.i.i.i.i.i.i.i1162 = phi ptr [ %i.bvu, %.noexc1166 ], [ %i.bwg, %middle.block7594 ], [ %i.bwp, %.lr.ph.i.i.i.i.i.i.i1157 ]
  %i.bwq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1162, i64 8
  %.not.i23.i.i.i1163 = icmp eq ptr %i.bvj, null
  br i1 %.not.i23.i.i.i1163, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167, label %bb.nt

bb.nt:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1161
  call void @_ZdlPv(ptr noundef nonnull %i.bvj) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1161, %bb.nt
  store ptr %i.bvu, ptr %i.buz, align 8, !tbaa !158
  store ptr %i.bwq, ptr %i.bvd, align 8, !tbaa !161
  %i.bwr = getelementptr inbounds nuw [8 x i8], ptr %i.bvu, i64 %i.bvs
  store ptr %i.bwr, ptr %i.bvf, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1170

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1170: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1167.thread
  %i.bws = load ptr, ptr %137, align 8, !tbaa !25 ; 2 uses
  %i.bwt = icmp eq ptr %i.bws, %i.bva
  br i1 %i.bwt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1170
  call void @_ZdlPv(ptr noundef %i.bws) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1171
  call void @llvm.lifetime.end.p0(ptr nonnull %137) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #25
  %i.bwu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1174 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1174:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1173
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwu, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %138) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %139) #25
  %i.bww = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 4 uses
  store ptr %i.bww, ptr %139, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bww, ptr noundef nonnull align 1 dereferenceable(3) @.str.176, i64 3, i1 false)
  %i.bwx = getelementptr inbounds nuw i8, ptr %139, i64 8
  store i64 3, ptr %i.bwx, align 8, !tbaa !16
  %i.bwy = getelementptr inbounds nuw i8, ptr %139, i64 19
  store i8 0, ptr %i.bwy, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %138, ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(32) %139)
          to label %bb.nu unwind label %bb.qc

bb.nu:                                            ; preds = %._crit_edge.i.i1174
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwu, i64 128 ; 3 uses
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !161 ; 6 uses
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwu, i64 136 ; 2 uses
  %i.bxc = load ptr, ptr %i.bxb, align 8, !tbaa !206
  %.not.i.i1178 = icmp eq ptr %i.bxa, %i.bxc
  br i1 %.not.i.i1178, label %bb.nv, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193.thread: ; preds = %bb.nu
  %i.bxd = load i64, ptr %138, align 8, !tbaa !124
  store i64 %i.bxd, ptr %i.bxa, align 8, !tbaa !124
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxa, i64 8
  store ptr %i.bxe, ptr %i.bwz, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1196

bb.nv:                                            ; preds = %bb.nu
  %i.bxf = load ptr, ptr %i.bwv, align 8, !tbaa !158 ; 10 uses
  %i.bxg = ptrtoint ptr %i.bxa to i64             ; 3 uses
  %i.bxh = ptrtoint ptr %i.bxf to i64             ; 3 uses
  %i.bxi = sub i64 %i.bxg, %i.bxh                 ; 3 uses
  %i.bxj = icmp eq i64 %i.bxi, 9223372036854775800
  br i1 %i.bxj, label %bb.nw, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1179

bb.nw:                                            ; preds = %bb.nv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1191 unwind label %bb.qd

.noexc1191:                                       ; preds = %bb.nw
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1179: ; preds = %bb.nv
  %i.bxk = ashr exact i64 %i.bxi, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1180 = call i64 @llvm.umax.i64(i64 %i.bxk, i64 1)
  %i.bxl = add nsw i64 %.sroa.speculated.i.i.i.i1180, %i.bxk ; 2 uses
  %i.bxm = icmp ult i64 %i.bxl, %i.bxk
  %i.bxn = call i64 @llvm.umin.i64(i64 %i.bxl, i64 1152921504606846975)
  %i.bxo = select i1 %i.bxm, i64 1152921504606846975, i64 %i.bxn ; 3 uses
  %.not.i.i.i.i1181 = icmp ne i64 %i.bxo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1181)
  %i.bxp = shl nuw nsw i64 %i.bxo, 3
  %i.bxq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bxp) #26
          to label %.noexc1192 unwind label %bb.qd ; 10 uses

.noexc1192:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1179
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxq, i64 %i.bxi
  %i.bxs = load i64, ptr %138, align 8, !tbaa !124
  store i64 %i.bxs, ptr %i.bxr, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1182 = icmp eq ptr %i.bxf, %i.bxa
  br i1 %.not10.i.i.i.i.i.i.i1182, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1187, label %.lr.ph.i.i.i.i.i.i.i1183.preheader

.lr.ph.i.i.i.i.i.i.i1183.preheader:               ; preds = %.noexc1192
  %i.bxt = sub i64 %i.bxg, %i.bxh
  %i.bxu = add i64 %i.bxt, -8                     ; 2 uses
  %i.bxv = lshr i64 %i.bxu, 3
  %i.bxw = add nuw nsw i64 %i.bxv, 1              ; 2 uses
  %min.iters.check7605 = icmp ult i64 %i.bxu, 152
  br i1 %min.iters.check7605, label %.lr.ph.i.i.i.i.i.i.i1183.preheader7667, label %vector.memcheck7598

vector.memcheck7598:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1183.preheader
  %i.bxx = add i64 %i.bxg, -8
  %i.bxy = sub i64 %i.bxx, %i.bxh
  %i.bxz = and i64 %i.bxy, -8
  %i.bya = add i64 %i.bxz, 8                      ; 2 uses
  %scevgep7599 = getelementptr i8, ptr %i.bxq, i64 %i.bya
  %scevgep7600 = getelementptr i8, ptr %i.bxf, i64 %i.bya
  %bound07601 = icmp ult ptr %i.bxq, %scevgep7600
  %bound17602 = icmp ult ptr %i.bxf, %scevgep7599
  %found.conflict7603 = and i1 %bound07601, %bound17602
  br i1 %found.conflict7603, label %.lr.ph.i.i.i.i.i.i.i1183.preheader7667, label %vector.ph7606

vector.ph7606:                                    ; preds = %vector.memcheck7598
  %n.vec7608 = and i64 %i.bxw, 4611686018427387900 ; 3 uses
  %i.byb = shl i64 %n.vec7608, 3                  ; 2 uses
  %i.byc = getelementptr i8, ptr %i.bxq, i64 %i.byb ; 2 uses
  %i.byd = getelementptr i8, ptr %i.bxf, i64 %i.byb
  br label %vector.body7609

vector.body7609:                                  ; preds = %vector.body7609, %vector.ph7606
  %index7610 = phi i64 [ 0, %vector.ph7606 ], [ %index.next7615, %vector.body7609 ] ; 2 uses
  %i.bye = shl i64 %index7610, 3                  ; 2 uses
  %next.gep7611 = getelementptr i8, ptr %i.bxq, i64 %i.bye ; 2 uses
  %next.gep7612 = getelementptr i8, ptr %i.bxf, i64 %i.bye ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %i.byf = getelementptr i8, ptr %next.gep7612, i64 16
  %wide.load7613 = load <2 x i64>, ptr %next.gep7612, align 8, !tbaa !124, !alias.scope !3140, !noalias !3135
  %wide.load7614 = load <2 x i64>, ptr %i.byf, align 8, !tbaa !124, !alias.scope !3140, !noalias !3135
  %i.byg = getelementptr i8, ptr %next.gep7611, i64 16
  store <2 x i64> %wide.load7613, ptr %next.gep7611, align 8, !tbaa !124, !alias.scope !3143, !noalias !3140
  store <2 x i64> %wide.load7614, ptr %i.byg, align 8, !tbaa !124, !alias.scope !3143, !noalias !3140
  %i.byh = getelementptr i8, ptr %next.gep7612, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7612, align 8, !tbaa !124, !alias.scope !3140, !noalias !3135
  store <2 x ptr> splat (ptr null), ptr %i.byh, align 8, !tbaa !124, !alias.scope !3140, !noalias !3135
  %index.next7615 = add nuw i64 %index7610, 4     ; 2 uses
  %i.byi = icmp eq i64 %index.next7615, %n.vec7608
  br i1 %i.byi, label %middle.block7616, label %vector.body7609, !llvm.loop !3145

middle.block7616:                                 ; preds = %vector.body7609
  %cmp.n7617 = icmp eq i64 %i.bxw, %n.vec7608
  br i1 %cmp.n7617, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1187, label %.lr.ph.i.i.i.i.i.i.i1183.preheader7667

.lr.ph.i.i.i.i.i.i.i1183.preheader7667:           ; preds = %vector.memcheck7598, %.lr.ph.i.i.i.i.i.i.i1183.preheader, %middle.block7616
  %.012.i.i.i.i.i.i.i1184.ph = phi ptr [ %i.bxq, %vector.memcheck7598 ], [ %i.bxq, %.lr.ph.i.i.i.i.i.i.i1183.preheader ], [ %i.byc, %middle.block7616 ]
  %.0911.i.i.i.i.i.i.i1185.ph = phi ptr [ %i.bxf, %vector.memcheck7598 ], [ %i.bxf, %.lr.ph.i.i.i.i.i.i.i1183.preheader ], [ %i.byd, %middle.block7616 ]
  br label %.lr.ph.i.i.i.i.i.i.i1183

.lr.ph.i.i.i.i.i.i.i1183:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1183.preheader7667, %.lr.ph.i.i.i.i.i.i.i1183
  %.012.i.i.i.i.i.i.i1184 = phi ptr [ %i.byl, %.lr.ph.i.i.i.i.i.i.i1183 ], [ %.012.i.i.i.i.i.i.i1184.ph, %.lr.ph.i.i.i.i.i.i.i1183.preheader7667 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1185 = phi ptr [ %i.byk, %.lr.ph.i.i.i.i.i.i.i1183 ], [ %.0911.i.i.i.i.i.i.i1185.ph, %.lr.ph.i.i.i.i.i.i.i1183.preheader7667 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3135)
  call void @llvm.experimental.noalias.scope.decl(metadata !3138)
  %i.byj = load i64, ptr %.0911.i.i.i.i.i.i.i1185, align 8, !tbaa !124, !alias.scope !3138, !noalias !3135
  store i64 %i.byj, ptr %.012.i.i.i.i.i.i.i1184, align 8, !tbaa !124, !alias.scope !3135, !noalias !3138
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1185, align 8, !tbaa !124, !alias.scope !3138, !noalias !3135
  %i.byk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1185, i64 8 ; 2 uses
  %i.byl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1184, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1186 = icmp eq ptr %i.byk, %i.bxa
  br i1 %.not.i.i.i.i.i.i.i1186, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1187, label %.lr.ph.i.i.i.i.i.i.i1183, !llvm.loop !3146

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1187: ; preds = %.lr.ph.i.i.i.i.i.i.i1183, %middle.block7616, %.noexc1192
  %.0.lcssa.i.i.i.i.i.i.i1188 = phi ptr [ %i.bxq, %.noexc1192 ], [ %i.byc, %middle.block7616 ], [ %i.byl, %.lr.ph.i.i.i.i.i.i.i1183 ]
  %i.bym = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1188, i64 8
  %.not.i23.i.i.i1189 = icmp eq ptr %i.bxf, null
  br i1 %.not.i23.i.i.i1189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193, label %bb.nx

bb.nx:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1187
  call void @_ZdlPv(ptr noundef nonnull %i.bxf) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1187, %bb.nx
  store ptr %i.bxq, ptr %i.bwv, align 8, !tbaa !158
  store ptr %i.bym, ptr %i.bwz, align 8, !tbaa !161
  %i.byn = getelementptr inbounds nuw [8 x i8], ptr %i.bxq, i64 %i.bxo
  store ptr %i.byn, ptr %i.bxb, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1196

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1196: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1193.thread
  %i.byo = load ptr, ptr %139, align 8, !tbaa !25 ; 2 uses
  %i.byp = icmp eq ptr %i.byo, %i.bww
  br i1 %i.byp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1196
  call void @_ZdlPv(ptr noundef %i.byo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #25
  %i.byq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1200 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1200:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byq, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %140) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %141) #25
  %i.bys = getelementptr inbounds nuw i8, ptr %141, i64 16 ; 4 uses
  store ptr %i.bys, ptr %141, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bys, ptr noundef nonnull align 1 dereferenceable(5) @.str.177, i64 5, i1 false)
  %i.byt = getelementptr inbounds nuw i8, ptr %141, i64 8
  store i64 5, ptr %i.byt, align 8, !tbaa !16
  %i.byu = getelementptr inbounds nuw i8, ptr %141, i64 21
  store i8 0, ptr %i.byu, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %140, ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(32) %141)
          to label %bb.ny unwind label %bb.qe

bb.ny:                                            ; preds = %._crit_edge.i.i1200
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byq, i64 128 ; 3 uses
  %i.byw = load ptr, ptr %i.byv, align 8, !tbaa !161 ; 6 uses
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byq, i64 136 ; 2 uses
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !206
  %.not.i.i1204 = icmp eq ptr %i.byw, %i.byy
  br i1 %.not.i.i1204, label %bb.nz, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219.thread: ; preds = %bb.ny
  %i.byz = load i64, ptr %140, align 8, !tbaa !124
  store i64 %i.byz, ptr %i.byw, align 8, !tbaa !124
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byw, i64 8
  store ptr %i.bza, ptr %i.byv, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1222

bb.nz:                                            ; preds = %bb.ny
  %i.bzb = load ptr, ptr %i.byr, align 8, !tbaa !158 ; 10 uses
  %i.bzc = ptrtoint ptr %i.byw to i64             ; 3 uses
  %i.bzd = ptrtoint ptr %i.bzb to i64             ; 3 uses
  %i.bze = sub i64 %i.bzc, %i.bzd                 ; 3 uses
  %i.bzf = icmp eq i64 %i.bze, 9223372036854775800
  br i1 %i.bzf, label %bb.oa, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1205

bb.oa:                                            ; preds = %bb.nz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1217 unwind label %bb.qf

.noexc1217:                                       ; preds = %bb.oa
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1205: ; preds = %bb.nz
  %i.bzg = ashr exact i64 %i.bze, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1206 = call i64 @llvm.umax.i64(i64 %i.bzg, i64 1)
  %i.bzh = add nsw i64 %.sroa.speculated.i.i.i.i1206, %i.bzg ; 2 uses
  %i.bzi = icmp ult i64 %i.bzh, %i.bzg
  %i.bzj = call i64 @llvm.umin.i64(i64 %i.bzh, i64 1152921504606846975)
  %i.bzk = select i1 %i.bzi, i64 1152921504606846975, i64 %i.bzj ; 3 uses
  %.not.i.i.i.i1207 = icmp ne i64 %i.bzk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1207)
  %i.bzl = shl nuw nsw i64 %i.bzk, 3
  %i.bzm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bzl) #26
          to label %.noexc1218 unwind label %bb.qf ; 10 uses

.noexc1218:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1205
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.bzm, i64 %i.bze
  %i.bzo = load i64, ptr %140, align 8, !tbaa !124
  store i64 %i.bzo, ptr %i.bzn, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1208 = icmp eq ptr %i.bzb, %i.byw
  br i1 %.not10.i.i.i.i.i.i.i1208, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1213, label %.lr.ph.i.i.i.i.i.i.i1209.preheader

.lr.ph.i.i.i.i.i.i.i1209.preheader:               ; preds = %.noexc1218
  %i.bzp = sub i64 %i.bzc, %i.bzd
  %i.bzq = add i64 %i.bzp, -8                     ; 2 uses
  %i.bzr = lshr i64 %i.bzq, 3
  %i.bzs = add nuw nsw i64 %i.bzr, 1              ; 2 uses
  %min.iters.check7627 = icmp ult i64 %i.bzq, 152
  br i1 %min.iters.check7627, label %.lr.ph.i.i.i.i.i.i.i1209.preheader7665, label %vector.memcheck7620

vector.memcheck7620:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1209.preheader
  %i.bzt = add i64 %i.bzc, -8
  %i.bzu = sub i64 %i.bzt, %i.bzd
  %i.bzv = and i64 %i.bzu, -8
  %i.bzw = add i64 %i.bzv, 8                      ; 2 uses
  %scevgep7621 = getelementptr i8, ptr %i.bzm, i64 %i.bzw
  %scevgep7622 = getelementptr i8, ptr %i.bzb, i64 %i.bzw
  %bound07623 = icmp ult ptr %i.bzm, %scevgep7622
  %bound17624 = icmp ult ptr %i.bzb, %scevgep7621
  %found.conflict7625 = and i1 %bound07623, %bound17624
  br i1 %found.conflict7625, label %.lr.ph.i.i.i.i.i.i.i1209.preheader7665, label %vector.ph7628

vector.ph7628:                                    ; preds = %vector.memcheck7620
  %n.vec7630 = and i64 %i.bzs, 4611686018427387900 ; 3 uses
  %i.bzx = shl i64 %n.vec7630, 3                  ; 2 uses
  %i.bzy = getelementptr i8, ptr %i.bzm, i64 %i.bzx ; 2 uses
  %i.bzz = getelementptr i8, ptr %i.bzb, i64 %i.bzx
  br label %vector.body7631

vector.body7631:                                  ; preds = %vector.body7631, %vector.ph7628
  %index7632 = phi i64 [ 0, %vector.ph7628 ], [ %index.next7637, %vector.body7631 ] ; 2 uses
  %i.caa = shl i64 %index7632, 3                  ; 2 uses
  %next.gep7633 = getelementptr i8, ptr %i.bzm, i64 %i.caa ; 2 uses
  %next.gep7634 = getelementptr i8, ptr %i.bzb, i64 %i.caa ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  %i.cab = getelementptr i8, ptr %next.gep7634, i64 16
  %wide.load7635 = load <2 x i64>, ptr %next.gep7634, align 8, !tbaa !124, !alias.scope !3152, !noalias !3147
  %wide.load7636 = load <2 x i64>, ptr %i.cab, align 8, !tbaa !124, !alias.scope !3152, !noalias !3147
  %i.cac = getelementptr i8, ptr %next.gep7633, i64 16
  store <2 x i64> %wide.load7635, ptr %next.gep7633, align 8, !tbaa !124, !alias.scope !3155, !noalias !3152
  store <2 x i64> %wide.load7636, ptr %i.cac, align 8, !tbaa !124, !alias.scope !3155, !noalias !3152
  %i.cad = getelementptr i8, ptr %next.gep7634, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7634, align 8, !tbaa !124, !alias.scope !3152, !noalias !3147
  store <2 x ptr> splat (ptr null), ptr %i.cad, align 8, !tbaa !124, !alias.scope !3152, !noalias !3147
  %index.next7637 = add nuw i64 %index7632, 4     ; 2 uses
  %i.cae = icmp eq i64 %index.next7637, %n.vec7630
  br i1 %i.cae, label %middle.block7638, label %vector.body7631, !llvm.loop !3157

middle.block7638:                                 ; preds = %vector.body7631
  %cmp.n7639 = icmp eq i64 %i.bzs, %n.vec7630
  br i1 %cmp.n7639, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1213, label %.lr.ph.i.i.i.i.i.i.i1209.preheader7665

.lr.ph.i.i.i.i.i.i.i1209.preheader7665:           ; preds = %vector.memcheck7620, %.lr.ph.i.i.i.i.i.i.i1209.preheader, %middle.block7638
  %.012.i.i.i.i.i.i.i1210.ph = phi ptr [ %i.bzm, %vector.memcheck7620 ], [ %i.bzm, %.lr.ph.i.i.i.i.i.i.i1209.preheader ], [ %i.bzy, %middle.block7638 ]
  %.0911.i.i.i.i.i.i.i1211.ph = phi ptr [ %i.bzb, %vector.memcheck7620 ], [ %i.bzb, %.lr.ph.i.i.i.i.i.i.i1209.preheader ], [ %i.bzz, %middle.block7638 ]
  br label %.lr.ph.i.i.i.i.i.i.i1209

.lr.ph.i.i.i.i.i.i.i1209:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1209.preheader7665, %.lr.ph.i.i.i.i.i.i.i1209
  %.012.i.i.i.i.i.i.i1210 = phi ptr [ %i.cah, %.lr.ph.i.i.i.i.i.i.i1209 ], [ %.012.i.i.i.i.i.i.i1210.ph, %.lr.ph.i.i.i.i.i.i.i1209.preheader7665 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1211 = phi ptr [ %i.cag, %.lr.ph.i.i.i.i.i.i.i1209 ], [ %.0911.i.i.i.i.i.i.i1211.ph, %.lr.ph.i.i.i.i.i.i.i1209.preheader7665 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3147)
  call void @llvm.experimental.noalias.scope.decl(metadata !3150)
  %i.caf = load i64, ptr %.0911.i.i.i.i.i.i.i1211, align 8, !tbaa !124, !alias.scope !3150, !noalias !3147
  store i64 %i.caf, ptr %.012.i.i.i.i.i.i.i1210, align 8, !tbaa !124, !alias.scope !3147, !noalias !3150
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1211, align 8, !tbaa !124, !alias.scope !3150, !noalias !3147
  %i.cag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1211, i64 8 ; 2 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1210, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1212 = icmp eq ptr %i.cag, %i.byw
  br i1 %.not.i.i.i.i.i.i.i1212, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1213, label %.lr.ph.i.i.i.i.i.i.i1209, !llvm.loop !3158

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1213: ; preds = %.lr.ph.i.i.i.i.i.i.i1209, %middle.block7638, %.noexc1218
  %.0.lcssa.i.i.i.i.i.i.i1214 = phi ptr [ %i.bzm, %.noexc1218 ], [ %i.bzy, %middle.block7638 ], [ %i.cah, %.lr.ph.i.i.i.i.i.i.i1209 ]
  %i.cai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1214, i64 8
  %.not.i23.i.i.i1215 = icmp eq ptr %i.bzb, null
  br i1 %.not.i23.i.i.i1215, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219, label %bb.ob

bb.ob:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1213
  call void @_ZdlPv(ptr noundef nonnull %i.bzb) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1213, %bb.ob
  store ptr %i.bzm, ptr %i.byr, align 8, !tbaa !158
  store ptr %i.cai, ptr %i.byv, align 8, !tbaa !161
  %i.caj = getelementptr inbounds nuw [8 x i8], ptr %i.bzm, i64 %i.bzk
  store ptr %i.caj, ptr %i.byx, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1222

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1222: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1219.thread
  %i.cak = load ptr, ptr %141, align 8, !tbaa !25 ; 2 uses
  %i.cal = icmp eq ptr %i.cak, %i.bys
  br i1 %i.cal, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1223: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1222
  call void @_ZdlPv(ptr noundef %i.cak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1225

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1225: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1223
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #25
  %i.cam = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %._crit_edge.i.i1226 unwind label %bb.pj ; 3 uses

._crit_edge.i.i1226:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1225
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %142) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #25
  %i.cao = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 4 uses
  store ptr %i.cao, ptr %143, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.cao, ptr noundef nonnull align 1 dereferenceable(15) @.str.178, i64 15, i1 false)
  %i.cap = getelementptr inbounds nuw i8, ptr %143, i64 8
  store i64 15, ptr %i.cap, align 8, !tbaa !16
  %i.caq = getelementptr inbounds nuw i8, ptr %143, i64 31
  store i8 0, ptr %i.caq, align 1, !tbaa !19
  invoke fastcc void @_ZN6duckdbL19SummarizeWrapUnnestERNS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %142, ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(32) %143)
          to label %bb.oc unwind label %bb.qg

bb.oc:                                            ; preds = %._crit_edge.i.i1226
  %i.car = getelementptr inbounds nuw i8, ptr %i.cam, i64 128 ; 3 uses
  %i.cas = load ptr, ptr %i.car, align 8, !tbaa !161 ; 6 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cam, i64 136 ; 2 uses
  %i.cau = load ptr, ptr %i.cat, align 8, !tbaa !206
  %.not.i.i1230 = icmp eq ptr %i.cas, %i.cau
  br i1 %.not.i.i1230, label %bb.od, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245.thread: ; preds = %bb.oc
  %i.cav = load i64, ptr %142, align 8, !tbaa !124
  store i64 %i.cav, ptr %i.cas, align 8, !tbaa !124
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cas, i64 8
  store ptr %i.caw, ptr %i.car, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1248

bb.od:                                            ; preds = %bb.oc
  %i.cax = load ptr, ptr %i.can, align 8, !tbaa !158 ; 10 uses
  %i.cay = ptrtoint ptr %i.cas to i64             ; 3 uses
  %i.caz = ptrtoint ptr %i.cax to i64             ; 3 uses
  %i.cba = sub i64 %i.cay, %i.caz                 ; 3 uses
  %i.cbb = icmp eq i64 %i.cba, 9223372036854775800
  br i1 %i.cbb, label %bb.oe, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1231

bb.oe:                                            ; preds = %bb.od
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc1243 unwind label %bb.qh

.noexc1243:                                       ; preds = %bb.oe
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1231: ; preds = %bb.od
  %i.cbc = ashr exact i64 %i.cba, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i1232 = call i64 @llvm.umax.i64(i64 %i.cbc, i64 1)
  %i.cbd = add nsw i64 %.sroa.speculated.i.i.i.i1232, %i.cbc ; 2 uses
  %i.cbe = icmp ult i64 %i.cbd, %i.cbc
  %i.cbf = call i64 @llvm.umin.i64(i64 %i.cbd, i64 1152921504606846975)
  %i.cbg = select i1 %i.cbe, i64 1152921504606846975, i64 %i.cbf ; 3 uses
  %.not.i.i.i.i1233 = icmp ne i64 %i.cbg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i1233)
  %i.cbh = shl nuw nsw i64 %i.cbg, 3
  %i.cbi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cbh) #26
          to label %.noexc1244 unwind label %bb.qh ; 10 uses

.noexc1244:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i1231
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbi, i64 %i.cba
  %i.cbk = load i64, ptr %142, align 8, !tbaa !124
  store i64 %i.cbk, ptr %i.cbj, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i1234 = icmp eq ptr %i.cax, %i.cas
  br i1 %.not10.i.i.i.i.i.i.i1234, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1239, label %.lr.ph.i.i.i.i.i.i.i1235.preheader

.lr.ph.i.i.i.i.i.i.i1235.preheader:               ; preds = %.noexc1244
  %i.cbl = sub i64 %i.cay, %i.caz
  %i.cbm = add i64 %i.cbl, -8                     ; 2 uses
  %i.cbn = lshr i64 %i.cbm, 3
  %i.cbo = add nuw nsw i64 %i.cbn, 1              ; 2 uses
  %min.iters.check7649 = icmp ult i64 %i.cbm, 152
  br i1 %min.iters.check7649, label %.lr.ph.i.i.i.i.i.i.i1235.preheader7664, label %vector.memcheck7642

vector.memcheck7642:                              ; preds = %.lr.ph.i.i.i.i.i.i.i1235.preheader
  %i.cbp = add i64 %i.cay, -8
  %i.cbq = sub i64 %i.cbp, %i.caz
  %i.cbr = and i64 %i.cbq, -8
  %i.cbs = add i64 %i.cbr, 8                      ; 2 uses
  %scevgep7643 = getelementptr i8, ptr %i.cbi, i64 %i.cbs
  %scevgep7644 = getelementptr i8, ptr %i.cax, i64 %i.cbs
  %bound07645 = icmp ult ptr %i.cbi, %scevgep7644
  %bound17646 = icmp ult ptr %i.cax, %scevgep7643
  %found.conflict7647 = and i1 %bound07645, %bound17646
  br i1 %found.conflict7647, label %.lr.ph.i.i.i.i.i.i.i1235.preheader7664, label %vector.ph7650

vector.ph7650:                                    ; preds = %vector.memcheck7642
  %n.vec7652 = and i64 %i.cbo, 4611686018427387900 ; 3 uses
  %i.cbt = shl i64 %n.vec7652, 3                  ; 2 uses
  %i.cbu = getelementptr i8, ptr %i.cbi, i64 %i.cbt ; 2 uses
  %i.cbv = getelementptr i8, ptr %i.cax, i64 %i.cbt
  br label %vector.body7653

vector.body7653:                                  ; preds = %vector.body7653, %vector.ph7650
  %index7654 = phi i64 [ 0, %vector.ph7650 ], [ %index.next7659, %vector.body7653 ] ; 2 uses
  %i.cbw = shl i64 %index7654, 3                  ; 2 uses
  %next.gep7655 = getelementptr i8, ptr %i.cbi, i64 %i.cbw ; 2 uses
  %next.gep7656 = getelementptr i8, ptr %i.cax, i64 %i.cbw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.cbx = getelementptr i8, ptr %next.gep7656, i64 16
  %wide.load7657 = load <2 x i64>, ptr %next.gep7656, align 8, !tbaa !124, !alias.scope !3164, !noalias !3159
  %wide.load7658 = load <2 x i64>, ptr %i.cbx, align 8, !tbaa !124, !alias.scope !3164, !noalias !3159
  %i.cby = getelementptr i8, ptr %next.gep7655, i64 16
  store <2 x i64> %wide.load7657, ptr %next.gep7655, align 8, !tbaa !124, !alias.scope !3167, !noalias !3164
  store <2 x i64> %wide.load7658, ptr %i.cby, align 8, !tbaa !124, !alias.scope !3167, !noalias !3164
  %i.cbz = getelementptr i8, ptr %next.gep7656, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep7656, align 8, !tbaa !124, !alias.scope !3164, !noalias !3159
  store <2 x ptr> splat (ptr null), ptr %i.cbz, align 8, !tbaa !124, !alias.scope !3164, !noalias !3159
  %index.next7659 = add nuw i64 %index7654, 4     ; 2 uses
  %i.cca = icmp eq i64 %index.next7659, %n.vec7652
  br i1 %i.cca, label %middle.block7660, label %vector.body7653, !llvm.loop !3169

middle.block7660:                                 ; preds = %vector.body7653
  %cmp.n7661 = icmp eq i64 %i.cbo, %n.vec7652
  br i1 %cmp.n7661, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1239, label %.lr.ph.i.i.i.i.i.i.i1235.preheader7664

.lr.ph.i.i.i.i.i.i.i1235.preheader7664:           ; preds = %vector.memcheck7642, %.lr.ph.i.i.i.i.i.i.i1235.preheader, %middle.block7660
  %.012.i.i.i.i.i.i.i1236.ph = phi ptr [ %i.cbi, %vector.memcheck7642 ], [ %i.cbi, %.lr.ph.i.i.i.i.i.i.i1235.preheader ], [ %i.cbu, %middle.block7660 ]
  %.0911.i.i.i.i.i.i.i1237.ph = phi ptr [ %i.cax, %vector.memcheck7642 ], [ %i.cax, %.lr.ph.i.i.i.i.i.i.i1235.preheader ], [ %i.cbv, %middle.block7660 ]
  br label %.lr.ph.i.i.i.i.i.i.i1235

.lr.ph.i.i.i.i.i.i.i1235:                         ; preds = %.lr.ph.i.i.i.i.i.i.i1235.preheader7664, %.lr.ph.i.i.i.i.i.i.i1235
  %.012.i.i.i.i.i.i.i1236 = phi ptr [ %i.ccd, %.lr.ph.i.i.i.i.i.i.i1235 ], [ %.012.i.i.i.i.i.i.i1236.ph, %.lr.ph.i.i.i.i.i.i.i1235.preheader7664 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i1237 = phi ptr [ %i.ccc, %.lr.ph.i.i.i.i.i.i.i1235 ], [ %.0911.i.i.i.i.i.i.i1237.ph, %.lr.ph.i.i.i.i.i.i.i1235.preheader7664 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3159)
  call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.ccb = load i64, ptr %.0911.i.i.i.i.i.i.i1237, align 8, !tbaa !124, !alias.scope !3162, !noalias !3159
  store i64 %i.ccb, ptr %.012.i.i.i.i.i.i.i1236, align 8, !tbaa !124, !alias.scope !3159, !noalias !3162
  store ptr null, ptr %.0911.i.i.i.i.i.i.i1237, align 8, !tbaa !124, !alias.scope !3162, !noalias !3159
  %i.ccc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i1237, i64 8 ; 2 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i1236, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i1238 = icmp eq ptr %i.ccc, %i.cas
  br i1 %.not.i.i.i.i.i.i.i1238, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1239, label %.lr.ph.i.i.i.i.i.i.i1235, !llvm.loop !3170

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1239: ; preds = %.lr.ph.i.i.i.i.i.i.i1235, %middle.block7660, %.noexc1244
  %.0.lcssa.i.i.i.i.i.i.i1240 = phi ptr [ %i.cbi, %.noexc1244 ], [ %i.cbu, %middle.block7660 ], [ %i.ccd, %.lr.ph.i.i.i.i.i.i.i1235 ]
  %i.cce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i1240, i64 8
  %.not.i23.i.i.i1241 = icmp eq ptr %i.cax, null
  br i1 %.not.i23.i.i.i1241, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245, label %bb.of

bb.of:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1239
  call void @_ZdlPv(ptr noundef nonnull %i.cax) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i1239, %bb.of
  store ptr %i.cbi, ptr %i.can, align 8, !tbaa !158
  store ptr %i.cce, ptr %i.car, align 8, !tbaa !161
  %i.ccf = getelementptr inbounds nuw [8 x i8], ptr %i.cbi, i64 %i.cbg
  store ptr %i.ccf, ptr %i.cat, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1248

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1248: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit1245.thread
  %i.ccg = load ptr, ptr %143, align 8, !tbaa !25 ; 2 uses
  %i.cch = icmp eq ptr %i.ccg, %i.cao
  br i1 %i.cch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1249: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1248
  call void @_ZdlPv(ptr noundef %i.ccg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1251: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit1248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1249
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #25
  %i.cci = load ptr, ptr %118, align 8, !tbaa !2064 ; 4 uses
  store ptr null, ptr %118, align 8, !tbaa !2064
  %i.ccj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %bb.og unwind label %bb.qi

bb.og:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1251
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccj, i64 144 ; 2 uses
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !221 ; 3 uses
  store ptr %i.cci, ptr %i.cck, align 8, !tbaa !221
  %.not.i.i.i.i.i1252 = icmp eq ptr %i.ccl, null
  br i1 %.not.i.i.i.i.i1252, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit1257, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i1253

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i1253: ; preds = %bb.og
  %i.ccm = load ptr, ptr %i.ccl, align 8, !tbaa !119
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 8
  %i.cco = load ptr, ptr %i.ccn, align 8
  call void %i.cco(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ccl) #25, !inline_history !223
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit1257

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit1257: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i1253, %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  %i.ccp = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26
          to label %bb.oh unwind label %bb.qj     ; 14 uses

bb.oh:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit1257
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 8
  store i8 1, ptr %i.ccq, align 8, !tbaa !182, !noalias !3171
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.ccp, i64 16
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccp, i64 32
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccp, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccr, i8 0, i64 16, i1 false), !noalias !3171
  store ptr %i.cct, ptr %i.ccs, align 8, !tbaa !187, !noalias !3171
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.ccp, i64 40
  store i64 1, ptr %i.ccu, align 8, !tbaa !188, !noalias !3171
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccp, i64 48
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.ccp, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccv, i8 0, i64 16, i1 false), !noalias !3171
  store float 1.000000e+00, ptr %i.ccw, align 8, !tbaa !101, !noalias !3171
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccp, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccx, i8 0, i64 16, i1 false), !noalias !3171
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccp, i64 88
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.ccp, i64 104 ; 2 uses
  store ptr %i.ccz, ptr %i.ccy, align 8, !tbaa !13, !noalias !3171
  %i.cda = getelementptr inbounds nuw i8, ptr %i.ccp, i64 96
  store i64 0, ptr %i.cda, align 8, !tbaa !16, !noalias !3171
  store i8 0, ptr %i.ccz, align 8, !tbaa !19, !noalias !3171
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.ccp, align 8, !tbaa !119, !noalias !3171
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccp, i64 120
  store ptr null, ptr %i.cdb, align 8, !tbaa !189, !noalias !3171
  store ptr %i.ccp, ptr %144, align 8, !tbaa !575, !alias.scope !3171
  %i.cdc = load ptr, ptr %119, align 8, !tbaa !195 ; 4 uses
  store ptr null, ptr %119, align 8, !tbaa !195
  %i.cdd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %144)
          to label %bb.oi unwind label %bb.qk

bb.oi:                                            ; preds = %bb.oh
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 120 ; 2 uses
  %i.cdf = load ptr, ptr %i.cde, align 8, !tbaa !224 ; 3 uses
  store ptr %i.cdc, ptr %i.cde, align 8, !tbaa !224
  %.not.i.i.i.i.i1260 = icmp eq ptr %i.cdf, null
  br i1 %.not.i.i.i.i.i1260, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1265, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i1261

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i1261: ; preds = %bb.oi
  %i.cdg = load ptr, ptr %i.cdf, align 8, !tbaa !119
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdg, i64 8
  %i.cdi = load ptr, ptr %i.cdh, align 8
  call void %i.cdi(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cdf) #25, !inline_history !225
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1265

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1265: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i1261, %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cdj = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc1271 unwind label %bb.ql ; 3 uses

.noexc1271:                                       ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1265
  %i.cdk = load i64, ptr %144, align 8, !tbaa !575, !noalias !3174
  store i64 %i.cdk, ptr %3, align 8, !tbaa !575, !noalias !3174
  store ptr null, ptr %144, align 8, !tbaa !575, !noalias !3174
  %i.cdl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cdl, ptr %4, align 8, !tbaa !13, !noalias !3174
  %i.cdm = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cdm, align 8, !tbaa !16, !noalias !3174
  store i8 0, ptr %i.cdl, align 8, !tbaa !19, !noalias !3174
  invoke void @_ZN6duckdb11SubqueryRefC1ENS_10unique_ptrINS_15SelectStatementESt14default_deleteIS2_ELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.cdj, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.oj unwind label %bb.ok, !noalias !3174

bb.oj:                                            ; preds = %.noexc1271
  store ptr %i.cdj, ptr %145, align 8, !tbaa !2064, !alias.scope !3174
  %i.cdn = load ptr, ptr %4, align 8, !tbaa !25, !noalias !3174 ; 2 uses
  %i.cdo = icmp eq ptr %i.cdn, %i.cdl
  br i1 %i.cdo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1267: ; preds = %bb.oj
  call void @_ZdlPv(ptr noundef %i.cdn) #29, !noalias !3174
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1268: ; preds = %bb.oj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1267
  %i.cdp = load ptr, ptr %3, align 8, !tbaa !575, !noalias !3174 ; 3 uses
  %.not.i.i1269 = icmp eq ptr %i.cdp, null
  br i1 %.not.i.i1269, label %bb.ol, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1268
  %i.cdq = load ptr, ptr %i.cdp, align 8, !tbaa !119, !noalias !3174
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdq, i64 8
end_hunk_15
begin_hunk_16_@_ZN6duckdb6Binder13BindSummarizeERNS_7ShowRefE:bb.a
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cpa, i64 8
  %i.cpc = load ptr, ptr %i.cpb, align 8
  call void %i.cpc(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.coz) #25, !inline_history !237
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1523

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1523: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i1522, %bb.qp, %bb.ai
  %.pn237.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jd, %bb.ai ], [ %.pn237.pn.pn.pn.pn.pn.pn, %bb.qp ], [ %.pn237.pn.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i1522 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  br label %bb.qq

bb.qq:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1523, %bb.y
  %.pn237.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn237.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1523 ], [ %.pn121.pn.pn.pn.pn, %bb.y ]
  %i.cpd = load ptr, ptr %56, align 8, !tbaa !224 ; 3 uses
  %.not.i1524 = icmp eq ptr %i.cpd, null
  br i1 %.not.i1524, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1526, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i1525

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i1525: ; preds = %bb.qq
  %i.cpe = load ptr, ptr %i.cpd, align 8, !tbaa !119
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpe, i64 8
  %i.cpg = load ptr, ptr %i.cpf, align 8
  call void %i.cpg(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cpd) #25, !inline_history !237
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1526

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit1526: ; preds = %bb.qq, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i1525
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25
  resume { ptr, i32 } %.pn237.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb13QualifiedName5ParseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"struct.duckdb::QualifiedName") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13QualifiedNameD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.i = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  tail call void @_ZdlPv(ptr noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

declare void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24SummarizeCreateAggregateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::vector.20", align 8 ; 12 uses
  %7 = alloca %"class.duckdb::unique_ptr.2752", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc unwind label %bb.p     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !13, !noalias !3178
  %i.c = load ptr, ptr %2, align 8, !tbaa !25, !noalias !3178 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16, !noalias !3178 ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false), !noalias !3178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.c, ptr %5, align 8, !tbaa !25, !noalias !3178
  %i.j = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !3178
  store i64 %i.j, ptr %i.b, align 8, !tbaa !19, !noalias !3178
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16, !noalias !3178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !16, !noalias !3178
  store ptr %i.d, ptr %2, align 8, !tbaa !25, !noalias !3178
  store i64 0, ptr %i.l, align 8, !tbaa !16, !noalias !3178
  store i8 0, ptr %i.d, align 8, !tbaa !19, !noalias !3178
  invoke void @_ZN6duckdb19ColumnRefExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %5)
          to label %bb.c unwind label %bb.d, !noalias !3178

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.n = load ptr, ptr %5, align 8, !tbaa !25, !noalias !3178 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.n) #29, !noalias !3178
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !25, !noalias !3178 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.q) #29, !noalias !3178
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @_ZdlPv(ptr noundef nonnull %i.a) #29, !noalias !3178
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !161  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.t, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = load ptr, ptr %6, align 8, !tbaa !158    ; 10 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit23

.noexc9:                                          ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit23 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  %i.al = ptrtoint ptr %i.a to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %i.am = sub i64 %i.z, %i.aa
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.z, -8
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.at
  %scevgep51 = getelementptr i8, ptr %i.y, i64 %i.at
  %bound0 = icmp ult ptr %i.aj, %scevgep51
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.y, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.ax ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.y, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  %i.ay = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !124, !alias.scope !3186, !noalias !3181
  %wide.load53 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !124, !alias.scope !3186, !noalias !3181
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !124, !alias.scope !3189, !noalias !3186
  store <2 x i64> %wide.load53, ptr %i.az, align 8, !tbaa !124, !alias.scope !3189, !noalias !3186
  %i.ba = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !124, !alias.scope !3186, !noalias !3181
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !124, !alias.scope !3186, !noalias !3181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !3191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader55

.lr.ph.i.i.i.i.i.i.i.preheader55:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader55, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader55 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3181)
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !3184, !noalias !3181
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !3181, !noalias !3184
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !3184, !noalias !3181
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3192

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc10 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aj, ptr %6, align 8, !tbaa !158
  store ptr %i.bf, ptr %i.s, align 8, !tbaa !161
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bg, ptr %i.u, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISC_ELb1EEELb1ESaISF_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2752") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc13 unwind label %bb.r   ; 3 uses

.noexc13:                                         ; preds = %bb.i
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25)
          to label %bb.j unwind label %bb.l, !noalias !3193

bb.j:                                             ; preds = %.noexc13
  %i.bi = load ptr, ptr %7, align 8, !tbaa !2942, !noalias !3193
  store ptr null, ptr %7, align 8, !tbaa !2942, !noalias !3193
  store ptr %i.bi, ptr %4, align 8, !tbaa !1902, !noalias !3193
  invoke void @_ZN6duckdb14CastExpressionC1ENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEEb(ptr noundef nonnull align 8 dereferenceable(89) %i.bh, ptr noundef nonnull %3, ptr noundef nonnull %4, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.m, !noalias !3193

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %4, align 8, !tbaa !124, !noalias !3193 ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i12, label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %bb.k
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !119, !noalias !3193
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !3193
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #25, !noalias !3193, !inline_history !3196
  br label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %.noexc13
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %4, align 8, !tbaa !124, !noalias !3193 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.bp, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i: ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !119, !noalias !3193
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !3193
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.bp) #25, !noalias !3193, !inline_history !3196
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i, %bb.m
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25, !noalias !3193
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.bo, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i ], [ %i.bn, %bb.l ]
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #29, !noalias !3193
  br label %.body14

_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25, !noalias !3193
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %i.bh, ptr %0, align 8, !tbaa !1902
  %i.bt = load ptr, ptr %7, align 8, !tbaa !2942  ; 3 uses
  %.not.i17 = icmp eq ptr %i.bt, null
  br i1 %.not.i17, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !119
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(209) %i.bt) #25, !inline_history !3197
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.bx = load ptr, ptr %6, align 8, !tbaa !158   ; 3 uses
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !161 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bx, %i.by
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.bx, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.bz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !119
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(56) %i.bz) #25, !inline_history !636
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, %i.by
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !163

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ce = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bx, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.p:                                             ; preds = %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit23: ; preds = %bb.g, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #25, !inline_history !235
  br label %.body

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit26

bb.r:                                             ; preds = %bb.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body14

.body14:                                          ; preds = %bb.n, %bb.r
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.cl, %bb.r ], [ %.pn.i, %bb.n ] ; 2 uses
  %i.cm = load ptr, ptr %7, align 8, !tbaa !2942  ; 3 uses
  %.not.i24 = icmp eq ptr %i.cm, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i25: ; preds = %.body14
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !119
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(209) %i.cm) #25, !inline_history !3197
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i25, %.body14, %bb.q
  %.pn6 = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %eh.lpad-body15, %.body14 ], [ %eh.lpad-body15, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %bb.p, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit26
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit26 ], [ %i.cg, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit23 ], [ %i.cf, %bb.p ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn6.pn
}

declare noundef zeroext i1 @_ZNK6duckdb11LogicalType10IsTemporalEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24SummarizeCreateAggregateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_RKNS_5ValueE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::unique_ptr.255", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::vector.20", align 8 ; 14 uses
  %9 = alloca %"class.duckdb::unique_ptr.2752", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %.noexc unwind label %bb.y     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !13, !noalias !3198
  %i.c = load ptr, ptr %2, align 8, !tbaa !25, !noalias !3198 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16, !noalias !3198 ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false), !noalias !3198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.c, ptr %7, align 8, !tbaa !25, !noalias !3198
  %i.j = load i64, ptr %i.d, align 8, !tbaa !19, !noalias !3198
  store i64 %i.j, ptr %i.b, align 8, !tbaa !19, !noalias !3198
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !16, !noalias !3198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !16, !noalias !3198
  store ptr %i.d, ptr %2, align 8, !tbaa !25, !noalias !3198
  store i64 0, ptr %i.l, align 8, !tbaa !16, !noalias !3198
  store i8 0, ptr %i.d, align 8, !tbaa !19, !noalias !3198
  invoke void @_ZN6duckdb19ColumnRefExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %7)
          to label %bb.c unwind label %bb.d, !noalias !3198

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.n = load ptr, ptr %7, align 8, !tbaa !25, !noalias !3198 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.n) #29, !noalias !3198
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %7, align 8, !tbaa !25, !noalias !3198 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.q) #29, !noalias !3198
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @_ZdlPv(ptr noundef nonnull %i.a) #29, !noalias !3198
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !161  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !206
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.t, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = load ptr, ptr %8, align 8, !tbaa !158    ; 10 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc13 unwind label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit51

.noexc13:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26
          to label %.noexc14 unwind label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit51 ; 10 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  %i.al = ptrtoint ptr %i.a to i64
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc14
  %i.am = sub i64 %i.z, %i.aa
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader127, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.z, -8
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.at
  %scevgep100 = getelementptr i8, ptr %i.y, i64 %i.at
  %bound0 = icmp ult ptr %i.aj, %scevgep100
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader127, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.aj, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.y, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.ax ; 2 uses
  %next.gep101 = getelementptr i8, ptr %i.y, i64 %i.ax ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  %i.ay = getelementptr i8, ptr %next.gep101, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep101, align 8, !tbaa !124, !alias.scope !3206, !noalias !3201
  %wide.load102 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !124, !alias.scope !3206, !noalias !3201
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !124, !alias.scope !3209, !noalias !3206
  store <2 x i64> %wide.load102, ptr %i.az, align 8, !tbaa !124, !alias.scope !3209, !noalias !3206
  %i.ba = getelementptr i8, ptr %next.gep101, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep101, align 8, !tbaa !124, !alias.scope !3206, !noalias !3201
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !124, !alias.scope !3206, !noalias !3201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !3211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader127

.lr.ph.i.i.i.i.i.i.i.preheader127:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader127, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader127 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader127 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3201)
  call void @llvm.experimental.noalias.scope.decl(metadata !3204)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !3204, !noalias !3201
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !3201, !noalias !3204
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !124, !alias.scope !3204, !noalias !3201
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3212

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc14
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc14 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aj, ptr %8, align 8, !tbaa !158
  store ptr %i.bf, ptr %i.s, align 8, !tbaa !161
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bg, ptr %i.u, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bh = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc16 unwind label %bb.z   ; 6 uses

.noexc16:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.i unwind label %bb.j, !noalias !3213

bb.i:                                             ; preds = %.noexc16
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bh, ptr noundef nonnull %6)
          to label %bb.m unwind label %bb.k, !noalias !3213

bb.j:                                             ; preds = %.noexc16
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25, !noalias !3213
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.bj, %bb.k ], [ %i.bi, %bb.j ]
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #29, !noalias !3213
  br label %.body

bb.m:                                             ; preds = %bb.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25, !noalias !3213
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !161 ; 6 uses
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !206
  %.not.i.i19 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = ptrtoint ptr %i.bh to i64
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !124
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bn, ptr %i.s, align 8, !tbaa !161
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %8, align 8, !tbaa !158   ; 10 uses
  %i.bp = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bq = ptrtoint ptr %i.bo to i64               ; 3 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i20

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc32 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit57

.noexc32:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i20: ; preds = %bb.o
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i21 = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i21, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i.i22 = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i22)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #26
          to label %.noexc33 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit57 ; 10 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.br
  %i.cb = ptrtoint ptr %i.bh to i64
  store i64 %i.cb, ptr %i.ca, align 8, !tbaa !124
  %.not10.i.i.i.i.i.i.i23 = icmp eq ptr %i.bo, %i.bk
  br i1 %.not10.i.i.i.i.i.i.i23, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i28, label %.lr.ph.i.i.i.i.i.i.i24.preheader

.lr.ph.i.i.i.i.i.i.i24.preheader:                 ; preds = %.noexc33
  %i.cc = sub i64 %i.bp, %i.bq
  %i.cd = add i64 %i.cc, -8                       ; 2 uses
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.cd, 152
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i.i.i24.preheader126, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i.i.i.i24.preheader
  %i.cg = add i64 %i.bp, -8
  %i.ch = sub i64 %i.cg, %i.bq
  %i.ci = and i64 %i.ch, -8
  %i.cj = add i64 %i.ci, 8                        ; 2 uses
  %scevgep105 = getelementptr i8, ptr %i.bz, i64 %i.cj
  %scevgep106 = getelementptr i8, ptr %i.bo, i64 %i.cj
  %bound0107 = icmp ult ptr %i.bz, %scevgep106
  %bound1108 = icmp ult ptr %i.bo, %scevgep105
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph.i.i.i.i.i.i.i24.preheader126, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck104
  %n.vec114 = and i64 %i.cf, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec114, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bz, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bo, i64 %i.ck
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.cn = shl i64 %index116, 3                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.bz, i64 %i.cn ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.bo, i64 %i.cn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.co = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !124, !alias.scope !3221, !noalias !3216
  %wide.load120 = load <2 x i64>, ptr %i.co, align 8, !tbaa !124, !alias.scope !3221, !noalias !3216
  %i.cp = getelementptr i8, ptr %next.gep117, i64 16
  store <2 x i64> %wide.load119, ptr %next.gep117, align 8, !tbaa !124, !alias.scope !3224, !noalias !3221
  store <2 x i64> %wide.load120, ptr %i.cp, align 8, !tbaa !124, !alias.scope !3224, !noalias !3221
  %i.cq = getelementptr i8, ptr %next.gep118, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !124, !alias.scope !3221, !noalias !3216
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !tbaa !124, !alias.scope !3221, !noalias !3216
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.cr, label %middle.block122, label %vector.body115, !llvm.loop !3226

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.cf, %n.vec114
  br i1 %cmp.n123, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i28, label %.lr.ph.i.i.i.i.i.i.i24.preheader126

.lr.ph.i.i.i.i.i.i.i24.preheader126:              ; preds = %vector.memcheck104, %.lr.ph.i.i.i.i.i.i.i24.preheader, %middle.block122
  %.012.i.i.i.i.i.i.i25.ph = phi ptr [ %i.bz, %vector.memcheck104 ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i24.preheader ], [ %i.cl, %middle.block122 ]
  %.0911.i.i.i.i.i.i.i26.ph = phi ptr [ %i.bo, %vector.memcheck104 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i24.preheader ], [ %i.cm, %middle.block122 ]
  br label %.lr.ph.i.i.i.i.i.i.i24

.lr.ph.i.i.i.i.i.i.i24:                           ; preds = %.lr.ph.i.i.i.i.i.i.i24.preheader126, %.lr.ph.i.i.i.i.i.i.i24
  %.012.i.i.i.i.i.i.i25 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i24 ], [ %.012.i.i.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i.i.i24.preheader126 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i26 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i24 ], [ %.0911.i.i.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i.i.i24.preheader126 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i26, align 8, !tbaa !124, !alias.scope !3219, !noalias !3216
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i25, align 8, !tbaa !124, !alias.scope !3216, !noalias !3219
  store ptr null, ptr %.0911.i.i.i.i.i.i.i26, align 8, !tbaa !124, !alias.scope !3219, !noalias !3216
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i26, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i25, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i27 = icmp eq ptr %i.ct, %i.bk
  br i1 %.not.i.i.i.i.i.i.i27, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i28, label %.lr.ph.i.i.i.i.i.i.i24, !llvm.loop !3227

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i28: ; preds = %.lr.ph.i.i.i.i.i.i.i24, %middle.block122, %.noexc33
  %.0.lcssa.i.i.i.i.i.i.i29 = phi ptr [ %i.bz, %.noexc33 ], [ %i.cl, %middle.block122 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i24 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i29, i64 8
  %.not.i23.i.i.i30 = icmp eq ptr %i.bo, null
  br i1 %.not.i23.i.i.i30, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i31, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i28
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i31

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i31: ; preds = %bb.q, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i28
  store ptr %i.bz, ptr %8, align 8, !tbaa !158
  store ptr %i.cv, ptr %i.s, align 8, !tbaa !161
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cw, ptr %i.u, align 8, !tbaa !206
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i31, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISC_ELb1EEELb1ESaISF_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2752") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cx = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc41 unwind label %bb.ab  ; 3 uses

.noexc41:                                         ; preds = %bb.r
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef zeroext 25)
          to label %bb.s unwind label %bb.u, !noalias !3228

bb.s:                                             ; preds = %.noexc41
  %i.cy = load ptr, ptr %9, align 8, !tbaa !2942, !noalias !3228
  store ptr null, ptr %9, align 8, !tbaa !2942, !noalias !3228
  store ptr %i.cy, ptr %5, align 8, !tbaa !1902, !noalias !3228
  invoke void @_ZN6duckdb14CastExpressionC1ENS_11LogicalTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEEb(ptr noundef nonnull align 8 dereferenceable(89) %i.cx, ptr noundef nonnull %4, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.v, !noalias !3228

bb.t:                                             ; preds = %bb.s
  %i.cz = load ptr, ptr %5, align 8, !tbaa !124, !noalias !3228 ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i40, label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %bb.t
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !119, !noalias !3228
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !3228
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(56) %i.cz) #25, !noalias !3228, !inline_history !3196
  br label %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit

bb.u:                                             ; preds = %.noexc41
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.de = landingpad { ptr, i32 }
          cleanup
  %i.df = load ptr, ptr %5, align 8, !tbaa !124, !noalias !3228 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.df, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i: ; preds = %bb.v
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !119, !noalias !3228
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !3228
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(56) %i.df) #25, !noalias !3228, !inline_history !3196
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i7.i, %bb.v
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25, !noalias !3228
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i, %bb.u
  %.pn.i39 = phi { ptr, i32 } [ %i.de, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit8.i ], [ %i.dd, %bb.u ]
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #29, !noalias !3228
  br label %.body42

_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25, !noalias !3228
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store ptr %i.cx, ptr %0, align 8, !tbaa !1902
  %i.dj = load ptr, ptr %9, align 8, !tbaa !2942  ; 3 uses
  %.not.i45 = icmp eq ptr %i.dj, null
  br i1 %.not.i45, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !119
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(209) %i.dj) #25, !inline_history !3197
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14CastExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18FunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.dn = load ptr, ptr %8, align 8, !tbaa !158   ; 3 uses
  %i.do = load ptr, ptr %i.s, align 8, !tbaa !161 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dt, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.dn, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.dp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !124 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !119
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(56) %i.dp) #25, !inline_history !636
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %i.do
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !163

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.du = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.dn, %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.du) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret void

end_hunk_16
begin_hunk_17_@_ZN6duckdb6Binder15BindVacuumTableERNS_13LogicalVacuumERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE:bb.a

bb.cz:                                            ; preds = %_ZNK6duckdb11ColumnIndex9ToLogicalEv.exit
  %i.li = load i64, ptr %i.ec, align 8, !tbaa !1055 ; 2 uses
  %i.lj = urem i64 %storemerge357, %i.li          ; 3 uses
  %i.lk = load ptr, ptr %i.eb, align 8, !tbaa !1053
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.lj
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !756 ; 2 uses
  %.not.i.i.i.i178 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i178, label %.loopexit.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !102 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !97
  %i.lq = icmp eq i64 %storemerge357, %i.lp
  br i1 %i.lq, label %.loopexit, label %.lr.ph.i.i.i.i179

bb.db:                                            ; preds = %bb.dc
  %i.lr = icmp eq i64 %storemerge357, %i.lu
  br i1 %i.lr, label %.loopexit, label %.lr.ph.i.i.i.i179, !llvm.loop !3294

.lr.ph.i.i.i.i179:                                ; preds = %bb.da, %bb.db
  %.020.i.i.i.i = phi ptr [ %i.ls, %bb.db ], [ %i.ln, %bb.da ]
  %i.ls = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !102 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i179
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !97 ; 2 uses
  %i.lv = urem i64 %i.lu, %i.li
  %.not19.i.i.i.i = icmp eq i64 %i.lv, %i.lj
  br i1 %.not19.i.i.i.i, label %bb.db, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !3294

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.dc
  br label %.loopexit.i.i, !llvm.loop !3294

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i179, %..loopexit_crit_edge21.i.i.i.i, %bb.cz
  %i.lw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc180 unwind label %bb.dd ; 5 uses

.noexc180:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.lw, align 8, !tbaa !102
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %storemerge357, ptr %i.lx, align 8, !tbaa !3295
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store i64 0, ptr %i.ly, align 8, !tbaa !3297
  %i.lz = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.eb, i64 noundef %i.lj, i64 noundef %storemerge357, ptr noundef nonnull %i.lw, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc180
  %i.ma = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.lw) #29
  br label %.body

.loopexit:                                        ; preds = %bb.db, %.noexc180, %bb.da
  %.pn.i.i = phi ptr [ %i.lz, %.noexc180 ], [ %i.ln, %bb.da ], [ %i.ls, %bb.db ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store i64 %i.lh, ptr %.1.i.i, align 8, !tbaa !97
  %i.mb = add nuw i64 %storemerge357, 1           ; 2 uses
  %i.mc = load ptr, ptr %i.dy, align 8, !tbaa !1544
  %i.md = load ptr, ptr %i.dx, align 8, !tbaa !1547
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = ptrtoint ptr %i.md to i64
  %i.mg = sub i64 %i.me, %i.mf
  %i.mh = sdiv exact i64 %i.mg, 104
  %i.mi = icmp ult i64 %i.mb, %i.mh
  br i1 %i.mi, label %bb.cw, label %._crit_edge359, !llvm.loop !3298

bb.dd:                                            ; preds = %.loopexit.i.i, %bb.cy, %_ZNK6duckdb11ColumnIndex9ToLogicalEv.exit, %bb.cx, %bb.cw
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.de:                                            ; preds = %._crit_edge359
  call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.mk = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc188 unwind label %bb.dr ; 3 uses

.noexc188:                                        ; preds = %bb.de
  %i.ml = load ptr, ptr %12, align 8, !tbaa !333, !noalias !3299
  store ptr %i.ml, ptr %3, align 8, !tbaa !333, !noalias !3299
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.dv, ptr %i.mm, align 8, !tbaa !334, !noalias !3299
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dw, ptr %i.mn, align 8, !tbaa !335, !noalias !3299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !3299
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.mk, i64 noundef %i.lc, ptr noundef nonnull %3)
          to label %bb.df unwind label %bb.dh, !noalias !3299

bb.df:                                            ; preds = %.noexc188
  store ptr %i.mk, ptr %29, align 8, !tbaa !356, !alias.scope !3299
  %i.mo = load ptr, ptr %3, align 8, !tbaa !333, !noalias !3299 ; 3 uses
  %i.mp = load ptr, ptr %i.mm, align 8, !tbaa !334, !noalias !3299 ; 2 uses
  %.not4.i.i.i.i181 = icmp eq ptr %i.mo, %i.mp
  br i1 %.not4.i.i.i.i181, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i182

.lr.ph.i.i.i.i182:                                ; preds = %bb.df, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i183 = phi ptr [ %i.mu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.mo, %bb.df ] ; 2 uses
  %i.mq = load ptr, ptr %.05.i.i.i.i183, align 8, !tbaa !117, !noalias !3299 ; 3 uses
  %.not.i.i.i.i.i.i184 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i184, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i182
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !119, !noalias !3299
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !3299
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(88) %i.mq) #25, !noalias !3299, !inline_history !358
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i182
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i183, i64 8 ; 2 uses
  %.not.i.i.i.i185 = icmp eq ptr %i.mu, %i.mp
  br i1 %.not.i.i.i.i185, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i182, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i186 = load ptr, ptr %3, align 8, !tbaa !333, !noalias !3299
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.df
  %i.mv = phi ptr [ %.pr.i.i186, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.mo, %bb.df ] ; 2 uses
  %.not.i.i1.i.i187 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i1.i.i187, label %bb.di, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mv) #29, !noalias !3299
  br label %bb.di

bb.dh:                                            ; preds = %.noexc188
  %i.mw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25, !noalias !3299
  call void @_ZdlPv(ptr noundef nonnull %i.mk) #29, !noalias !3299
  br label %.body189

bb.di:                                            ; preds = %bb.dg, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.mx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.dj unwind label %bb.ds     ; 3 uses

bb.dj:                                            ; preds = %bb.di
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 24 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !360 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 32 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !363
  %.not.i.i191 = icmp eq ptr %i.na, %i.nc
  br i1 %.not.i.i191, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nd = load i64, ptr %8, align 8, !tbaa !139
  store i64 %i.nd, ptr %i.na, align 8, !tbaa !139
  store ptr null, ptr %8, align 8, !tbaa !139
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %i.ne, ptr %i.mz, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.dl:                                            ; preds = %bb.dj
  %i.nf = load ptr, ptr %i.my, align 8, !tbaa !364 ; 10 uses
  %i.ng = ptrtoint ptr %i.na to i64               ; 3 uses
  %i.nh = ptrtoint ptr %i.nf to i64               ; 3 uses
  %i.ni = sub i64 %i.ng, %i.nh                    ; 3 uses
  %i.nj = icmp eq i64 %i.ni, 9223372036854775800
  br i1 %i.nj, label %bb.dm, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc201 unwind label %bb.ds

.noexc201:                                        ; preds = %bb.dm
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dl
  %i.nk = ashr exact i64 %i.ni, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i192 = call i64 @llvm.umax.i64(i64 %i.nk, i64 1)
  %i.nl = add nsw i64 %.sroa.speculated.i.i.i.i192, %i.nk ; 2 uses
  %i.nm = icmp ult i64 %i.nl, %i.nk
  %i.nn = call i64 @llvm.umin.i64(i64 %i.nl, i64 1152921504606846975)
  %i.no = select i1 %i.nm, i64 1152921504606846975, i64 %i.nn ; 3 uses
  %.not.i.i.i.i193 = icmp ne i64 %i.no, 0
  call void @llvm.assume(i1 %.not.i.i.i.i193)
  %i.np = shl nuw nsw i64 %i.no, 3
  %i.nq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #26
          to label %.noexc202 unwind label %bb.ds ; 10 uses

.noexc202:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ni
  %i.ns = load i64, ptr %8, align 8, !tbaa !139
  store i64 %i.ns, ptr %i.nr, align 8, !tbaa !139
  store ptr null, ptr %8, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i194 = icmp eq ptr %i.nf, %i.na
  br i1 %.not10.i.i.i.i.i.i.i194, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i195.preheader

.lr.ph.i.i.i.i.i.i.i195.preheader:                ; preds = %.noexc202
  %i.nt = sub i64 %i.ng, %i.nh
  %i.nu = add i64 %i.nt, -8                       ; 2 uses
  %i.nv = lshr i64 %i.nu, 3
  %i.nw = add nuw nsw i64 %i.nv, 1                ; 2 uses
  %min.iters.check568 = icmp ult i64 %i.nu, 152
  br i1 %min.iters.check568, label %.lr.ph.i.i.i.i.i.i.i195.preheader583, label %vector.memcheck561

vector.memcheck561:                               ; preds = %.lr.ph.i.i.i.i.i.i.i195.preheader
  %i.nx = add i64 %i.ng, -8
  %i.ny = sub i64 %i.nx, %i.nh
  %i.nz = and i64 %i.ny, -8
  %i.oa = add i64 %i.nz, 8                        ; 2 uses
  %scevgep562 = getelementptr i8, ptr %i.nq, i64 %i.oa
  %scevgep563 = getelementptr i8, ptr %i.nf, i64 %i.oa
  %bound0564 = icmp ult ptr %i.nq, %scevgep563
  %bound1565 = icmp ult ptr %i.nf, %scevgep562
  %found.conflict566 = and i1 %bound0564, %bound1565
  br i1 %found.conflict566, label %.lr.ph.i.i.i.i.i.i.i195.preheader583, label %vector.ph569

vector.ph569:                                     ; preds = %vector.memcheck561
  %n.vec571 = and i64 %i.nw, 4611686018427387900  ; 3 uses
  %i.ob = shl i64 %n.vec571, 3                    ; 2 uses
  %i.oc = getelementptr i8, ptr %i.nq, i64 %i.ob  ; 2 uses
  %i.od = getelementptr i8, ptr %i.nf, i64 %i.ob
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %vector.ph569
  %index573 = phi i64 [ 0, %vector.ph569 ], [ %index.next578, %vector.body572 ] ; 2 uses
  %i.oe = shl i64 %index573, 3                    ; 2 uses
  %next.gep574 = getelementptr i8, ptr %i.nq, i64 %i.oe ; 2 uses
  %next.gep575 = getelementptr i8, ptr %i.nf, i64 %i.oe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  %i.of = getelementptr i8, ptr %next.gep575, i64 16
  %wide.load576 = load <2 x i64>, ptr %next.gep575, align 8, !tbaa !139, !alias.scope !3307, !noalias !3302
  %wide.load577 = load <2 x i64>, ptr %i.of, align 8, !tbaa !139, !alias.scope !3307, !noalias !3302
  %i.og = getelementptr i8, ptr %next.gep574, i64 16
  store <2 x i64> %wide.load576, ptr %next.gep574, align 8, !tbaa !139, !alias.scope !3310, !noalias !3307
  store <2 x i64> %wide.load577, ptr %i.og, align 8, !tbaa !139, !alias.scope !3310, !noalias !3307
  %i.oh = getelementptr i8, ptr %next.gep575, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep575, align 8, !tbaa !139, !alias.scope !3307, !noalias !3302
  store <2 x ptr> splat (ptr null), ptr %i.oh, align 8, !tbaa !139, !alias.scope !3307, !noalias !3302
  %index.next578 = add nuw i64 %index573, 4       ; 2 uses
  %i.oi = icmp eq i64 %index.next578, %n.vec571
  br i1 %i.oi, label %middle.block579, label %vector.body572, !llvm.loop !3312

middle.block579:                                  ; preds = %vector.body572
  %cmp.n580 = icmp eq i64 %i.nw, %n.vec571
  br i1 %cmp.n580, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i195.preheader583

.lr.ph.i.i.i.i.i.i.i195.preheader583:             ; preds = %vector.memcheck561, %.lr.ph.i.i.i.i.i.i.i195.preheader, %middle.block579
  %.012.i.i.i.i.i.i.i196.ph = phi ptr [ %i.nq, %vector.memcheck561 ], [ %i.nq, %.lr.ph.i.i.i.i.i.i.i195.preheader ], [ %i.oc, %middle.block579 ]
  %.0911.i.i.i.i.i.i.i197.ph = phi ptr [ %i.nf, %vector.memcheck561 ], [ %i.nf, %.lr.ph.i.i.i.i.i.i.i195.preheader ], [ %i.od, %middle.block579 ]
  br label %.lr.ph.i.i.i.i.i.i.i195

.lr.ph.i.i.i.i.i.i.i195:                          ; preds = %.lr.ph.i.i.i.i.i.i.i195.preheader583, %.lr.ph.i.i.i.i.i.i.i195
  %.012.i.i.i.i.i.i.i196 = phi ptr [ %i.ol, %.lr.ph.i.i.i.i.i.i.i195 ], [ %.012.i.i.i.i.i.i.i196.ph, %.lr.ph.i.i.i.i.i.i.i195.preheader583 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i197 = phi ptr [ %i.ok, %.lr.ph.i.i.i.i.i.i.i195 ], [ %.0911.i.i.i.i.i.i.i197.ph, %.lr.ph.i.i.i.i.i.i.i195.preheader583 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  call void @llvm.experimental.noalias.scope.decl(metadata !3305)
  %i.oj = load i64, ptr %.0911.i.i.i.i.i.i.i197, align 8, !tbaa !139, !alias.scope !3305, !noalias !3302
  store i64 %i.oj, ptr %.012.i.i.i.i.i.i.i196, align 8, !tbaa !139, !alias.scope !3302, !noalias !3305
  store ptr null, ptr %.0911.i.i.i.i.i.i.i197, align 8, !tbaa !139, !alias.scope !3305, !noalias !3302
  %i.ok = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i197, i64 8 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i196, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i198 = icmp eq ptr %i.ok, %i.na
  br i1 %.not.i.i.i.i.i.i.i198, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i195, !llvm.loop !3313

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i195, %middle.block579, %.noexc202
  %.0.lcssa.i.i.i.i.i.i.i199 = phi ptr [ %i.nq, %.noexc202 ], [ %i.oc, %middle.block579 ], [ %i.ol, %.lr.ph.i.i.i.i.i.i.i195 ]
  %i.om = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i199, i64 8
  %.not.i23.i.i.i200 = icmp eq ptr %i.nf, null
  br i1 %.not.i23.i.i.i200, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.nf) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.dn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.nq, ptr %i.my, align 8, !tbaa !364
  store ptr %i.om, ptr %i.mz, align 8, !tbaa !360
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.no
  store ptr %i.on, ptr %i.nb, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.dk
  %i.oo = load ptr, ptr %29, align 8, !tbaa !356
  store ptr null, ptr %29, align 8, !tbaa !356
  %i.op = load ptr, ptr %2, align 8, !tbaa !139   ; 3 uses
  store ptr %i.oo, ptr %2, align 8, !tbaa !139
  %.not.i.i.i.i.i203 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i.i203, label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !119
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.op) #25, !inline_history !377
  %.pr = load ptr, ptr %29, align 8, !tbaa !356   ; 3 uses
  %.not.i205 = icmp eq ptr %.pr, null
  br i1 %.not.i205, label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ot = load ptr, ptr %.pr, align 8, !tbaa !119
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(112) %.pr) #25, !inline_history !378
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25
  %i.ow = load ptr, ptr %15, align 16, !tbaa !20  ; 3 uses
  %i.ox = load ptr, ptr %i.dt, align 8, !tbaa !23 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ow, %i.ox
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ow, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.oy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.oy) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.pb, %i.ox
  br i1 %.not.i.i.i206, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !153

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %15, align 16, !tbaa !20
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.pc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ow, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.pc) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.pd = load ptr, ptr %i.ci, align 8, !tbaa !3314 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.pd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i207

.lr.ph.i.i.i.i207:                                ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.pe, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.pd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 4 uses
  %i.pe = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !25 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.pi = icmp eq ptr %i.pg, %i.ph
  br i1 %i.pi, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i208: ; preds = %.lr.ph.i.i.i.i207
  call void @_ZdlPv(ptr noundef %i.pg) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i208
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i209 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i.i209, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i207, !llvm.loop !1495

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.pj = load ptr, ptr %14, align 8, !tbaa !3275
  %i.pk = load i64, ptr %i.ch, align 8, !tbaa !3277
  %i.pl = shl i64 %i.pk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.pj, i8 0, i64 %i.pl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.pm = load ptr, ptr %14, align 8, !tbaa !3275 ; 2 uses
  %i.pn = icmp eq ptr %i.pm, %i.cg
  br i1 %i.pn, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.pm) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %bb.dp, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %.pre401 = load ptr, ptr %8, align 8, !tbaa !139 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.not.i218 = icmp eq ptr %.pre401, null
  br i1 %.not.i218, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit220, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i219

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i219: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.po = load ptr, ptr %.pre401, align 8, !tbaa !119
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pre401) #25, !inline_history !181
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit220

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit220: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.dq

bb.dq:                                            ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit220
end_hunk_17
begin_hunk_18_@_ZN6duckdb19ColumnRefExpressionD2Ev:bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6duckdb14BaseExpressionE, i64 16), ptr %0, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN6duckdb14BaseExpressionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.k) #29
  br label %_ZN6duckdb14BaseExpressionD2Ev.exit

_ZN6duckdb14BaseExpressionD2Ev.exit:              ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare i64 @_ZNK6duckdb10ColumnList17LogicalToPhysicalENS_12LogicalIndexE(ptr noundef nonnull align 8 dereferenceable(105), i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3314 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !102 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #29
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1495

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !3275
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !3277
  %i.k = shl i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.k, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !3275   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.l) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder4BindERNS_15VacuumStatementE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::BoundStatement") align 8 initializes((0, 57), (64, 136)) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.2240", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::unique_ptr.2249", align 8 ; 10 uses
  %6 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %7 = alloca [1 x %"struct.duckdb::LogicalType"], align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 57, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr null, ptr %4, align 8, !tbaa !827
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3318, !noalias !3315
  store i64 %i.d, ptr %3, align 8, !tbaa !3318, !noalias !3315
  store ptr null, ptr %i.c, align 8, !tbaa !3318, !noalias !3315
  invoke void @_ZN6duckdb13LogicalVacuumC1ENS_10unique_ptrINS_10VacuumInfoESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c, !noalias !3315

bb.b:                                             ; preds = %.noexc
  store ptr %i.b, ptr %5, align 8, !tbaa !3320, !alias.scope !3315
  %i.e = load ptr, ptr %3, align 8, !tbaa !3318, !noalias !3315 ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIN6duckdb10VacuumInfoEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10VacuumInfoEEclEPS1_.exit.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119, !noalias !3315
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !3315
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #25, !noalias !3315, !inline_history !3322
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !3318, !noalias !3315 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.j, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN6duckdb10VacuumInfoESt14default_deleteIS1_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN6duckdb10VacuumInfoEEclEPS1_.exit.i4.i

_ZNKSt14default_deleteIN6duckdb10VacuumInfoEEclEPS1_.exit.i4.i: ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119, !noalias !3315
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3315
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #25, !noalias !3315, !inline_history !3322
  br label %_ZNSt10unique_ptrIN6duckdb10VacuumInfoESt14default_deleteIS1_EED2Ev.exit5.i

_ZNSt10unique_ptrIN6duckdb10VacuumInfoESt14default_deleteIS1_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10VacuumInfoEEclEPS1_.exit.i4.i, %bb.c
  call void @_ZdlPv(ptr noundef nonnull %i.b) #29, !noalias !3315
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb10VacuumInfoEEclEPS1_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb10unique_ptrINS_13LogicalVacuumESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb6Binder15BindVacuumTableERNS_13LogicalVacuumERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(176) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %.not = icmp eq ptr %i.o, null
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalVacuumESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.n       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !360  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !363
  %.not.i.i22 = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %i.p, ptr %i.t, align 8, !tbaa !139
  store ptr null, ptr %4, align 8, !tbaa !139
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.s, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !364  ; 10 uses
  %i.y = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc23 unwind label %bb.n

.noexc23:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #26
          to label %.noexc24 unwind label %bb.n   ; 10 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i64 %i.p, ptr %i.aj, align 8, !tbaa !139
  store ptr null, ptr %4, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc24
  %i.ak = sub i64 %i.y, %i.z
  %i.al = add i64 %i.ak, -8                       ; 2 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader106, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ao = add i64 %i.y, -8
  %i.ap = sub i64 %i.ao, %i.z
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ai, i64 %i.ar
  %scevgep102 = getelementptr i8, ptr %i.x, i64 %i.ar
  %bound0 = icmp ult ptr %i.ai, %scevgep102
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader106, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.x, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep103 = getelementptr i8, ptr %i.x, i64 %i.av ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.aw = getelementptr i8, ptr %next.gep103, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep103, align 8, !tbaa !139, !alias.scope !3328, !noalias !3323
  %wide.load104 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !139, !alias.scope !3328, !noalias !3323
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !139, !alias.scope !3331, !noalias !3328
  store <2 x i64> %wide.load104, ptr %i.ax, align 8, !tbaa !139, !alias.scope !3331, !noalias !3328
  %i.ay = getelementptr i8, ptr %next.gep103, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep103, align 8, !tbaa !139, !alias.scope !3328, !noalias !3323
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !139, !alias.scope !3328, !noalias !3323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !3333

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader106

.lr.ph.i.i.i.i.i.i.i.preheader106:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader106, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader106 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader106 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.experimental.noalias.scope.decl(metadata !3326)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3326, !noalias !3323
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3323, !noalias !3326
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3326, !noalias !3323
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3334

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc24
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc24 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !364
  store ptr %i.bd, ptr %i.s, align 8, !tbaa !360
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.be, ptr %i.u, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.k, %bb.g, %bb.e, %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bh, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.bi, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 23
  store i8 0, ptr %i.bj, align 1, !tbaa !19
  %i.bk = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i unwind label %.body26.thread ; 4 uses

.body26.thread:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bn = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %6, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bk)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit unwind label %.body26

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bk, ptr %i.bp, align 8, !tbaa !20
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !23
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !24
  %.pre87 = load ptr, ptr %6, align 8, !tbaa !25  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = icmp eq ptr %.pre87, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %.pre87) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 10)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %.noexc59 unwind label %.body60.thread ; 4 uses

.noexc59:                                         ; preds = %bb.o
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit unwind label %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc59
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  %i.bx = call ptr @__cxa_begin_catch(ptr %i.bw) #25 ; 0 uses
  invoke void @__cxa_rethrow() #27
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body60 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #28
  unreachable

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body60.thread:                                   ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body29

.body60:                                          ; preds = %bb.p
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #29
  br label %.body29

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc59
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bu, ptr %i.cd, align 8, !tbaa !7
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !11
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !12
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cg = load ptr, ptr %5, align 8, !tbaa !3320
  store ptr null, ptr %5, align 8, !tbaa !3320
  store ptr %i.cg, ptr %0, align 8, !tbaa !139
  %i.ch = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZN6duckdb6Binder22GetStatementPropertiesEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 115
  store i8 2, ptr %i.ci, align 1, !tbaa !149
  %i.cj = load ptr, ptr %5, align 8, !tbaa !3320  ; 3 uses
  %.not.i42 = icmp eq ptr %i.cj, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb13LogicalVacuumEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LogicalVacuumEEclEPS1_.exit.i: ; preds = %bb.s
end_hunk_18
begin_hunk_19_@_ZN6duckdb14LogicalExecuteD0Ev:bb.a
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14LogicalExecuteD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !178
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3749
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3749
  br label %_ZN6duckdb14LogicalExecuteD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb14LogicalExecuteD2Ev.exit, !prof !154

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !3750
  br label %_ZN6duckdb14LogicalExecuteD2Ev.exit

_ZN6duckdb14LogicalExecuteD2Ev.exit:              ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(120) %0) #25, !inline_history !3750
  tail call void @_ZdlPv(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14LogicalExecute17GetColumnBindingsEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.496") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  tail call void @_ZN6duckdb15LogicalOperator22GenerateColumnBindingsEmm(ptr dead_on_unwind writable sret(%"class.duckdb::vector.496") align 8 %0, i64 noundef 0, i64 noundef %i.h)
  ret void
}

declare noundef i64 @_ZN6duckdb15LogicalOperator12GetRootIndexEv(ptr noundef nonnull align 8 dereferenceable(97)) unnamed_addr #2

declare void @_ZNK6duckdb15LogicalOperator7GetNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(97)) unnamed_addr #2

declare void @_ZNK6duckdb15LogicalOperator14ParamsToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.duckdb::InsertionOrderPreservingMap.593") align 8, ptr noundef nonnull align 8 dereferenceable(97)) unnamed_addr #2

declare void @_ZNK6duckdb15LogicalOperator8ToStringB5cxx11ENS_13ExplainFormatE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(97), i8 noundef zeroext) unnamed_addr #2

declare void @_ZN6duckdb15LogicalOperator6VerifyERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #2

declare noundef i64 @_ZN6duckdb15LogicalOperator19EstimateCardinalityERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #2

declare void @_ZNK6duckdb15LogicalOperator9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(680)) unnamed_addr #2

declare void @_ZNK6duckdb15LogicalOperator4CopyERNS_13ClientContextE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(512)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb15LogicalOperator16RequireOptimizerEv(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb14LogicalExecute20SupportSerializationEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb15LogicalOperator16HasProjectionMapEv(ptr noundef nonnull align 8 dereferenceable(97) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK6duckdb15LogicalOperator13GetTableIndexEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector.479") align 8, ptr noundef nonnull align 8 dereferenceable(97)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14LogicalExecute12ResolveTypesEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 0 uses
  ret void
}

declare void @_ZN6duckdb15LogicalOperator22GenerateColumnBindingsEmm(ptr dead_on_unwind writable sret(%"class.duckdb::vector.496") align 8, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14LogicalExplainC2ENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEENS_11ExplainTypeENS_13ExplainFormatE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext -106)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb14LogicalExplainE, i64 16), ptr %0, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 %2, ptr %i.a, align 1, !tbaa !3751
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 98
  store i8 %3, ptr %i.b, align 2, !tbaa !3753
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.e, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.h, align 8, !tbaa !16
  store i8 0, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.k, align 8, !tbaa !16
  store i8 0, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !360  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !363
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load i64, ptr %1, align 8, !tbaa !139
  store i64 %i.q, ptr %i.n, align 8, !tbaa !139
  store ptr null, ptr %1, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !364  ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #26
          to label %.noexc4 unwind label %bb.f    ; 10 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = load i64, ptr %1, align 8, !tbaa !139
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !139
  store ptr null, ptr %1, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc4
  %i.ag = sub i64 %i.t, %i.u
  %i.ah = add i64 %i.ag, -8                       ; 2 uses
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ak = add i64 %i.t, -8
  %i.al = sub i64 %i.ak, %i.u
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.an
  %scevgep16 = getelementptr i8, ptr %i.s, i64 %i.an
  %bound0 = icmp ult ptr %i.ad, %scevgep16
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ad, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.s, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.as = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !139, !alias.scope !3759, !noalias !3754
  %wide.load18 = load <2 x i64>, ptr %i.as, align 8, !tbaa !139, !alias.scope !3759, !noalias !3754
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !139, !alias.scope !3762, !noalias !3759
  store <2 x i64> %wide.load18, ptr %i.at, align 8, !tbaa !139, !alias.scope !3762, !noalias !3759
  %i.au = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !139, !alias.scope !3759, !noalias !3754
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !139, !alias.scope !3759, !noalias !3754
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !3764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.i.i.preheader20:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3757)
  %i.aw = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3757, !noalias !3754
  store i64 %i.aw, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3754, !noalias !3757
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3757, !noalias !3754
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3765

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc4
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc4 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !364
  store ptr %i.az, ptr %i.m, align 8, !tbaa !360
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ba, ptr %i.o, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.b
  ret void

bb.f:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !25  ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.j
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef %i.bc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !25  ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.g
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.be) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.d
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  tail call void @_ZdlPv(ptr noundef %i.bg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  tail call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) #25
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef signext i8 @_ZN6duckdb15NumericCastImplIciLb0EE7ConvertEi(i32 noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = add i32 %0, -128
  %or.cond = icmp ult i32 %i.e, -256
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %0, ptr %i.b, align 4, !tbaa !3
  store i8 -128, ptr %i.c, align 1, !tbaa !19
  store i8 127, ptr %i.d, align 1, !tbaa !19
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 75, ptr %i.a, align 8, !tbaa !97
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ; 3 uses

.noexc.i:                                         ; preds = %bb.b
  store ptr %i.h, ptr %1, align 8, !tbaa !25
  %i.i = load i64, ptr %i.a, align 8, !tbaa !97   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.h, ptr noundef nonnull align 1 dereferenceable(75) @.str.245, i64 75, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 0, ptr %i.k, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC2IJRiRcS3_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc.i
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc.i
  %.0.i = phi i1 [ false, %bb.c ], [ true, %.noexc.i ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.n) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn8.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn7.i = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn8.i, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn7.i

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.p = trunc nsw i32 %0 to i8
  ret i8 %i.p
end_hunk_19
begin_hunk_20_@_ZNK6duckdb12optional_ptrINS_26PragmaFunctionCatalogEntryELb1EE10CheckValidEv:bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(344) ptr @_ZN6duckdb6vectorINS_14PragmaFunctionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3938
  %i.e = load ptr, ptr %0, align 8, !tbaa !3941   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 344                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !97
  store i64 %i.i, ptr %i.b, align 8, !tbaa !97
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_14PragmaFunctionELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !446

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.195, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_14PragmaFunctionELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [344 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14LogicalPrepareC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10shared_ptrINS_21PreparedStatementDataELb1EEENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteISB_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext -81)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb14LogicalPrepareE, i64 16), ptr %0, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !25
  %i.j = load i64, ptr %i.d, align 8, !tbaa !19
  store i64 %i.j, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.l, ptr %i.m, align 8, !tbaa !16
  store ptr %i.d, ptr %1, align 8, !tbaa !25
  store i64 0, ptr %i.k, align 8, !tbaa !16
  store i8 0, ptr %i.d, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.o, align 8, !tbaa !175
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !280
  store ptr null, ptr %i.p, align 8, !tbaa !175
  store <2 x ptr> %i.q, ptr %i.n, align 8, !tbaa !280
  store ptr null, ptr %2, align 8, !tbaa !1672
  %i.r = load ptr, ptr %3, align 8                ; 2 uses
  %.not = icmp eq ptr %i.r, null
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !360  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !363
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.s, ptr %i.v, align 8, !tbaa !139
  store ptr null, ptr %3, align 8, !tbaa !139
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.u, align 8, !tbaa !360
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !364  ; 10 uses
  %i.aa = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #26
          to label %.noexc2 unwind label %bb.h    ; 10 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i64 %i.s, ptr %i.al, align 8, !tbaa !139
  store ptr null, ptr %3, align 8, !tbaa !139
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc2
  %i.am = sub i64 %i.aa, %i.ab
  %i.an = add i64 %i.am, -8                       ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aq = add i64 %i.aa, -8
  %i.ar = sub i64 %i.aq, %i.ab
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ak, i64 %i.at
  %scevgep9 = getelementptr i8, ptr %i.z, i64 %i.at
  %bound0 = icmp ult ptr %i.ak, %scevgep9
  %bound1 = icmp ult ptr %i.z, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.z, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %next.gep10 = getelementptr i8, ptr %i.z, i64 %i.ax ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  %i.ay = getelementptr i8, ptr %next.gep10, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep10, align 8, !tbaa !139, !alias.scope !3947, !noalias !3942
  %wide.load11 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !139, !alias.scope !3947, !noalias !3942
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !139, !alias.scope !3950, !noalias !3947
  store <2 x i64> %wide.load11, ptr %i.az, align 8, !tbaa !139, !alias.scope !3950, !noalias !3947
  %i.ba = getelementptr i8, ptr %next.gep10, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep10, align 8, !tbaa !139, !alias.scope !3947, !noalias !3942
  store <2 x ptr> splat (ptr null), ptr %i.ba, align 8, !tbaa !139, !alias.scope !3947, !noalias !3942
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !3952

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.i.i.preheader13:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader13 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  %i.bc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3945, !noalias !3942
  store i64 %i.bc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3942, !noalias !3945
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !139, !alias.scope !3945, !noalias !3942
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3953

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc2 ], [ %i.av, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !364
  store ptr %i.bf, ptr %i.u, align 8, !tbaa !360
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bg, ptr %i.w, align 8, !tbaa !363
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.h:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.n) #25
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.b
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef %i.bi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) #25
  resume { ptr, i32 } %i.bh

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  ret void
}

declare void @_ZN6duckdb15CreateIndexInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(600)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10LogicalGetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.27", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3237
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.203, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA15_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(15) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !20     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %i.m = select i1 %i.k, i64 288230376151711743, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = shl nuw nsw i64 %i.m, 5
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 6 uses
end_hunk_20
