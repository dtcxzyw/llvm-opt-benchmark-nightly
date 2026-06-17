inline.NumInlined: 3488
inline.NumDeleted: 1756
begin_hunk_0_@_ZN6duckdb14FilterPushdown20PushdownCrossProductENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a

bb.f:                                             ; preds = %bb.c
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.cp unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.022 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %6, align 8, !tbaa !110    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.p) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.022, label %bb.j, label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.022, label %bb.j, label %bb.cn

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn168 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #19
  br label %bb.cn

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 1, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 8, !tbaa !134
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.x, ptr %9, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 1, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !135
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !135
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef 0)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.al = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef 1)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ao = invoke noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97) %i.ao, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !135 ; 2 uses
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !135 ; 2 uses
  %.not172 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not172, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.v:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %.sroa.0163.0173 = phi ptr [ %i.ap, %.lr.ph ], [ %i.fi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit ] ; 11 uses
  %i.ba = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0173)
          to label %bb.w unwind label %.loopexit169

bb.w:                                             ; preds = %bb.v
  %i.bb = invoke i8 @_ZN6duckdb8JoinSide11GetJoinSideERKSt13unordered_setImSt4hashImESt8equal_toImESaImEES9_S9_(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.x unwind label %.loopexit169

bb.x:                                             ; preds = %bb.w
  switch i8 %i.bb, label %bb.ag [
    i8 1, label %bb.y
    i8 2, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !62 ; 6 uses
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = load i64, ptr %.sroa.0163.0173, align 8, !tbaa !130
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0163.0173, align 8, !tbaa !130
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.aa:                                            ; preds = %bb.y
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !63 ; 10 uses
  %i.bh = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.aa, %bb.aj, %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #21
          to label %.noexc38 unwind label %.loopexit169 ; 10 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i64, ptr %.sroa.0163.0173, align 8, !tbaa !130
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0163.0173, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc38
  %20 = sub i64 %i.bh, %i.bi
  %21 = add i64 %20, -8                           ; 2 uses
  %i.bu = lshr i64 %21, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check262 = icmp ult i64 %21, 56
  br i1 %min.iters.check262, label %.lr.ph.i.i.i.i.i.i.i.preheader302, label %vector.memcheck253

vector.memcheck253:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep254 = getelementptr i8, ptr %i.br, i64 8
  %i.bw = add i64 %i.bh, -8
  %i.bx = sub i64 %i.bw, %i.bi
  %i.by = and i64 %i.bx, -8                       ; 2 uses
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %i.by
  %scevgep256 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep257 = getelementptr i8, ptr %scevgep256, i64 %i.by
  %bound0258 = icmp ult ptr %i.br, %scevgep257
  %bound1259 = icmp ult ptr %i.bg, %scevgep255
  %found.conflict260 = and i1 %bound0258, %bound1259
  br i1 %found.conflict260, label %.lr.ph.i.i.i.i.i.i.i.preheader302, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck253
  %n.vec265 = and i64 %i.bv, 4611686018427387900  ; 3 uses
  %i.bz = shl i64 %n.vec265, 3                    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.br, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  br label %vector.body266

vector.body266:                                   ; preds = %vector.body266, %vector.ph263
  %index267 = phi i64 [ 0, %vector.ph263 ], [ %index.next272, %vector.body266 ] ; 2 uses
  %i.cc = shl i64 %index267, 3                    ; 2 uses
  %next.gep268 = getelementptr i8, ptr %i.br, i64 %i.cc ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.bg, i64 %i.cc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.cd = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load270 = load <2 x i64>, ptr %next.gep269, align 8, !tbaa !130, !alias.scope !142, !noalias !137
  %wide.load271 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !130, !alias.scope !142, !noalias !137
  %i.ce = getelementptr i8, ptr %next.gep268, i64 16
  store <2 x i64> %wide.load270, ptr %next.gep268, align 8, !tbaa !130, !alias.scope !145, !noalias !142
  store <2 x i64> %wide.load271, ptr %i.ce, align 8, !tbaa !130, !alias.scope !145, !noalias !142
  %i.cf = getelementptr i8, ptr %next.gep269, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep269, align 8, !tbaa !130, !alias.scope !142, !noalias !137
  store <2 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !130, !alias.scope !142, !noalias !137
  %index.next272 = add nuw i64 %index267, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next272, %n.vec265
  br i1 %i.cg, label %middle.block273, label %vector.body266, !llvm.loop !147

middle.block273:                                  ; preds = %vector.body266
  %cmp.n274 = icmp eq i64 %i.bv, %n.vec265
  br i1 %cmp.n274, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader302

.lr.ph.i.i.i.i.i.i.i.preheader302:                ; preds = %vector.memcheck253, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block273
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck253 ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block273 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck253 ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block273 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader302, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader302 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader302 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ch = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !140, !noalias !137
  store i64 %i.ch, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !137, !noalias !140
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !140, !noalias !137
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ci, %i.bc
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !150

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block273, %.noexc38
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.br, %.noexc38 ], [ %i.ca, %middle.block273 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bg) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.br, ptr %i.au, align 8, !tbaa !63
  store ptr %i.ck, ptr %i.av, align 8, !tbaa !62
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cl, ptr %i.aw, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

.loopexit169:                                     ; preds = %bb.v, %bb.w, %bb.ag, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i40, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ac:                                            ; preds = %bb.x
  %i.cm = load ptr, ptr %i.as, align 8, !tbaa !62 ; 6 uses
  %i.cn = load ptr, ptr %i.at, align 8, !tbaa !136
  %.not.i.i39 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i39, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = load i64, ptr %.sroa.0163.0173, align 8, !tbaa !130
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0163.0173, align 8, !tbaa !130
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cp, ptr %i.as, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cq = load ptr, ptr %i.ar, align 8, !tbaa !63 ; 10 uses
  %i.cr = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i40

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i40: ; preds = %bb.ae
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i41 = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i.i41, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i.i42 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i42)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #21
          to label %.noexc53 unwind label %.loopexit169 ; 10 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  %i.dd = load i64, ptr %.sroa.0163.0173, align 8, !tbaa !130
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0163.0173, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i43 = icmp eq ptr %i.cq, %i.cm
  br i1 %.not10.i.i.i.i.i.i.i43, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i44.preheader

.lr.ph.i.i.i.i.i.i.i44.preheader:                 ; preds = %.noexc53
  %22 = sub i64 %i.cr, %i.cs
  %23 = add i64 %22, -8                           ; 2 uses
  %i.de = lshr i64 %23, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check286 = icmp ult i64 %23, 56
  br i1 %min.iters.check286, label %.lr.ph.i.i.i.i.i.i.i44.preheader303, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i.i.i.i.i.i.i44.preheader
  %scevgep278 = getelementptr i8, ptr %i.db, i64 8
  %i.dg = add i64 %i.cr, -8
  %i.dh = sub i64 %i.dg, %i.cs
  %i.di = and i64 %i.dh, -8                       ; 2 uses
  %scevgep279 = getelementptr i8, ptr %scevgep278, i64 %i.di
  %scevgep280 = getelementptr i8, ptr %i.cq, i64 8
  %scevgep281 = getelementptr i8, ptr %scevgep280, i64 %i.di
  %bound0282 = icmp ult ptr %i.db, %scevgep281
  %bound1283 = icmp ult ptr %i.cq, %scevgep279
  %found.conflict284 = and i1 %bound0282, %bound1283
  br i1 %found.conflict284, label %.lr.ph.i.i.i.i.i.i.i44.preheader303, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck277
  %n.vec289 = and i64 %i.df, 4611686018427387900  ; 3 uses
  %i.dj = shl i64 %n.vec289, 3                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.db, i64 %i.dj  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cq, i64 %i.dj
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph287
  %index291 = phi i64 [ 0, %vector.ph287 ], [ %index.next296, %vector.body290 ] ; 2 uses
  %i.dm = shl i64 %index291, 3                    ; 2 uses
  %next.gep292 = getelementptr i8, ptr %i.db, i64 %i.dm ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.cq, i64 %i.dm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.dn = getelementptr i8, ptr %next.gep293, i64 16
  %wide.load294 = load <2 x i64>, ptr %next.gep293, align 8, !tbaa !130, !alias.scope !156, !noalias !151
  %wide.load295 = load <2 x i64>, ptr %i.dn, align 8, !tbaa !130, !alias.scope !156, !noalias !151
  %i.do = getelementptr i8, ptr %next.gep292, i64 16
  store <2 x i64> %wide.load294, ptr %next.gep292, align 8, !tbaa !130, !alias.scope !159, !noalias !156
  store <2 x i64> %wide.load295, ptr %i.do, align 8, !tbaa !130, !alias.scope !159, !noalias !156
  %i.dp = getelementptr i8, ptr %next.gep293, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep293, align 8, !tbaa !130, !alias.scope !156, !noalias !151
  store <2 x ptr> splat (ptr null), ptr %i.dp, align 8, !tbaa !130, !alias.scope !156, !noalias !151
  %index.next296 = add nuw i64 %index291, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next296, %n.vec289
  br i1 %i.dq, label %middle.block297, label %vector.body290, !llvm.loop !161

middle.block297:                                  ; preds = %vector.body290
  %cmp.n298 = icmp eq i64 %i.df, %n.vec289
  br i1 %cmp.n298, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i44.preheader303

.lr.ph.i.i.i.i.i.i.i44.preheader303:              ; preds = %vector.memcheck277, %.lr.ph.i.i.i.i.i.i.i44.preheader, %middle.block297
  %.012.i.i.i.i.i.i.i45.ph = phi ptr [ %i.db, %vector.memcheck277 ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i44.preheader ], [ %i.dk, %middle.block297 ]
  %.0911.i.i.i.i.i.i.i46.ph = phi ptr [ %i.cq, %vector.memcheck277 ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i44.preheader ], [ %i.dl, %middle.block297 ]
  br label %.lr.ph.i.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i.i44:                           ; preds = %.lr.ph.i.i.i.i.i.i.i44.preheader303, %.lr.ph.i.i.i.i.i.i.i44
  %.012.i.i.i.i.i.i.i45 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i.i44 ], [ %.012.i.i.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i.i.i44.preheader303 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i46 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i44 ], [ %.0911.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i44.preheader303 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.dr = load i64, ptr %.0911.i.i.i.i.i.i.i46, align 8, !tbaa !130, !alias.scope !154, !noalias !151
  store i64 %i.dr, ptr %.012.i.i.i.i.i.i.i45, align 8, !tbaa !130, !alias.scope !151, !noalias !154
  store ptr null, ptr %.0911.i.i.i.i.i.i.i46, align 8, !tbaa !130, !alias.scope !154, !noalias !151
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i46, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i45, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i47 = icmp eq ptr %i.ds, %i.cm
  br i1 %.not.i.i.i.i.i.i.i47, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i48, label %.lr.ph.i.i.i.i.i.i.i44, !llvm.loop !162

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i48: ; preds = %.lr.ph.i.i.i.i.i.i.i44, %middle.block297, %.noexc53
  %.0.lcssa.i.i.i.i.i.i.i49 = phi ptr [ %i.db, %.noexc53 ], [ %i.dk, %middle.block297 ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i44 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i49, i64 8
  %.not.i23.i.i.i50 = icmp eq ptr %i.cq, null
  br i1 %.not.i23.i.i.i50, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i51, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i48
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i51

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i51: ; preds = %bb.af, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i48
  store ptr %i.db, ptr %i.ar, align 8, !tbaa !63
  store ptr %i.du, ptr %i.as, align 8, !tbaa !62
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dv, ptr %i.at, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.ag:                                            ; preds = %bb.x
  %i.dw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0163.0173)
          to label %bb.ah unwind label %.loopexit169

bb.ah:                                            ; preds = %bb.ag
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 4 uses
  %i.dy = load ptr, ptr %i.ax, align 8, !tbaa !163 ; 6 uses
  %i.dz = load ptr, ptr %i.ay, align 8, !tbaa !164
  %.not.i.i55 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not.i.i55, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load i64, ptr %i.dx, align 8, !tbaa !82
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !82
  store ptr null, ptr %i.dx, align 8, !tbaa !82
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.eb, ptr %i.ax, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ec = load ptr, ptr %5, align 8, !tbaa !165   ; 10 uses
  %i.ed = ptrtoint ptr %i.dy to i64               ; 3 uses
  %i.ee = ptrtoint ptr %i.ec to i64               ; 3 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775800
  br i1 %i.eg, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.eh = ashr exact i64 %i.ef, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i56 = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i56, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 1152921504606846975)
  %i.el = select i1 %i.ej, i64 1152921504606846975, i64 %i.ek ; 3 uses
  %.not.i.i.i.i57 = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i.i57)
  %i.em = shl nuw nsw i64 %i.el, 3
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #21
          to label %.noexc66 unwind label %.loopexit169 ; 10 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ef
  %i.ep = load i64, ptr %i.dx, align 8, !tbaa !82
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !82
  store ptr null, ptr %i.dx, align 8, !tbaa !82
  %.not10.i.i.i.i.i.i.i58 = icmp eq ptr %i.ec, %i.dy
  br i1 %.not10.i.i.i.i.i.i.i58, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i.i.i59.preheader:                 ; preds = %.noexc66
  %24 = sub i64 %i.ed, %i.ee
  %25 = add i64 %24, -8                           ; 2 uses
  %i.eq = lshr i64 %25, 3
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i59.preheader301, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i59.preheader
  %scevgep = getelementptr i8, ptr %i.en, i64 8
  %i.es = add i64 %i.ed, -8
  %i.et = sub i64 %i.es, %i.ee
  %i.eu = and i64 %i.et, -8                       ; 2 uses
  %scevgep247 = getelementptr i8, ptr %scevgep, i64 %i.eu
  %scevgep248 = getelementptr i8, ptr %i.ec, i64 8
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.eu
  %bound0 = icmp ult ptr %i.en, %scevgep249
  %bound1 = icmp ult ptr %i.ec, %scevgep247
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i59.preheader301, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.er, 4611686018427387900     ; 3 uses
  %i.ev = shl i64 %n.vec, 3                       ; 2 uses
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ec, i64 %i.ev
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.en, i64 %i.ey ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.ec, i64 %i.ey ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ez = getelementptr i8, ptr %next.gep250, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep250, align 8, !tbaa !82, !alias.scope !171, !noalias !166
  %wide.load251 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !82, !alias.scope !171, !noalias !166
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !82, !alias.scope !174, !noalias !171
  store <2 x i64> %wide.load251, ptr %i.fa, align 8, !tbaa !82, !alias.scope !174, !noalias !171
  %i.fb = getelementptr i8, ptr %next.gep250, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep250, align 8, !tbaa !82, !alias.scope !171, !noalias !166
  store <2 x ptr> splat (ptr null), ptr %i.fb, align 8, !tbaa !82, !alias.scope !171, !noalias !166
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.er, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i59.preheader301

.lr.ph.i.i.i.i.i.i.i59.preheader301:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i59.preheader, %middle.block
  %.012.i.i.i.i.i.i.i60.ph = phi ptr [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.i.i.i.i.i.i.i59.preheader ], [ %i.ew, %middle.block ]
  %.0911.i.i.i.i.i.i.i61.ph = phi ptr [ %i.ec, %vector.memcheck ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i59.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i.i59:                           ; preds = %.lr.ph.i.i.i.i.i.i.i59.preheader301, %.lr.ph.i.i.i.i.i.i.i59
  %.012.i.i.i.i.i.i.i60 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i59 ], [ %.012.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i59.preheader301 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i61 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i.i59 ], [ %.0911.i.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i.i59.preheader301 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.fd = load i64, ptr %.0911.i.i.i.i.i.i.i61, align 8, !tbaa !82, !alias.scope !169, !noalias !166
  store i64 %i.fd, ptr %.012.i.i.i.i.i.i.i60, align 8, !tbaa !82, !alias.scope !166, !noalias !169
  store ptr null, ptr %.0911.i.i.i.i.i.i.i61, align 8, !tbaa !82, !alias.scope !169, !noalias !166
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i60, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i62 = icmp eq ptr %i.fe, %i.dy
  br i1 %.not.i.i.i.i.i.i.i62, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i59, !llvm.loop !177

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i59, %middle.block, %.noexc66
  %.0.lcssa.i.i.i.i.i.i.i63 = phi ptr [ %i.en, %.noexc66 ], [ %i.ew, %middle.block ], [ %i.ff, %.lr.ph.i.i.i.i.i.i.i59 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i63, i64 8
  %.not.i23.i.i.i64 = icmp eq ptr %i.ec, null
  br i1 %.not.i23.i.i.i64, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ec) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ak, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.en, ptr %5, align 8, !tbaa !165
  store ptr %i.fg, ptr %i.ax, align 8, !tbaa !163
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.el
  store ptr %i.fh, ptr %i.ay, align 8, !tbaa !164
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ai, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i51, %bb.ad, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0163.0173, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fi, %i.aq
  br i1 %.not, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %bb.t, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.fj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.al unwind label %bb.bu

bb.al:                                            ; preds = %.loopexit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i64 noundef 0)
          to label %bb.am unwind label %bb.bu     ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !96
  store i64 %i.fm, ptr %11, align 8, !tbaa !96
  store ptr null, ptr %i.fl, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %10, ptr noundef nonnull align 8 dereferenceable(288) %3, ptr noundef nonnull %11)
          to label %bb.an unwind label %bb.bv

bb.an:                                            ; preds = %bb.am
  %i.fn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ao unwind label %bb.bw

bb.ao:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 noundef 0)
          to label %bb.ap unwind label %bb.bw     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fq = load ptr, ptr %10, align 8, !tbaa !96
  store ptr null, ptr %10, align 8, !tbaa !96
  %i.fr = load ptr, ptr %i.fp, align 8, !tbaa !96 ; 3 uses
  store ptr %i.fq, ptr %i.fp, align 8, !tbaa !96
  %.not.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ap
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !92
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fr) #19, !inline_history !107
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ap, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.fv = load ptr, ptr %10, align 8, !tbaa !96   ; 3 uses
  %.not.i = icmp eq ptr %i.fv, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !92
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fv) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.fz = load ptr, ptr %11, align 8, !tbaa !96   ; 3 uses
  %.not.i67 = icmp eq ptr %i.fz, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i68: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !92
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fz) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit69: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.gd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.aq unwind label %bb.bx

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit69
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i64 noundef 1)
          to label %bb.ar unwind label %bb.bx     ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !96
  store i64 %i.gg, ptr %13, align 8, !tbaa !96
  store ptr null, ptr %i.gf, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %12, ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull %13)
          to label %bb.as unwind label %bb.by

bb.as:                                            ; preds = %bb.ar
  %i.gh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.at unwind label %bb.bz

bb.at:                                            ; preds = %bb.as
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gi, i64 noundef 1)
          to label %bb.au unwind label %bb.bz     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.gk = load ptr, ptr %12, align 8, !tbaa !96
  store ptr null, ptr %12, align 8, !tbaa !96
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !96 ; 3 uses
  store ptr %i.gk, ptr %i.gj, align 8, !tbaa !96
  %.not.i.i.i.i.i70 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i70, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit72, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i71

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i71: ; preds = %bb.au
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !92
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.gl) #19, !inline_history !107
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit72

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit72: ; preds = %bb.au, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i71
  %i.gp = load ptr, ptr %12, align 8, !tbaa !96   ; 3 uses
  %.not.i73 = icmp eq ptr %i.gp, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit75, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i74
end_hunk_0
begin_hunk_1_@_ZN6duckdb14FilterPushdown11PushdownGetENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %.not128 = icmp eq ptr %i.v, %i.k
  br i1 %.not128, label %.loopexit143.loopexit, label %.lr.ph

.loopexit143.loopexit:                            ; preds = %bb.d
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !199
  br label %.loopexit143

.loopexit143:                                     ; preds = %.loopexit143.loopexit, %bb.b
  %i.w = phi ptr [ %.pre, %.loopexit143.loopexit ], [ %i.d, %bb.b ]
  %.not51 = icmp eq ptr %i.w, null
  br i1 %.not51, label %.loopexit143.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit143
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !62   ; 5 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !63  ; 5 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #23
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %.not232 = icmp eq ptr %i.z, %i.aa
  br i1 %.not232, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #21
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.j ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ag, ptr %4, align 8, !tbaa !165
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !163
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !164
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.g
  %.not129153 = icmp eq ptr %i.aa, %i.z
  br i1 %.not129153, label %._crit_edge, label %.lr.ph155

.lr.ph155:                                        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %.pre165 = load ptr, ptr %i.x, align 8, !tbaa !63
  %.pre166 = load ptr, ptr %i.y, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.ak = phi ptr [ %.pre166, %._crit_edge.loopexit ], [ %i.z, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 2 uses
  %i.al = phi ptr [ %.pre165, %._crit_edge.loopexit ], [ %i.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %._crit_edge, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bc, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.al, %._crit_edge ] ; 2 uses
  %i.am = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !130 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i67
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(88) %i.ao) #19, !inline_history !284
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !190 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.au = load ptr, ptr %.06.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i.i.i.i.i.i) #22
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !191

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !71
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !70
  %i.ay = shl i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.ay, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !71 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.az) #22
  br label %_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.am) #22
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i67
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %i.bc, %i.ak
  br i1 %.not.i.i.i.i.i68, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i67, !llvm.loop !285

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.al, ptr %i.y, align 8, !tbaa !62
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEES6_EvT_S8_RSaIT0_E.exit.i.i.i
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.be = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !287, !nonnull !61, !align !286
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !311
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(512) %i.bf, ptr noundef nonnull align 8 dereferenceable(1104) %i.b, ptr noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.q unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.f, %_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE5clearEv.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.k:                                             ; preds = %.lr.ph155, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %.sroa.0120.0154 = phi ptr [ %i.aa, %.lr.ph155 ], [ %i.cv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.bj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0120.0154)
          to label %bb.l unwind label %.loopexit138

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 4 uses
  %i.bl = load ptr, ptr %i.aj, align 8, !tbaa !163 ; 6 uses
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !164
  %.not.i.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !82
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !82
  store ptr null, ptr %i.bk, align 8, !tbaa !82
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bo, ptr %i.aj, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = load ptr, ptr %4, align 8, !tbaa !165   ; 10 uses
  %i.bq = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64               ; 3 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.o, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc70 unwind label %.loopexit.split-lp139

.noexc70:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #21
          to label %.noexc71 unwind label %.loopexit138 ; 10 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs
  %i.cc = load i64, ptr %i.bk, align 8, !tbaa !82
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !82
  store ptr null, ptr %i.bk, align 8, !tbaa !82
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc71
  %10 = sub i64 %i.bq, %i.br
  %11 = add i64 %10, -8                           ; 2 uses
  %i.cd = lshr i64 %11, 3
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader274, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ca, i64 8
  %i.cf = add i64 %i.bq, -8
  %i.cg = sub i64 %i.cf, %i.br
  %i.ch = and i64 %i.cg, -8                       ; 2 uses
  %scevgep241 = getelementptr i8, ptr %scevgep, i64 %i.ch
  %scevgep242 = getelementptr i8, ptr %i.bp, i64 8
  %scevgep243 = getelementptr i8, ptr %scevgep242, i64 %i.ch
  %bound0 = icmp ult ptr %i.ca, %scevgep243
  %bound1 = icmp ult ptr %i.bp, %scevgep241
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader274, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ce, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ca, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bp, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ca, i64 %i.cl ; 2 uses
  %next.gep244 = getelementptr i8, ptr %i.bp, i64 %i.cl ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.cm = getelementptr i8, ptr %next.gep244, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep244, align 8, !tbaa !82, !alias.scope !317, !noalias !312
  %wide.load245 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !82, !alias.scope !317, !noalias !312
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !82, !alias.scope !320, !noalias !317
  store <2 x i64> %wide.load245, ptr %i.cn, align 8, !tbaa !82, !alias.scope !320, !noalias !317
  %i.co = getelementptr i8, ptr %next.gep244, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep244, align 8, !tbaa !82, !alias.scope !317, !noalias !312
  store <2 x ptr> splat (ptr null), ptr %i.co, align 8, !tbaa !82, !alias.scope !317, !noalias !312
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ce, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader274

.lr.ph.i.i.i.i.i.i.i.preheader274:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader274, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader274 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader274 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !315, !noalias !312
  store i64 %i.cq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !312, !noalias !315
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !315, !noalias !312
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.cr, %i.bl
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !323

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc71
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.noexc71 ], [ %i.cj, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bp) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ca, ptr %4, align 8, !tbaa !165
  store ptr %i.ct, ptr %i.aj, align 8, !tbaa !163
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cu, ptr %i.af, align 8, !tbaa !164
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0120.0154, i64 8 ; 2 uses
  %.not129 = icmp eq ptr %i.cv, %i.z
  br i1 %.not129, label %._crit_edge.loopexit, label %bb.k

.loopexit138:                                     ; preds = %bb.k, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp139:                            ; preds = %bb.o
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE5clearEv.exit
  %i.cw = load ptr, ptr %4, align 8, !tbaa !74    ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !74 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, %i.cy                ; 2 uses
  br i1 %i.cz, label %.loopexit132.thread, label %.preheader131

.preheader131:                                    ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  br label %bb.r

.loopexit132.thread:                              ; preds = %bb.q
  %i.db = load i64, ptr %2, align 8, !tbaa !96
  store i64 %i.db, ptr %0, align 8, !tbaa !96
  store ptr null, ptr %2, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

bb.r:                                             ; preds = %.preheader131, %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit
  %.sroa.0116.0156 = phi ptr [ %i.cw, %.preheader131 ], [ %i.fp, %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.dc = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21
          to label %bb.s unwind label %bb.ab      ; 7 uses

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !71, !noalias !324
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 1, ptr %i.de, align 8, !tbaa !70, !noalias !324
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !noalias !324
  store float 1.000000e+00, ptr %i.dg, align 8, !tbaa !134, !noalias !324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false), !noalias !324
  store ptr %i.dc, ptr %5, align 8, !tbaa !130, !alias.scope !324
  %i.di = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %.loopexit133

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 2 uses
  %i.dk = load ptr, ptr %.sroa.0116.0156, align 8, !tbaa !82
  store ptr null, ptr %.sroa.0116.0156, align 8, !tbaa !82
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !82 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !82
  %.not.i.i.i.i.i73 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i73, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.t
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !92
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(88) %i.dl) #19, !inline_history !94
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.dp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.u unwind label %.loopexit133

bb.u:                                             ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  invoke void @_ZN6duckdb14FilterPushdown6Filter15ExtractBindingsEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dp)
          to label %bb.v unwind label %.loopexit133

bb.v:                                             ; preds = %bb.u
  %i.dq = load ptr, ptr %i.y, align 8, !tbaa !62  ; 6 uses
  %i.dr = load ptr, ptr %i.da, align 8, !tbaa !136
  %.not.i.i74 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i.i74, label %bb.w, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.v
  %i.ds = load i64, ptr %5, align 8, !tbaa !130
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !130
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dt, ptr %i.y, align 8, !tbaa !62
  br label %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.du = load ptr, ptr %i.x, align 8, !tbaa !63  ; 10 uses
  %i.dv = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 3 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc84 unwind label %.loopexit.split-lp134

.noexc84:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i75 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i.i.i75, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i.i.i76 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i.i.i76)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #21
          to label %.noexc85 unwind label %.loopexit133 ; 10 uses

.noexc85:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  %i.eh = load i64, ptr %5, align 8, !tbaa !130
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !130
  store ptr null, ptr %5, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i77 = icmp eq ptr %i.du, %i.dq
  br i1 %.not10.i.i.i.i.i.i.i77, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i.i.i78.preheader:                 ; preds = %.noexc85
  %12 = sub i64 %i.dv, %i.dw
  %13 = add i64 %12, -8                           ; 2 uses
  %i.ei = lshr i64 %13, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check256 = icmp ult i64 %13, 56
  br i1 %min.iters.check256, label %.lr.ph.i.i.i.i.i.i.i78.preheader272, label %vector.memcheck247

vector.memcheck247:                               ; preds = %.lr.ph.i.i.i.i.i.i.i78.preheader
  %scevgep248 = getelementptr i8, ptr %i.ef, i64 8
  %i.ek = add i64 %i.dv, -8
  %i.el = sub i64 %i.ek, %i.dw
  %i.em = and i64 %i.el, -8                       ; 2 uses
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %i.em
  %scevgep250 = getelementptr i8, ptr %i.du, i64 8
  %scevgep251 = getelementptr i8, ptr %scevgep250, i64 %i.em
  %bound0252 = icmp ult ptr %i.ef, %scevgep251
  %bound1253 = icmp ult ptr %i.du, %scevgep249
  %found.conflict254 = and i1 %bound0252, %bound1253
  br i1 %found.conflict254, label %.lr.ph.i.i.i.i.i.i.i78.preheader272, label %vector.ph257

vector.ph257:                                     ; preds = %vector.memcheck247
  %n.vec259 = and i64 %i.ej, 4611686018427387900  ; 3 uses
  %i.en = shl i64 %n.vec259, 3                    ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.en  ; 2 uses
  %i.ep = getelementptr i8, ptr %i.du, i64 %i.en
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph257
  %index261 = phi i64 [ 0, %vector.ph257 ], [ %index.next266, %vector.body260 ] ; 2 uses
  %i.eq = shl i64 %index261, 3                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %i.ef, i64 %i.eq ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.du, i64 %i.eq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.er = getelementptr i8, ptr %next.gep263, i64 16
  %wide.load264 = load <2 x i64>, ptr %next.gep263, align 8, !tbaa !130, !alias.scope !332, !noalias !327
  %wide.load265 = load <2 x i64>, ptr %i.er, align 8, !tbaa !130, !alias.scope !332, !noalias !327
  %i.es = getelementptr i8, ptr %next.gep262, i64 16
  store <2 x i64> %wide.load264, ptr %next.gep262, align 8, !tbaa !130, !alias.scope !335, !noalias !332
  store <2 x i64> %wide.load265, ptr %i.es, align 8, !tbaa !130, !alias.scope !335, !noalias !332
  %i.et = getelementptr i8, ptr %next.gep263, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep263, align 8, !tbaa !130, !alias.scope !332, !noalias !327
  store <2 x ptr> splat (ptr null), ptr %i.et, align 8, !tbaa !130, !alias.scope !332, !noalias !327
  %index.next266 = add nuw i64 %index261, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.eu, label %middle.block267, label %vector.body260, !llvm.loop !337

middle.block267:                                  ; preds = %vector.body260
  %cmp.n268 = icmp eq i64 %i.ej, %n.vec259
  br i1 %cmp.n268, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i78.preheader272

.lr.ph.i.i.i.i.i.i.i78.preheader272:              ; preds = %vector.memcheck247, %.lr.ph.i.i.i.i.i.i.i78.preheader, %middle.block267
  %.012.i.i.i.i.i.i.i79.ph = phi ptr [ %i.ef, %vector.memcheck247 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i78.preheader ], [ %i.eo, %middle.block267 ]
  %.0911.i.i.i.i.i.i.i80.ph = phi ptr [ %i.du, %vector.memcheck247 ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i78.preheader ], [ %i.ep, %middle.block267 ]
  br label %.lr.ph.i.i.i.i.i.i.i78

.lr.ph.i.i.i.i.i.i.i78:                           ; preds = %.lr.ph.i.i.i.i.i.i.i78.preheader272, %.lr.ph.i.i.i.i.i.i.i78
  %.012.i.i.i.i.i.i.i79 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i.i78 ], [ %.012.i.i.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i.i.i78.preheader272 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i80 = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i.i78 ], [ %.0911.i.i.i.i.i.i.i80.ph, %.lr.ph.i.i.i.i.i.i.i78.preheader272 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.ev = load i64, ptr %.0911.i.i.i.i.i.i.i80, align 8, !tbaa !130, !alias.scope !330, !noalias !327
  store i64 %i.ev, ptr %.012.i.i.i.i.i.i.i79, align 8, !tbaa !130, !alias.scope !327, !noalias !330
  store ptr null, ptr %.0911.i.i.i.i.i.i.i80, align 8, !tbaa !130, !alias.scope !330, !noalias !327
  %i.ew = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i80, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i79, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i81 = icmp eq ptr %i.ew, %i.dq
  br i1 %.not.i.i.i.i.i.i.i81, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i78, !llvm.loop !338

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i78, %middle.block267, %.noexc85
  %.0.lcssa.i.i.i.i.i.i.i82 = phi ptr [ %i.ef, %.noexc85 ], [ %i.eo, %middle.block267 ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i78 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i82, i64 8
  %.not.i23.i.i.i83 = icmp eq ptr %i.du, null
  br i1 %.not.i23.i.i.i83, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.du) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.y
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !63
  store ptr %i.ey, ptr %i.y, align 8, !tbaa !62
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.ez, ptr %i.da, align 8, !tbaa !136
  %.pr = load ptr, ptr %5, align 8, !tbaa !130    ; 8 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.fa = getelementptr inbounds nuw i8, ptr %.pr, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i86, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %bb.z
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !92
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(88) %i.fb) #19, !inline_history !339
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i, %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !190 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i87

.lr.ph.i.i.i.i.i.i.i87:                           ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i87
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i87 ], [ %i.fg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i ] ; 2 uses
  %i.fh = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i) #22
  %.not.i.i.i.i.i.i.i88 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i.i.i.i88, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i87, !llvm.loop !191

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i87, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i.i.i
  %i.fi = load ptr, ptr %.pr, align 8, !tbaa !71
  %i.fj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !70
  %i.fl = shl i64 %i.fk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false)
  %i.fm = load ptr, ptr %.pr, align 8, !tbaa !71  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.pr, i64 48
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.fm) #22
  br label %_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i: ; preds = %bb.aa, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pr) #22
  br label %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNKSt14default_deleteIN6duckdb14FilterPushdown6FilterEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0116.0156, i64 8 ; 2 uses
  %.not130 = icmp eq ptr %i.fp, %i.cy
  br i1 %.not130, label %.loopexit132, label %bb.r

bb.ab:                                            ; preds = %bb.r
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit133:                                     ; preds = %bb.s, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.u, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit135 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp134:                            ; preds = %bb.x
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp134, %.loopexit133
  %lpad.phi137 = phi { ptr, i32 } [ %lpad.loopexit135, %.loopexit133 ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp134 ]
  call void @_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %lpad.phi137, %bb.ac ], [ %i.fq, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.af

.loopexit132:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit
  %.pre167 = load ptr, ptr %4, align 8, !tbaa !165 ; 3 uses
  %.pre168 = load ptr, ptr %i.cx, align 8, !tbaa !163 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre167, %.pre168
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit132, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fv, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre167, %.loopexit132 ] ; 2 uses
  %i.fr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i89 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i.i.i89, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i90

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i90: ; preds = %.lr.ph.i.i.i
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !92
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(88) %i.fr) #19, !inline_history !182
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i90, %.lr.ph.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.fv, %.pre168
  br i1 %.not.i.i.i91, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !183

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %.loopexit132.thread, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit132
  %i.fw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre167, %.loopexit132 ], [ %i.cw, %.loopexit132.thread ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fw) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

end_hunk_1
begin_hunk_2_@_ZN6duckdb14FilterPushdown16PushdownLeftJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_:bb.a
_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i139: ; preds = %bb.w
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(88) %i.bx) #19, !inline_history !95
  br label %.body

.body:                                            ; preds = %bb.w, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i139, %bb.v, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i
  %.pn116 = phi { ptr, i32 } [ %i.aw, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i ], [ %i.bv, %bb.v ], [ %i.bw, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i139 ], [ %i.bw, %bb.w ] ; 2 uses
  %i.cb = load ptr, ptr %22, align 8, !tbaa !82   ; 3 uses
  %.not.i144 = icmp eq ptr %i.cb, null
  br i1 %.not.i144, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit146, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145: ; preds = %.body
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(88) %i.cb) #19, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit146

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit146: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145, %.body, %bb.u
  %.pn116.pn = phi { ptr, i32 } [ %i.bu, %bb.u ], [ %.pn116, %.body ], [ %.pn116, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.cf = load ptr, ptr %21, align 8, !tbaa !82   ; 3 uses
  %.not.i147 = icmp eq ptr %i.cf, null
  br i1 %.not.i147, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit149, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i148

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i148: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit146
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(88) %i.cf) #19, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit149

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit149: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i148, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit146, %bb.t
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.t ], [ %.pn116.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit146 ], [ %.pn116.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %bb.gz

.loopexit414:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit137, %bb.g, %bb.f
  %i.cj = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ true, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit137 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 15 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 11 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !63
  %.not90507.not = icmp eq ptr %i.cm, %i.cn
  br i1 %.not90507.not, label %.critedge125, label %.lr.ph509

.lr.ph509:                                        ; preds = %.loopexit414
  %i.co = ptrtoint ptr %4 to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ct = ptrtoint ptr %8 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 264 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 272 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 280 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph509, %bb.dg
  %.081508 = phi i64 [ 0, %.lr.ph509 ], [ %i.po, %bb.dg ] ; 10 uses
  %i.da = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.y unwind label %.loopexit404

bb.y:                                             ; preds = %bb.x
  %i.db = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %bb.z unwind label %.loopexit404

bb.z:                                             ; preds = %bb.y
  %i.dc = invoke i8 @_ZN6duckdb8JoinSide11GetJoinSideERKSt13unordered_setImSt4hashImESt8equal_toImESaImEES9_S9_(ptr noundef nonnull align 8 dereferenceable(56) %i.db, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.aa unwind label %.loopexit404

bb.aa:                                            ; preds = %bb.z
  %i.dd = icmp eq i8 %i.dc, 1
  br i1 %i.dd, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.cj, label %bb.ac, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit152

bb.ac:                                            ; preds = %bb.ab
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.ad unwind label %.loopexit404

bb.ad:                                            ; preds = %bb.ac
  %i.df = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %bb.ae unwind label %.loopexit404

bb.ae:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %bb.af unwind label %.loopexit404 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !92
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.107") align 8 %24, ptr noundef nonnull align 8 dereferenceable(88) %i.dh)
          to label %bb.ag unwind label %.loopexit404

bb.ag:                                            ; preds = %bb.af
  %i.dl = invoke noundef i32 @_ZN6duckdb14FilterCombiner9AddFilterENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(248) %19, ptr noundef nonnull %24)
          to label %bb.ah unwind label %bb.ai     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load ptr, ptr %24, align 8, !tbaa !82   ; 3 uses
  %.not.i150 = icmp eq ptr %i.dm, null
  br i1 %.not.i150, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit152, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i151

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i151: ; preds = %bb.ah
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !92
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(88) %i.dm) #19, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit152

.loopexit404:                                     ; preds = %bb.x, %bb.y, %bb.z, %bb.ac, %bb.ad, %bb.ae, %bb.af, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit152, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %bb.ao, %bb.aq, %bb.ar, %bb.da, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit216, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.as, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i202
  %lpad.loopexit406 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.loopexit.split-lp405:                            ; preds = %.invoke
  %lpad.loopexit.split-lp407 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.ai:                                            ; preds = %bb.ag
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %24, align 8, !tbaa !82   ; 3 uses
  %.not.i153 = icmp eq ptr %i.dr, null
  br i1 %.not.i153, label %.body163, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i154

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i154: ; preds = %bb.ai
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !92
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(88) %i.dr) #19, !inline_history !95
  br label %.body163

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit152: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i151, %bb.ah, %bb.ab
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.aj unwind label %.loopexit404 ; 4 uses

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit152
  %i.dw = load ptr, ptr %i.cy, align 8, !tbaa !62 ; 6 uses
  %i.dx = load ptr, ptr %i.cz, align 8, !tbaa !136
  %.not.i.i156 = icmp eq ptr %i.dw, %i.dx
  br i1 %.not.i.i156, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = load i64, ptr %i.dv, align 8, !tbaa !130
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !130
  store ptr null, ptr %i.dv, align 8, !tbaa !130
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dz, ptr %i.cy, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.al:                                            ; preds = %bb.aj
  %i.ea = load ptr, ptr %i.cx, align 8, !tbaa !63 ; 10 uses
  %i.eb = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.ec = ptrtoint ptr %i.ea to i64               ; 3 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775800
  br i1 %i.ee, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.dd, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.cont unwind label %.loopexit.split-lp405

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.ef = ashr exact i64 %i.ed, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ef ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.ef
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eg, i64 1152921504606846975)
  %i.ej = select i1 %i.eh, i64 1152921504606846975, i64 %i.ei ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ej, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #21
          to label %.noexc158 unwind label %.loopexit404 ; 10 uses

.noexc158:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ed
  %i.en = load i64, ptr %i.dv, align 8, !tbaa !130
  store i64 %i.en, ptr %i.em, align 8, !tbaa !130
  store ptr null, ptr %i.dv, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.dw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc158
  %45 = sub i64 %i.eb, %i.ec
  %46 = add i64 %45, -8                           ; 2 uses
  %i.eo = lshr i64 %46, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %46, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader912, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.el, i64 8
  %i.eq = add i64 %i.eb, -8
  %i.er = sub i64 %i.eq, %i.ec
  %i.es = and i64 %i.er, -8                       ; 2 uses
  %scevgep745 = getelementptr i8, ptr %scevgep, i64 %i.es
  %scevgep746 = getelementptr i8, ptr %i.ea, i64 8
  %scevgep747 = getelementptr i8, ptr %scevgep746, i64 %i.es
  %bound0 = icmp ult ptr %i.el, %scevgep747
  %bound1 = icmp ult ptr %i.ea, %scevgep745
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader912, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ep, 4611686018427387900     ; 3 uses
  %i.et = shl i64 %n.vec, 3                       ; 2 uses
  %i.eu = getelementptr i8, ptr %i.el, i64 %i.et  ; 2 uses
  %i.ev = getelementptr i8, ptr %i.ea, i64 %i.et
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.ew ; 2 uses
  %next.gep748 = getelementptr i8, ptr %i.ea, i64 %i.ew ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.ex = getelementptr i8, ptr %next.gep748, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep748, align 8, !tbaa !130, !alias.scope !402, !noalias !397
  %wide.load749 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !130, !alias.scope !402, !noalias !397
  %i.ey = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !130, !alias.scope !405, !noalias !402
  store <2 x i64> %wide.load749, ptr %i.ey, align 8, !tbaa !130, !alias.scope !405, !noalias !402
  %i.ez = getelementptr i8, ptr %next.gep748, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep748, align 8, !tbaa !130, !alias.scope !402, !noalias !397
  store <2 x ptr> splat (ptr null), ptr %i.ez, align 8, !tbaa !130, !alias.scope !402, !noalias !397
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader912

.lr.ph.i.i.i.i.i.i.i.preheader912:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.el, %vector.memcheck ], [ %i.el, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ea, %vector.memcheck ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ev, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader912, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader912 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader912 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.fb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !400, !noalias !397
  store i64 %i.fb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !397, !noalias !400
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !400, !noalias !397
  %i.fc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fc, %i.dw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !408

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc158
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.el, %.noexc158 ], [ %i.eu, %middle.block ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.am, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.el, ptr %i.cx, align 8, !tbaa !63
  store ptr %i.fe, ptr %i.cy, align 8, !tbaa !62
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ej
  store ptr %i.ff, ptr %i.cz, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.ak
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.an unwind label %.loopexit404

bb.an:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.fg = add i64 %.081508, -1
  br label %bb.dg

bb.ao:                                            ; preds = %bb.aa
  %i.fh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ap unwind label %.loopexit404

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !114
  %.not = icmp eq i8 %i.fj, 56
  br i1 %.not, label %bb.dg, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !287, !nonnull !61, !align !286
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.ar unwind label %.loopexit404

bb.ar:                                            ; preds = %bb.aq
  %i.fo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %bb.as unwind label %.loopexit404

bb.as:                                            ; preds = %bb.ar
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !82 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !92
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 136
  %i.ft = load ptr, ptr %i.fs, align 8
  invoke void %i.ft(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.107") align 8 %9, ptr noundef nonnull align 8 dereferenceable(88) %i.fq)
          to label %.noexc162 unwind label %.loopexit404, !inline_history !409

.noexc162:                                        ; preds = %bb.as
  %i.fu = load i64, ptr %9, align 8, !tbaa !82
  store i64 %i.fu, ptr %10, align 8, !tbaa !82
  store ptr null, ptr %9, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !410
  store i64 0, ptr %i.cq, align 8, !noalias !410
  store i64 %i.co, ptr %8, align 8, !tbaa !413, !noalias !410
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L21ReplaceColRefWithNullES7_RSt13unordered_setImSt4hashImESt8equal_toImESaImEEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L21ReplaceColRefWithNullES7_RSt13unordered_setImSt4hashImESt8equal_toImESaImEEE3$_0E9_M_invokeERKSt9_Any_dataS2_S8_">, ptr %i.cp, align 8, !tbaa !89, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !410
  store i64 0, ptr %i.cs, align 8, !noalias !410
  store i64 %i.ct, ptr %7, align 8, !tbaa !90, !noalias !410
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E9_M_invokeERKSt9_Any_dataS6_>, ptr %i.cr, align 8, !tbaa !89, !noalias !410
  invoke void @_ZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.at unwind label %bb.aw, !noalias !410

bb.at:                                            ; preds = %.noexc162
  %i.fv = load ptr, ptr %i.cr, align 8, !tbaa !13, !noalias !410 ; 2 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i159, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fw = invoke noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.az unwind label %bb.av, !noalias !410 ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #20, !noalias !410
  unreachable

bb.aw:                                            ; preds = %.noexc162
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %i.cr, align 8, !tbaa !13, !noalias !410 ; 2 uses
  %.not.i3.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i3.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit4.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gb = invoke noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i.i.i unwind label %bb.ay, !noalias !410 ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #20, !noalias !410
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i.i.i:            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !410
  %i.ge = load ptr, ptr %i.cp, align 8, !tbaa !13, !noalias !410 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i2.i.i, label %_ZNSt14_Function_baseD2Ev.exit3.i.i, label %bb.bc

bb.az:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !410
  %i.gf = load ptr, ptr %i.cp, align 8, !tbaa !13, !noalias !410 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.be unwind label %bb.bb, !noalias !410 ; 0 uses

bb.bb:                                            ; preds = %bb.ba
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #20, !noalias !410
  unreachable

bb.bc:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i.i.i
  %i.gj = invoke noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i.i unwind label %bb.bd, !noalias !410 ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #20, !noalias !410
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i.i:              ; preds = %bb.bc, %_ZNSt14_Function_baseD2Ev.exit4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !410
  %i.gm = load ptr, ptr %10, align 8, !tbaa !82   ; 3 uses
  %.not.i43.i = icmp eq ptr %i.gm, null
  br i1 %.not.i43.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i44.i

bb.be:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !410
  %i.gn = load i64, ptr %10, align 8, !tbaa !82, !noalias !410
  %i.go = inttoptr i64 %i.gn to ptr
  store ptr null, ptr %10, align 8, !tbaa !82, !noalias !410
  %i.gp = load ptr, ptr %9, align 8, !tbaa !82    ; 3 uses
  store ptr %i.go, ptr %9, align 8, !tbaa !82
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit37.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i160

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i160: ; preds = %bb.be
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !92
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(88) %i.gp) #19, !inline_history !415
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !82  ; 3 uses
  %.not.i35.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i35.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit37.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i36.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i36.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i160
  %i.gt = load ptr, ptr %.pr.i, align 8, !tbaa !92
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(88) %.pr.i) #19, !inline_history !416
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit37.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit37.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i36.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i160, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.gw = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
          to label %.noexc.i unwind label %bb.bo  ; 3 uses

.noexc.i:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit37.i
  invoke void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.gw)
          to label %bb.bg unwind label %bb.bf, !noalias !417

bb.bf:                                            ; preds = %.noexc.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.gw) #22, !noalias !417
  br label %.body38.i

bb.bg:                                            ; preds = %.noexc.i
  store ptr %i.gw, ptr %11, align 8, !tbaa !420, !alias.scope !417
  %i.gy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bh unwind label %.loopexit409 ; 3 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 48 ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !163 ; 6 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 56 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !164
  %.not.i.i40.i = icmp eq ptr %i.hb, %i.hd
  br i1 %.not.i.i40.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.he = load i64, ptr %9, align 8, !tbaa !82
  store i64 %i.he, ptr %i.hb, align 8, !tbaa !82
  store ptr null, ptr %9, align 8, !tbaa !82
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.hf, ptr %i.ha, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.hg = load ptr, ptr %i.gz, align 8, !tbaa !165 ; 10 uses
  %i.hh = ptrtoint ptr %i.hb to i64               ; 3 uses
  %i.hi = ptrtoint ptr %i.hg to i64               ; 3 uses
  %i.hj = sub i64 %i.hh, %i.hi                    ; 3 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775800
  br i1 %i.hk, label %bb.bk, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc41.i unwind label %.loopexit.split-lp410

.noexc41.i:                                       ; preds = %bb.bk
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bj
  %i.hl = ashr exact i64 %i.hj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hm, i64 1152921504606846975)
  %i.hp = select i1 %i.hn, i64 1152921504606846975, i64 %i.ho ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.hq = shl nuw nsw i64 %i.hp, 3
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #21
          to label %.noexc42.i unwind label %.loopexit409 ; 10 uses

.noexc42.i:                                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hj
  %i.ht = load i64, ptr %9, align 8, !tbaa !82
  store i64 %i.ht, ptr %i.hs, align 8, !tbaa !82
  store ptr null, ptr %9, align 8, !tbaa !82
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.hb
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc42.i
  %47 = sub i64 %i.hh, %i.hi
  %48 = add i64 %47, -8                           ; 2 uses
  %i.hu = lshr i64 %48, 3
  %i.hv = add nuw nsw i64 %i.hu, 1                ; 2 uses
  %min.iters.check784 = icmp ult i64 %48, 56
  br i1 %min.iters.check784, label %.lr.ph.i.i.i.i.i.i.i.i.preheader914, label %vector.memcheck775

vector.memcheck775:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %scevgep776 = getelementptr i8, ptr %i.hr, i64 8
  %i.hw = add i64 %i.hh, -8
  %i.hx = sub i64 %i.hw, %i.hi
  %i.hy = and i64 %i.hx, -8                       ; 2 uses
  %scevgep777 = getelementptr i8, ptr %scevgep776, i64 %i.hy
  %scevgep778 = getelementptr i8, ptr %i.hg, i64 8
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.hy
  %bound0780 = icmp ult ptr %i.hr, %scevgep779
  %bound1781 = icmp ult ptr %i.hg, %scevgep777
  %found.conflict782 = and i1 %bound0780, %bound1781
  br i1 %found.conflict782, label %.lr.ph.i.i.i.i.i.i.i.i.preheader914, label %vector.ph785

vector.ph785:                                     ; preds = %vector.memcheck775
  %n.vec787 = and i64 %i.hv, 4611686018427387900  ; 3 uses
  %i.hz = shl i64 %n.vec787, 3                    ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hr, i64 %i.hz  ; 2 uses
  %i.ib = getelementptr i8, ptr %i.hg, i64 %i.hz
  br label %vector.body788

vector.body788:                                   ; preds = %vector.body788, %vector.ph785
  %index789 = phi i64 [ 0, %vector.ph785 ], [ %index.next794, %vector.body788 ] ; 2 uses
  %i.ic = shl i64 %index789, 3                    ; 2 uses
  %next.gep790 = getelementptr i8, ptr %i.hr, i64 %i.ic ; 2 uses
  %next.gep791 = getelementptr i8, ptr %i.hg, i64 %i.ic ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.id = getelementptr i8, ptr %next.gep791, i64 16
  %wide.load792 = load <2 x i64>, ptr %next.gep791, align 8, !tbaa !82, !alias.scope !427, !noalias !422
  %wide.load793 = load <2 x i64>, ptr %i.id, align 8, !tbaa !82, !alias.scope !427, !noalias !422
  %i.ie = getelementptr i8, ptr %next.gep790, i64 16
  store <2 x i64> %wide.load792, ptr %next.gep790, align 8, !tbaa !82, !alias.scope !430, !noalias !427
  store <2 x i64> %wide.load793, ptr %i.ie, align 8, !tbaa !82, !alias.scope !430, !noalias !427
  %i.if = getelementptr i8, ptr %next.gep791, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep791, align 8, !tbaa !82, !alias.scope !427, !noalias !422
  store <2 x ptr> splat (ptr null), ptr %i.if, align 8, !tbaa !82, !alias.scope !427, !noalias !422
  %index.next794 = add nuw i64 %index789, 4       ; 2 uses
  %i.ig = icmp eq i64 %index.next794, %n.vec787
  br i1 %i.ig, label %middle.block795, label %vector.body788, !llvm.loop !432

middle.block795:                                  ; preds = %vector.body788
  %cmp.n796 = icmp eq i64 %i.hv, %n.vec787
  br i1 %cmp.n796, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader914

.lr.ph.i.i.i.i.i.i.i.i.preheader914:              ; preds = %vector.memcheck775, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block795
  %.012.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.hr, %vector.memcheck775 ], [ %i.hr, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ia, %middle.block795 ]
  %.0911.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.hg, %vector.memcheck775 ], [ %i.hg, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ib, %middle.block795 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader914, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader914 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader914 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.ih = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !425, !noalias !422
  store i64 %i.ih, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !422, !noalias !425
  store ptr null, ptr %.0911.i.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !425, !noalias !422
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ii, %i.hb
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !433

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block795, %.noexc42.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.hr, %.noexc42.i ], [ %i.ia, %middle.block795 ], [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hg) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.bl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i.i
  store ptr %i.hr, ptr %i.gz, align 8, !tbaa !165
  store ptr %i.ik, ptr %i.ha, align 8, !tbaa !163
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hp
  store ptr %i.il, ptr %i.hc, align 8, !tbaa !164
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.bi
  %i.im = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bm unwind label %.loopexit409

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.i
  %i.in = load ptr, ptr %i.fm, align 8, !tbaa !92
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(97) %i.im)
          to label %.preheader.i unwind label %.loopexit409

.preheader.i:                                     ; preds = %bb.bm, %.critedge.i
  %.013.i = phi i64 [ %i.jx, %.critedge.i ], [ 0, %bb.bm ] ; 4 uses
  %i.iq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bn unwind label %bb.bp     ; 2 uses

bb.bn:                                            ; preds = %.preheader.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !163
  %i.iu = load ptr, ptr %i.ir, align 8, !tbaa !165
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = ashr exact i64 %i.ix, 3
  %.not.i161 = icmp ult i64 %.013.i, %i.iy
  br i1 %.not.i161, label %bb.bq, label %.loopexit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i44.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit3.i.i
  %i.iz = load ptr, ptr %i.gm, align 8, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(88) %i.gm) #19, !inline_history !416
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i

bb.bo:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit37.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body38.i

.loopexit409:                                     ; preds = %bb.bg, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.i, %bb.bm
  %lpad.loopexit411 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp410:                            ; preds = %bb.bk
  %lpad.loopexit.split-lp412 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bp:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %.preheader.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.bq:                                            ; preds = %bb.bn
  %i.je = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.br unwind label %bb.bp

bb.br:                                            ; preds = %bb.bq
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jf, i64 noundef %.013.i)
          to label %bb.bs unwind label %bb.bp

bb.bs:                                            ; preds = %bb.br
  %i.jh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jg)
          to label %bb.bt unwind label %bb.bp     ; 2 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !92
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 120
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = invoke noundef zeroext i1 %i.jk(ptr noundef nonnull align 8 dereferenceable(88) %i.jh)
          to label %bb.bu unwind label %bb.bp

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.jl, label %bb.bv, label %.loopexit.i

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.jm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.bw unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bv
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.jo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, i64 noundef %.013.i)
          to label %bb.bx unwind label %bb.ce

bb.bx:                                            ; preds = %bb.bw
  %i.jp = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(512) %i.fl, ptr noundef nonnull align 8 dereferenceable(88) %i.jp, i1 noundef zeroext false)
          to label %bb.bz unwind label %bb.ce

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 noundef zeroext 10)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZNK6duckdb5Value13DefaultCastAsERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(24) %14, i1 noundef zeroext false)
          to label %bb.cb unwind label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.jq = load i8, ptr %i.cu, align 8, !tbaa !434, !range !60, !noundef !61
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.ck, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.js = invoke noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %12)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.js, label %.critedge.i, label %bb.ck

bb.ce:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.cf:                                            ; preds = %bb.bz
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ca
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #19
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i = phi { ptr, i32 } [ %i.jv, %bb.cg ], [ %i.ju, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #19
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.ch ], [ %i.jt, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.cl

bb.cj:                                            ; preds = %bb.cc
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #19
  br label %bb.cl

.critedge.i:                                      ; preds = %bb.cd
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.jx = add nuw i64 %.013.i, 1
  br label %.preheader.i, !llvm.loop !440

bb.ck:                                            ; preds = %bb.cd, %bb.cb
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.loopexit.i

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %.pn29.i = phi { ptr, i32 } [ %i.jw, %bb.cj ], [ %.pn.pn.i, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.cm

.loopexit.i:                                      ; preds = %bb.bu, %bb.bn, %bb.ck
  %.225.i = phi i1 [ true, %bb.ck ], [ false, %bb.bn ], [ false, %bb.bu ]
  %i.jy = load ptr, ptr %11, align 8, !tbaa !420  ; 3 uses
  %.not.i46.i = icmp eq ptr %i.jy, null
  br i1 %.not.i46.i, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i.i: ; preds = %.loopexit.i
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !92
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(128) %i.jy) #19, !inline_history !441
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.kc = load ptr, ptr %9, align 8, !tbaa !82    ; 3 uses
  %.not.i47.i = icmp eq ptr %i.kc, null
  br i1 %.not.i47.i, label %bb.cn, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i48.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i48.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.i
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !92
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(88) %i.kc) #19, !inline_history !416
  br label %bb.cn

bb.cm:                                            ; preds = %.loopexit409, %.loopexit.split-lp410, %bb.cl, %bb.bp
  %.pn29.pn.pn.i = phi { ptr, i32 } [ %i.jd, %bb.bp ], [ %.pn29.i, %bb.cl ], [ %lpad.loopexit411, %.loopexit409 ], [ %lpad.loopexit.split-lp412, %.loopexit.split-lp410 ] ; 2 uses
  %i.kg = load ptr, ptr %11, align 8, !tbaa !420  ; 3 uses
  %.not.i50.i = icmp eq ptr %i.kg, null
  br i1 %.not.i50.i, label %.body38.i, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i51.i

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i51.i: ; preds = %bb.cm
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(128) %i.kg) #19, !inline_history !441
  br label %.body38.i

.body38.i:                                        ; preds = %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i51.i, %bb.cm, %bb.bo, %bb.bf
  %.pn29.pn.pn.pn.i = phi { ptr, i32 } [ %i.gx, %bb.bf ], [ %i.jc, %bb.bo ], [ %.pn29.pn.pn.i, %bb.cm ], [ %.pn29.pn.pn.i, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i51.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i: ; preds = %.body38.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i44.i, %_ZNSt14_Function_baseD2Ev.exit3.i.i
  %.pn29.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn29.pn.pn.pn.i, %.body38.i ], [ %i.fz, %_ZNSt14_Function_baseD2Ev.exit3.i.i ], [ %i.fz, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i44.i ]
  %i.kk = load ptr, ptr %9, align 8, !tbaa !82    ; 3 uses
  %.not.i53.i = icmp eq ptr %i.kk, null
  br i1 %.not.i53.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit55.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i54.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i54.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !92
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(88) %i.kk) #19, !inline_history !416
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit55.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit55.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i54.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.body163

bb.cn:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i48.i, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %.225.i, label %bb.co, label %bb.da

bb.co:                                            ; preds = %bb.cn
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  store i8 3, ptr %i.ko, align 1, !tbaa !442
  %i.kp = load ptr, ptr %i.cx, align 8, !tbaa !135 ; 2 uses
  %i.kq = load ptr, ptr %i.cy, align 8, !tbaa !135 ; 2 uses
  %.not388523 = icmp eq ptr %i.kp, %i.kq
  br i1 %.not388523, label %._crit_edge527, label %.lr.ph526

.lr.ph526:                                        ; preds = %bb.co
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !62
  %.pre563 = load ptr, ptr %i.kr, align 8, !tbaa !136
  br label %bb.cp

._crit_edge527:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180, %bb.co
  %i.ks = load ptr, ptr %23, align 8, !tbaa !135  ; 2 uses
  %i.kt = load ptr, ptr %i.cv, align 8, !tbaa !135 ; 2 uses
  %.not389528 = icmp eq ptr %i.ks, %i.kt
  br i1 %.not389528, label %._crit_edge532, label %.lr.ph531

.lr.ph531:                                        ; preds = %._crit_edge527
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.pre564 = load ptr, ptr %i.cl, align 8, !tbaa !62
  %.pre565 = load ptr, ptr %i.ku, align 8, !tbaa !136
  br label %bb.cu

bb.cp:                                            ; preds = %.lr.ph526, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180
  %i.kv = phi ptr [ %.pre563, %.lr.ph526 ], [ %i.mf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180 ] ; 5 uses
  %i.kw = phi ptr [ %.pre, %.lr.ph526 ], [ %i.mg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180 ] ; 3 uses
  %.sroa.0372.0524 = phi ptr [ %i.kp, %.lr.ph526 ], [ %i.mh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180 ] ; 5 uses
  %.not.i.i165 = icmp eq ptr %i.kw, %i.kv
  br i1 %.not.i.i165, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kx = load i64, ptr %.sroa.0372.0524, align 8, !tbaa !130
  store i64 %i.kx, ptr %i.kw, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0372.0524, align 8, !tbaa !130
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 2 uses
  store ptr %i.ky, ptr %i.cl, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180

bb.cr:                                            ; preds = %bb.cp
  %i.kz = load ptr, ptr %i.ck, align 8, !tbaa !63 ; 10 uses
  %i.la = ptrtoint ptr %i.kv to i64               ; 3 uses
  %i.lb = ptrtoint ptr %i.kz to i64               ; 3 uses
  %i.lc = sub i64 %i.la, %i.lb                    ; 3 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775800
  br i1 %i.ld, label %bb.cs, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i166

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc178 unwind label %.loopexit.split-lp391

.noexc178:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i166: ; preds = %bb.cr
  %i.le = ashr exact i64 %i.lc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i167 = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i.i167, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 1152921504606846975)
  %i.li = select i1 %i.lg, i64 1152921504606846975, i64 %i.lh ; 3 uses
  %.not.i.i.i.i168 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i.i168)
  %i.lj = shl nuw nsw i64 %i.li, 3
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #21
          to label %.noexc179 unwind label %.loopexit390 ; 10 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i166
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lc
  %i.lm = load i64, ptr %.sroa.0372.0524, align 8, !tbaa !130
  store i64 %i.lm, ptr %i.ll, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0372.0524, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i169 = icmp eq ptr %i.kz, %i.kv
  br i1 %.not10.i.i.i.i.i.i.i169, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i174, label %.lr.ph.i.i.i.i.i.i.i170.preheader

.lr.ph.i.i.i.i.i.i.i170.preheader:                ; preds = %.noexc179
  %49 = sub i64 %i.la, %i.lb
  %50 = add i64 %49, -8                           ; 2 uses
  %i.ln = lshr i64 %50, 3
  %i.lo = add nuw nsw i64 %i.ln, 1                ; 2 uses
  %min.iters.check808 = icmp ult i64 %50, 56
  br i1 %min.iters.check808, label %.lr.ph.i.i.i.i.i.i.i170.preheader910, label %vector.memcheck799

vector.memcheck799:                               ; preds = %.lr.ph.i.i.i.i.i.i.i170.preheader
  %scevgep800 = getelementptr i8, ptr %i.lk, i64 8
  %i.lp = add i64 %i.la, -8
  %i.lq = sub i64 %i.lp, %i.lb
  %i.lr = and i64 %i.lq, -8                       ; 2 uses
  %scevgep801 = getelementptr i8, ptr %scevgep800, i64 %i.lr
  %scevgep802 = getelementptr i8, ptr %i.kz, i64 8
  %scevgep803 = getelementptr i8, ptr %scevgep802, i64 %i.lr
  %bound0804 = icmp ult ptr %i.lk, %scevgep803
  %bound1805 = icmp ult ptr %i.kz, %scevgep801
  %found.conflict806 = and i1 %bound0804, %bound1805
  br i1 %found.conflict806, label %.lr.ph.i.i.i.i.i.i.i170.preheader910, label %vector.ph809

vector.ph809:                                     ; preds = %vector.memcheck799
  %n.vec811 = and i64 %i.lo, 4611686018427387900  ; 3 uses
  %i.ls = shl i64 %n.vec811, 3                    ; 2 uses
  %i.lt = getelementptr i8, ptr %i.lk, i64 %i.ls  ; 2 uses
  %i.lu = getelementptr i8, ptr %i.kz, i64 %i.ls
  br label %vector.body812

vector.body812:                                   ; preds = %vector.body812, %vector.ph809
  %index813 = phi i64 [ 0, %vector.ph809 ], [ %index.next818, %vector.body812 ] ; 2 uses
  %i.lv = shl i64 %index813, 3                    ; 2 uses
  %next.gep814 = getelementptr i8, ptr %i.lk, i64 %i.lv ; 2 uses
  %next.gep815 = getelementptr i8, ptr %i.kz, i64 %i.lv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.lw = getelementptr i8, ptr %next.gep815, i64 16
  %wide.load816 = load <2 x i64>, ptr %next.gep815, align 8, !tbaa !130, !alias.scope !456, !noalias !451
  %wide.load817 = load <2 x i64>, ptr %i.lw, align 8, !tbaa !130, !alias.scope !456, !noalias !451
  %i.lx = getelementptr i8, ptr %next.gep814, i64 16
  store <2 x i64> %wide.load816, ptr %next.gep814, align 8, !tbaa !130, !alias.scope !459, !noalias !456
  store <2 x i64> %wide.load817, ptr %i.lx, align 8, !tbaa !130, !alias.scope !459, !noalias !456
  %i.ly = getelementptr i8, ptr %next.gep815, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep815, align 8, !tbaa !130, !alias.scope !456, !noalias !451
  store <2 x ptr> splat (ptr null), ptr %i.ly, align 8, !tbaa !130, !alias.scope !456, !noalias !451
  %index.next818 = add nuw i64 %index813, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next818, %n.vec811
  br i1 %i.lz, label %middle.block819, label %vector.body812, !llvm.loop !461

middle.block819:                                  ; preds = %vector.body812
  %cmp.n820 = icmp eq i64 %i.lo, %n.vec811
  br i1 %cmp.n820, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i174, label %.lr.ph.i.i.i.i.i.i.i170.preheader910

.lr.ph.i.i.i.i.i.i.i170.preheader910:             ; preds = %vector.memcheck799, %.lr.ph.i.i.i.i.i.i.i170.preheader, %middle.block819
  %.012.i.i.i.i.i.i.i171.ph = phi ptr [ %i.lk, %vector.memcheck799 ], [ %i.lk, %.lr.ph.i.i.i.i.i.i.i170.preheader ], [ %i.lt, %middle.block819 ]
  %.0911.i.i.i.i.i.i.i172.ph = phi ptr [ %i.kz, %vector.memcheck799 ], [ %i.kz, %.lr.ph.i.i.i.i.i.i.i170.preheader ], [ %i.lu, %middle.block819 ]
  br label %.lr.ph.i.i.i.i.i.i.i170

.lr.ph.i.i.i.i.i.i.i170:                          ; preds = %.lr.ph.i.i.i.i.i.i.i170.preheader910, %.lr.ph.i.i.i.i.i.i.i170
  %.012.i.i.i.i.i.i.i171 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i.i.i170 ], [ %.012.i.i.i.i.i.i.i171.ph, %.lr.ph.i.i.i.i.i.i.i170.preheader910 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i172 = phi ptr [ %i.mb, %.lr.ph.i.i.i.i.i.i.i170 ], [ %.0911.i.i.i.i.i.i.i172.ph, %.lr.ph.i.i.i.i.i.i.i170.preheader910 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.ma = load i64, ptr %.0911.i.i.i.i.i.i.i172, align 8, !tbaa !130, !alias.scope !454, !noalias !451
  store i64 %i.ma, ptr %.012.i.i.i.i.i.i.i171, align 8, !tbaa !130, !alias.scope !451, !noalias !454
  store ptr null, ptr %.0911.i.i.i.i.i.i.i172, align 8, !tbaa !130, !alias.scope !454, !noalias !451
  %i.mb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i172, i64 8 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i171, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i173 = icmp eq ptr %i.mb, %i.kv
  br i1 %.not.i.i.i.i.i.i.i173, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i174, label %.lr.ph.i.i.i.i.i.i.i170, !llvm.loop !462

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i174: ; preds = %.lr.ph.i.i.i.i.i.i.i170, %middle.block819, %.noexc179
  %.0.lcssa.i.i.i.i.i.i.i175 = phi ptr [ %i.lk, %.noexc179 ], [ %i.lt, %middle.block819 ], [ %i.mc, %.lr.ph.i.i.i.i.i.i.i170 ]
  %i.md = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i175, i64 8 ; 2 uses
  %.not.i23.i.i.i176 = icmp eq ptr %i.kz, null
  br i1 %.not.i23.i.i.i176, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i177, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i174
  call void @_ZdlPv(ptr noundef nonnull %i.kz) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i177

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i177: ; preds = %bb.ct, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i174
  store ptr %i.lk, ptr %i.ck, align 8, !tbaa !63
  store ptr %i.md, ptr %i.cl, align 8, !tbaa !62
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.li ; 2 uses
  store ptr %i.me, ptr %i.kr, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit180: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i177, %bb.cq
  %i.mf = phi ptr [ %i.me, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i177 ], [ %i.kv, %bb.cq ]
  %i.mg = phi ptr [ %i.md, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i177 ], [ %i.ky, %bb.cq ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0372.0524, i64 8 ; 2 uses
  %.not388 = icmp eq ptr %i.mh, %i.kq
  br i1 %.not388, label %._crit_edge527, label %bb.cp

.loopexit390:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i166
  %lpad.loopexit392 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.loopexit.split-lp391:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

._crit_edge532:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196, %._crit_edge527
  %i.mi = load i64, ptr %2, align 8, !tbaa !96
  store i64 %i.mi, ptr %25, align 8, !tbaa !96
  store ptr null, ptr %2, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown17PushdownInnerJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %25, ptr nonnull align 8 poison, ptr nonnull align 8 poison)
          to label %.critedge unwind label %bb.cz

bb.cu:                                            ; preds = %.lr.ph531, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196
  %i.mj = phi ptr [ %.pre565, %.lr.ph531 ], [ %i.nt, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196 ] ; 5 uses
  %i.mk = phi ptr [ %.pre564, %.lr.ph531 ], [ %i.nu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196 ] ; 3 uses
  %.sroa.0368.0529 = phi ptr [ %i.ks, %.lr.ph531 ], [ %i.nv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196 ] ; 5 uses
  %.not.i.i181 = icmp eq ptr %i.mk, %i.mj
  br i1 %.not.i.i181, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ml = load i64, ptr %.sroa.0368.0529, align 8, !tbaa !130
  store i64 %i.ml, ptr %i.mk, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0368.0529, align 8, !tbaa !130
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  store ptr %i.mm, ptr %i.cl, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196

bb.cw:                                            ; preds = %bb.cu
  %i.mn = load ptr, ptr %i.ck, align 8, !tbaa !63 ; 10 uses
  %i.mo = ptrtoint ptr %i.mj to i64               ; 3 uses
  %i.mp = ptrtoint ptr %i.mn to i64               ; 3 uses
  %i.mq = sub i64 %i.mo, %i.mp                    ; 3 uses
  %i.mr = icmp eq i64 %i.mq, 9223372036854775800
  br i1 %i.mr, label %bb.cx, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i182

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc194 unwind label %.loopexit.split-lp

.noexc194:                                        ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i182: ; preds = %bb.cw
  %i.ms = ashr exact i64 %i.mq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i183 = call i64 @llvm.umax.i64(i64 %i.ms, i64 1)
  %i.mt = add nsw i64 %.sroa.speculated.i.i.i.i183, %i.ms ; 2 uses
  %i.mu = icmp ult i64 %i.mt, %i.ms
  %i.mv = call i64 @llvm.umin.i64(i64 %i.mt, i64 1152921504606846975)
  %i.mw = select i1 %i.mu, i64 1152921504606846975, i64 %i.mv ; 3 uses
  %.not.i.i.i.i184 = icmp ne i64 %i.mw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i184)
  %i.mx = shl nuw nsw i64 %i.mw, 3
  %i.my = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mx) #21
          to label %.noexc195 unwind label %.loopexit ; 10 uses

.noexc195:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i182
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.mq
  %i.na = load i64, ptr %.sroa.0368.0529, align 8, !tbaa !130
  store i64 %i.na, ptr %i.mz, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0368.0529, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i185 = icmp eq ptr %i.mn, %i.mj
  br i1 %.not10.i.i.i.i.i.i.i185, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186.preheader

.lr.ph.i.i.i.i.i.i.i186.preheader:                ; preds = %.noexc195
  %51 = sub i64 %i.mo, %i.mp
  %52 = add i64 %51, -8                           ; 2 uses
  %i.nb = lshr i64 %52, 3
  %i.nc = add nuw nsw i64 %i.nb, 1                ; 2 uses
  %min.iters.check832 = icmp ult i64 %52, 56
  br i1 %min.iters.check832, label %.lr.ph.i.i.i.i.i.i.i186.preheader908, label %vector.memcheck823

vector.memcheck823:                               ; preds = %.lr.ph.i.i.i.i.i.i.i186.preheader
  %scevgep824 = getelementptr i8, ptr %i.my, i64 8
  %i.nd = add i64 %i.mo, -8
  %i.ne = sub i64 %i.nd, %i.mp
  %i.nf = and i64 %i.ne, -8                       ; 2 uses
  %scevgep825 = getelementptr i8, ptr %scevgep824, i64 %i.nf
  %scevgep826 = getelementptr i8, ptr %i.mn, i64 8
  %scevgep827 = getelementptr i8, ptr %scevgep826, i64 %i.nf
  %bound0828 = icmp ult ptr %i.my, %scevgep827
  %bound1829 = icmp ult ptr %i.mn, %scevgep825
  %found.conflict830 = and i1 %bound0828, %bound1829
  br i1 %found.conflict830, label %.lr.ph.i.i.i.i.i.i.i186.preheader908, label %vector.ph833

vector.ph833:                                     ; preds = %vector.memcheck823
  %n.vec835 = and i64 %i.nc, 4611686018427387900  ; 3 uses
  %i.ng = shl i64 %n.vec835, 3                    ; 2 uses
  %i.nh = getelementptr i8, ptr %i.my, i64 %i.ng  ; 2 uses
  %i.ni = getelementptr i8, ptr %i.mn, i64 %i.ng
  br label %vector.body836

vector.body836:                                   ; preds = %vector.body836, %vector.ph833
  %index837 = phi i64 [ 0, %vector.ph833 ], [ %index.next842, %vector.body836 ] ; 2 uses
  %i.nj = shl i64 %index837, 3                    ; 2 uses
  %next.gep838 = getelementptr i8, ptr %i.my, i64 %i.nj ; 2 uses
  %next.gep839 = getelementptr i8, ptr %i.mn, i64 %i.nj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.nk = getelementptr i8, ptr %next.gep839, i64 16
  %wide.load840 = load <2 x i64>, ptr %next.gep839, align 8, !tbaa !130, !alias.scope !468, !noalias !463
  %wide.load841 = load <2 x i64>, ptr %i.nk, align 8, !tbaa !130, !alias.scope !468, !noalias !463
  %i.nl = getelementptr i8, ptr %next.gep838, i64 16
  store <2 x i64> %wide.load840, ptr %next.gep838, align 8, !tbaa !130, !alias.scope !471, !noalias !468
  store <2 x i64> %wide.load841, ptr %i.nl, align 8, !tbaa !130, !alias.scope !471, !noalias !468
  %i.nm = getelementptr i8, ptr %next.gep839, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep839, align 8, !tbaa !130, !alias.scope !468, !noalias !463
  store <2 x ptr> splat (ptr null), ptr %i.nm, align 8, !tbaa !130, !alias.scope !468, !noalias !463
  %index.next842 = add nuw i64 %index837, 4       ; 2 uses
  %i.nn = icmp eq i64 %index.next842, %n.vec835
  br i1 %i.nn, label %middle.block843, label %vector.body836, !llvm.loop !473

middle.block843:                                  ; preds = %vector.body836
  %cmp.n844 = icmp eq i64 %i.nc, %n.vec835
  br i1 %cmp.n844, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186.preheader908

.lr.ph.i.i.i.i.i.i.i186.preheader908:             ; preds = %vector.memcheck823, %.lr.ph.i.i.i.i.i.i.i186.preheader, %middle.block843
  %.012.i.i.i.i.i.i.i187.ph = phi ptr [ %i.my, %vector.memcheck823 ], [ %i.my, %.lr.ph.i.i.i.i.i.i.i186.preheader ], [ %i.nh, %middle.block843 ]
  %.0911.i.i.i.i.i.i.i188.ph = phi ptr [ %i.mn, %vector.memcheck823 ], [ %i.mn, %.lr.ph.i.i.i.i.i.i.i186.preheader ], [ %i.ni, %middle.block843 ]
  br label %.lr.ph.i.i.i.i.i.i.i186

.lr.ph.i.i.i.i.i.i.i186:                          ; preds = %.lr.ph.i.i.i.i.i.i.i186.preheader908, %.lr.ph.i.i.i.i.i.i.i186
  %.012.i.i.i.i.i.i.i187 = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i.i.i186 ], [ %.012.i.i.i.i.i.i.i187.ph, %.lr.ph.i.i.i.i.i.i.i186.preheader908 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i188 = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i.i.i186 ], [ %.0911.i.i.i.i.i.i.i188.ph, %.lr.ph.i.i.i.i.i.i.i186.preheader908 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.no = load i64, ptr %.0911.i.i.i.i.i.i.i188, align 8, !tbaa !130, !alias.scope !466, !noalias !463
  store i64 %i.no, ptr %.012.i.i.i.i.i.i.i187, align 8, !tbaa !130, !alias.scope !463, !noalias !466
  store ptr null, ptr %.0911.i.i.i.i.i.i.i188, align 8, !tbaa !130, !alias.scope !466, !noalias !463
  %i.np = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i188, i64 8 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i187, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i189 = icmp eq ptr %i.np, %i.mj
  br i1 %.not.i.i.i.i.i.i.i189, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186, !llvm.loop !474

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i190: ; preds = %.lr.ph.i.i.i.i.i.i.i186, %middle.block843, %.noexc195
  %.0.lcssa.i.i.i.i.i.i.i191 = phi ptr [ %i.my, %.noexc195 ], [ %i.nh, %middle.block843 ], [ %i.nq, %.lr.ph.i.i.i.i.i.i.i186 ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i191, i64 8 ; 2 uses
  %.not.i23.i.i.i192 = icmp eq ptr %i.mn, null
  br i1 %.not.i23.i.i.i192, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i193, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i190
  call void @_ZdlPv(ptr noundef nonnull %i.mn) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i193

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i193: ; preds = %bb.cy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i190
  store ptr %i.my, ptr %i.ck, align 8, !tbaa !63
  store ptr %i.nr, ptr %i.cl, align 8, !tbaa !62
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mw ; 2 uses
  store ptr %i.ns, ptr %i.ku, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit196: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i193, %bb.cv
  %i.nt = phi ptr [ %i.ns, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i193 ], [ %i.mj, %bb.cv ]
  %i.nu = phi ptr [ %i.nr, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i193 ], [ %i.mm, %bb.cv ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0368.0529, i64 8 ; 2 uses
  %.not389 = icmp eq ptr %i.nv, %i.kt
  br i1 %.not389, label %._crit_edge532, label %bb.cu

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i182
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.loopexit.split-lp:                               ; preds = %bb.cx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.critedge:                                        ; preds = %._crit_edge532
  %i.nw = load ptr, ptr %25, align 8, !tbaa !96   ; 2 uses
  %.not.i197 = icmp eq ptr %i.nw, null
  br i1 %.not.i197, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.cz:                                            ; preds = %._crit_edge532
  %i.nx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ny = load ptr, ptr %25, align 8, !tbaa !96   ; 3 uses
  %.not.i198 = icmp eq ptr %i.ny, null
  br i1 %.not.i198, label %.body163, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i199

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i199: ; preds = %bb.cz
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !92
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ny) #19, !inline_history !108
  br label %.body163

bb.da:                                            ; preds = %bb.cn
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.db unwind label %.loopexit404 ; 4 uses

bb.db:                                            ; preds = %bb.da
  %i.od = load ptr, ptr %i.cv, align 8, !tbaa !62 ; 6 uses
  %i.oe = load ptr, ptr %i.cw, align 8, !tbaa !136
  %.not.i.i201 = icmp eq ptr %i.od, %i.oe
  br i1 %.not.i.i201, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.of = load i64, ptr %i.oc, align 8, !tbaa !130
  store i64 %i.of, ptr %i.od, align 8, !tbaa !130
  store ptr null, ptr %i.oc, align 8, !tbaa !130
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  store ptr %i.og, ptr %i.cv, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit216

bb.dd:                                            ; preds = %bb.db
  %i.oh = load ptr, ptr %23, align 8, !tbaa !63   ; 10 uses
  %i.oi = ptrtoint ptr %i.od to i64               ; 3 uses
  %i.oj = ptrtoint ptr %i.oh to i64               ; 3 uses
  %i.ok = sub i64 %i.oi, %i.oj                    ; 3 uses
  %i.ol = icmp eq i64 %i.ok, 9223372036854775800
  br i1 %i.ol, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i202

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i202: ; preds = %bb.dd
  %i.om = ashr exact i64 %i.ok, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i203 = call i64 @llvm.umax.i64(i64 %i.om, i64 1)
  %i.on = add nsw i64 %.sroa.speculated.i.i.i.i203, %i.om ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.om
  %i.op = call i64 @llvm.umin.i64(i64 %i.on, i64 1152921504606846975)
  %i.oq = select i1 %i.oo, i64 1152921504606846975, i64 %i.op ; 3 uses
  %.not.i.i.i.i204 = icmp ne i64 %i.oq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i204)
  %i.or = shl nuw nsw i64 %i.oq, 3
  %i.os = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.or) #21
          to label %.noexc215 unwind label %.loopexit404 ; 10 uses

.noexc215:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i202
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ok
  %i.ou = load i64, ptr %i.oc, align 8, !tbaa !130
  store i64 %i.ou, ptr %i.ot, align 8, !tbaa !130
  store ptr null, ptr %i.oc, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i205 = icmp eq ptr %i.oh, %i.od
  br i1 %.not10.i.i.i.i.i.i.i205, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i210, label %.lr.ph.i.i.i.i.i.i.i206.preheader

.lr.ph.i.i.i.i.i.i.i206.preheader:                ; preds = %.noexc215
  %53 = sub i64 %i.oi, %i.oj
  %54 = add i64 %53, -8                           ; 2 uses
  %i.ov = lshr i64 %54, 3
  %i.ow = add nuw nsw i64 %i.ov, 1                ; 2 uses
  %min.iters.check760 = icmp ult i64 %54, 56
  br i1 %min.iters.check760, label %.lr.ph.i.i.i.i.i.i.i206.preheader913, label %vector.memcheck751

vector.memcheck751:                               ; preds = %.lr.ph.i.i.i.i.i.i.i206.preheader
  %scevgep752 = getelementptr i8, ptr %i.os, i64 8
  %i.ox = add i64 %i.oi, -8
  %i.oy = sub i64 %i.ox, %i.oj
  %i.oz = and i64 %i.oy, -8                       ; 2 uses
  %scevgep753 = getelementptr i8, ptr %scevgep752, i64 %i.oz
  %scevgep754 = getelementptr i8, ptr %i.oh, i64 8
  %scevgep755 = getelementptr i8, ptr %scevgep754, i64 %i.oz
  %bound0756 = icmp ult ptr %i.os, %scevgep755
  %bound1757 = icmp ult ptr %i.oh, %scevgep753
  %found.conflict758 = and i1 %bound0756, %bound1757
  br i1 %found.conflict758, label %.lr.ph.i.i.i.i.i.i.i206.preheader913, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck751
  %n.vec763 = and i64 %i.ow, 4611686018427387900  ; 3 uses
  %i.pa = shl i64 %n.vec763, 3                    ; 2 uses
  %i.pb = getelementptr i8, ptr %i.os, i64 %i.pa  ; 2 uses
  %i.pc = getelementptr i8, ptr %i.oh, i64 %i.pa
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph761
  %index765 = phi i64 [ 0, %vector.ph761 ], [ %index.next770, %vector.body764 ] ; 2 uses
  %i.pd = shl i64 %index765, 3                    ; 2 uses
  %next.gep766 = getelementptr i8, ptr %i.os, i64 %i.pd ; 2 uses
  %next.gep767 = getelementptr i8, ptr %i.oh, i64 %i.pd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.pe = getelementptr i8, ptr %next.gep767, i64 16
  %wide.load768 = load <2 x i64>, ptr %next.gep767, align 8, !tbaa !130, !alias.scope !480, !noalias !475
  %wide.load769 = load <2 x i64>, ptr %i.pe, align 8, !tbaa !130, !alias.scope !480, !noalias !475
  %i.pf = getelementptr i8, ptr %next.gep766, i64 16
  store <2 x i64> %wide.load768, ptr %next.gep766, align 8, !tbaa !130, !alias.scope !483, !noalias !480
  store <2 x i64> %wide.load769, ptr %i.pf, align 8, !tbaa !130, !alias.scope !483, !noalias !480
  %i.pg = getelementptr i8, ptr %next.gep767, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep767, align 8, !tbaa !130, !alias.scope !480, !noalias !475
  store <2 x ptr> splat (ptr null), ptr %i.pg, align 8, !tbaa !130, !alias.scope !480, !noalias !475
  %index.next770 = add nuw i64 %index765, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next770, %n.vec763
  br i1 %i.ph, label %middle.block771, label %vector.body764, !llvm.loop !485

middle.block771:                                  ; preds = %vector.body764
  %cmp.n772 = icmp eq i64 %i.ow, %n.vec763
  br i1 %cmp.n772, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i210, label %.lr.ph.i.i.i.i.i.i.i206.preheader913

.lr.ph.i.i.i.i.i.i.i206.preheader913:             ; preds = %vector.memcheck751, %.lr.ph.i.i.i.i.i.i.i206.preheader, %middle.block771
  %.012.i.i.i.i.i.i.i207.ph = phi ptr [ %i.os, %vector.memcheck751 ], [ %i.os, %.lr.ph.i.i.i.i.i.i.i206.preheader ], [ %i.pb, %middle.block771 ]
  %.0911.i.i.i.i.i.i.i208.ph = phi ptr [ %i.oh, %vector.memcheck751 ], [ %i.oh, %.lr.ph.i.i.i.i.i.i.i206.preheader ], [ %i.pc, %middle.block771 ]
  br label %.lr.ph.i.i.i.i.i.i.i206

.lr.ph.i.i.i.i.i.i.i206:                          ; preds = %.lr.ph.i.i.i.i.i.i.i206.preheader913, %.lr.ph.i.i.i.i.i.i.i206
  %.012.i.i.i.i.i.i.i207 = phi ptr [ %i.pk, %.lr.ph.i.i.i.i.i.i.i206 ], [ %.012.i.i.i.i.i.i.i207.ph, %.lr.ph.i.i.i.i.i.i.i206.preheader913 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i208 = phi ptr [ %i.pj, %.lr.ph.i.i.i.i.i.i.i206 ], [ %.0911.i.i.i.i.i.i.i208.ph, %.lr.ph.i.i.i.i.i.i.i206.preheader913 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.pi = load i64, ptr %.0911.i.i.i.i.i.i.i208, align 8, !tbaa !130, !alias.scope !478, !noalias !475
  store i64 %i.pi, ptr %.012.i.i.i.i.i.i.i207, align 8, !tbaa !130, !alias.scope !475, !noalias !478
  store ptr null, ptr %.0911.i.i.i.i.i.i.i208, align 8, !tbaa !130, !alias.scope !478, !noalias !475
  %i.pj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i208, i64 8 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i207, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i209 = icmp eq ptr %i.pj, %i.od
  br i1 %.not.i.i.i.i.i.i.i209, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i210, label %.lr.ph.i.i.i.i.i.i.i206, !llvm.loop !486

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i210: ; preds = %.lr.ph.i.i.i.i.i.i.i206, %middle.block771, %.noexc215
  %.0.lcssa.i.i.i.i.i.i.i211 = phi ptr [ %i.os, %.noexc215 ], [ %i.pb, %middle.block771 ], [ %i.pk, %.lr.ph.i.i.i.i.i.i.i206 ]
  %i.pl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i211, i64 8
  %.not.i23.i.i.i212 = icmp eq ptr %i.oh, null
  br i1 %.not.i23.i.i.i212, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i213, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i210
  call void @_ZdlPv(ptr noundef nonnull %i.oh) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i213

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i213: ; preds = %bb.de, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i210
  store ptr %i.os, ptr %23, align 8, !tbaa !63
  store ptr %i.pl, ptr %i.cv, align 8, !tbaa !62
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.oq
  store ptr %i.pm, ptr %i.cw, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit216

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit216: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i213, %bb.dc
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %.081508)
          to label %bb.df unwind label %.loopexit404

bb.df:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit216
  %i.pn = add i64 %.081508, -1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.an, %bb.df, %bb.ap
  %.283 = phi i64 [ %.081508, %bb.ap ], [ %i.fg, %bb.an ], [ %i.pn, %bb.df ]
  %i.po = add i64 %.283, 1                        ; 2 uses
  %i.pp = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.pq = load ptr, ptr %i.ck, align 8, !tbaa !63
  %i.pr = ptrtoint ptr %i.pp to i64
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  %i.pu = ashr exact i64 %i.pt, 3
  %.not90 = icmp ult i64 %i.po, %i.pu
  br i1 %.not90, label %bb.x, label %.critedge125, !llvm.loop !487

.critedge125:                                     ; preds = %bb.dg, %.loopexit414
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  %i.pv = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.pw, align 8
  %i.px = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.dh unwind label %bb.ek     ; 4 uses

bb.dh:                                            ; preds = %.critedge125
  %i.py = getelementptr inbounds nuw i8, ptr %26, i64 24
  store ptr %3, ptr %i.px, align 16, !tbaa !413
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store ptr %4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !413
  %.sroa.6366.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store ptr %18, ptr %.sroa.6366.0..sroa_idx, align 16, !tbaa !488
  store ptr %i.px, ptr %26, align 8, !tbaa !89
  store ptr @"_ZNSt17_Function_handlerIFvN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_14FilterPushdown16PushdownLeftJoinENS1_INS0_15LogicalOperatorES3_IS8_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESI_E3$_0E9_M_invokeERKSt9_Any_dataOS5_", ptr %i.py, align 8, !tbaa !490
  store ptr @"_ZNSt17_Function_handlerIFvN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_14FilterPushdown16PushdownLeftJoinENS1_INS0_15LogicalOperatorES3_IS8_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESI_E3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.pv, align 8, !tbaa !13
  invoke void @_ZN6duckdb14FilterCombiner15GenerateFiltersERKSt8functionIFvNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(248) %19, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.di unwind label %bb.el

bb.di:                                            ; preds = %bb.dh
  %i.pz = load ptr, ptr %i.pv, align 8, !tbaa !13 ; 2 uses
  %.not.i218 = icmp eq ptr %i.pz, null
  br i1 %.not.i218, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qa = invoke noundef zeroext i1 %i.pz(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.dk ; 0 uses

bb.dk:                                            ; preds = %bb.dj
  %i.qb = landingpad { ptr, i32 }
          catch ptr null
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0
  call void @__clang_call_terminate(ptr %i.qc) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  invoke void @_ZN6duckdb14FilterPushdown15GenerateFiltersEv(ptr noundef nonnull align 8 dereferenceable(288) %18)
          to label %bb.dl unwind label %bb.eo

bb.dl:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.qd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dm unwind label %bb.ep

bb.dm:                                            ; preds = %bb.dl
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qe, i64 noundef 0)
          to label %bb.dn unwind label %bb.ep     ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !96
  store i64 %i.qg, ptr %28, align 8, !tbaa !96
  store ptr null, ptr %i.qf, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %27, ptr noundef nonnull align 8 dereferenceable(288) %17, ptr noundef nonnull %28)
          to label %bb.do unwind label %bb.eq

bb.do:                                            ; preds = %bb.dn
  %i.qh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dp unwind label %bb.er

bb.dp:                                            ; preds = %bb.do
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qi, i64 noundef 0)
          to label %bb.dq unwind label %bb.er     ; 2 uses

bb.dq:                                            ; preds = %bb.dp
  %i.qk = load ptr, ptr %27, align 8, !tbaa !96
  store ptr null, ptr %27, align 8, !tbaa !96
  %i.ql = load ptr, ptr %i.qj, align 8, !tbaa !96 ; 3 uses
  store ptr %i.qk, ptr %i.qj, align 8, !tbaa !96
  %.not.i.i.i.i.i219 = icmp eq ptr %i.ql, null
  br i1 %.not.i.i.i.i.i219, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.dq
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !92
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ql) #19, !inline_history !107
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.dq, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.qp = load ptr, ptr %27, align 8, !tbaa !96   ; 3 uses
  %.not.i220 = icmp eq ptr %i.qp, null
  br i1 %.not.i220, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit222, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i221

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i221: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !92
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8
  call void %i.qs(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.qp) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit222

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit222: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i221
end_hunk_2
begin_hunk_3_@_ZN6duckdb14FilterPushdown16PushdownLeftJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_:bb.a
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.th) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit236

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit236: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i235, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit233, %bb.ep
  %.pn93.pn = phi { ptr, i32 } [ %i.ta, %bb.ep ], [ %.pn93, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit233 ], [ %.pn93, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body163

bb.es:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit225
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.et:                                            ; preds = %bb.du, %bb.dt, %bb.ds
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.eu:                                            ; preds = %bb.dv
  %i.tn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.to = load ptr, ptr %29, align 8, !tbaa !82   ; 3 uses
  %.not.i237 = icmp eq ptr %i.to, null
  br i1 %.not.i237, label %.body163, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i238

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i238: ; preds = %bb.eu
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !92
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(88) %i.to) #19, !inline_history !95
  br label %.body163

bb.ev:                                            ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit310

bb.ew:                                            ; preds = %bb.ef, %bb.ee, %bb.ed, %bb.ec
  %i.tt = landingpad { ptr, i32 }
          cleanup
  br label %.body242

bb.ex:                                            ; preds = %bb.ei, %bb.eh, %bb.eg
  %i.tu = landingpad { ptr, i32 }
          cleanup
  br label %.body242

bb.ey:                                            ; preds = %.lr.ph511, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.088510 = phi i64 [ 0, %.lr.ph511 ], [ %i.wd, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.tv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %31, i64 noundef %.088510)
          to label %bb.ez unwind label %bb.fn

bb.ez:                                            ; preds = %bb.ey
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !67 ; 5 uses
  %i.tx = load i64, ptr %i.rr, align 8, !tbaa !494 ; 2 uses
  %i.ty = urem i64 %i.tw, %i.tx                   ; 3 uses
  %i.tz = load ptr, ptr %30, align 8, !tbaa !492
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.ty
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i.i240 = icmp eq ptr %i.ub, null
  br i1 %.not.i.i.i.i240, label %.loopexit.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !66 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !67
  %i.uf = icmp eq i64 %i.tw, %i.ue
  br i1 %i.uf, label %.loopexit400, label %.lr.ph.i.i.i.i

bb.fb:                                            ; preds = %bb.fc
  %i.ug = icmp eq i64 %i.tw, %i.uj
  br i1 %i.ug, label %.loopexit400, label %.lr.ph.i.i.i.i, !llvm.loop !500

.lr.ph.i.i.i.i:                                   ; preds = %bb.fa, %bb.fb
  %.020.i.i.i.i = phi ptr [ %i.uh, %bb.fb ], [ %i.uc, %bb.fa ]
  %i.uh = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !66 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.uh, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !67 ; 2 uses
  %i.uk = urem i64 %i.uj, %i.tx
  %.not19.i.i.i.i = icmp eq i64 %i.uk, %i.ty
  br i1 %.not19.i.i.i.i, label %bb.fb, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !500

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.fc
  br label %.loopexit.i.i, !llvm.loop !500

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %30, ptr %6, align 8, !tbaa !501
  %i.ul = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21
          to label %.noexc241 unwind label %bb.fn ; 5 uses

.noexc241:                                        ; preds = %.loopexit.i.i
  store ptr null, ptr %i.ul, align 8, !tbaa !66
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  store i64 %i.tw, ptr %i.um, align 8, !tbaa !497
  %i.un = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.un, i8 0, i64 24, i1 false)
  store ptr %i.ul, ptr %i.so, align 8, !tbaa !505
  %i.uo = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSD_10_Hash_nodeISB_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %30, i64 noundef %i.ty, i64 noundef %i.tw, ptr noundef nonnull %i.ul, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.fd

_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc241
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.loopexit400

bb.fd:                                            ; preds = %.noexc241
  %i.up = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body242

.loopexit400:                                     ; preds = %bb.fb, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.fa
  %.pn.i.i = phi ptr [ %i.uo, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.uc, %bb.fa ], [ %i.uh, %bb.fb ] ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.uq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.sk, i64 noundef %.088510)
          to label %bb.fe unwind label %bb.fo

bb.fe:                                            ; preds = %.loopexit400
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %i.uq)
          to label %bb.ff unwind label %bb.fo

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef nonnull %33)
          to label %bb.fg unwind label %bb.fp

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ur = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #21
          to label %.noexc244 unwind label %bb.fq ; 6 uses

.noexc244:                                        ; preds = %bb.fg
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %32) #19, !noalias !506
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.ur, ptr noundef nonnull %5)
          to label %bb.fi unwind label %bb.fh, !noalias !506

bb.fh:                                            ; preds = %.noexc244
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #19, !noalias !506
  call void @_ZdlPv(ptr noundef nonnull %i.ur) #22, !noalias !506
  br label %.body245

bb.fi:                                            ; preds = %.noexc244
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #19, !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ut = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !163 ; 6 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !164
  %.not.i247 = icmp eq ptr %i.uu, %i.uw
  br i1 %.not.i247, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store ptr %i.ur, ptr %i.uu, align 8, !tbaa !396
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store ptr %i.ux, ptr %i.ut, align 8, !tbaa !163
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.fk:                                            ; preds = %bb.fi
  %i.uy = load ptr, ptr %.1.i.i, align 8, !tbaa !165 ; 10 uses
  %i.uz = ptrtoint ptr %i.uu to i64               ; 3 uses
  %i.va = ptrtoint ptr %i.uy to i64               ; 3 uses
  %i.vb = sub i64 %i.uz, %i.va                    ; 3 uses
  %i.vc = icmp eq i64 %i.vb, 9223372036854775800
  br i1 %i.vc, label %bb.fl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc250 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit.split-lp

.noexc250:                                        ; preds = %bb.fl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.fk
  %i.vd = ashr exact i64 %i.vb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.vd, i64 1)
  %i.ve = add nsw i64 %.sroa.speculated.i.i.i, %i.vd ; 2 uses
  %i.vf = icmp ult i64 %i.ve, %i.vd
  %i.vg = call i64 @llvm.umin.i64(i64 %i.ve, i64 1152921504606846975)
  %i.vh = select i1 %i.vf, i64 1152921504606846975, i64 %i.vg ; 3 uses
  %.not.i.i.i248 = icmp ne i64 %i.vh, 0
  call void @llvm.assume(i1 %.not.i.i.i248)
  %i.vi = shl nuw nsw i64 %i.vh, 3
  %i.vj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vi) #21
          to label %.noexc251 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit ; 10 uses

.noexc251:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vb
  store ptr %i.ur, ptr %i.vk, align 8, !tbaa !396
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.uy, %i.uu
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc251
  %55 = sub i64 %i.uz, %i.va
  %56 = add i64 %55, -8                           ; 2 uses
  %i.vl = lshr i64 %56, 3
  %i.vm = add nuw nsw i64 %i.vl, 1                ; 2 uses
  %min.iters.check856 = icmp ult i64 %56, 56
  br i1 %min.iters.check856, label %.lr.ph.i.i.i.i.i.i.preheader899, label %vector.memcheck847

vector.memcheck847:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep848 = getelementptr i8, ptr %i.vj, i64 8
  %i.vn = add i64 %i.uz, -8
  %i.vo = sub i64 %i.vn, %i.va
  %i.vp = and i64 %i.vo, -8                       ; 2 uses
  %scevgep849 = getelementptr i8, ptr %scevgep848, i64 %i.vp
  %scevgep850 = getelementptr i8, ptr %i.uy, i64 8
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.vp
  %bound0852 = icmp ult ptr %i.vj, %scevgep851
  %bound1853 = icmp ult ptr %i.uy, %scevgep849
  %found.conflict854 = and i1 %bound0852, %bound1853
  br i1 %found.conflict854, label %.lr.ph.i.i.i.i.i.i.preheader899, label %vector.ph857

vector.ph857:                                     ; preds = %vector.memcheck847
  %n.vec859 = and i64 %i.vm, 4611686018427387900  ; 3 uses
  %i.vq = shl i64 %n.vec859, 3                    ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vj, i64 %i.vq  ; 2 uses
  %i.vs = getelementptr i8, ptr %i.uy, i64 %i.vq
  br label %vector.body860

vector.body860:                                   ; preds = %vector.body860, %vector.ph857
  %index861 = phi i64 [ 0, %vector.ph857 ], [ %index.next866, %vector.body860 ] ; 2 uses
  %i.vt = shl i64 %index861, 3                    ; 2 uses
  %next.gep862 = getelementptr i8, ptr %i.vj, i64 %i.vt ; 2 uses
  %next.gep863 = getelementptr i8, ptr %i.uy, i64 %i.vt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.vu = getelementptr i8, ptr %next.gep863, i64 16
  %wide.load864 = load <2 x i64>, ptr %next.gep863, align 8, !tbaa !82, !alias.scope !514, !noalias !509
  %wide.load865 = load <2 x i64>, ptr %i.vu, align 8, !tbaa !82, !alias.scope !514, !noalias !509
  %i.vv = getelementptr i8, ptr %next.gep862, i64 16
  store <2 x i64> %wide.load864, ptr %next.gep862, align 8, !tbaa !82, !alias.scope !517, !noalias !514
  store <2 x i64> %wide.load865, ptr %i.vv, align 8, !tbaa !82, !alias.scope !517, !noalias !514
  %i.vw = getelementptr i8, ptr %next.gep863, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep863, align 8, !tbaa !82, !alias.scope !514, !noalias !509
  store <2 x ptr> splat (ptr null), ptr %i.vw, align 8, !tbaa !82, !alias.scope !514, !noalias !509
  %index.next866 = add nuw i64 %index861, 4       ; 2 uses
  %i.vx = icmp eq i64 %index.next866, %n.vec859
  br i1 %i.vx, label %middle.block867, label %vector.body860, !llvm.loop !519

middle.block867:                                  ; preds = %vector.body860
  %cmp.n868 = icmp eq i64 %i.vm, %n.vec859
  br i1 %cmp.n868, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader899

.lr.ph.i.i.i.i.i.i.preheader899:                  ; preds = %vector.memcheck847, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block867
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.vj, %vector.memcheck847 ], [ %i.vj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vr, %middle.block867 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.uy, %vector.memcheck847 ], [ %i.uy, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.vs, %middle.block867 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader899, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.wa, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader899 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.vz, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader899 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %i.vy = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !512, !noalias !509
  store i64 %i.vy, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !509, !noalias !512
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !512, !noalias !509
  %i.vz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i249 = icmp eq ptr %i.vz, %i.uu
  br i1 %.not.i.i.i.i.i.i249, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !520

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block867, %.noexc251
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.vj, %.noexc251 ], [ %i.vr, %middle.block867 ], [ %i.wa, %.lr.ph.i.i.i.i.i.i ]
  %i.wb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.uy, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.uy) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.fm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.vj, ptr %.1.i.i, align 8, !tbaa !165
  store ptr %i.wb, ptr %i.ut, align 8, !tbaa !163
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vh
  store ptr %i.wc, ptr %i.uv, align 8, !tbaa !164
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.fj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJNS1_INS0_23BoundConstantExpressionES3_IS9_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %32) #19
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.wd = add nuw i64 %.088510, 1                 ; 2 uses
  %i.we = load ptr, ptr %i.sl, align 8, !tbaa !495
  %i.wf = load ptr, ptr %31, align 8, !tbaa !102
  %i.wg = ptrtoint ptr %i.we to i64
  %i.wh = ptrtoint ptr %i.wf to i64
  %i.wi = sub i64 %i.wg, %i.wh
  %i.wj = ashr exact i64 %i.wi, 4
  %i.wk = icmp ult i64 %i.wd, %i.wj
  br i1 %i.wk, label %bb.ey, label %._crit_edge, !llvm.loop !521

bb.fn:                                            ; preds = %.loopexit.i.i, %bb.ey
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body242

bb.fo:                                            ; preds = %bb.fe, %.loopexit400
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fp:                                            ; preds = %bb.ff
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fg
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.body245

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit401 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit.split-lp: ; preds = %bb.fl
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255: ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit
  %lpad.phi403 = phi { ptr, i32 } [ %lpad.loopexit401, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit ], [ %lpad.loopexit.split-lp402, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255.loopexit.split-lp ]
  %i.wp = load ptr, ptr %i.ur, align 8, !tbaa !92
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(152) %i.ur) #19, !inline_history !522
  br label %.body245

.body245:                                         ; preds = %bb.fq, %bb.fh, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255
  %.pn105 = phi { ptr, i32 } [ %lpad.phi403, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit255 ], [ %i.wo, %bb.fq ], [ %i.us, %bb.fh ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %32) #19
  br label %bb.fr

bb.fr:                                            ; preds = %.body245, %bb.fp
  %.pn105.pn = phi { ptr, i32 } [ %.pn105, %.body245 ], [ %i.wn, %bb.fp ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #19
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fo
  %.pn105.pn.pn = phi { ptr, i32 } [ %.pn105.pn, %bb.fr ], [ %i.wm, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %.body242

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge
  %i.ws = load ptr, ptr %34, align 8, !tbaa !523  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  %i.wt = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_10unique_ptrINS2_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEESaISB_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb0ELb0ELb1EEEE5eraseENSD_20_Node_const_iteratorISB_Lb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr nonnull %i.sp)
          to label %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit unwind label %bb.fu ; 0 uses

_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.wu = load ptr, ptr %i.rs, align 8, !tbaa !496 ; 2 uses
  %.not386512 = icmp eq ptr %i.wu, null
  br i1 %.not386512, label %._crit_edge516, label %.lr.ph515

._crit_edge516:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit272, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit
  %.sroa.0355.0.lcssa = phi ptr [ %i.ws, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit ], [ %i.xl, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit272 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  %i.wv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.fz unwind label %bb.gf

bb.ft:                                            ; preds = %._crit_edge
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %.body242

bb.fu:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

.lr.ph515:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit272
  %.sroa.0352.0514 = phi ptr [ %i.xq, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit272 ], [ %i.wu, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit ] ; 2 uses
  %.sroa.0355.0513 = phi ptr [ %i.xl, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit272 ], [ %i.ws, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEE5eraseENSt8__detail14_Node_iteratorISF_Lb0ELb0EEE.exit ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0352.0514, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !497
  %.val.val = load ptr, ptr %1, align 8, !tbaa !18
  %i.xa = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.xa, align 8, !tbaa !499
  invoke fastcc void @"_ZZN6duckdb14FilterPushdown16PushdownLeftJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_ENK3$_1clEm"(ptr dead_on_unwind noalias writable align 8 %35, ptr %.val.val.val, ptr nonnull %30, i64 noundef %i.wz)
          to label %bb.fv unwind label %bb.fx

bb.fv:                                            ; preds = %.lr.ph515
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  %i.xb = ptrtoint ptr %.sroa.0355.0513 to i64
  store i64 %i.xb, ptr %37, align 8, !tbaa !96
  %i.xc = load ptr, ptr %35, align 8, !tbaa !523
  store ptr null, ptr %35, align 8, !tbaa !523
  store ptr %i.xc, ptr %38, align 8, !tbaa !104
  invoke void @_ZN6duckdb19LogicalCrossProduct6CreateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %36, ptr noundef nonnull %37, ptr noundef nonnull %38)
          to label %bb.fw unwind label %bb.fy
end_hunk_3
begin_hunk_4_@_ZN6duckdb14FilterPushdown16PushdownLeftJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_:bb.a
.body242:                                         ; preds = %bb.ft, %bb.gh, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i307, %bb.fn, %bb.fd, %bb.ex, %bb.fs, %bb.ew
  %.pn105.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tt, %bb.ew ], [ %i.tu, %bb.ex ], [ %i.up, %bb.fd ], [ %.pn105.pn.pn, %bb.fs ], [ %i.wl, %bb.fn ], [ %i.ww, %bb.ft ], [ %.pn101.pn, %bb.gh ], [ %.pn101.pn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i307 ] ; 2 uses
  %i.aae = load ptr, ptr %31, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i309 = icmp eq ptr %i.aae, null
  br i1 %.not.i.i.i309, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit310, label %bb.gi

bb.gi:                                            ; preds = %.body242
  call void @_ZdlPv(ptr noundef nonnull %i.aae) #22
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit310

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit310: ; preds = %bb.gi, %.body242, %bb.ev
  %.pn105.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ts, %bb.ev ], [ %.pn105.pn.pn.pn.pn.pn, %.body242 ], [ %.pn105.pn.pn.pn.pn.pn, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %.body163

.critedge127:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit228, %bb.dx, %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19
  %i.aaf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.gj unwind label %bb.go

bb.gj:                                            ; preds = %.critedge127
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 16
  %i.aah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aag, i64 noundef 1)
          to label %bb.gk unwind label %bb.go     ; 2 uses

bb.gk:                                            ; preds = %bb.gj
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !96
  store i64 %i.aai, ptr %43, align 8, !tbaa !96
  store ptr null, ptr %i.aah, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %42, ptr noundef nonnull align 8 dereferenceable(288) %18, ptr noundef nonnull %43)
          to label %bb.gl unwind label %bb.gp

bb.gl:                                            ; preds = %bb.gk
  %i.aaj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.gm unwind label %bb.gq

bb.gm:                                            ; preds = %bb.gl
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aak, i64 noundef 1)
          to label %bb.gn unwind label %bb.gq     ; 2 uses

bb.gn:                                            ; preds = %bb.gm
  %i.aam = load ptr, ptr %42, align 8, !tbaa !96
  store ptr null, ptr %42, align 8, !tbaa !96
  %i.aan = load ptr, ptr %i.aal, align 8, !tbaa !96 ; 3 uses
  store ptr %i.aam, ptr %i.aal, align 8, !tbaa !96
  %.not.i.i.i.i.i311 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i.i.i.i311, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit313, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i312

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i312: ; preds = %bb.gn
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !92
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8
  call void %i.aaq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aan) #19, !inline_history !107
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit313

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit313: ; preds = %bb.gn, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i312
  %i.aar = load ptr, ptr %42, align 8, !tbaa !96  ; 3 uses
  %.not.i314 = icmp eq ptr %i.aar, null
  br i1 %.not.i314, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit316, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i315

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i315: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit313
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !92
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.aau = load ptr, ptr %i.aat, align 8
  call void %i.aau(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aar) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit316

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit316: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit313, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i315
  %i.aav = load ptr, ptr %43, align 8, !tbaa !96  ; 3 uses
  %.not.i317 = icmp eq ptr %i.aav, null
  br i1 %.not.i317, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit319, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i318

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i318: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit316
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !92
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aay = load ptr, ptr %i.aax, align 8
  call void %i.aay(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aav) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit319

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit319: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit316, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %bb.gr

bb.go:                                            ; preds = %bb.gj, %.critedge127
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit325

bb.gp:                                            ; preds = %bb.gk
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322

bb.gq:                                            ; preds = %bb.gm, %bb.gl
  %i.abb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abc = load ptr, ptr %42, align 8, !tbaa !96  ; 3 uses
  %.not.i320 = icmp eq ptr %i.abc, null
  br i1 %.not.i320, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i321

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i321: ; preds = %bb.gq
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !92
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8
  call void %i.abf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.abc) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i321, %bb.gq, %bb.gp
  %.pn98 = phi { ptr, i32 } [ %i.aba, %bb.gp ], [ %i.abb, %bb.gq ], [ %i.abb, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i321 ] ; 2 uses
  %i.abg = load ptr, ptr %43, align 8, !tbaa !96  ; 3 uses
  %.not.i323 = icmp eq ptr %i.abg, null
  br i1 %.not.i323, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit325, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i324

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i324: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !92
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abj = load ptr, ptr %i.abi, align 8
  call void %i.abj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.abg) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit325

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit325: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i324, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322, %bb.go
  %.pn98.pn = phi { ptr, i32 } [ %i.aaz, %bb.go ], [ %.pn98, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit322 ], [ %.pn98, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19
  br label %.body163

bb.gr:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESt4hashImESt8equal_toImESaISt4pairIKmS8_EEED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit319
  %i.abk = load ptr, ptr %23, align 8, !tbaa !135 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !135 ; 2 uses
  %.not387518 = icmp eq ptr %i.abk, %i.abm
  br i1 %.not387518, label %._crit_edge522, label %.lr.ph521

.lr.ph521:                                        ; preds = %bb.gr
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.pre566 = load ptr, ptr %i.cl, align 8, !tbaa !62
  %.pre567 = load ptr, ptr %i.abn, align 8, !tbaa !136
  br label %bb.gs

._crit_edge522:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341, %bb.gr
  %i.abo = load i64, ptr %2, align 8, !tbaa !96
  store i64 %i.abo, ptr %44, align 8, !tbaa !96
  store ptr null, ptr %2, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown16PushFinalFiltersENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %44)
          to label %bb.gx unwind label %bb.gy

bb.gs:                                            ; preds = %.lr.ph521, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341
  %i.abp = phi ptr [ %.pre567, %.lr.ph521 ], [ %i.acz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341 ] ; 5 uses
  %i.abq = phi ptr [ %.pre566, %.lr.ph521 ], [ %i.ada, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341 ] ; 3 uses
  %.sroa.0348.0519 = phi ptr [ %i.abk, %.lr.ph521 ], [ %i.adb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341 ] ; 5 uses
  %.not.i.i326 = icmp eq ptr %i.abq, %i.abp
  br i1 %.not.i.i326, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.abr = load i64, ptr %.sroa.0348.0519, align 8, !tbaa !130
  store i64 %i.abr, ptr %i.abq, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0348.0519, align 8, !tbaa !130
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 2 uses
  store ptr %i.abs, ptr %i.cl, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341

bb.gu:                                            ; preds = %bb.gs
  %i.abt = load ptr, ptr %i.ck, align 8, !tbaa !63 ; 10 uses
  %i.abu = ptrtoint ptr %i.abp to i64             ; 3 uses
  %i.abv = ptrtoint ptr %i.abt to i64             ; 3 uses
  %i.abw = sub i64 %i.abu, %i.abv                 ; 3 uses
  %i.abx = icmp eq i64 %i.abw, 9223372036854775800
  br i1 %i.abx, label %bb.gv, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i327

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc339 unwind label %.loopexit.split-lp396

.noexc339:                                        ; preds = %bb.gv
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i327: ; preds = %bb.gu
  %i.aby = ashr exact i64 %i.abw, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i328 = call i64 @llvm.umax.i64(i64 %i.aby, i64 1)
  %i.abz = add nsw i64 %.sroa.speculated.i.i.i.i328, %i.aby ; 2 uses
  %i.aca = icmp ult i64 %i.abz, %i.aby
  %i.acb = call i64 @llvm.umin.i64(i64 %i.abz, i64 1152921504606846975)
  %i.acc = select i1 %i.aca, i64 1152921504606846975, i64 %i.acb ; 3 uses
  %.not.i.i.i.i329 = icmp ne i64 %i.acc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i329)
  %i.acd = shl nuw nsw i64 %i.acc, 3
  %i.ace = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acd) #21
          to label %.noexc340 unwind label %.loopexit395 ; 10 uses

.noexc340:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i327
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.abw
  %i.acg = load i64, ptr %.sroa.0348.0519, align 8, !tbaa !130
  store i64 %i.acg, ptr %i.acf, align 8, !tbaa !130
  store ptr null, ptr %.sroa.0348.0519, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i330 = icmp eq ptr %i.abt, %i.abp
  br i1 %.not10.i.i.i.i.i.i.i330, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i335, label %.lr.ph.i.i.i.i.i.i.i331.preheader

.lr.ph.i.i.i.i.i.i.i331.preheader:                ; preds = %.noexc340
  %57 = sub i64 %i.abu, %i.abv
  %58 = add i64 %57, -8                           ; 2 uses
  %i.ach = lshr i64 %58, 3
  %i.aci = add nuw nsw i64 %i.ach, 1              ; 2 uses
  %min.iters.check880 = icmp ult i64 %58, 56
  br i1 %min.iters.check880, label %.lr.ph.i.i.i.i.i.i.i331.preheader895, label %vector.memcheck871

vector.memcheck871:                               ; preds = %.lr.ph.i.i.i.i.i.i.i331.preheader
  %scevgep872 = getelementptr i8, ptr %i.ace, i64 8
  %i.acj = add i64 %i.abu, -8
  %i.ack = sub i64 %i.acj, %i.abv
  %i.acl = and i64 %i.ack, -8                     ; 2 uses
  %scevgep873 = getelementptr i8, ptr %scevgep872, i64 %i.acl
  %scevgep874 = getelementptr i8, ptr %i.abt, i64 8
  %scevgep875 = getelementptr i8, ptr %scevgep874, i64 %i.acl
  %bound0876 = icmp ult ptr %i.ace, %scevgep875
  %bound1877 = icmp ult ptr %i.abt, %scevgep873
  %found.conflict878 = and i1 %bound0876, %bound1877
  br i1 %found.conflict878, label %.lr.ph.i.i.i.i.i.i.i331.preheader895, label %vector.ph881

vector.ph881:                                     ; preds = %vector.memcheck871
  %n.vec883 = and i64 %i.aci, 4611686018427387900 ; 3 uses
  %i.acm = shl i64 %n.vec883, 3                   ; 2 uses
  %i.acn = getelementptr i8, ptr %i.ace, i64 %i.acm ; 2 uses
  %i.aco = getelementptr i8, ptr %i.abt, i64 %i.acm
  br label %vector.body884

vector.body884:                                   ; preds = %vector.body884, %vector.ph881
  %index885 = phi i64 [ 0, %vector.ph881 ], [ %index.next890, %vector.body884 ] ; 2 uses
  %i.acp = shl i64 %index885, 3                   ; 2 uses
  %next.gep886 = getelementptr i8, ptr %i.ace, i64 %i.acp ; 2 uses
  %next.gep887 = getelementptr i8, ptr %i.abt, i64 %i.acp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.acq = getelementptr i8, ptr %next.gep887, i64 16
  %wide.load888 = load <2 x i64>, ptr %next.gep887, align 8, !tbaa !130, !alias.scope !533, !noalias !528
  %wide.load889 = load <2 x i64>, ptr %i.acq, align 8, !tbaa !130, !alias.scope !533, !noalias !528
  %i.acr = getelementptr i8, ptr %next.gep886, i64 16
  store <2 x i64> %wide.load888, ptr %next.gep886, align 8, !tbaa !130, !alias.scope !536, !noalias !533
  store <2 x i64> %wide.load889, ptr %i.acr, align 8, !tbaa !130, !alias.scope !536, !noalias !533
  %i.acs = getelementptr i8, ptr %next.gep887, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep887, align 8, !tbaa !130, !alias.scope !533, !noalias !528
  store <2 x ptr> splat (ptr null), ptr %i.acs, align 8, !tbaa !130, !alias.scope !533, !noalias !528
  %index.next890 = add nuw i64 %index885, 4       ; 2 uses
  %i.act = icmp eq i64 %index.next890, %n.vec883
  br i1 %i.act, label %middle.block891, label %vector.body884, !llvm.loop !538

middle.block891:                                  ; preds = %vector.body884
  %cmp.n892 = icmp eq i64 %i.aci, %n.vec883
  br i1 %cmp.n892, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i335, label %.lr.ph.i.i.i.i.i.i.i331.preheader895

.lr.ph.i.i.i.i.i.i.i331.preheader895:             ; preds = %vector.memcheck871, %.lr.ph.i.i.i.i.i.i.i331.preheader, %middle.block891
  %.012.i.i.i.i.i.i.i332.ph = phi ptr [ %i.ace, %vector.memcheck871 ], [ %i.ace, %.lr.ph.i.i.i.i.i.i.i331.preheader ], [ %i.acn, %middle.block891 ]
  %.0911.i.i.i.i.i.i.i333.ph = phi ptr [ %i.abt, %vector.memcheck871 ], [ %i.abt, %.lr.ph.i.i.i.i.i.i.i331.preheader ], [ %i.aco, %middle.block891 ]
  br label %.lr.ph.i.i.i.i.i.i.i331

.lr.ph.i.i.i.i.i.i.i331:                          ; preds = %.lr.ph.i.i.i.i.i.i.i331.preheader895, %.lr.ph.i.i.i.i.i.i.i331
  %.012.i.i.i.i.i.i.i332 = phi ptr [ %i.acw, %.lr.ph.i.i.i.i.i.i.i331 ], [ %.012.i.i.i.i.i.i.i332.ph, %.lr.ph.i.i.i.i.i.i.i331.preheader895 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i333 = phi ptr [ %i.acv, %.lr.ph.i.i.i.i.i.i.i331 ], [ %.0911.i.i.i.i.i.i.i333.ph, %.lr.ph.i.i.i.i.i.i.i331.preheader895 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.acu = load i64, ptr %.0911.i.i.i.i.i.i.i333, align 8, !tbaa !130, !alias.scope !531, !noalias !528
  store i64 %i.acu, ptr %.012.i.i.i.i.i.i.i332, align 8, !tbaa !130, !alias.scope !528, !noalias !531
  store ptr null, ptr %.0911.i.i.i.i.i.i.i333, align 8, !tbaa !130, !alias.scope !531, !noalias !528
  %i.acv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i333, i64 8 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i332, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i334 = icmp eq ptr %i.acv, %i.abp
  br i1 %.not.i.i.i.i.i.i.i334, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i335, label %.lr.ph.i.i.i.i.i.i.i331, !llvm.loop !539

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i335: ; preds = %.lr.ph.i.i.i.i.i.i.i331, %middle.block891, %.noexc340
  %.0.lcssa.i.i.i.i.i.i.i336 = phi ptr [ %i.ace, %.noexc340 ], [ %i.acn, %middle.block891 ], [ %i.acw, %.lr.ph.i.i.i.i.i.i.i331 ]
  %i.acx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i336, i64 8 ; 2 uses
  %.not.i23.i.i.i337 = icmp eq ptr %i.abt, null
  br i1 %.not.i23.i.i.i337, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i338, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i335
  call void @_ZdlPv(ptr noundef nonnull %i.abt) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i338

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i338: ; preds = %bb.gw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i335
  store ptr %i.ace, ptr %i.ck, align 8, !tbaa !63
  store ptr %i.acx, ptr %i.cl, align 8, !tbaa !62
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %i.acc ; 2 uses
  store ptr %i.acy, ptr %i.abn, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit341: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i338, %bb.gt
  %i.acz = phi ptr [ %i.acy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i338 ], [ %i.abp, %bb.gt ]
  %i.ada = phi ptr [ %i.acx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i338 ], [ %i.abs, %bb.gt ]
  %i.adb = getelementptr inbounds nuw i8, ptr %.sroa.0348.0519, i64 8 ; 2 uses
  %.not387 = icmp eq ptr %i.adb, %i.abm
  br i1 %.not387, label %._crit_edge522, label %bb.gs

.loopexit395:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i327
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

.loopexit.split-lp396:                            ; preds = %bb.gv
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.body163

bb.gx:                                            ; preds = %._crit_edge522
  %i.adc = load ptr, ptr %44, align 8, !tbaa !96  ; 2 uses
  %.not.i342 = icmp eq ptr %i.adc, null
  br i1 %.not.i342, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit.sink.split

bb.gy:                                            ; preds = %._crit_edge522
  %i.add = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ade = load ptr, ptr %44, align 8, !tbaa !96  ; 3 uses
  %.not.i345 = icmp eq ptr %i.ade, null
  br i1 %.not.i345, label %.body163, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i346

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i346: ; preds = %bb.gy
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !92
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8
  call void %i.adh(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ade) #19, !inline_history !108
  br label %.body163

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit.sink.split: ; preds = %bb.gx, %.critedge
  %.sink716 = phi ptr [ %i.nw, %.critedge ], [ %i.adc, %bb.gx ] ; 2 uses
  %i.adi = load ptr, ptr %.sink716, align 8, !tbaa !92
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8
  call void %i.adk(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.sink716) #19
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit.sink.split, %bb.gx, %.critedge
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.adl = getelementptr inbounds nuw i8, ptr %18, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.adl) #19
  %i.adm = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.adm) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.adn = getelementptr inbounds nuw i8, ptr %17, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.adn) #19
  %i.ado = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.ado) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  ret void

.body163:                                         ; preds = %.loopexit395, %.loopexit.split-lp396, %.loopexit, %.loopexit.split-lp, %.loopexit390, %.loopexit.split-lp391, %.loopexit404, %.loopexit.split-lp405, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i346, %bb.gy, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i238, %bb.eu, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit55.i, %bb.ai, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i154, %bb.cz, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i199, %bb.es, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit325, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit310, %bb.et, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit236, %bb.eo, %_ZNSt14_Function_baseD2Ev.exit230
  %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tm, %bb.et ], [ %.pn93.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit236 ], [ %i.sz, %bb.eo ], [ %.pn91, %_ZNSt14_Function_baseD2Ev.exit230 ], [ %i.tl, %bb.es ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.tn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i238 ], [ %.pn98.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit325 ], [ %.pn105.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit310 ], [ %i.nx, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i199 ], [ %i.dq, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i154 ], [ %.pn29.pn.pn.pn.pn.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit55.i ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ], [ %lpad.loopexit.split-lp393, %.loopexit.split-lp391 ], [ %i.add, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i346 ], [ %i.dq, %bb.ai ], [ %i.nx, %bb.cz ], [ %i.tn, %bb.eu ], [ %i.add, %bb.gy ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit392, %.loopexit390 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit397, %.loopexit395 ], [ %lpad.loopexit.split-lp398, %.loopexit.split-lp396 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.gz

bb.gz:                                            ; preds = %bb.k, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit149, %.body163, %bb.j
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn105.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body163 ], [ %.pn116.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit149 ], [ %i.z, %bb.k ]
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %19) #19
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.i
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn, %bb.gz ], [ %i.x, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.adp = getelementptr inbounds nuw i8, ptr %18, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.adp) #19
  %i.adq = getelementptr inbounds nuw i8, ptr %18, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.adq) #19
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.h
  %.pn116.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn.pn, %bb.ha ], [ %i.w, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.adr = getelementptr inbounds nuw i8, ptr %17, i64 264
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.adr) #19
  %i.ads = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.ads) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  resume { ptr, i32 } %.pn116.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6duckdb14FilterCombinerC1ERNS_9OptimizerE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef i32 @_ZN6duckdb14FilterCombiner9AddFilterENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #2

declare void @_ZN6duckdb14FilterCombiner15GenerateFiltersERKSt8functionIFvNS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEEEE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !495
  %i.e = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_4
begin_hunk_5_@_ZN6duckdb14FilterCombinerD2Ev:bb.a
  %i.ap = load ptr, ptr %.05.i.i.i, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(88) %i.ap) #19, !inline_history !182
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ao
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !183

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.al, align 8, !tbaa !165
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb10ExpressionEENS1_10unique_ptrIS2_St14default_deleteIS2_ELb1EEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_S7_EEED2Ev.exit
  %i.au = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.am, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb10ExpressionEENS1_10unique_ptrIS2_St14default_deleteIS2_ELb1EEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_S7_EEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.au) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14FilterPushdown16PushdownMarkJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode.768", align 8 ; 4 uses
  %6 = alloca %"class.duckdb::vector", align 8    ; 6 uses
  %7 = alloca %"class.duckdb::FilterPushdown", align 8 ; 12 uses
  %8 = alloca %"class.duckdb::FilterPushdown", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 8 uses
  %12 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %13 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %6, ptr noundef nonnull align 8 dereferenceable(97) %i.a)
  %i.e = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.g       ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %4, ptr %5, align 8, !tbaa !562
  %i.h = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.i = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 4 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !59, !range !60, !noundef !61
  %i.l = trunc nuw i8 %i.k to i1
  invoke void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef nonnull align 8 dereferenceable(96) %i.i, i1 noundef zeroext %i.l)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.m = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.n = load i8, ptr %i.j, align 8, !tbaa !59, !range !60, !noundef !61
  %i.o = trunc nuw i8 %i.n to i1
  invoke void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull align 8 dereferenceable(96) %i.m, i1 noundef zeroext %i.o)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !63
  %.not128 = icmp eq ptr %i.r, %i.s
  br i1 %.not128, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 257 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 97 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 264 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 272 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 2 uses
  br label %bb.j

._crit_edge127:                                   ; preds = %.thread120, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.aa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.at unwind label %bb.bf

bb.f:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.h:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.j:                                             ; preds = %.lr.ph126, %.thread120
  %.049125 = phi i64 [ 0, %.lr.ph126 ], [ %i.dk, %.thread120 ] ; 17 uses
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ah = invoke i8 @_ZN6duckdb8JoinSide11GetJoinSideERKSt13unordered_setImSt4hashImESt8equal_toImESaImEES9_S9_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  switch i8 %i.ah, label %.thread120 [
    i8 1, label %bb.n
    i8 2, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !62  ; 6 uses
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !130
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !130
  store ptr null, ptr %i.ai, align 8, !tbaa !130
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.y, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !63  ; 10 uses
  %i.ao = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #21
          to label %.noexc77 unwind label %.loopexit ; 10 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !130
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !130
  store ptr null, ptr %i.ai, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc77
  %14 = sub i64 %i.ao, %i.ap
  %15 = add i64 %14, -8                           ; 2 uses
  %i.bb = lshr i64 %15, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader155, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ay, i64 8
  %i.bd = add i64 %i.ao, -8
  %i.be = sub i64 %i.bd, %i.ap
  %i.bf = and i64 %i.be, -8                       ; 2 uses
  %scevgep149 = getelementptr i8, ptr %scevgep, i64 %i.bf
  %scevgep150 = getelementptr i8, ptr %i.an, i64 8
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.bf
  %bound0 = icmp ult ptr %i.ay, %scevgep151
  %bound1 = icmp ult ptr %i.an, %scevgep149
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader155, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bj ; 2 uses
  %next.gep152 = getelementptr i8, ptr %i.an, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.bk = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep152, align 8, !tbaa !130, !alias.scope !569, !noalias !564
  %wide.load153 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !130, !alias.scope !569, !noalias !564
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !130, !alias.scope !572, !noalias !569
  store <2 x i64> %wide.load153, ptr %i.bl, align 8, !tbaa !130, !alias.scope !572, !noalias !569
  %i.bm = getelementptr i8, ptr %next.gep152, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep152, align 8, !tbaa !130, !alias.scope !569, !noalias !564
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !130, !alias.scope !569, !noalias !564
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader155

.lr.ph.i.i.i.i.i.i.i.preheader155:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader155, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader155 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader155 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !567, !noalias !564
  store i64 %i.bo, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !564, !noalias !567
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !567, !noalias !564
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.aj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !575

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc77
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.noexc77 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ay, ptr %i.x, align 8, !tbaa !63
  store ptr %i.br, ptr %i.y, align 8, !tbaa !62
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bs, ptr %i.z, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.p
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.bt = add i64 %.049125, -1
  br label %.thread120

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %bb.u, %bb.v, %bb.w, %bb.z, %bb.ab, %bb.ac, %bb.ad, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107

bb.u:                                             ; preds = %bb.m
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %bb.w unwind label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !355
  %i.ca = icmp eq i8 %i.bz, -28
  %i.cb = load i8, ptr %i.j, align 8, !range !60
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.cd = load i8, ptr %i.t, align 1, !tbaa !576, !range !60, !noundef !61
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  store i8 5, ptr %i.w, align 1, !tbaa !442
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.cf = add i64 %.049125, -1
  br label %.thread120

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %bb.ad unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !355
  %i.cm = icmp eq i8 %i.cl, 13
  br i1 %i.cm, label %bb.af, label %.thread120

bb.af:                                            ; preds = %bb.ae
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %.049125)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.co = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.ah unwind label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %i.cq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.cr = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb14BaseExpression4CastINS_23BoundOperatorExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.cq)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 noundef 0)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.cu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !355
  %i.cx = icmp eq i8 %i.cw, -28
  br i1 %i.cx, label %bb.am, label %.thread120

bb.am:                                            ; preds = %bb.al
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !178 ; 2 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !178 ; 2 uses
  %.not123 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not123, label %._crit_edge, label %.lr.ph

bb.an:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit107

end_hunk_5
begin_hunk_6_@_ZN6duckdb14FilterPushdown18PushdownProjectionENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.d = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = load i8, ptr %i.e, align 8, !tbaa !59, !range !60, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  call void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %9, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i1 noundef zeroext %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !135  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !135  ; 2 uses
  %.not143 = icmp eq ptr %i.i, %i.k
  br i1 %.not143, label %.critedge34, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = ptrtoint ptr %8 to i64
  %i.p = ptrtoint ptr %i.c to i64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = ptrtoint ptr %6 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.em, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 13 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.en, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 6 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.eo, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 5 uses
  %.sroa.0111.0144 = phi ptr [ %i.i, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0111.0144)
          to label %bb.c unwind label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 12 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 0, ptr %i.a, align 1, !tbaa !604
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %i.c, ptr %8, align 8, !tbaa !523
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !605
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRKN6duckdb24BoundColumnRefExpressionEEZNS0_L10IsVolatileERNS0_17LogicalProjectionERKNS0_10ExpressionEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRKN6duckdb24BoundColumnRefExpressionEEZNS0_L10IsVolatileERNS0_17LogicalProjectionERKNS0_10ExpressionEE3$_0E9_M_invokeERKSt9_Any_dataS3_">, ptr %i.l, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 0, ptr %i.n, align 8
  store i64 %i.o, ptr %7, align 8, !tbaa !14
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator15VisitExpressionINS0_24BoundColumnRefExpressionEEEvS3_RKSt8functionIFvRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator15VisitExpressionINS0_24BoundColumnRefExpressionEEEvS3_RKSt8functionIFvRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_>, ptr %i.m, align 8, !tbaa !89
  invoke void @_ZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS_10ExpressionENS_15ExpressionClassERKSt8functionIFvS3_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %bb.k unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #20
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i3.i.i, label %_ZNSt14_Function_baseD2Ev.exit4.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i.i:              ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not.i3.i = icmp eq ptr %i.am, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.n

bb.k:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.p unwind label %bb.m       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #20
  unreachable

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i.i
  %i.ar = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  call void @__clang_call_terminate(ptr %i.at) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.n, %_ZNSt14_Function_baseD2Ev.exit4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.body

bb.p:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.au = load i8, ptr %i.a, align 1, !tbaa !604, !range !60, !noundef !61
  %i.av = trunc nuw i8 %i.au to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.av, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.r unwind label %.loopexit  ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(88) %i.aw)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  br i1 %i.ba, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s, %bb.p
  %.not.i.i35 = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i35, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !82
  store i64 %i.bb, ptr %i.z, align 8, !tbaa !82
  store ptr null, ptr %i.ab, align 8, !tbaa !82
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.v, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.v:                                             ; preds = %bb.t
  %i.bd = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.be = ptrtoint ptr %i.x to i64                ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #21
          to label %.noexc36 unwind label %.loopexit ; 11 uses

.noexc36:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = load i64, ptr %i.ab, align 8, !tbaa !82
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !82
  store ptr null, ptr %i.ab, align 8, !tbaa !82
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc36
  %17 = sub i64 %i.bd, %i.be
  %18 = add i64 %17, -8                           ; 2 uses
  %i.bq = lshr i64 %18, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %18, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader248, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bn, i64 8
  %i.bs = add i64 %i.bd, -8
  %i.bt = sub i64 %i.bs, %i.be
  %i.bu = and i64 %i.bt, -8                       ; 2 uses
  %scevgep242 = getelementptr i8, ptr %scevgep, i64 %i.bu
  %scevgep243 = getelementptr i8, ptr %i.x, i64 8
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.bu
  %bound0 = icmp ult ptr %i.bn, %scevgep244
  %bound1 = icmp ult ptr %i.x, %scevgep242
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader248, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 4611686018427387900     ; 3 uses
  %i.bv = shl i64 %n.vec, 3                       ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bn, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.x, i64 %i.bv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.by ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.x, i64 %i.by ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.bz = getelementptr i8, ptr %next.gep245, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep245, align 8, !tbaa !82, !alias.scope !634, !noalias !629
  %wide.load246 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !82, !alias.scope !634, !noalias !629
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !82, !alias.scope !637, !noalias !634
  store <2 x i64> %wide.load246, ptr %i.ca, align 8, !tbaa !82, !alias.scope !637, !noalias !634
  %i.cb = getelementptr i8, ptr %next.gep245, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep245, align 8, !tbaa !82, !alias.scope !634, !noalias !629
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !82, !alias.scope !634, !noalias !629
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader248

.lr.ph.i.i.i.i.i.i.i.preheader248:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader248, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader248 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader248 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !632, !noalias !629
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !629, !noalias !632
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !632, !noalias !629
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !640

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc36
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.noexc36 ], [ %i.bw, %middle.block ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bn, ptr %10, align 8, !tbaa !165
  store ptr %i.cg, ptr %i.v, align 8, !tbaa !163
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl ; 2 uses
  store ptr %i.ch, ptr %i.w, align 8, !tbaa !164
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.y:                                             ; preds = %bb.b
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.c, %bb.q, %bb.r, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.s
  %i.cj = load i64, ptr %i.ab, align 8, !tbaa !82
  store i64 %i.cj, ptr %11, align 8, !tbaa !82
  store ptr null, ptr %i.ab, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !641
  store i64 0, ptr %i.r, align 8, !noalias !641
  store i64 %i.p, ptr %6, align 8, !tbaa !523, !noalias !641
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L25ReplaceProjectionBindingsERNS0_17LogicalProjectionES7_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L25ReplaceProjectionBindingsERNS0_17LogicalProjectionES7_E3$_0E9_M_invokeERKSt9_Any_dataS2_S8_">, ptr %i.q, align 8, !tbaa !89, !noalias !641
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !641
  store i64 0, ptr %i.t, align 8, !noalias !641
  store i64 %i.u, ptr %5, align 8, !tbaa !90, !noalias !641
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E9_M_invokeERKSt9_Any_dataS6_>, ptr %i.s, align 8, !tbaa !89, !noalias !641
  invoke void @_ZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.aa unwind label %bb.ad, !noalias !641

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.s, align 8, !tbaa !13, !noalias !641 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i39, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %bb.ag unwind label %bb.ac, !noalias !641 ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #20, !noalias !641
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !13, !noalias !641 ; 2 uses
  %.not.i3.i.i37 = icmp eq ptr %i.cp, null
  br i1 %.not.i3.i.i37, label %_ZNSt14_Function_baseD2Ev.exit4.i.i38, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i.i38 unwind label %bb.af, !noalias !641 ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #20, !noalias !641
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i.i38:            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !641
  %i.ct = load ptr, ptr %i.q, align 8, !tbaa !13, !noalias !641 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.ct, null
  br i1 %.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit3.i, label %bb.aj

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !641
  %i.cu = load ptr, ptr %i.q, align 8, !tbaa !13, !noalias !641 ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i40, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.al unwind label %bb.ai, !noalias !641 ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  call void @__clang_call_terminate(ptr %i.cx) #20, !noalias !641
  unreachable

bb.aj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i.i38
  %i.cy = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i unwind label %bb.ak, !noalias !641 ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #20, !noalias !641
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i:                ; preds = %bb.aj, %_ZNSt14_Function_baseD2Ev.exit4.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !641
  %i.db = load ptr, ptr %11, align 8, !tbaa !82   ; 3 uses
  %.not.i55 = icmp eq ptr %i.db, null
  br i1 %.not.i55, label %.body, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i56

bb.al:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !641
  %i.dc = load i64, ptr %11, align 8, !tbaa !82, !noalias !641
  %i.dd = inttoptr i64 %i.dc to ptr
  store ptr null, ptr %11, align 8, !tbaa !82, !noalias !641
  %i.de = load ptr, ptr %i.ab, align 8, !tbaa !82 ; 3 uses
  store ptr %i.dd, ptr %i.ab, align 8, !tbaa !82
  %.not.i.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit45, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.al
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !92
end_hunk_6
begin_hunk_7_@_ZN6duckdb14FilterPushdown20PushdownSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i63: ; preds = %.noexc.i162
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.noexc163
  %.0.i.i66 = phi i1 [ false, %bb.j ], [ true, %.noexc163 ] ; 2 uses
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bl = load ptr, ptr %8, align 8, !tbaa !110   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.be
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.bl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %.0.i.i66, label %bb.l, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i68: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %.0.i.i66, label %bb.l, label %.body

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i63
  %.pn9.i.i64 = phi { ptr, i32 } [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i63 ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i68 ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67 ]
  call void @__cxa_free_exception(ptr %i.bd) #19
  br label %.body

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !92
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.107") align 8 %13, ptr noundef nonnull align 8 dereferenceable(88) %i.bc)
          to label %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit80 unwind label %bb.ad

_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit80: ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 3 uses
  %i.br = load ptr, ptr %13, align 8, !tbaa !82
  store ptr null, ptr %13, align 8, !tbaa !82
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !82 ; 3 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !82
  %.not.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit100, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(88) %i.bs) #19, !inline_history !94
  %.pr = load ptr, ptr %13, align 8, !tbaa !82    ; 3 uses
  %.not.i81 = icmp eq ptr %.pr, null
  br i1 %.not.i81, label %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit100, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bw = load ptr, ptr %.pr, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #19, !inline_history !95
  br label %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit100

_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit100: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit80
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %10, ptr %7, align 8, !tbaa !7
  store ptr %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !130
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L20ReplaceSetOpBindingsERNS0_6vectorINS0_13ColumnBindingELb1ESaISB_EEERNS0_14FilterPushdown6FilterES8_RNS0_19LogicalSetOperationEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRN6duckdb24BoundColumnRefExpressionERNS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS4_ELb1EEEEZNS0_L20ReplaceSetOpBindingsERNS0_6vectorINS0_13ColumnBindingELb1ESaISB_EEERNS0_14FilterPushdown6FilterES8_RNS0_19LogicalSetOperationEE3$_0E9_M_invokeERKSt9_Any_dataS2_S8_">, ptr %i.l, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %i.n, align 8
  store i64 %i.o, ptr %6, align 8, !tbaa !90
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEZNS0_18ExpressionIterator22VisitExpressionMutableINS0_24BoundColumnRefExpressionEEEvS6_RKSt8functionIFvRT_S6_EEEUlS6_E_E9_M_invokeERKSt9_Any_dataS6_>, ptr %i.m, align 8, !tbaa !89
  invoke void @_ZN6duckdb18ExpressionIterator27VisitExpressionClassMutableERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_15ExpressionClassERKSt8functionIFvS6_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit100
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.t unwind label %bb.p       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #20
  unreachable

bb.q:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit100
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i3.i.i, label %_ZNSt14_Function_baseD2Ev.exit4.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i.i unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i.i:              ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ci, null
  br i1 %.not.i4.i, label %_ZNSt14_Function_baseD2Ev.exit5.i, label %bb.w

bb.t:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.cj = load ptr, ptr %i.l, align 8, !tbaa !13  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit112, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit112 unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #20
  unreachable

bb.w:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i.i
  %i.cn = invoke noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5.i unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit5.i:                ; preds = %bb.w, %_ZNSt14_Function_baseD2Ev.exit4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %.body89

_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit112: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  invoke void @_ZN6duckdb14FilterPushdown6Filter15ExtractBindingsEv(ptr noundef nonnull align 8 dereferenceable(64) %i.aj)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit112
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !62  ; 6 uses
  %i.cr = load ptr, ptr %i.r, align 8, !tbaa !136
  %.not.i.i113 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i113, label %bb.z, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.y
  store i64 %i.aq, ptr %i.cq, align 8, !tbaa !130
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cs, ptr %i.q, align 8, !tbaa !62
  br label %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.ct = load ptr, ptr %i.p, align 8, !tbaa !63  ; 10 uses
  %i.cu = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.aa, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.z
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #21
          to label %.noexc114 unwind label %.loopexit ; 10 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  store i64 %i.aq, ptr %i.df, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cq
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc114
  %20 = sub i64 %i.cu, %i.cv
  %21 = add i64 %20, -8                           ; 2 uses
  %i.dg = lshr i64 %21, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %21, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader303, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.de, i64 8
  %i.di = add i64 %i.cu, -8
  %i.dj = sub i64 %i.di, %i.cv
  %i.dk = and i64 %i.dj, -8                       ; 2 uses
  %scevgep297 = getelementptr i8, ptr %scevgep, i64 %i.dk
  %scevgep298 = getelementptr i8, ptr %i.ct, i64 8
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.dk
  %bound0 = icmp ult ptr %i.de, %scevgep299
  %bound1 = icmp ult ptr %i.ct, %scevgep297
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader303, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 4611686018427387900     ; 3 uses
  %i.dl = shl i64 %n.vec, 3                       ; 2 uses
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.ct, i64 %i.dl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.do ; 2 uses
  %next.gep300 = getelementptr i8, ptr %i.ct, i64 %i.do ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.dp = getelementptr i8, ptr %next.gep300, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep300, align 8, !tbaa !130, !alias.scope !671, !noalias !666
  %wide.load301 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !130, !alias.scope !671, !noalias !666
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !130, !alias.scope !674, !noalias !671
  store <2 x i64> %wide.load301, ptr %i.dq, align 8, !tbaa !130, !alias.scope !674, !noalias !671
  %i.dr = getelementptr i8, ptr %next.gep300, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep300, align 8, !tbaa !130, !alias.scope !671, !noalias !666
  store <2 x ptr> splat (ptr null), ptr %i.dr, align 8, !tbaa !130, !alias.scope !671, !noalias !666
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader303

.lr.ph.i.i.i.i.i.i.i.preheader303:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dm, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader303, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader303 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader303 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.dt = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !669, !noalias !666
  store i64 %i.dt, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !666, !noalias !669
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !669, !noalias !666
  %i.du = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.du, %i.cq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !677

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc114
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.de, %.noexc114 ], [ %i.dm, %middle.block ], [ %i.dv, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ct) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.ab
  store ptr %i.de, ptr %i.p, align 8, !tbaa !63
  store ptr %i.dw, ptr %i.q, align 8, !tbaa !62
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.dx, ptr %i.r, align 8, !tbaa !136
  br label %_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0194.0232, i64 8 ; 2 uses
  %.not218 = icmp eq ptr %i.dy, %i.ag
  br i1 %.not218, label %._crit_edge, label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i68, %bb.l, %bb.ad
  %.pn49 = phi { ptr, i32 } [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i67 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.h ], [ %i.ea, %bb.ad ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i68 ], [ %.pn9.i.i64, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body89

.loopexit:                                        ; preds = %_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv.exit112, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body89

.body89:                                          ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit5.i, %.body
  %.pn51 = phi { ptr, i32 } [ %.pn49, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cd, %_ZNSt14_Function_baseD2Ev.exit5.i ]
  call void @_ZNSt10unique_ptrIN6duckdb14FilterPushdown6FilterESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  br label %bb.ae

bb.ae:                                            ; preds = %.body89, %bb.ac
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %.body89 ], [ %i.dz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ai

bb.af:                                            ; preds = %._crit_edge
  %i.eb = load ptr, ptr %14, align 8, !tbaa !96
  store ptr null, ptr %14, align 8, !tbaa !96
  %i.ec = load ptr, ptr %.sroa.0198.0234, align 8, !tbaa !96 ; 3 uses
  store ptr %i.eb, ptr %.sroa.0198.0234, align 8, !tbaa !96
  %.not.i.i.i.i.i122 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i122, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.af
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !92
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ec) #19, !inline_history !107
  %.pre = load ptr, ptr %14, align 8, !tbaa !96   ; 3 uses
  %.not.i123 = icmp eq ptr %.pre, null
  br i1 %.not.i123, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.eg = load ptr, ptr %.pre, align 8, !tbaa !92
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pre) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.af, %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.ej = load ptr, ptr %15, align 8, !tbaa !96   ; 3 uses
  %.not.i124 = icmp eq ptr %i.ej, null
  br i1 %.not.i124, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit126, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i125

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i125: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !92
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ej) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit126

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit126: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #19
  call void @_ZN6duckdb14FilterCombinerD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.s) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.en = load ptr, ptr %10, align 8, !tbaa !102  ; 2 uses
  %.not.i.i.i127 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit126
  call void @_ZdlPv(ptr noundef nonnull %i.en) #22
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit126, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0198.0234, i64 8 ; 2 uses
  %.not216 = icmp eq ptr %i.eo, %i.h
  br i1 %.not216, label %._crit_edge237, label %bb.b

bb.ah:                                            ; preds = %._crit_edge
  %i.ep = landingpad { ptr, i32 }
          cleanup
  %i.eq = load ptr, ptr %15, align 8, !tbaa !96   ; 3 uses
  %.not.i128 = icmp eq ptr %i.eq, null
  br i1 %.not.i128, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i129

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i129: ; preds = %bb.ah
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eq) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130: ; preds = %bb.ah, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130, %bb.ae
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %bb.ae ], [ %i.ep, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit130 ]
end_hunk_7
begin_hunk_8_@_ZN6duckdb14FilterPushdown20PushdownSetOperationENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
          cleanup
  %i.ki = load ptr, ptr %3, align 8, !tbaa !96, !noalias !692 ; 3 uses
  %.not.i3.i148 = icmp eq ptr %i.ki, null
  br i1 %.not.i3.i148, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i150, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i149

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i149: ; preds = %bb.bh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !92, !noalias !692
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !692
  call void %i.kl(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ki) #19, !noalias !692, !inline_history !101
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i150

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i150: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i149, %bb.bh
  call void @_ZdlPv(ptr noundef nonnull %i.kb) #22, !noalias !692
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit156: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i152, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.kb, ptr %0, align 8, !tbaa !104
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bc
  %i.km = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.km, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bp unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread: ; preds = %bb.bi
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kp = load ptr, ptr %18, align 8, !tbaa !110  ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.kp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br i1 %.0, label %bb.bm, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br i1 %.0, label %bb.bm, label %common.resume

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %.pn215 = phi { ptr, i32 } [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159.thread ], [ %i.ko, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159 ], [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157 ]
  call void @__cxa_free_exception(ptr %i.km) #19
  br label %common.resume

bb.bn:                                            ; preds = %bb.bb, %bb.bd
  %i.ks = load i64, ptr %2, align 8, !tbaa !96
  store i64 %i.ks, ptr %0, align 8, !tbaa !96
  store ptr null, ptr %2, align 8, !tbaa !96
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit147, %bb.be, %_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit156, %bb.bn, %._crit_edge246, %_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.bp:                                            ; preds = %bb.bk, %bb.ay
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14FilterPushdown18PushdownSingleJoinENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEERSt13unordered_setImSt4hashImESt8equal_toImESaImEESD_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::FilterPushdown", align 8 ; 12 uses
  %6 = alloca %"class.duckdb::FilterPushdown", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !59, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  call void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i1 noundef zeroext %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.e = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.f = load i8, ptr %i.b, align 8, !tbaa !59, !range !60, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  invoke void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i1 noundef zeroext %i.g)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !63
  %.not = icmp eq ptr %i.j, %i.k
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.n, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.o = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.o unwind label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.058 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %bb.n ] ; 5 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.058)
          to label %bb.d unwind label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = invoke i8 @_ZN6duckdb8JoinSide11GetJoinSideERKSt13unordered_setImSt4hashImESt8equal_toImESaImEES9_S9_(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i8 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.058)
          to label %bb.h unwind label %.loopexit  ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !62   ; 6 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.u, align 8, !tbaa !130
  store i64 %i.x, ptr %i.v, align 8, !tbaa !130
  store ptr null, ptr %i.u, align 8, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.m, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !63   ; 10 uses
  %i.aa = ptrtoint ptr %i.v to i64                ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #21
          to label %.noexc26 unwind label %.loopexit ; 10 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %i.am = load i64, ptr %i.u, align 8, !tbaa !130
  store i64 %i.am, ptr %i.al, align 8, !tbaa !130
  store ptr null, ptr %i.u, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc26
  %12 = sub i64 %i.aa, %i.ab
  %13 = add i64 %12, -8                           ; 2 uses
  %i.an = lshr i64 %13, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ak, i64 8
  %i.ap = add i64 %i.aa, -8
  %i.aq = sub i64 %i.ap, %i.ab
  %i.ar = and i64 %i.aq, -8                       ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep76 = getelementptr i8, ptr %i.z, i64 8
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.ar
  %bound0 = icmp ult ptr %i.ak, %scevgep77
  %bound1 = icmp ult ptr %i.z, %scevgep75
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ak, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.z, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.z, i64 %i.av ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.aw = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !130, !alias.scope !700, !noalias !695
  %wide.load79 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !130, !alias.scope !700, !noalias !695
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !130, !alias.scope !703, !noalias !700
  store <2 x i64> %wide.load79, ptr %i.ax, align 8, !tbaa !130, !alias.scope !703, !noalias !700
  %i.ay = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !130, !alias.scope !700, !noalias !695
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !130, !alias.scope !700, !noalias !695
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader81

.lr.ph.i.i.i.i.i.i.i.preheader81:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader81, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader81 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader81 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !698, !noalias !695
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !695, !noalias !698
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !698, !noalias !695
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.v
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !706

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc26
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc26 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.z) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.ak, ptr %i.l, align 8, !tbaa !63
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.be, ptr %i.n, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.i
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEELb1ESaIS6_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.058)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  %i.bf = add i64 %.058, -1
  br label %bb.n

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit56

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit56

bb.n:                                             ; preds = %bb.m, %bb.f
  %.1 = phi i64 [ %i.bf, %bb.m ], [ %.058, %bb.f ]
  %i.bg = add i64 %.1, 1                          ; 2 uses
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = icmp ult i64 %i.bg, %i.bm
  br i1 %i.bn, label %bb.c, label %._crit_edge, !llvm.loop !707

bb.o:                                             ; preds = %._crit_edge
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef 0)
          to label %bb.p unwind label %bb.z       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !96
  store i64 %i.bq, ptr %8, align 8, !tbaa !96
  store ptr null, ptr %i.bp, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %7, ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull %8)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.br = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 noundef 0)
          to label %bb.s unwind label %bb.ab      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bu = load ptr, ptr %7, align 8, !tbaa !96
  store ptr null, ptr %7, align 8, !tbaa !96
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !96 ; 3 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !96
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !92
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bv) #19, !inline_history !107
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.bz = load ptr, ptr %7, align 8, !tbaa !96    ; 3 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !92
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bz) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.cd = load ptr, ptr %8, align 8, !tbaa !96    ; 3 uses
  %.not.i27 = icmp eq ptr %i.cd, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit29, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i28

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i28: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !92
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.cd) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit29

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit29: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 noundef 1)
          to label %bb.u unwind label %bb.ac      ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !96
  store i64 %i.ck, ptr %10, align 8, !tbaa !96
  store ptr null, ptr %i.cj, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %9, ptr noundef nonnull align 8 dereferenceable(288) %6, ptr noundef nonnull %10)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.cl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i64 noundef 1)
          to label %bb.x unwind label %bb.ae      ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb14FilterPushdown14PushdownWindowENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %.not207 = icmp eq ptr %i.et, %i.eu
  br i1 %.not207, label %._crit_edge, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 264 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 272 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 280 ; 2 uses
  br label %bb.al

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.fc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bh unwind label %bb.bn

bb.al:                                            ; preds = %.lr.ph205, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  %i.fd = phi ptr [ %i.eu, %.lr.ph205 ], [ %i.jk, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit ]
  %.0204 = phi i64 [ 0, %.lr.ph205 ], [ %i.ji, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.0204
  %i.ff = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %bb.am unwind label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %bb.an unwind label %.loopexit

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb14FilterPushdown21ExtractFilterBindingsERKNS_10ExpressionERNS_6vectorINS_13ColumnBindingELb1ESaIS5_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(88) %i.fh, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ao unwind label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.fi = load ptr, ptr %i.eg, align 8, !tbaa !721 ; 3 uses
  %i.fj = load ptr, ptr %9, align 8, !tbaa !734   ; 3 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %.noexc82, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = sdiv exact i64 %i.fm, 56
  %i.fo = icmp ugt i64 %i.fn, 164703072086692425
  br i1 %i.fo, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !109

.noexc.i.i.i:                                     ; preds = %bb.ap
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ap
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #21
          to label %.noexc82 unwind label %.loopexit

.noexc82:                                         ; preds = %_ZNSt15__new_allocatorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, %bb.ao
  %.pr.i = phi ptr [ null, %bb.ao ], [ %i.fp, %_ZNSt15__new_allocatorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i ] ; 9 uses
  store ptr %.pr.i, ptr %15, align 8, !tbaa !734
  %i.fq = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.fm
  store ptr %i.fq, ptr %i.ew, align 8, !tbaa !723
  %i.fr = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt13unordered_setIN6duckdb13ColumnBindingENS3_25ColumnBindingHashFunctionENS3_21ColumnBindingEqualityESaIS4_EESt6vectorIS8_SaIS8_EEEEPS8_ET0_T_SH_SG_(ptr %i.fj, ptr %i.fi, ptr noundef %.pr.i)
          to label %bb.as unwind label %bb.aq     ; 3 uses

bb.aq:                                            ; preds = %.noexc82
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i80, label %.body83, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #22
  br label %.body83

bb.as:                                            ; preds = %.noexc82
  store ptr %i.fr, ptr %i.ev, align 8, !tbaa !721
  %i.ft = call noundef zeroext i1 @_ZN6duckdb17CanPushdownFilterENS_6vectorISt13unordered_setINS_13ColumnBindingENS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaIS2_EELb1ESaIS6_EEERKNS0_IS2_Lb1ES5_EE(ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(24) %14)
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.fr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.as, %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ge, %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.as ] ; 6 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !732 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not5.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fv, %.lr.ph.i.i.i ] ; 2 uses
  %i.fw = load ptr, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i.i) #22
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !733

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.fx = load ptr, ptr %.05.i.i.i, align 8, !tbaa !716
  %i.fy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !715
  %i.ga = shl i64 %i.fz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fx, i8 0, i64 %i.ga, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i8 0, i64 16, i1 false)
  %i.gb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !716 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.gb) #22
  br label %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.at, %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ge, %i.fr
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !735

_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i.i, %bb.as
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %.pr.i) #22
  br label %_ZNSt6vectorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.au
  %i.gf = load ptr, ptr %i.es, align 8, !tbaa !62
  %i.gg = load ptr, ptr %i.er, align 8, !tbaa !63 ; 3 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %.not.i.i85 = icmp ult i64 %.0204, %i.gk        ; 2 uses
  br i1 %i.ft, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %_ZNSt6vectorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit
  br i1 %.not.i.i85, label %bb.aw, label %.invoke

.invoke:                                          ; preds = %bb.av, %bb.ba
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.11, i64 noundef %.0204, i64 noundef %i.gk) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.0204 ; 4 uses
  %i.gm = load ptr, ptr %i.fa, align 8, !tbaa !62 ; 6 uses
  %i.gn = load ptr, ptr %i.fb, align 8, !tbaa !136
  %.not.i.i88 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not.i.i88, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.go = load i64, ptr %i.gl, align 8, !tbaa !130
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !130
  store ptr null, ptr %i.gl, align 8, !tbaa !130
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gp, ptr %i.fa, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gq = load ptr, ptr %i.ez, align 8, !tbaa !63 ; 10 uses
  %i.gr = ptrtoint ptr %i.gm to i64               ; 3 uses
  %i.gs = ptrtoint ptr %i.gq to i64               ; 3 uses
  %i.gt = sub i64 %i.gr, %i.gs                    ; 3 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %.invoke292, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke292:                                       ; preds = %bb.ay, %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.cont293 unwind label %.loopexit.split-lp

.cont293:                                         ; preds = %.invoke292
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ay
  %i.gv = ashr exact i64 %i.gt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975)
  %i.gz = select i1 %i.gx, i64 1152921504606846975, i64 %i.gy ; 3 uses
  %.not.i.i.i.i89 = icmp ne i64 %i.gz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i89)
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #21
          to label %.noexc91 unwind label %.loopexit ; 10 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gt
  %i.hd = load i64, ptr %i.gl, align 8, !tbaa !130
  store i64 %i.hd, ptr %i.hc, align 8, !tbaa !130
  store ptr null, ptr %i.gl, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.gq, %i.gm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc91
  %19 = sub i64 %i.gr, %i.gs
  %20 = add i64 %19, -8                           ; 2 uses
  %i.he = lshr i64 %20, 3
  %i.hf = add nuw nsw i64 %i.he, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %20, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader338, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.hb, i64 8
  %i.hg = add i64 %i.gr, -8
  %i.hh = sub i64 %i.hg, %i.gs
  %i.hi = and i64 %i.hh, -8                       ; 2 uses
  %scevgep308 = getelementptr i8, ptr %scevgep, i64 %i.hi
  %scevgep309 = getelementptr i8, ptr %i.gq, i64 8
  %scevgep310 = getelementptr i8, ptr %scevgep309, i64 %i.hi
  %bound0 = icmp ult ptr %i.hb, %scevgep310
  %bound1 = icmp ult ptr %i.gq, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader338, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hf, 4611686018427387900     ; 3 uses
  %i.hj = shl i64 %n.vec, 3                       ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hb, i64 %i.hj  ; 2 uses
  %i.hl = getelementptr i8, ptr %i.gq, i64 %i.hj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hb, i64 %i.hm ; 2 uses
  %next.gep311 = getelementptr i8, ptr %i.gq, i64 %i.hm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.hn = getelementptr i8, ptr %next.gep311, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep311, align 8, !tbaa !130, !alias.scope !741, !noalias !736
  %wide.load312 = load <2 x i64>, ptr %i.hn, align 8, !tbaa !130, !alias.scope !741, !noalias !736
  %i.ho = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !130, !alias.scope !744, !noalias !741
  store <2 x i64> %wide.load312, ptr %i.ho, align 8, !tbaa !130, !alias.scope !744, !noalias !741
  %i.hp = getelementptr i8, ptr %next.gep311, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep311, align 8, !tbaa !130, !alias.scope !741, !noalias !736
  store <2 x ptr> splat (ptr null), ptr %i.hp, align 8, !tbaa !130, !alias.scope !741, !noalias !736
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !746

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader338

.lr.ph.i.i.i.i.i.i.i.preheader338:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.hb, %vector.memcheck ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.gq, %vector.memcheck ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader338, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader338 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader338 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.hr = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !739, !noalias !736
  store i64 %i.hr, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !736, !noalias !739
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !130, !alias.scope !739, !noalias !736
  %i.hs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hs, %i.gm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !747

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc91
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.hb, %.noexc91 ], [ %i.hk, %middle.block ], [ %i.ht, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.gq) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.az, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.hb, ptr %i.ez, align 8, !tbaa !63
  store ptr %i.hu, ptr %i.fa, align 8, !tbaa !62
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz
  store ptr %i.hv, ptr %i.fb, align 8, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

.loopexit:                                        ; preds = %bb.al, %bb.am, %bb.an, %_ZNSt15__new_allocatorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i96
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body83

.loopexit.split-lp:                               ; preds = %.invoke292, %.invoke, %.noexc.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body83

bb.ba:                                            ; preds = %_ZNSt6vectorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit
  br i1 %.not.i.i85, label %bb.bb, label %.invoke

bb.bb:                                            ; preds = %bb.ba
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.0204 ; 4 uses
  %i.hx = load ptr, ptr %i.ex, align 8, !tbaa !62 ; 6 uses
  %i.hy = load ptr, ptr %i.ey, align 16, !tbaa !136
  %.not.i.i95 = icmp eq ptr %i.hx, %i.hy
  br i1 %.not.i.i95, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hz = load i64, ptr %i.hw, align 8, !tbaa !130
  store i64 %i.hz, ptr %i.hx, align 8, !tbaa !130
  store ptr null, ptr %i.hw, align 8, !tbaa !130
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.ia, ptr %i.ex, align 8, !tbaa !62
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ib = load ptr, ptr %13, align 16, !tbaa !63  ; 10 uses
  %i.ic = ptrtoint ptr %i.hx to i64               ; 3 uses
  %i.id = ptrtoint ptr %i.ib to i64               ; 3 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 3 uses
  %i.if = icmp eq i64 %i.ie, 9223372036854775800
  br i1 %i.if, label %.invoke292, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i96

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i96: ; preds = %bb.bd
  %i.ig = ashr exact i64 %i.ie, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i97 = call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  %i.ih = add nsw i64 %.sroa.speculated.i.i.i.i97, %i.ig ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.ig
  %i.ij = call i64 @llvm.umin.i64(i64 %i.ih, i64 1152921504606846975)
  %i.ik = select i1 %i.ii, i64 1152921504606846975, i64 %i.ij ; 3 uses
  %.not.i.i.i.i98 = icmp ne i64 %i.ik, 0
  call void @llvm.assume(i1 %.not.i.i.i.i98)
  %i.il = shl nuw nsw i64 %i.ik, 3
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #21
          to label %.noexc109 unwind label %.loopexit ; 10 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i96
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie
  %i.io = load i64, ptr %i.hw, align 8, !tbaa !130
  store i64 %i.io, ptr %i.in, align 8, !tbaa !130
  store ptr null, ptr %i.hw, align 8, !tbaa !130
  %.not10.i.i.i.i.i.i.i99 = icmp eq ptr %i.ib, %i.hx
  br i1 %.not10.i.i.i.i.i.i.i99, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i104, label %.lr.ph.i.i.i.i.i.i.i100.preheader

.lr.ph.i.i.i.i.i.i.i100.preheader:                ; preds = %.noexc109
  %21 = sub i64 %i.ic, %i.id
  %22 = add i64 %21, -8                           ; 2 uses
  %i.ip = lshr i64 %22, 3
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %min.iters.check323 = icmp ult i64 %22, 56
  br i1 %min.iters.check323, label %.lr.ph.i.i.i.i.i.i.i100.preheader339, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i.i.i.i.i.i.i100.preheader
  %scevgep315 = getelementptr i8, ptr %i.im, i64 8
  %i.ir = add i64 %i.ic, -8
  %i.is = sub i64 %i.ir, %i.id
  %i.it = and i64 %i.is, -8                       ; 2 uses
  %scevgep316 = getelementptr i8, ptr %scevgep315, i64 %i.it
  %scevgep317 = getelementptr i8, ptr %i.ib, i64 8
  %scevgep318 = getelementptr i8, ptr %scevgep317, i64 %i.it
  %bound0319 = icmp ult ptr %i.im, %scevgep318
  %bound1320 = icmp ult ptr %i.ib, %scevgep316
  %found.conflict321 = and i1 %bound0319, %bound1320
  br i1 %found.conflict321, label %.lr.ph.i.i.i.i.i.i.i100.preheader339, label %vector.ph324

vector.ph324:                                     ; preds = %vector.memcheck314
  %n.vec326 = and i64 %i.iq, 4611686018427387900  ; 3 uses
  %i.iu = shl i64 %n.vec326, 3                    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.im, i64 %i.iu  ; 2 uses
  %i.iw = getelementptr i8, ptr %i.ib, i64 %i.iu
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph324
  %index328 = phi i64 [ 0, %vector.ph324 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %i.ix = shl i64 %index328, 3                    ; 2 uses
  %next.gep329 = getelementptr i8, ptr %i.im, i64 %i.ix ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.ib, i64 %i.ix ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.iy = getelementptr i8, ptr %next.gep330, i64 16
  %wide.load331 = load <2 x i64>, ptr %next.gep330, align 8, !tbaa !130, !alias.scope !753, !noalias !748
  %wide.load332 = load <2 x i64>, ptr %i.iy, align 8, !tbaa !130, !alias.scope !753, !noalias !748
  %i.iz = getelementptr i8, ptr %next.gep329, i64 16
  store <2 x i64> %wide.load331, ptr %next.gep329, align 8, !tbaa !130, !alias.scope !756, !noalias !753
  store <2 x i64> %wide.load332, ptr %i.iz, align 8, !tbaa !130, !alias.scope !756, !noalias !753
  %i.ja = getelementptr i8, ptr %next.gep330, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep330, align 8, !tbaa !130, !alias.scope !753, !noalias !748
  store <2 x ptr> splat (ptr null), ptr %i.ja, align 8, !tbaa !130, !alias.scope !753, !noalias !748
  %index.next333 = add nuw i64 %index328, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.jb, label %middle.block334, label %vector.body327, !llvm.loop !758

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %i.iq, %n.vec326
  br i1 %cmp.n335, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i104, label %.lr.ph.i.i.i.i.i.i.i100.preheader339

.lr.ph.i.i.i.i.i.i.i100.preheader339:             ; preds = %vector.memcheck314, %.lr.ph.i.i.i.i.i.i.i100.preheader, %middle.block334
  %.012.i.i.i.i.i.i.i101.ph = phi ptr [ %i.im, %vector.memcheck314 ], [ %i.im, %.lr.ph.i.i.i.i.i.i.i100.preheader ], [ %i.iv, %middle.block334 ]
  %.0911.i.i.i.i.i.i.i102.ph = phi ptr [ %i.ib, %vector.memcheck314 ], [ %i.ib, %.lr.ph.i.i.i.i.i.i.i100.preheader ], [ %i.iw, %middle.block334 ]
  br label %.lr.ph.i.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i.i100:                          ; preds = %.lr.ph.i.i.i.i.i.i.i100.preheader339, %.lr.ph.i.i.i.i.i.i.i100
  %.012.i.i.i.i.i.i.i101 = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i.i.i100 ], [ %.012.i.i.i.i.i.i.i101.ph, %.lr.ph.i.i.i.i.i.i.i100.preheader339 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i102 = phi ptr [ %i.jd, %.lr.ph.i.i.i.i.i.i.i100 ], [ %.0911.i.i.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i.i.i100.preheader339 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !748)
  call void @llvm.experimental.noalias.scope.decl(metadata !751)
  %i.jc = load i64, ptr %.0911.i.i.i.i.i.i.i102, align 8, !tbaa !130, !alias.scope !751, !noalias !748
  store i64 %i.jc, ptr %.012.i.i.i.i.i.i.i101, align 8, !tbaa !130, !alias.scope !748, !noalias !751
  store ptr null, ptr %.0911.i.i.i.i.i.i.i102, align 8, !tbaa !130, !alias.scope !751, !noalias !748
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i102, i64 8 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i101, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i103 = icmp eq ptr %i.jd, %i.hx
  br i1 %.not.i.i.i.i.i.i.i103, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i104, label %.lr.ph.i.i.i.i.i.i.i100, !llvm.loop !759

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i104: ; preds = %.lr.ph.i.i.i.i.i.i.i100, %middle.block334, %.noexc109
  %.0.lcssa.i.i.i.i.i.i.i105 = phi ptr [ %i.im, %.noexc109 ], [ %i.iv, %middle.block334 ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i100 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i105, i64 8
  %.not.i23.i.i.i106 = icmp eq ptr %i.ib, null
  br i1 %.not.i23.i.i.i106, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i107, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i104
  call void @_ZdlPv(ptr noundef nonnull %i.ib) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i107

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i107: ; preds = %bb.be, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i104
  store ptr %i.im, ptr %13, align 16, !tbaa !63
  store ptr %i.jf, ptr %i.ex, align 8, !tbaa !62
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ik
  store ptr %i.jg, ptr %i.ey, align 16, !tbaa !136
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i107, %bb.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.ax
  %i.jh = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.jh) #22
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EE9push_backEOS6_.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.ji = add nuw i64 %.0204, 1                   ; 2 uses
  %i.jj = load ptr, ptr %i.es, align 8, !tbaa !62
  %i.jk = load ptr, ptr %i.er, align 8, !tbaa !63 ; 2 uses
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = ashr exact i64 %i.jn, 3
  %i.jp = icmp ult i64 %i.ji, %i.jo
  br i1 %i.jp, label %bb.al, label %._crit_edge, !llvm.loop !760

.body83:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.ar, %bb.aq
  %.pn48 = phi { ptr, i32 } [ %i.fs, %bb.aq ], [ %i.fs, %bb.ar ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jq = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit113, label %bb.bg

bb.bg:                                            ; preds = %.body83
  call void @_ZdlPv(ptr noundef nonnull %i.jq) #22
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit113

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit113: ; preds = %.body83, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit132

bb.bh:                                            ; preds = %._crit_edge
  %i.jr = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 noundef 0)
          to label %bb.bi unwind label %bb.bn     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !96
  store i64 %i.jt, ptr %17, align 8, !tbaa !96
  store ptr null, ptr %i.js, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown7RewriteENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.5") align 8 %16, ptr noundef nonnull align 8 dereferenceable(288) %8, ptr noundef nonnull %17)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.ju = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i64 noundef 0)
          to label %bb.bl unwind label %bb.bp     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.jx = load ptr, ptr %16, align 8, !tbaa !96
  store ptr null, ptr %16, align 8, !tbaa !96
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !96 ; 3 uses
  store ptr %i.jx, ptr %i.jw, align 8, !tbaa !96
  %.not.i.i.i.i.i114 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i.i114, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bl
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !92
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.jy) #19, !inline_history !107
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.bl, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.kc = load ptr, ptr %16, align 8, !tbaa !96   ; 3 uses
  %.not.i115 = icmp eq ptr %i.kc, null
  br i1 %.not.i115, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit117, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i116

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i116: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !92
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.kc) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit117

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit117: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i116
  %i.kg = load ptr, ptr %17, align 8, !tbaa !96   ; 3 uses
  %.not.i118 = icmp eq ptr %i.kg, null
  br i1 %.not.i118, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit120, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i119

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i119: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit117
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !92
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.kg) #19, !inline_history !108
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit120

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit120: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit117, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !136
  %i.km = load <2 x ptr>, ptr %13, align 16, !tbaa !135
  %i.kn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ko = load ptr, ptr %i.kn, align 16, !tbaa !136
  store ptr %i.ko, ptr %i.kk, align 8, !tbaa !136
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kq = load <2 x ptr>, ptr %i.er, align 8, !tbaa !135
  store <2 x ptr> %i.km, ptr %i.er, align 8, !tbaa !135
  store <2 x ptr> %i.kq, ptr %3, align 16, !tbaa !135
  store ptr %i.kl, ptr %i.kp, align 16, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14FilterPushdown6FilterESt14default_deleteIS3_ELb1EEESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.kr = load i64, ptr %2, align 8, !tbaa !96
  store i64 %i.kr, ptr %18, align 8, !tbaa !96
  store ptr null, ptr %2, align 8, !tbaa !96
  invoke void @_ZN6duckdb14FilterPushdown14FinishPushdownENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %18)
end_hunk_9
begin_hunk_10_@_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev:bb.a
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !66 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !733

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !716
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !715
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !716    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #22
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !734    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !721  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.n, %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !732  ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !66 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i) #22
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !733

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.g = load ptr, ptr %.05.i.i, align 8, !tbaa !716
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !715
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !716 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #22
  br label %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !735

_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !734
  br label %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.o = phi ptr [ %.pr, %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #22
  br label %_ZNSt12_Vector_baseISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EES6_EvT_S8_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14FilterPushdown14PushdownUnnestENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.5") align 8 %0, ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 6 uses
  %5 = alloca %"class.duckdb::FilterPushdown", align 8 ; 11 uses
  %6 = alloca %"class.duckdb::vector.20", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::unique_ptr.107", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::unique_ptr.5", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::vector.20", align 8 ; 7 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalUnnestEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !18, !nonnull !61, !align !286
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.e = load i8, ptr %i.d, align 8, !tbaa !59, !range !60, !noundef !61
  %i.f = trunc nuw i8 %i.e to i1
  call void @_ZN6duckdb14FilterPushdownC1ERNS_9OptimizerEb(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i1 noundef zeroext %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !135  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !135  ; 2 uses
  %.not99101 = icmp eq ptr %i.h, %i.j
  br i1 %.not99101, label %.critedge39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.n = phi ptr [ null, %.lr.ph ], [ %i.cd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 13 uses
  %i.o = phi ptr [ null, %.lr.ph ], [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 6 uses
  %i.p = phi ptr [ null, %.lr.ph ], [ %i.cf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 5 uses
  %.sroa.096.0102 = phi ptr [ %i.h, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.q = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6duckdb10unique_ptrINS_14FilterPushdown6FilterESt14default_deleteIS2_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.096.0102)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.092.0.in = phi ptr [ %i.r, %bb.c ], [ %.sroa.092.0, %bb.f ]
  %.sroa.092.0 = load ptr, ptr %.sroa.092.0.in, align 8, !tbaa !66 ; 3 uses
  %.not100 = icmp eq ptr %.sroa.092.0, null
  br i1 %.not100, label %.critedge.loopexit, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.092.0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67
  %.not = icmp eq i64 %i.v, %i.s
  br i1 %.not, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 4 uses
  %.not.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.w, align 8, !tbaa !82
  store i64 %i.x, ptr %i.p, align 8, !tbaa !82
  store ptr null, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.l, align 8, !tbaa !163
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.n to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.j, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #21
          to label %.noexc40 unwind label %.loopexit ; 11 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  %i.al = load i64, ptr %i.w, align 8, !tbaa !82
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !82
  store ptr null, ptr %i.w, align 8, !tbaa !82
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc40
  %12 = sub i64 %i.z, %i.aa
  %13 = add i64 %12, -8                           ; 2 uses
  %i.am = lshr i64 %13, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = add i64 %i.z, -8
  %i.ap = sub i64 %i.ao, %i.aa
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep, i64 %i.aq
  %scevgep167 = getelementptr i8, ptr %i.n, i64 8
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.aq
  %bound0 = icmp ult ptr %i.aj, %scevgep168
  %bound1 = icmp ult ptr %i.n, %scevgep166
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader172, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.n, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep169 = getelementptr i8, ptr %i.n, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.av = getelementptr i8, ptr %next.gep169, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep169, align 8, !tbaa !82, !alias.scope !766, !noalias !761
  %wide.load170 = load <2 x i64>, ptr %i.av, align 8, !tbaa !82, !alias.scope !766, !noalias !761
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !82, !alias.scope !769, !noalias !766
  store <2 x i64> %wide.load170, ptr %i.aw, align 8, !tbaa !82, !alias.scope !769, !noalias !766
  %i.ax = getelementptr i8, ptr %next.gep169, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep169, align 8, !tbaa !82, !alias.scope !766, !noalias !761
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !82, !alias.scope !766, !noalias !761
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader172

.lr.ph.i.i.i.i.i.i.i.preheader172:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader172, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader172 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader172 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !764, !noalias !761
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !761, !noalias !764
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !82, !alias.scope !764, !noalias !761
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !772

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc40
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc40 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.n) #22
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aj, ptr %6, align 8, !tbaa !165
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !163
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.bd, ptr %i.m, align 8, !tbaa !164
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46

.critedge.loopexit:                               ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !82
  store i64 %i.bf, ptr %7, align 8, !tbaa !82
  store ptr null, ptr %i.be, align 8, !tbaa !82
  %i.bg = invoke noundef i32 @_ZN6duckdb14FilterPushdown9AddFilterENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(288) %5, ptr noundef nonnull %7)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %.critedge.loopexit
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = load ptr, ptr %7, align 8, !tbaa !82    ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.l
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(88) %i.bi) #19, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  br i1 %i.bh, label %bb.m, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bm = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #21
          to label %.noexc42 unwind label %bb.q   ; 3 uses

.noexc42:                                         ; preds = %bb.m
  %i.bn = load i64, ptr %2, align 8, !tbaa !96, !noalias !773
  store i64 %i.bn, ptr %4, align 8, !tbaa !96, !noalias !773
  store ptr null, ptr %2, align 8, !tbaa !96, !noalias !773
  invoke void @_ZN6duckdb18LogicalEmptyResultC1ENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(152) %i.bm, ptr noundef nonnull %4)
          to label %bb.n unwind label %bb.o, !noalias !773

bb.n:                                             ; preds = %.noexc42
  %i.bo = load ptr, ptr %4, align 8, !tbaa !96, !noalias !773 ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i41, label %_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i: ; preds = %bb.n
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !92, !noalias !773
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !773
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bo) #19, !noalias !773, !inline_history !101
  br label %_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %.noexc42
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %4, align 8, !tbaa !96, !noalias !773 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.bt, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i: ; preds = %bb.o
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !92, !noalias !773
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !773
  call void %i.bw(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bt) #19, !noalias !773, !inline_history !101
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i4.i, %bb.o
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #22, !noalias !773
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb18LogicalEmptyResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit72

bb.p:                                             ; preds = %.critedge.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %7, align 8, !tbaa !82    ; 3 uses
  %.not.i44 = icmp eq ptr %i.by, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i45

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i45: ; preds = %bb.p
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !92
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.by) #19, !inline_history !95
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46

bb.q:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit46

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.h, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cd = phi ptr [ %i.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.n, %bb.h ], [ %i.n, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.ce = phi ptr [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.o, %bb.h ], [ %i.o, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cf = phi ptr [ %i.bc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.y, %bb.h ], [ %i.p, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.096.0102, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.cg, %i.j
  br i1 %.not99, label %.critedge39, label %bb.b

.critedge39:                                      ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.a
  %i.ch = phi ptr [ null, %bb.a ], [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ]
  %i.ci = phi ptr [ null, %bb.a ], [ %i.cf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  %i.cj = phi ptr [ null, %bb.a ], [ %i.cd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 2 uses
  invoke void @_ZN6duckdb14FilterPushdown15GenerateFiltersEv(ptr noundef nonnull align 8 dereferenceable(288) %5)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %.critedge39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
end_hunk_10
begin_hunk_11_@_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv:bb.a
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !110    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef) local_unnamed_addr #2

declare void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97), i8 noundef zeroext) unnamed_addr #2

declare void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !803  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !596  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #22
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !814

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorISt17reference_wrapperINS2_10ExpressionEELb1ESaIS6_EEEESt10_Select1stIS9_ESt4lessImESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !803  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !815  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !818  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.f, %.lr.ph ] ; 2 uses
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(65) %.05.i.i.i.i.i.i) #19
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !819

_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !815
  br label %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.j = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #22
  br label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb14FilterCombiner26ExpressionValueInformationES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !820

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb6vectorINS2_14FilterCombiner26ExpressionValueInformationELb1ESaIS5_EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17FlattenedCoalesce2OfERKNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS4_EEE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::FlattenedCoalesce") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.630", align 8 ; 8 uses
  %3 = alloca %"class.std::function.708", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !821    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !821  ; 2 uses
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %.noexc6.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600 ; 3 uses
  %.pre20 = load ptr, ptr %2, align 8, !tbaa !596 ; 8 uses
  %i.g = ptrtoint ptr %.pre to i64                ; 2 uses
  %i.h = ptrtoint ptr %.pre20 to i64              ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.pre, %.pre20
  br i1 %.not.i.i.i.i.i, label %.noexc6.thread, label %bb.b

.noexc6.thread:                                   ; preds = %bb.a, %._crit_edge
  %i.j = phi ptr [ %.pre20, %._crit_edge ], [ null, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.l, align 8, !tbaa !599
  br label %.loopexit

bb.b:                                             ; preds = %._crit_edge
  %i.m = icmp ugt i64 %i.i, 9223372036854775800
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !109

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21
          to label %.noexc6 unwind label %bb.k    ; 7 uses

.noexc6:                                          ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.n, ptr %0, align 8, !tbaa !596
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !600
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !599
  %4 = sub i64 %i.g, %i.h
  %5 = add i64 %4, -8                             ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 56
  %i.t = ptrtoaddr ptr %i.n to i64
  %i.u = sub i64 %i.t, %i.h
  %diff.check = icmp ult i64 %i.u, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc6
  %n.vec = and i64 %i.s, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.n, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %.pre20, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.y ; 2 uses
  %next.gep30 = getelementptr i8, ptr %.pre20, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep30, align 8
  %wide.load31 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load31, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !822

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc6, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.noexc6 ], [ %i.w, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %.pre20, %.noexc6 ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.ac, ptr %.09.i.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %.pre
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !823

bb.c:                                             ; preds = %.lr.ph, %_ZNSt14_Function_baseD2Ev.exit
  %.sroa.013.019 = phi ptr [ %i.a, %.lr.ph ], [ %i.al, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.af = load i64, ptr %.sroa.013.019, align 8
  %i.ag = inttoptr i64 %i.af to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 0, ptr %i.f, align 8
  store i64 %i.e, ptr %3, align 8, !tbaa !824
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperIS1_ELb1ESaIS7_EEEEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperIS1_ELb1ESaIS7_EEEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_>, ptr %i.d, align 8, !tbaa !89
  invoke void @_ZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.al, %i.c
  br i1 %.not, label %._crit_edge, label %bb.c

bb.g:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %.not.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit8 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit8:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.l

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc6.thread
  %i.ar = phi ptr [ %i.j, %.noexc6.thread ], [ %.pre20, %middle.block ], [ %.pre20, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.as = phi ptr [ %i.k, %.noexc6.thread ], [ %i.o, %middle.block ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc6.thread ], [ %i.w, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !600
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @_ZdlPv(ptr noundef nonnull %i.ar) #22
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit: ; preds = %.loopexit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt14_Function_baseD2Ev.exit8
  %.pn = phi { ptr, i32 } [ %i.am, %_ZNSt14_Function_baseD2Ev.exit8 ], [ %i.at, %bb.k ]
  %i.au = load ptr, ptr %2, align 8, !tbaa !596   ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit10, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPv(ptr noundef nonnull %i.au) #22
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit10

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EED2Ev.exit10: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb18ExpressionIterator19EnumerateExpressionERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKSt8functionIFvRS2_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !624  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !66 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !625

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !601
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !603
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !601    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #22
  br label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS0_13JoinConditionEENS0_21FlattenedCoalesceHashESt8equal_toIS1_ESaISt4pairIKS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !627  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !66 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !596  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #22
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !628

_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !592
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !594
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !592    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.j) #22
  br label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.708", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !355
  %i.c = icmp eq i8 %i.b, -104
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = ptrtoint ptr %1 to i64
  store i64 %i.g, ptr %2, align 8, !tbaa !826
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsES2_RKSt8functionIS3_EEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_, ptr %i.e, align 8, !tbaa !828
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsES2_RKSt8functionIS3_EEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.d, align 8, !tbaa !13
  invoke void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not.i6 = icmp eq ptr %i.m, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.l

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt8functionIFvRN6duckdb10ExpressionEEEclES2_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFvRN6duckdb10ExpressionEEEclES2_.exit: ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !828
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(88) %0), !inline_history !830
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt8functionIFvRN6duckdb10ExpressionEEEclES2_.exit, %_ZNSt14_Function_baseD2Ev.exit
  ret void
}

declare void @_ZN6duckdb18ExpressionIterator17EnumerateChildrenERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsES2_RKSt8functionIS3_EEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !831, !nonnull !61, !align !286
  tail call void @_ZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS_10ExpressionERKSt8functionIFvS2_EE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.a), !inline_history !833
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsES2_RKSt8functionIS3_EEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS1_10ExpressionERKSt8functionIFvS4_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS_10ExpressionERKSt8functionIFvS2_EEEUlS2_E_, ptr %0, align 8, !tbaa !784
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS1_10ExpressionERKSt8functionIFvS4_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !89
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS1_10ExpressionERKSt8functionIFvS4_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !826
  store i64 %i.a, ptr %0, align 8, !tbaa !826
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS1_10ExpressionERKSt8functionIFvS4_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce30EnumerateFlattenedCoalesceArgsERNS1_10ExpressionERKSt8functionIFvS4_EEEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperIS1_ELb1ESaIS7_EEEEUlS2_E_E9_M_invokeERKSt9_Any_dataS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !834, !nonnull !61, !align !286 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !600  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !599
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  store i64 %i.f, ptr %i.c, align 8
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !600
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !600
  br label %_ZSt10__invoke_rIvRZN6duckdb17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperINS0_10ExpressionEELb1ESaIS5_EEEEUlRS4_E_JSA_EENSt9enable_ifIXsr7is_voidIT_EE5valueESE_E4typeEOT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !596  ; 7 uses
  %i.j = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #23
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #21 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  %i.v = ptrtoint ptr %1 to i64
  store i64 %i.v, ptr %i.u, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.w = ptrtoaddr ptr %i.t to i64
  %2 = sub i64 %i.j, %i.k
  %3 = add i64 %2, -8                             ; 2 uses
  %i.x = lshr i64 %3, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.z = sub i64 %i.w, %i.k
  %diff.check = icmp ult i64 %i.z, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.aa = shl i64 %n.vec, 3                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep4 = getelementptr i8, ptr %i.i, i64 %i.ad ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.ae = getelementptr i8, ptr %next.gep4, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep4, align 8, !alias.scope !839, !noalias !836
  %wide.load5 = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !839, !noalias !836
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !836, !noalias !839
  store <2 x i64> %wide.load5, ptr %i.af, align 8, !alias.scope !836, !noalias !839
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !841

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader7 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  %i.ah = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !839, !noalias !836
  store i64 %i.ah, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !836, !noalias !839
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !842

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.ab, %middle.block ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #22
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !596
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !600
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.al, ptr %i.d, align 8, !tbaa !599
  br label %_ZSt10__invoke_rIvRZN6duckdb17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperINS0_10ExpressionEELb1ESaIS5_EEEEUlRS4_E_JSA_EENSt9enable_ifIXsr7is_voidIT_EE5valueESE_E4typeEOT0_DpOT1_.exit

_ZSt10__invoke_rIvRZN6duckdb17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperINS0_10ExpressionEELb1ESaIS5_EEEEUlRS4_E_JSA_EENSt9enable_ifIXsr7is_voidIT_EE5valueESE_E4typeEOT0_DpOT1_.exit: ; preds = %bb.b, %_ZNSt6vectorISt17reference_wrapperIN6duckdb10ExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN6duckdb10ExpressionEEZNS0_17FlattenedCoalesce2OfERKNS0_6vectorISt17reference_wrapperIS1_ELb1ESaIS7_EEEEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce2OfERKNS1_6vectorISt17reference_wrapperINS1_10ExpressionEELb1ESaIS6_EEEEUlRS5_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6duckdb17FlattenedCoalesce2OfERKNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS4_EEEEUlRS3_E_, ptr %0, align 8, !tbaa !784
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce2OfERKNS1_6vectorISt17reference_wrapperINS1_10ExpressionEELb1ESaIS6_EEEEUlRS5_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !89
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce2OfERKNS1_6vectorISt17reference_wrapperINS1_10ExpressionEELb1ESaIS6_EEEEUlRS5_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !824
  store i64 %i.a, ptr %0, align 8, !tbaa !824
  br label %_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce2OfERKNS1_6vectorISt17reference_wrapperINS1_10ExpressionEELb1ESaIS6_EEEEUlRS5_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6duckdb17FlattenedCoalesce2OfERKNS1_6vectorISt17reference_wrapperINS1_10ExpressionEELb1ESaIS6_EEEEUlRS5_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS1_S7_EEES2_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<duckdb::FlattenedCoalesce, std::pair<const duckdb::FlattenedCoalesce, std::reference_wrapper<const duckdb::JoinCondition>>, std::allocator<std::pair<const duckdb::FlattenedCoalesce, std::reference_wrapper<const duckdb::JoinCondition>>>, std::__detail::_Select1st, std::equal_to<duckdb::FlattenedCoalesce>, duckdb::FlattenedCoalesceHash, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %0, ptr %3, align 8, !tbaa !843
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE16_M_allocate_nodeIJRS4_S9_EEEPSB_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !847
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !595
  %.not.not = icmp eq i64 %i.e, 0
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.040.069 = load ptr, ptr %i.f, align 8, !tbaa !66 ; 2 uses
  %.not70 = icmp eq ptr %.sroa.040.069, null
  br i1 %.not70, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb17FlattenedCoalesceESt4pairIKS2_St17reference_wrapperIKNS1_13JoinConditionEEENS_10_Select1stESt8equal_toIS2_ENS1_21FlattenedCoalesceHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.040.071 = phi ptr [ %.sroa.040.069, %.lr.ph ], [ %.sroa.040.0, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb17FlattenedCoalesceESt4pairIKS2_St17reference_wrapperIKNS1_13JoinConditionEEENS_10_Select1stESt8equal_toIS2_ENS1_21FlattenedCoalesceHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.040.071, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !600  ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !596  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.040.071, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !600
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !596
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i.i.i = icmp eq i64 %i.m, %i.s
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb17FlattenedCoalesceESt4pairIKS2_St17reference_wrapperIKNS1_13JoinConditionEEENS_10_Select1stESt8equal_toIS2_ENS1_21FlattenedCoalesceHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.t = icmp eq ptr %i.i, %i.j
  br i1 %i.t, label %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.thread48, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.noexc30
  %i.u = add nuw i64 %.0810.i.i.i, 1              ; 2 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !600
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !596  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %.not13.i.i.i = icmp ult i64 %i.u, %i.aa
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i, label %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.thread48, !llvm.loop !848

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.0810.i.i.i = phi i64 [ %i.u, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %.0810.i.i.i)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !849 ; 2 uses
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 noundef %.0810.i.i.i)
          to label %.noexc29 unwind label %bb.e

.noexc29:                                         ; preds = %.noexc
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !849
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ae)
          to label %.noexc30 unwind label %bb.e, !inline_history !851

.noexc30:                                         ; preds = %.noexc29
  br i1 %i.ai, label %bb.d, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb17FlattenedCoalesceESt4pairIKS2_St17reference_wrapperIKNS1_13JoinConditionEEENS_10_Select1stESt8equal_toIS2_ENS1_21FlattenedCoalesceHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit

bb.e:                                             ; preds = %.noexc29, %.noexc, %.lr.ph.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNKSt8__detail15_Hashtable_baseIN6duckdb17FlattenedCoalesceESt4pairIKS2_St17reference_wrapperIKNS1_13JoinConditionEEENS_10_Select1stESt8equal_toIS2_ENS1_21FlattenedCoalesceHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.noexc30, %bb.c
  %.sroa.040.0 = load ptr, ptr %.sroa.040.071, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq ptr %.sroa.040.0, null
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !852
end_hunk_11
begin_hunk_12_@_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS1_S7_EEES2_INSA_14_Node_iteratorIS8_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.thread48: ; preds = %.preheader.i.i.i, %bb.d, %.preheader.i.i.i.i.i.i, %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %i.cq = phi ptr [ %i.w, %bb.d ], [ %i.bh, %.preheader.i.i.i.i.i.i ], [ %i.bu, %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %i.j, %.preheader.i.i.i ] ; 2 uses
  %.sroa.044.0.ph = phi ptr [ %.sroa.040.071, %bb.d ], [ %.0.i.i, %.preheader.i.i.i.i.i.i ], [ %.pre.i, %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %.sroa.040.071, %.preheader.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.thread48
  tail call void @_ZdlPv(ptr noundef nonnull %i.cq) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %bb.o, %_ZNKSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.thread48
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.sroa.4.056 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.044.055 = phi ptr [ %.sroa.044.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.co, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.044.055, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.056, 1
  ret { ptr, i8 } %.fca.1.insert

bb.p:                                             ; preds = %bb.l, %bb.n, %bb.m, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.cm, %bb.l ], [ %i.cp, %bb.n ], [ %i.cn, %bb.m ]
  call void @_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !856
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !594
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !595
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #19 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !856
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #20
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !594
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %2, ptr %i.t, align 8, !tbaa !718
  %i.u = load ptr, ptr %0, align 8, !tbaa !592    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  store ptr %i.x, ptr %3, align 8, !tbaa !66
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !72
  store ptr %3, ptr %i.y, align 8, !tbaa !66
  br label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !627
  store ptr %i.aa, ptr %3, align 8, !tbaa !66
  store ptr %3, ptr %i.z, align 8, !tbaa !627
  %i.ab = load ptr, ptr %3, align 8, !tbaa !66    ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !594
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !718
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !72
  br label %_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit

_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !595
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !595
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb17FlattenedCoalesceESt4pairIKS1_St17reference_wrapperIKNS0_13JoinConditionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS1_ENS0_21FlattenedCoalesceHashENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !847  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !596  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #22
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE18_M_deallocate_nodeEPSB_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb17FlattenedCoalesceESt17reference_wrapperIKNS3_13JoinConditionEEELb1EEEEE16_M_allocate_nodeIJRS4_S9_EEEPSB_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 9 uses
  store ptr null, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !600  ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !596    ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc10.thread, label %bb.b

.noexc10.thread:                                  ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !599
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !109

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.noexc10 unwind label %bb.c   ; 7 uses

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  store ptr %i.m, ptr %i.b, align 8, !tbaa !596
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !600
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.o, ptr %i.p, align 8, !tbaa !599
  %3 = sub i64 %i.f, %i.g
  %4 = add i64 %3, -8                             ; 2 uses
  %i.q = lshr i64 %4, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  %i.s = ptrtoaddr ptr %i.m to i64
  %i.t = sub i64 %i.s, %i.g
  %diff.check = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc10
  %n.vec = and i64 %i.r, 4611686018427387900      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 %i.u     ; 2 uses
  %i.w = getelementptr i8, ptr %i.e, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.x ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.e, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep13, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep13, align 8
  %wide.load14 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load14, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !857

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc10, %middle.block
  %.09.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.noexc10 ], [ %i.v, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.noexc10 ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.09.i.i.i.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.d
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !858

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %.noexc10.thread
  %i.ae = phi ptr [ %i.i, %.noexc10.thread ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc10.thread ], [ %i.v, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !600
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ag = load i64, ptr %2, align 8
  store i64 %i.ag, ptr %i.af, align 8
  ret ptr %i.a

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb10ExpressionEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #19 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.ak

bb.f:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #20
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !600
  %i.e = load ptr, ptr %0, align 8, !tbaa !596    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !67
  store i64 %i.i, ptr %i.b, align 8, !tbaa !67
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EE3getILb1EEERKS3_m.exit, label %bb.b, !prof !129

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !110    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EE3getILb1EEERKS3_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.722", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !859
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !862, !noalias !859 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !865, !noalias !859 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #22
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

end_hunk_12
