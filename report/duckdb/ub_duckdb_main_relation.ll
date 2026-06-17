inline.NumInlined: 7452
inline.NumDeleted: 3600
begin_hunk_0_@_ZN6duckdb17AggregateRelationC2ENS_10shared_ptrINS_8RelationELb1EEENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEESB_:._crit_edge.i.i

bb.c:                                             ; preds = %bb.a
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  %.val.i.pre = load ptr, ptr %4, align 8
  %.val6.i.pre = load i64, ptr %i.c, align 8, !tbaa !11
  br label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2ERKS2_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %.val6.i = phi i64 [ %.val6.i.pre, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %._crit_edge.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 7, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_ZN6duckdbL19CreateRelationAliasENS_12RelationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.p, i8 noundef zeroext 7, ptr %.val.i, i64 %.val6.i)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2ERKS2_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #25
  call void @_ZN6duckdb23enable_shared_from_thisINS_8RelationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #25
  %i.r = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

bb.d:                                             ; preds = %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2ERKS2_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6duckdb17AggregateRelationE, i64 16), ptr %0, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.x = load <2 x ptr>, ptr %2, align 8, !tbaa !41
  store <2 x ptr> %i.x, ptr %i.w, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, i8 0, i64 72, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.ae, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load <2 x ptr>, ptr %1, align 8, !tbaa !20
  store ptr null, ptr %i.af, align 8, !tbaa !17
  store <2 x ptr> %i.ag, ptr %i.ad, align 8, !tbaa !20
  store ptr null, ptr %1, align 8, !tbaa !45
  %i.ah = load ptr, ptr %3, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.v, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.al, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr null, ptr %i.am, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !84
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !85
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !86
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.r
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61 ; 11 uses
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre31 = load ptr, ptr %.phi.trans.insert30, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.not.i.i = icmp eq ptr %.pre, %.pre31
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !62 ; 3 uses
  %.not.i.i.i.i.i.i12 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.al, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.ay = load <2 x ptr>, ptr %i.an, align 8, !tbaa !87
  store <2 x ptr> %i.ay, ptr %i.ax, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %i.az, align 8, !tbaa !88
  %i.ba = load i64, ptr %i.ap, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !86
  store ptr null, ptr %i.am, align 8, !tbaa !62
  store ptr %i.al, ptr %i.an, align 8, !tbaa !84
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !85
  store i64 0, ptr %i.ap, align 8, !tbaa !86
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !62
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store ptr %i.at, ptr %i.bd, align 8, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  store ptr %i.at, ptr %i.be, align 8, !tbaa !85
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  store i64 0, ptr %i.bf, align 8, !tbaa !86
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i:      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.av, %bb.f ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.at, align 8, !tbaa !83
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !61
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr %.pre, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit unwind label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.z

bb.i:                                             ; preds = %.lr.ph, %bb.r
  %storemerge25 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.r ] ; 6 uses
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %storemerge25)
          to label %bb.j unwind label %.loopexit  ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !69 ; 6 uses
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !43
  %.not.i.i17 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !70
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !70
  store ptr null, ptr %i.bi, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.aq, align 8, !tbaa !69
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 10 uses
  %i.bo = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #29
          to label %.noexc19 unwind label %.loopexit ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  %i.ca = load i64, ptr %i.bi, align 8, !tbaa !70
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !70
  store ptr null, ptr %i.bi, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %6 = add i64 %i.bo, -8
  %7 = sub i64 %6, %i.bp                          ; 2 uses
  %i.cb = lshr i64 %7, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.by, i64 8
  %i.cd = add i64 %i.bo, -8
  %i.ce = sub i64 %i.cd, %i.bp
  %i.cf = and i64 %i.ce, -8                       ; 2 uses
  %scevgep46 = getelementptr i8, ptr %scevgep, i64 %i.cf
  %scevgep47 = getelementptr i8, ptr %i.bn, i64 8
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.cf
  %bound0 = icmp ult ptr %i.by, %scevgep48
  %bound1 = icmp ult ptr %i.bn, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bn, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cj ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.bn, i64 %i.cj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.ck = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep49, align 8, !tbaa !70, !alias.scope !94, !noalias !89
  %wide.load50 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !70, !alias.scope !94, !noalias !89
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !97, !noalias !94
  store <2 x i64> %wide.load50, ptr %i.cl, align 8, !tbaa !70, !alias.scope !97, !noalias !94
  %i.cm = getelementptr i8, ptr %next.gep49, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep49, align 8, !tbaa !70, !alias.scope !94, !noalias !89
  store <2 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !70, !alias.scope !94, !noalias !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader52

.lr.ph.i.i.i.i.i.i.i.preheader52:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader52, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader52 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.co = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !92, !noalias !89
  store i64 %i.co, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !89, !noalias !92
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !92, !noalias !89
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cp, %i.bj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !102

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.by, %.noexc19 ], [ %i.ch, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.by, ptr %i.ab, align 8, !tbaa !68
  store ptr %i.cr, ptr %i.aq, align 8, !tbaa !69
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cs, ptr %i.ar, align 8, !tbaa !43
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.k
  %.02022.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !87 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !103 ; 2 uses
  %i.cv = icmp ult i64 %storemerge25, %i.cu       ; 2 uses
  %.in.v.i.i.i = select i1 %i.cv, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !104

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.cv, label %._crit_edge.thread.i.i.i, label %bb.p

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.al, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ] ; 4 uses
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !84
  %i.cx = icmp eq ptr %.019.lcssa29.i.i.i, %i.cw
  br i1 %i.cx, label %select.unfold.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.cy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !103
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i
  %i.cz = phi i64 [ %.pre.i.i, %bb.o ], [ %i.cu, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.o ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.da = icmp ult i64 %i.cz, %storemerge25
  br i1 %i.da, label %select.unfold.i.i, label %bb.r

select.unfold.i.i:                                ; preds = %bb.p, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.p ] ; 3 uses
  %i.db = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.al
  br i1 %i.db, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !103
  %i.de = icmp ult i64 %storemerge25, %i.dd
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.q, %select.unfold.i.i
  %i.df = phi i1 [ %i.de, %bb.q ], [ true, %select.unfold.i.i ]
  %i.dg = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc20 unwind label %.loopexit ; 2 uses

.noexc20:                                         ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i64 %storemerge25, ptr %i.dh, align 8, !tbaa !103
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.df, ptr noundef nonnull %i.dg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #25
  %i.di = load i64, ptr %i.ap, align 8, !tbaa !86
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.ap, align 8, !tbaa !86
  br label %bb.r

bb.r:                                             ; preds = %.noexc20, %bb.p
  %i.dk = add nuw i64 %storemerge25, 1            ; 2 uses
  %i.dl = load ptr, ptr %i.ai, align 8, !tbaa !69
  %i.dm = load ptr, ptr %3, align 8, !tbaa !68
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = icmp ult i64 %i.dk, %i.dq
  br i1 %i.dr, label %bb.i, label %._crit_edge, !llvm.loop !105

.loopexit:                                        ; preds = %bb.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i, %bb.h
  %i.ds = load ptr, ptr %i.am, align 8, !tbaa !62
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ds)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #28
  unreachable

_ZNSt3setImSt4lessImESaImEED2Ev.exit:             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.v

bb.t:                                             ; preds = %bb.h
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t
  %.pn7 = phi { ptr, i32 } [ %i.dv, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3setImSt4lessImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.y

bb.v:                                             ; preds = %_ZNSt3setImSt4lessImESaImEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  ret void
end_hunk_0
begin_hunk_1_@_ZN6duckdb17AggregateRelation12GetQueryNodeEv:bb.a
  %i.cz = load ptr, ptr %i.cp, align 16, !tbaa !61 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb11GroupByNodeaSEOS0_.exit, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.de, %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i ], [ %i.cy, %_ZN6duckdb11GroupByNodeaSEOS0_.exit ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.db)
          to label %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i unwind label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #28
  unreachable

_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !67

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt3setImSt4lessImESaImEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ck, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6duckdb11GroupByNodeaSEOS0_.exit
  %i.df = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cy, %_ZN6duckdb11GroupByNodeaSEOS0_.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.df) #26
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i: ; preds = %bb.x, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.dg = load ptr, ptr %5, align 16, !tbaa !68   ; 3 uses
  %i.dh = load ptr, ptr %i.ca, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.dg, %i.dh
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.dm, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.dg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.di = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(56) %i.di) #25, !inline_history !183
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i2.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 8 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.dm, %i.dh
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !73

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %5, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i
  %i.dn = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.dg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i1.i6.i, label %_ZN6duckdb11GroupByNodeD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #26
  br label %_ZN6duckdb11GroupByNodeD2Ev.exit

_ZN6duckdb11GroupByNodeD2Ev.exit:                 ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ac

bb.z:                                             ; preds = %bb.p, %bb.o
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.aa:                                            ; preds = %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.al

bb.ab:                                            ; preds = %bb.q
  store i8 2, ptr %i.bu, align 8, !tbaa !124
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN6duckdb11GroupByNodeD2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bo, i64 120 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !68 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bo, i64 128 ; 5 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %i.dr
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ac, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dy, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.dr, %bb.ac ] ; 2 uses
  %i.du = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(56) %i.du) #25, !inline_history !184
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.dy, %i.dt
  br i1 %.not.i.i.i.i.i42, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !69
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.ac, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !41 ; 2 uses
  %.not68 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not68, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bo, i64 136 ; 2 uses
  br label %bb.ad

._crit_edge71:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  ret void

bb.ad:                                            ; preds = %.lr.ph70, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.055.069 = phi ptr [ %i.ea, %.lr.ph70 ], [ %i.fv, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ee = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.055.069)
          to label %bb.ae unwind label %bb.aj     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ee)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ei = load ptr, ptr %i.ds, align 8, !tbaa !69 ; 6 uses
  %i.ej = load ptr, ptr %i.ed, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i.i, label %bb.ag, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.af
  %i.ek = load i64, ptr %6, align 8, !tbaa !70
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !70
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.el, ptr %i.ds, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.em = load ptr, ptr %i.dq, align 8, !tbaa !68 ; 10 uses
  %i.en = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.eo = ptrtoint ptr %i.em to i64               ; 3 uses
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.ah, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc46 unwind label %.loopexit.split-lp

.noexc46:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ag
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i.i, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #29
          to label %.noexc47 unwind label %.loopexit ; 10 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep
  %i.ez = load i64, ptr %6, align 8, !tbaa !70
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !70
  store ptr null, ptr %6, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.em, %i.ei
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i44.preheader

.lr.ph.i.i.i.i.i.i.i44.preheader:                 ; preds = %.noexc47
  %7 = add i64 %i.en, -8
  %8 = sub i64 %7, %i.eo                          ; 2 uses
  %i.fa = lshr i64 %8, 3
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i44.preheader117, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i44.preheader
  %scevgep = getelementptr i8, ptr %i.ex, i64 8
  %i.fc = add i64 %i.en, -8
  %i.fd = sub i64 %i.fc, %i.eo
  %i.fe = and i64 %i.fd, -8                       ; 2 uses
  %scevgep111 = getelementptr i8, ptr %scevgep, i64 %i.fe
  %scevgep112 = getelementptr i8, ptr %i.em, i64 8
  %scevgep113 = getelementptr i8, ptr %scevgep112, i64 %i.fe
  %bound0 = icmp ult ptr %i.ex, %scevgep113
  %bound1 = icmp ult ptr %i.em, %scevgep111
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i44.preheader117, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fb, 4611686018427387900     ; 3 uses
  %i.ff = shl i64 %n.vec, 3                       ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ex, i64 %i.ff  ; 2 uses
  %i.fh = getelementptr i8, ptr %i.em, i64 %i.ff
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ex, i64 %i.fi ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.em, i64 %i.fi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.fj = getelementptr i8, ptr %next.gep114, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep114, align 8, !tbaa !70, !alias.scope !190, !noalias !185
  %wide.load115 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !70, !alias.scope !190, !noalias !185
  %i.fk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !193, !noalias !190
  store <2 x i64> %wide.load115, ptr %i.fk, align 8, !tbaa !70, !alias.scope !193, !noalias !190
  %i.fl = getelementptr i8, ptr %next.gep114, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep114, align 8, !tbaa !70, !alias.scope !190, !noalias !185
  store <2 x ptr> splat (ptr null), ptr %i.fl, align 8, !tbaa !70, !alias.scope !190, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !195

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i44.preheader117

.lr.ph.i.i.i.i.i.i.i44.preheader117:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i44.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ex, %vector.memcheck ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i44.preheader ], [ %i.fg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.em, %vector.memcheck ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i44.preheader ], [ %i.fh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i44

.lr.ph.i.i.i.i.i.i.i44:                           ; preds = %.lr.ph.i.i.i.i.i.i.i44.preheader117, %.lr.ph.i.i.i.i.i.i.i44
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i44 ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i44.preheader117 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i.i.i44 ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i44.preheader117 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.fn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !188, !noalias !185
  store i64 %i.fn, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !185, !noalias !188
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !188, !noalias !185
  %i.fo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i45 = icmp eq ptr %i.fo, %i.ei
  br i1 %.not.i.i.i.i.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i44, !llvm.loop !196

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i44, %middle.block, %.noexc47
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ex, %.noexc47 ], [ %i.fg, %middle.block ], [ %i.fp, %.lr.ph.i.i.i.i.i.i.i44 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.em) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ai
  store ptr %i.ex, ptr %i.dq, align 8, !tbaa !68
  store ptr %i.fq, ptr %i.ds, align 8, !tbaa !69
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev
  store ptr %i.fr, ptr %i.ed, align 8, !tbaa !43
  %.pr65 = load ptr, ptr %6, align 8, !tbaa !70   ; 3 uses
  %.not.i48 = icmp eq ptr %.pr65, null
  br i1 %.not.i48, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fs = load ptr, ptr %.pr65, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(56) %.pr65) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.055.069, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fv, %i.ec
  br i1 %.not, label %._crit_edge71, label %bb.ad

bb.aj:                                            ; preds = %bb.ae, %bb.ad
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fx = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i49 = icmp eq ptr %i.fx, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50: ; preds = %bb.ak
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(56) %i.fx) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50, %bb.ak, %bb.aj
  %.pn22 = phi { ptr, i32 } [ %i.fw, %bb.aj ], [ %lpad.phi, %bb.ak ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.al

bb.al:                                            ; preds = %bb.z, %bb.aa, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51, %.body, %bb.e
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ad, %bb.e ], [ %.pn22, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51 ], [ %i.dp, %bb.aa ], [ %i.do, %bb.z ]
  %i.gb = load ptr, ptr %0, align 8, !tbaa !111   ; 3 uses
  %.not.i52 = icmp eq ptr %i.gb, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit54, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i53: ; preds = %bb.al
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.gb) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit54

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit54: ; preds = %bb.al, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i53
  resume { ptr, i32 } %.pn22.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

end_hunk_1
begin_hunk_2_@_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv:bb.a

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(240) ptr @_ZN6duckdb9QueryNode4CastINS_10SelectNodeEEERT_v(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !198
  %.not = icmp eq i8 %i.b, 1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11GroupByNode4CopyEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::GroupByNode") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !68     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not30 = icmp eq ptr %i.b, %i.c
  br i1 %.not30, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %0, align 8, !tbaa !68
  store ptr %i.i, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  store ptr %i.k, ptr %i.h, align 8, !tbaa !43
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %.not21 = icmp eq ptr %i.c, %i.b
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSERKS7_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %._crit_edge, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.017.022 = phi ptr [ %i.c, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.017.022)
          to label %bb.f unwind label %bb.k       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(56) %i.q)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !69   ; 6 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i, label %bb.h, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.g
  %i.w = load i64, ptr %2, align 8, !tbaa !70
  store i64 %i.w, ptr %i.u, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.l, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %0, align 8, !tbaa !68     ; 10 uses
  %i.z = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.i, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #29
          to label %.noexc13 unwind label %.loopexit ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  %i.al = load i64, ptr %2, align 8, !tbaa !70
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !70
  store ptr null, ptr %2, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.u
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc13
  %3 = add i64 %i.z, -8
  %4 = sub i64 %3, %i.aa                          ; 2 uses
  %i.am = lshr i64 %4, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = add i64 %i.z, -8
  %i.ap = sub i64 %i.ao, %i.aa
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %scevgep31 = getelementptr i8, ptr %scevgep, i64 %i.aq
  %scevgep32 = getelementptr i8, ptr %i.y, i64 8
  %scevgep33 = getelementptr i8, ptr %scevgep32, i64 %i.aq
  %bound0 = icmp ult ptr %i.aj, %scevgep33
  %bound1 = icmp ult ptr %i.y, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.y, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.y, i64 %i.au ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.av = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !70, !alias.scope !204, !noalias !199
  %wide.load35 = load <2 x i64>, ptr %i.av, align 8, !tbaa !70, !alias.scope !204, !noalias !199
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !207, !noalias !204
  store <2 x i64> %wide.load35, ptr %i.aw, align 8, !tbaa !70, !alias.scope !207, !noalias !204
  %i.ax = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !70, !alias.scope !204, !noalias !199
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !70, !alias.scope !204, !noalias !199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.i.i.preheader37:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader37, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader37 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader37 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !202, !noalias !199
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !199, !noalias !202
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !202, !noalias !199
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.u
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !210

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc13 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.y) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.j
  store ptr %i.aj, ptr %0, align 8, !tbaa !68
  store ptr %i.bc, ptr %i.l, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !43
  %.pr = load ptr, ptr %2, align 8, !tbaa !70     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.be = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.b
  br i1 %.not, label %._crit_edge, label %bb.e

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit16

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !70    ; 3 uses
  %.not.i14 = icmp eq ptr %i.bj, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i15: ; preds = %bb.l
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i15, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %lpad.phi, %bb.l ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.m

_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EEaSERKS7_.exit: ; preds = %._crit_edge
  ret void

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit16, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit16 ], [ %i.p, %bb.d ]
  call void @_ZN6duckdb11GroupByNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #25
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
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
end_hunk_2
begin_hunk_3_@_ZNK6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEptEv:bb.a

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

_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb20ClientContextWrapper10GetContextEv(ptr dead_on_unwind writable sret(%"class.duckdb::shared_ptr.315") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb13ClientContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !50
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !320
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !320
  br label %_ZNSt12__shared_ptrIN6duckdb13ClientContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb13ClientContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN6duckdb13ClientContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb13ClientContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CrossProductRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !321 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !321

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !321
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !321
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !324
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !324
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !324
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !324

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !324 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !324
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !324 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !324
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !324
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !332, !noalias !327
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !332, !noalias !327
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !335, !noalias !332
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !335, !noalias !332
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !332, !noalias !327
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !332, !noalias !327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !330, !noalias !327
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !327, !noalias !330
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !330, !noalias !327
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !338

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20CrossProductRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.331", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !339 ; 13 uses
  %i.c = load i8, ptr %i.a, align 8, !tbaa !342, !noalias !339
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_3
begin_hunk_4_@_ZN6duckdb8RelationC2ERKNS_10shared_ptrINS_13ClientContextELb1EEENS_12RelationTypeE:bb.a

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !noalias !407
  br label %_ZN6duckdb15make_shared_ptrINS_20ClientContextWrapperEJRKNS_10shared_ptrINS_13ClientContextELb1EEEEEENS2_IT_Lb1EEEDpOT0_.exit

_ZN6duckdb15make_shared_ptrINS_20ClientContextWrapperEJRKNS_10shared_ptrINS_13ClientContextELb1EEEEEENS2_IT_Lb1EEEDpOT0_.exit: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.e
  store ptr %i.k, ptr %i.b, align 8, !tbaa !409
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 8 uses
  store ptr %i.h, ptr %i.ad, align 8, !tbaa !17
  %.not.i.i.i.i4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i4, label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_20ClientContextWrapperEJRKNS_10shared_ptrINS_13ClientContextELb1EEEEEENS2_IT_Lb1EEEDpOT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 4294967297
  %i.ai = trunc i64 %i.ag to i32                  ; 2 uses
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.af, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.aj, align 4, !tbaa !50
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25, !inline_history !410
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25, !inline_history !410
  br label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add nsw i32 %i.ai, -1
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.ai, %bb.m ], [ %i.as, %bb.n ]
  %i.at = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.at, label %bb.o, label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev.exit, !prof !47

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25
  br label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZN6duckdb15make_shared_ptrINS_20ClientContextWrapperEJRKNS_10shared_ptrINS_13ClientContextELb1EEEEEENS2_IT_Lb1EEEDpOT0_.exit
  ret void

bb.p:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb20ClientContextWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.au, %bb.p ], [ %i.l, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb20ClientContextWrapperESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ]
  tail call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_18ExternalDependencyELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.g) #25
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.e
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  tail call void @_ZdlPv(ptr noundef %i.av) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #25
  tail call void @_ZN6duckdb23enable_shared_from_thisINS_8RelationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16DelimGetRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !411 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !411

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !411
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !411
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !414
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !414
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !414
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !414

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !414 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !414
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !414 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !414
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !414
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !422, !noalias !417
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !422, !noalias !417
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !425, !noalias !422
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !425, !noalias !422
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !422, !noalias !417
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !422, !noalias !417
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !420, !noalias !417
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !417, !noalias !420
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !420, !noalias !417
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !428

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16DelimGetRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29, !noalias !429 ; 3 uses
  invoke void @_ZN6duckdb11DelimGetRefC2ERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZNSt10unique_ptrIN6duckdb11DelimGetRefESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b, !noalias !429

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #26, !noalias !429
end_hunk_4
begin_hunk_5_@_ZN6duckdb14FilterRelation12GetQueryNodeEv:bb.a
  %i.bi = load ptr, ptr %3, align 8, !tbaa !70, !noalias !462 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.bi, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i12.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !15, !noalias !462
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !462
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(56) %i.bi) #25, !noalias !462, !inline_history !465
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i12.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  call void @_ZdlPv(ptr noundef nonnull %i.as) #26, !noalias !462
  br label %.body

bb.o:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !70  ; 3 uses
  store ptr %i.as, ptr %i.x, align 8, !tbaa !70
  %.not.i.i.i.i.i28 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i28, label %_ZNSt10unique_ptrIN6duckdb21ConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i29

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i29: ; preds = %bb.o
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(56) %i.bm) #25, !inline_history !384
  br label %_ZNSt10unique_ptrIN6duckdb21ConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21ConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i29
  %i.bq = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i35 = icmp eq ptr %i.bq, null
  br i1 %.not.i35, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i36

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i36: ; preds = %_ZNSt10unique_ptrIN6duckdb21ConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(56) %i.bq) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit37: ; preds = %_ZNSt10unique_ptrIN6duckdb21ConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.an

bb.p:                                             ; preds = %bb.k, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40

bb.q:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.bd, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i ] ; 2 uses
  %i.bw = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i38 = icmp eq ptr %i.bw, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i39: ; preds = %.body
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(56) %i.bw) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i39, %.body, %bb.p
  %.pn24 = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40, %bb.i, %bb.h
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit40 ], [ %i.an, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !111   ; 3 uses
  %.not.i41 = icmp eq ptr %i.ca, null
  br i1 %.not.i41, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %bb.r
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ca) #25, !inline_history !113
  br label %common.resume

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.ce = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !466 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ce)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.t, !noalias !466

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit75, %bb.r, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.t ], [ %.pn21.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit75 ], [ %.pn24.pn, %bb.r ], [ %.pn24.pn, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.s
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.ce) #26, !noalias !466
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.s
  store ptr %i.ce, ptr %7, align 8, !tbaa !117, !alias.scope !466
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.u unwind label %bb.ah      ; 3 uses

bb.u:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ch = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc42 unwind label %bb.ai  ; 6 uses

.noexc42:                                         ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ci, ptr %2, align 8, !tbaa !7, !noalias !469
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !11, !noalias !469
  store i8 0, ptr %i.ci, align 8, !tbaa !14, !noalias !469
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.ch, ptr noundef nonnull %2)
          to label %bb.v unwind label %bb.w, !noalias !469

bb.v:                                             ; preds = %.noexc42
  %i.ck = load ptr, ptr %2, align 8, !tbaa !40, !noalias !469 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ci
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.ck) #26, !noalias !469
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.w:                                             ; preds = %.noexc42
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %2, align 8, !tbaa !40, !noalias !469 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ci
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.cn) #26, !noalias !469
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #26, !noalias !469
  br label %.body43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 120 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !69 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 136 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %.not.i.i45 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i.i45, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cu = ptrtoint ptr %i.ch to i64
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !68 ; 10 uses
  %i.cx = ptrtoint ptr %i.cr to i64               ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 3 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.z, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc46 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit66

.noexc46:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.db = ashr exact i64 %i.cz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.db ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.db
  %i.de = call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975)
  %i.df = select i1 %i.dd, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dg) #29
          to label %.noexc47 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit66 ; 10 uses

.noexc47:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.cz
  %i.dj = ptrtoint ptr %i.ch to i64
  store i64 %i.dj, ptr %i.di, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cw, %i.cr
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc47
  %10 = add i64 %i.cx, -8
  %11 = sub i64 %10, %i.cy                        ; 2 uses
  %i.dk = lshr i64 %11, 3
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dm = add i64 %i.cx, -8
  %i.dn = sub i64 %i.dm, %i.cy
  %i.do = and i64 %i.dn, -8
  %i.dp = add i64 %i.do, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dh, i64 %i.dp
  %scevgep112 = getelementptr i8, ptr %i.cw, i64 %i.dp
  %bound0 = icmp ult ptr %i.dh, %scevgep112
  %bound1 = icmp ult ptr %i.cw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, 4611686018427387900     ; 3 uses
  %i.dq = shl i64 %n.vec, 3                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dh, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cw, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dh, i64 %i.dt ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.cw, i64 %i.dt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.du = getelementptr i8, ptr %next.gep113, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep113, align 8, !tbaa !70, !alias.scope !477, !noalias !472
  %wide.load114 = load <2 x i64>, ptr %i.du, align 8, !tbaa !70, !alias.scope !477, !noalias !472
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !480, !noalias !477
  store <2 x i64> %wide.load114, ptr %i.dv, align 8, !tbaa !70, !alias.scope !480, !noalias !477
  %i.dw = getelementptr i8, ptr %next.gep113, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep113, align 8, !tbaa !70, !alias.scope !477, !noalias !472
  store <2 x ptr> splat (ptr null), ptr %i.dw, align 8, !tbaa !70, !alias.scope !477, !noalias !472
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !482

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader116

.lr.ph.i.i.i.i.i.i.i.preheader116:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dh, %vector.memcheck ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader116, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader116 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader116 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.dy = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !475, !noalias !472
  store i64 %i.dy, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !472, !noalias !475
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !475, !noalias !472
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.cr
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !483

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc47
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dh, %.noexc47 ], [ %i.dr, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dh, ptr %i.cp, align 8, !tbaa !68
  store ptr %i.eb, ptr %i.cq, align 8, !tbaa !69
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.ec, ptr %i.cs, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ed = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8RelationELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.ab unwind label %bb.aj     ; 2 uses

bb.ab:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %i.ed)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.eh = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 144 ; 2 uses
  %i.ej = load ptr, ptr %8, align 8, !tbaa !119
  store ptr null, ptr %8, align 8, !tbaa !119
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !119 ; 3 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !119
  %.not.i.i.i.i.i52 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i52, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ad
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ek) #25, !inline_history !121
  %.pr86 = load ptr, ptr %8, align 8, !tbaa !119  ; 3 uses
  %.not.i53 = icmp eq ptr %.pr86, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.eo = load ptr, ptr %.pr86, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr86) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.es = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %bb.ae unwind label %bb.al     ; 2 uses

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !15
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.es)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ew = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 152 ; 2 uses
  %i.ey = load ptr, ptr %9, align 8, !tbaa !70
  store ptr null, ptr %9, align 8, !tbaa !70
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !70 ; 3 uses
  store ptr %i.ey, ptr %i.ex, align 8, !tbaa !70
  %.not.i.i.i.i.i54 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i.i54, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit56

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit56: ; preds = %bb.ag
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(56) %i.ez) #25, !inline_history !384
  %.pr88 = load ptr, ptr %9, align 8, !tbaa !70   ; 3 uses
  %.not.i57 = icmp eq ptr %.pr88, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i58

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i58: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit56
  %i.fd = load ptr, ptr %.pr88, align 8, !tbaa !15
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(56) %.pr88) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ag, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i58, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.fg = load ptr, ptr %7, align 8, !tbaa !117
  store ptr %i.fg, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.an

bb.ah:                                            ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body43

bb.ai:                                            ; preds = %bb.u
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body43

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit66: ; preds = %bb.z, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %i.fk = load ptr, ptr %i.ch, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(56) %i.ch) #25, !inline_history !197
  br label %.body43

bb.aj:                                            ; preds = %bb.ab, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit69

bb.ak:                                            ; preds = %bb.ac
  %i.fo = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN6duckdb12JoinRelationC2ENS_10shared_ptrINS_8RelationELb1EEES3_NS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEENS_8JoinTypeENS_11JoinRefTypeE:._crit_edge.i.i
  call void @_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn13 = phi { ptr, i32 } [ %i.cg, %bb.aa ], [ %i.cf, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.w
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.x
  %.0 = phi i1 [ false, %bb.y ], [ true, %bb.x ]  ; 2 uses
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cj = load ptr, ptr %9, align 8, !tbaa !40    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.0, label %bb.ad, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.0, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn1532 = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  call void @__cxa_free_exception(ptr %i.ce) #25
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit23
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  ret void

bb.ag:                                            ; preds = %bb.ae
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.ad, %bb.ag, %bb.ab
  %.pn15.pn = phi { ptr, i32 } [ %.pn1532, %bb.ad ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.cm, %bb.ag ], [ %.pn13, %bb.ab ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #25
  call void @_ZNSt6vectorIN6duckdb16ColumnDefinitionESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #25
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.af) #25
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 3 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %bb.ah
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(56) %i.cn) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ah, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @_ZN6duckdb10shared_ptrINS_8RelationELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aa) #25
  call void @_ZN6duckdb10shared_ptrINS_8RelationELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.w) #25
  call void @_ZN6duckdb8RelationD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #25
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn15.pn.pn

bb.aj:                                            ; preds = %bb.y
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12JoinRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(225) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !519 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !519

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !519
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !519
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !522
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !522
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !522
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !522

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !522 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !522
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !522 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !522
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !522
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !530, !noalias !525
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !530, !noalias !525
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !533, !noalias !530
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !533, !noalias !530
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !530, !noalias !525
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !530, !noalias !525
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !535

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !528, !noalias !525
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !525, !noalias !528
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !528, !noalias !525
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !536

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(225) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12JoinRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(225) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.331", align 8 ; 13 uses
  %3 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 169
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.b = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #29, !noalias !537 ; 13 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdb12JoinRelation11GetTableRefEv:bb.a
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bf = load ptr, ptr %.pr55, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(56) %.pr55) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.r

bb.l:                                             ; preds = %bb.b, %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit30

bb.m:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !119   ; 3 uses
  %.not.i28 = icmp eq ptr %i.bk, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit30, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i29

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i29: ; preds = %bb.m
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bk) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit30

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit30: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i29, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.bj, %bb.m ], [ %i.bj, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.af

bb.n:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit33

bb.o:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit33, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i32

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i32: ; preds = %bb.o
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bq) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit33

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit33: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i32, %bb.o, %bb.n
  %.pn12 = phi { ptr, i32 } [ %i.bo, %bb.n ], [ %i.bp, %bb.o ], [ %i.bp, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36

bb.q:                                             ; preds = %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i34 = icmp eq ptr %i.bw, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35: ; preds = %bb.q
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(56) %i.bw) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35, %bb.q, %bb.p
  %.pn14 = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %i.bv, %bb.q ], [ %i.bv, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.af

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit25
  %i.ca = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.cd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.v ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !513
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  store i8 %i.cf, ptr %i.ch, align 8, !tbaa !359
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !540, !range !274, !noundef !275
  %i.ck = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 184
  store i8 %i.cj, ptr %i.cl, align 8, !tbaa !541
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !41 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !41 ; 2 uses
  %.not5960 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not5960, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42, %bb.u
  %i.cq = load ptr, ptr %2, align 8, !tbaa !363
  store ptr %i.cq, ptr %0, align 8, !tbaa !365
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.v:                                             ; preds = %bb.s, %bb.t, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %bb.u, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42
  %.sroa.049.061 = phi ptr [ %i.en, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42 ], [ %i.cn, %bb.u ] ; 2 uses
  %i.cs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_7JoinRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.w unwind label %bb.ac      ; 3 uses

bb.w:                                             ; preds = %.lr.ph
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 160 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.049.061)
          to label %bb.x unwind label %bb.ad      ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.cu)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 168 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !69 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 176 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !43
  %.not.i38 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i38, label %bb.z, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread: ; preds = %bb.y
  %i.dc = load i64, ptr %6, align 8, !tbaa !70
  store i64 %i.dc, ptr %i.cz, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dd, ptr %i.cy, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42

bb.z:                                             ; preds = %bb.y
  %i.de = load ptr, ptr %i.ct, align 8, !tbaa !68 ; 10 uses
  %i.df = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 3 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.aa, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #29
          to label %.noexc39 unwind label %.loopexit ; 10 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = load i64, ptr %6, align 8, !tbaa !70
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !70
  store ptr null, ptr %6, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc39
  %7 = add i64 %i.df, -8
  %8 = sub i64 %7, %i.dg                          ; 2 uses
  %i.ds = lshr i64 %8, 3
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader81, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dp, i64 8
  %i.du = add i64 %i.df, -8
  %i.dv = sub i64 %i.du, %i.dg
  %i.dw = and i64 %i.dv, -8                       ; 2 uses
  %scevgep75 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep76 = getelementptr i8, ptr %i.de, i64 8
  %scevgep77 = getelementptr i8, ptr %scevgep76, i64 %i.dw
  %bound0 = icmp ult ptr %i.dp, %scevgep77
  %bound1 = icmp ult ptr %i.de, %scevgep75
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader81, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 4611686018427387900     ; 3 uses
  %i.dx = shl i64 %n.vec, 3                       ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dp, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.de, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.ea ; 2 uses
  %next.gep78 = getelementptr i8, ptr %i.de, i64 %i.ea ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.eb = getelementptr i8, ptr %next.gep78, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep78, align 8, !tbaa !70, !alias.scope !547, !noalias !542
  %wide.load79 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !70, !alias.scope !547, !noalias !542
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !550, !noalias !547
  store <2 x i64> %wide.load79, ptr %i.ec, align 8, !tbaa !70, !alias.scope !550, !noalias !547
  %i.ed = getelementptr i8, ptr %next.gep78, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep78, align 8, !tbaa !70, !alias.scope !547, !noalias !542
  store <2 x ptr> splat (ptr null), ptr %i.ed, align 8, !tbaa !70, !alias.scope !547, !noalias !542
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !552

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader81

.lr.ph.i.i.i.i.i.i.preheader81:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dp, %vector.memcheck ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dy, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader81, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader81 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader81 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %i.ef = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !545, !noalias !542
  store i64 %i.ef, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !542, !noalias !545
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !545, !noalias !542
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.cz
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !553

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc39
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %.noexc39 ], [ %i.dy, %middle.block ], [ %i.eh, %.lr.ph.i.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.de) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, %bb.ab
  store ptr %i.dp, ptr %i.ct, align 8, !tbaa !68
  store ptr %i.ei, ptr %i.cy, align 8, !tbaa !69
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.ej, ptr %i.da, align 8, !tbaa !43
  %.pr57 = load ptr, ptr %6, align 8, !tbaa !70   ; 3 uses
  %.not.i40 = icmp eq ptr %.pr57, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %i.ek = load ptr, ptr %.pr57, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(56) %.pr57) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.049.061, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.en, %i.cp
  br i1 %.not59, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

bb.ac:                                            ; preds = %.lr.ph
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.eq = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i43 = icmp eq ptr %i.eq, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44: ; preds = %bb.ae
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(56) %i.eq) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44, %bb.ae, %bb.ad
  %.pn16 = phi { ptr, i32 } [ %i.ep, %bb.ad ], [ %lpad.phi, %bb.ae ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45, %bb.v, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit33, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit30
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit30 ], [ %i.cr, %bb.v ], [ %.pn14, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36 ], [ %.pn12, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit33 ], [ %.pn16, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45 ], [ %i.eo, %bb.ac ]
  %i.eu = load ptr, ptr %2, align 8, !tbaa !363   ; 3 uses
  %.not.i46 = icmp eq ptr %i.eu, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit48, label %_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i47

_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i47: ; preds = %bb.af
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !15
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(186) %i.eu) #25, !inline_history !366
  br label %_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb7JoinRefESt14default_deleteIS1_EED2Ev.exit48: ; preds = %bb.af, %_ZNKSt14default_deleteIN6duckdb7JoinRefEEclEPS1_.exit.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12JoinRelation7ColumnsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(225) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12JoinRelation8ToStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(225) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6duckdb8Relation16RenderWhitespaceB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 169
  %i.d = load i8, ptr %i.c, align 1, !tbaa !515
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.e = invoke noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_11JoinRefTypeEEEPKcT_(i8 noundef zeroext %i.d)
          to label %.noexc unwind label %bb.ac    ; 4 uses

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !7, !alias.scope !554
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.noexc
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.77) #27
end_hunk_7
begin_hunk_8_@_ZN6duckdb13LimitRelation12GetQueryNodeEv:bb.a

bb.f:                                             ; preds = %.noexc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #25, !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit23

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 3 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #25, !inline_history !384
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit52

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit23: ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #25, !inline_history !197
  br label %.body

.body:                                            ; preds = %bb.j, %bb.e, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit23
  %.pn = phi { ptr, i32 } [ %i.w, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit23 ], [ %i.v, %bb.j ], [ %i.m, %bb.e ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !586 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %6, i64 noundef %i.ab)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ad = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc24 unwind label %bb.s   ; 5 uses

.noexc24:                                         ; preds = %bb.n
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %6) #25, !noalias !598
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull %2)
          to label %bb.p unwind label %bb.o, !noalias !598

bb.o:                                             ; preds = %.noexc24
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25, !noalias !598
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #26, !noalias !598
  br label %.body25

bb.p:                                             ; preds = %.noexc24
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25, !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.q unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit42

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 3 uses
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !70
  %.not.i.i.i.i.i28 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i28, label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i29

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i29: ; preds = %bb.q
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #25, !inline_history !384
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit36

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit36: ; preds = %bb.q, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i29
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body25

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(56) %i.ad) #25, !inline_history !197
  br label %.body25

.body25:                                          ; preds = %bb.s, %bb.o, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit42
  %.pn11 = phi { ptr, i32 } [ %i.an, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit42 ], [ %i.am, %bb.s ], [ %i.ae, %bb.o ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  br label %bb.t

bb.t:                                             ; preds = %.body25, %bb.r
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %.body25 ], [ %i.al, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit36, %bb.l
  %i.ar = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.v unwind label %bb.y       ; 3 uses

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !593   ; 5 uses
  store ptr null, ptr %4, align 8, !tbaa !593
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !601 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !602
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.w, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.v
  %i.ay = ptrtoint ptr %i.at to i64
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !603
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !601
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !605 ; 10 uses
  %i.bb = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.x, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc43 unwind label %bb.z

.noexc43:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #29
          to label %.noexc44 unwind label %bb.z   ; 12 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = ptrtoint ptr %i.at to i64
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !603
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc44
  %7 = add i64 %i.bb, -8
  %8 = sub i64 %7, %i.bc                          ; 2 uses
  %i.bo = lshr i64 %8, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader87, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bq = add i64 %i.bb, -8
  %i.br = sub i64 %i.bq, %i.bc
  %i.bs = and i64 %i.br, -8
  %i.bt = add i64 %i.bs, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bl, i64 %i.bt
  %scevgep83 = getelementptr i8, ptr %i.ba, i64 %i.bt
  %bound0 = icmp ult ptr %i.bl, %scevgep83
  %bound1 = icmp ult ptr %i.ba, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader87, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ba, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bl, i64 %i.bx ; 2 uses
  %next.gep84 = getelementptr i8, ptr %i.ba, i64 %i.bx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.by = getelementptr i8, ptr %next.gep84, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep84, align 8, !tbaa !603, !alias.scope !611, !noalias !606
  %wide.load85 = load <2 x i64>, ptr %i.by, align 8, !tbaa !603, !alias.scope !611, !noalias !606
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !603, !alias.scope !614, !noalias !611
  store <2 x i64> %wide.load85, ptr %i.bz, align 8, !tbaa !603, !alias.scope !614, !noalias !611
  %i.ca = getelementptr i8, ptr %next.gep84, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep84, align 8, !tbaa !603, !alias.scope !611, !noalias !606
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !603, !alias.scope !611, !noalias !606
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !616

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader87

.lr.ph.i.i.i.i.i.i.i.preheader87:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader87, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader87 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader87 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !603, !alias.scope !609, !noalias !606
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !603, !alias.scope !606, !noalias !609
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !603, !alias.scope !609, !noalias !606
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !617

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc44
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc44 ], [ %i.bv, %middle.block ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread80, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread80: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !605
  store ptr %i.cf, ptr %i.au, align 8, !tbaa !601
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cg, ptr %i.aw, align 8, !tbaa !602
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ba) #26
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !593 ; 3 uses
  store ptr %i.bl, ptr %i.as, align 8, !tbaa !605
  store ptr %i.cf, ptr %i.au, align 8, !tbaa !601
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.ch, ptr %i.aw, align 8, !tbaa !602
  %.not.i46 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit
  %i.ci = load ptr, ptr %.pre.pre, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %.pre.pre) #25, !inline_history !618
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread80, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.y:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49

bb.z:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.x
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i47 = icmp eq ptr %i.at, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i48

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i48: ; preds = %bb.z
  %i.cn = load ptr, ptr %i.at, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.at) #25, !inline_history !619
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i48, %bb.z, %bb.y, %bb.t, %bb.k
  %.pn14 = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.cl, %bb.y ], [ %.pn11.pn, %bb.t ], [ %i.cm, %bb.z ], [ %i.cm, %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i48 ] ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !593   ; 3 uses
  %.not.i50 = icmp eq ptr %i.cq, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit52, label %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i51

_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i51: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %i.cq) #25, !inline_history !618
  br label %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit52: ; preds = %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i51, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49, %bb.h
  %.pn14.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %.pn14, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit49 ], [ %.pn14, %_ZNKSt14default_deleteIN6duckdb13LimitModifierEEclEPS1_.exit.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cu = load ptr, ptr %0, align 8, !tbaa !111   ; 3 uses
  %.not.i53 = icmp eq ptr %i.cu, null
  br i1 %.not.i53, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit52
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cu) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13LimitModifierESt14default_deleteIS1_EED2Ev.exit52, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  resume { ptr, i32 } %.pn14.pn
}

declare void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind writable sret(%"class.duckdb::Value") align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !593    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13LimitModifierESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EED2Ev:bb.a

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #25, !inline_history !646
  br label %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !647

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb11OrderByNodeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !644
  br label %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11OrderByNodeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #26
  br label %_ZNSt12_Vector_baseIN6duckdb11OrderByNodeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11OrderByNodeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11OrderByNodeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13OrderRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 12 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::unique_ptr.437", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !648 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !648

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit69, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn18.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit69 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !648
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !648
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8RelationELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.m       ; 2 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %i.d)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !119  ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.k) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.o = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.o       ; 3 uses

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.s = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.p     ; 6 uses

.noexc:                                           ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !7, !noalias !651
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !11, !noalias !651
  store i8 0, ptr %i.t, align 8, !tbaa !14, !noalias !651
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.s, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.h, !noalias !651

bb.g:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %2, align 8, !tbaa !40, !noalias !651 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.t
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.v) #26, !noalias !651
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %2, align 8, !tbaa !40, !noalias !651 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.t
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.y) #26, !noalias !651
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26, !noalias !651
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 120 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 128 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 136 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.af = ptrtoint ptr %i.s to i64
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !68 ; 10 uses
  %i.ai = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.k, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc24 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit37

.noexc24:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #29
          to label %.noexc25 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit37 ; 10 uses

.noexc25:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %i.au = ptrtoint ptr %i.s to i64
  store i64 %i.au, ptr %i.at, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ac
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc25
  %7 = add i64 %i.ai, -8
  %8 = sub i64 %7, %i.aj                          ; 2 uses
  %i.av = lshr i64 %8, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader137, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ax = add i64 %i.ai, -8
  %i.ay = sub i64 %i.ax, %i.aj
  %i.az = and i64 %i.ay, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.ba
  %scevgep110 = getelementptr i8, ptr %i.ah, i64 %i.ba
  %bound0 = icmp ult ptr %i.as, %scevgep110
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ah, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.be ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.ah, i64 %i.be ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.bf = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8, !tbaa !70, !alias.scope !659, !noalias !654
  %wide.load112 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !70, !alias.scope !659, !noalias !654
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !662, !noalias !659
  store <2 x i64> %wide.load112, ptr %i.bg, align 8, !tbaa !70, !alias.scope !662, !noalias !659
  %i.bh = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep111, align 8, !tbaa !70, !alias.scope !659, !noalias !654
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !70, !alias.scope !659, !noalias !654
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !664

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader137

.lr.ph.i.i.i.i.i.i.i.preheader137:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader137, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader137 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader137 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !657, !noalias !654
  store i64 %i.bj, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !654, !noalias !657
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !657, !noalias !654
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !665

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc25
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc25 ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.as, ptr %i.aa, align 8, !tbaa !68
  store ptr %i.bm, ptr %i.ab, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !666)
  %i.bo = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %_ZN6duckdb9make_uniqINS_13OrderModifierEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.q ; 4 uses

_ZN6duckdb9make_uniqINS_13OrderModifierEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 2, ptr %i.bp, align 8, !tbaa !590, !noalias !666
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb13OrderModifierE, i64 16), ptr %i.bo, align 8, !tbaa !15, !noalias !666
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false), !noalias !666
  store ptr %i.bo, ptr %5, align 8, !tbaa !669, !alias.scope !666
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !645
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !644
  %.not = icmp eq ptr %i.bt, %i.bu
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42, %_ZN6duckdb9make_uniqINS_13OrderModifierEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ab unwind label %bb.af     ; 3 uses

bb.m:                                             ; preds = %bb.c, %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit31

bb.n:                                             ; preds = %bb.d
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i29 = icmp eq ptr %i.by, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit31, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i30: ; preds = %bb.n
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.by) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i30, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.m ], [ %i.bx, %bb.n ], [ %i.bx, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit37: ; preds = %bb.k, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #25, !inline_history !197
  br label %.body

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit66

.lr.ph:                                           ; preds = %_ZN6duckdb9make_uniqINS_13OrderModifierEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42
  %.082 = phi i64 [ %i.dh, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42 ], [ 0, %_ZN6duckdb9make_uniqINS_13OrderModifierEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit ] ; 4 uses
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.r unwind label %bb.y       ; 3 uses

bb.r:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %.082)
          to label %bb.s unwind label %bb.y       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.cm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %.082)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.co = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11OrderByNodeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %.082)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %bb.v unwind label %bb.z       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.cq)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !645 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !642
  %.not.i38 = icmp eq ptr %i.cv, %i.cx
  br i1 %.not.i38, label %bb.x, label %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit.thread

_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit.thread: ; preds = %bb.w
  %i.cy = load i8, ptr %i.cl, align 8, !tbaa !671
  %i.cz = load i8, ptr %i.cn, align 1, !tbaa !673
  %i.da = load i64, ptr %6, align 8, !tbaa !70
  store i8 %i.cy, ptr %i.cv, align 8, !tbaa !675
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !677
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.dd, ptr %i.cu, align 8, !tbaa !645
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE17_M_realloc_insertIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %i.cl, ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit unwind label %bb.aa

_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit: ; preds = %bb.x
  %.pre = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i40 = icmp eq ptr %.pre, null
  br i1 %.not.i40, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41: ; preds = %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit
  %i.de = load ptr, ptr %.pre, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(56) %.pre) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit42: ; preds = %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit.thread, %_ZNSt6vectorIN6duckdb11OrderByNodeESaIS1_EE12emplace_backIJRNS0_9OrderTypeERNS0_15OrderByNullTypeENS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteISA_ELb1EEEEEEvDpOT_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dh = add nuw i64 %.082, 1                    ; 2 uses
  %i.di = load ptr, ptr %i.bs, align 8, !tbaa !645
  %i.dj = load ptr, ptr %i.br, align 8, !tbaa !644
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 4
  %i.do = icmp ult i64 %i.dh, %i.dn
  br i1 %i.do, label %.lr.ph, label %._crit_edge, !llvm.loop !678

bb.y:                                             ; preds = %bb.s, %bb.r, %.lr.ph
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45

bb.aa:                                            ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ds = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i43 = icmp eq ptr %i.ds, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44: ; preds = %bb.aa
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(56) %i.ds) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44, %bb.aa, %bb.z
  %.pn18 = phi { ptr, i32 } [ %i.dq, %bb.z ], [ %i.dr, %bb.aa ], [ %i.dr, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63

bb.ab:                                            ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !669   ; 5 uses
  store ptr null, ptr %5, align 8, !tbaa !669
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !601 ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !602
  %.not.i.i46 = icmp eq ptr %i.dz, %i.eb
  br i1 %.not.i.i46, label %bb.ac, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.ab
  %i.ec = ptrtoint ptr %i.dx to i64
  store i64 %i.ec, ptr %i.dz, align 8, !tbaa !603
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ed, ptr %i.dy, align 8, !tbaa !601
  %i.ee = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.ee, ptr %0, align 8, !tbaa !108
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !605 ; 10 uses
  %i.eg = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.eh = ptrtoint ptr %i.ef to i64               ; 3 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 9223372036854775800
  br i1 %i.ej, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc56 unwind label %bb.ag

.noexc56:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.ek = ashr exact i64 %i.ei, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.ek, i64 1)
  %i.el = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.ek ; 2 uses
  %i.em = icmp ult i64 %i.el, %i.ek
  %i.en = call i64 @llvm.umin.i64(i64 %i.el, i64 1152921504606846975)
  %i.eo = select i1 %i.em, i64 1152921504606846975, i64 %i.en ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.ep = shl nuw nsw i64 %i.eo, 3
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #29
          to label %.noexc57 unwind label %bb.ag  ; 10 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ei
  %i.es = ptrtoint ptr %i.dx to i64
  store i64 %i.es, ptr %i.er, align 8, !tbaa !603
  %.not10.i.i.i.i.i.i.i49 = icmp eq ptr %i.ef, %i.dz
  br i1 %.not10.i.i.i.i.i.i.i49, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i.i.i50.preheader:                 ; preds = %.noexc57
  %9 = add i64 %i.eg, -8
  %10 = sub i64 %9, %i.eh                         ; 2 uses
  %i.et = lshr i64 %10, 3
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %min.iters.check121 = icmp ult i64 %10, 152
  br i1 %min.iters.check121, label %.lr.ph.i.i.i.i.i.i.i50.preheader136, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader
  %i.ev = add i64 %i.eg, -8
  %i.ew = sub i64 %i.ev, %i.eh
  %i.ex = and i64 %i.ew, -8
  %i.ey = add i64 %i.ex, 8                        ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.eq, i64 %i.ey
  %scevgep116 = getelementptr i8, ptr %i.ef, i64 %i.ey
  %bound0117 = icmp ult ptr %i.eq, %scevgep116
  %bound1118 = icmp ult ptr %i.ef, %scevgep115
  %found.conflict119 = and i1 %bound0117, %bound1118
  br i1 %found.conflict119, label %.lr.ph.i.i.i.i.i.i.i50.preheader136, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck114
  %n.vec124 = and i64 %i.eu, 4611686018427387900  ; 3 uses
  %i.ez = shl i64 %n.vec124, 3                    ; 2 uses
  %i.fa = getelementptr i8, ptr %i.eq, i64 %i.ez  ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ef, i64 %i.ez
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph122
  %index126 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body125 ] ; 2 uses
  %i.fc = shl i64 %index126, 3                    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.eq, i64 %i.fc ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.ef, i64 %i.fc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.fd = getelementptr i8, ptr %next.gep128, i64 16
  %wide.load129 = load <2 x i64>, ptr %next.gep128, align 8, !tbaa !603, !alias.scope !684, !noalias !679
  %wide.load130 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !603, !alias.scope !684, !noalias !679
  %i.fe = getelementptr i8, ptr %next.gep127, i64 16
  store <2 x i64> %wide.load129, ptr %next.gep127, align 8, !tbaa !603, !alias.scope !687, !noalias !684
  store <2 x i64> %wide.load130, ptr %i.fe, align 8, !tbaa !603, !alias.scope !687, !noalias !684
  %i.ff = getelementptr i8, ptr %next.gep128, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep128, align 8, !tbaa !603, !alias.scope !684, !noalias !679
  store <2 x ptr> splat (ptr null), ptr %i.ff, align 8, !tbaa !603, !alias.scope !684, !noalias !679
  %index.next131 = add nuw i64 %index126, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.fg, label %middle.block132, label %vector.body125, !llvm.loop !689

middle.block132:                                  ; preds = %vector.body125
  %cmp.n133 = icmp eq i64 %i.eu, %n.vec124
  br i1 %cmp.n133, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i50.preheader136

.lr.ph.i.i.i.i.i.i.i50.preheader136:              ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i.i.i50.preheader, %middle.block132
  %.012.i.i.i.i.i.i.i51.ph = phi ptr [ %i.eq, %vector.memcheck114 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.fa, %middle.block132 ]
  %.0911.i.i.i.i.i.i.i52.ph = phi ptr [ %i.ef, %vector.memcheck114 ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i50.preheader ], [ %i.fb, %middle.block132 ]
  br label %.lr.ph.i.i.i.i.i.i.i50

.lr.ph.i.i.i.i.i.i.i50:                           ; preds = %.lr.ph.i.i.i.i.i.i.i50.preheader136, %.lr.ph.i.i.i.i.i.i.i50
  %.012.i.i.i.i.i.i.i51 = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.012.i.i.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader136 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i52 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i50 ], [ %.0911.i.i.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i.i.i50.preheader136 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.fh = load i64, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !603, !alias.scope !682, !noalias !679
  store i64 %i.fh, ptr %.012.i.i.i.i.i.i.i51, align 8, !tbaa !603, !alias.scope !679, !noalias !682
  store ptr null, ptr %.0911.i.i.i.i.i.i.i52, align 8, !tbaa !603, !alias.scope !682, !noalias !679
  %i.fi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i52, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i51, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i53 = icmp eq ptr %i.fi, %i.dz
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i50, !llvm.loop !690

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i50, %middle.block132, %.noexc57
  %.0.lcssa.i.i.i.i.i.i.i54 = phi ptr [ %i.eq, %.noexc57 ], [ %i.fa, %middle.block132 ], [ %i.fj, %.lr.ph.i.i.i.i.i.i.i50 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i54, i64 8
  %.not.i23.i.i.i55 = icmp eq ptr %i.ef, null
  br i1 %.not.i23.i.i.i55, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #26
  %.pre84.pre = load ptr, ptr %5, align 8, !tbaa !669
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ae
  %.pre84 = phi ptr [ %.pre84.pre, %bb.ae ], [ null, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i ] ; 3 uses
  store ptr %i.eq, ptr %i.dw, align 8, !tbaa !605
  store ptr %i.fk, ptr %i.dy, align 8, !tbaa !601
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eo
  store ptr %i.fl, ptr %i.ea, align 8, !tbaa !602
  %i.fm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr null, ptr %3, align 8, !tbaa !117
  store ptr %i.fm, ptr %0, align 8, !tbaa !108
  %.not.i59 = icmp eq ptr %.pre84, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit
  %i.fn = load ptr, ptr %.pre84, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(40) %.pre84) #25, !inline_history !691
  %.pr79 = load ptr, ptr %3, align 8, !tbaa !117  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not.i60 = icmp eq ptr %.pr79, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit
  %i.fq = load ptr, ptr %.pr79, align 8, !tbaa !15
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(240) %.pr79) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.af:                                            ; preds = %._crit_edge
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63

bb.ag:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ad
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i61 = icmp eq ptr %i.dx, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i62

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i62: ; preds = %bb.ag
  %i.fv = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.dx) #25, !inline_history !619
  br label %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63

_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i62, %bb.ag, %bb.y, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45, %bb.af
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.af ], [ %i.dp, %bb.y ], [ %.pn18, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit45 ], [ %i.fu, %bb.ag ], [ %i.fu, %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i62 ] ; 2 uses
  %i.fy = load ptr, ptr %5, align 8, !tbaa !669   ; 3 uses
  %.not.i64 = icmp eq ptr %i.fy, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit66, label %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i65

_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i65: ; preds = %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !15
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(40) %i.fy) #25, !inline_history !691
  br label %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit66

_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit66: ; preds = %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i65, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63, %bb.q
  %.pn18.pn.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.q ], [ %.pn18.pn.pn, %_ZNSt10unique_ptrIN6duckdb14ResultModifierESt14default_deleteIS1_EED2Ev.exit63 ], [ %.pn18.pn.pn, %_ZNKSt14default_deleteIN6duckdb13OrderModifierEEclEPS1_.exit.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.p, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit66, %bb.o, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit31
  %.pn18.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn18.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb13OrderModifierESt14default_deleteIS1_EED2Ev.exit66 ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit31 ], [ %i.cc, %bb.o ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit37 ], [ %i.cd, %bb.p ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.gc = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i67 = icmp eq ptr %i.gc, null
  br i1 %.not.i67, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit69, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i68

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i68: ; preds = %.body
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !15
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(240) %i.gc) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit69

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit69: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !669    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13OrderModifierESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
end_hunk_9
begin_hunk_10_@_ZN6duckdb14UpdateRelation4BindERNS_6BinderE:bb.a
bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit
  %i.ah = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.j unwind label %bb.r       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.ah)
          to label %bb.l unwind label %bb.r

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13UpdateSetInfoESt14default_deleteIS1_EED2Ev.exit
  store ptr null, ptr %6, align 8, !tbaa !516
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.al = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.m unwind label %bb.s       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %6, align 8, !tbaa !70
  store ptr null, ptr %6, align 8, !tbaa !70
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !70 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !70
  %.not.i.i.i.i.i21 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i21, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.m
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #25, !inline_history !384
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.ar = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i22 = icmp eq ptr %i.ar, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(56) %i.ar) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.av = load ptr, ptr %3, align 8, !tbaa !382
  store ptr null, ptr %3, align 8, !tbaa !382
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !119 ; 3 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !119
  %.not.i.i.i.i.i23 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i23, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ax) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit unwind label %bb.t ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit: ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !41 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %.not4950 = icmp eq ptr %i.bg, %i.bi
  br i1 %.not4950, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit20
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %i.ac, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ae

bb.r:                                             ; preds = %bb.j, %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit28

bb.s:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %6, align 8, !tbaa !70    ; 3 uses
  %.not.i26 = icmp eq ptr %i.bo, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit28, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i27

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i27: ; preds = %bb.s
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(56) %i.bo) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit28

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit28: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i27, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.bn, %bb.s ], [ %i.bn, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ae

bb.t:                                             ; preds = %bb.n, %._crit_edge, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph:                                           ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33
  %.sroa.041.051 = phi ptr [ %i.do, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33 ], [ %i.bg, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit ] ; 2 uses
  %i.bt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.u unwind label %bb.aa      ; 3 uses

bb.u:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bv = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.041.051)
          to label %bb.v unwind label %bb.ab      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 96
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.bv)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 40 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !69 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.ca, %i.cc
  br i1 %.not.i.i, label %bb.x, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.w
  %i.cd = load i64, ptr %7, align 8, !tbaa !70
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !68 ; 10 uses
  %i.cg = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.ch = ptrtoint ptr %i.cf to i64               ; 3 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775800
  br i1 %i.cj, label %bb.y, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.ck = ashr exact i64 %i.ci, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 1152921504606846975)
  %i.co = select i1 %i.cm, i64 1152921504606846975, i64 %i.cn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 3
  %i.cq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #29
          to label %.noexc30 unwind label %.loopexit ; 10 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci
  %i.cs = load i64, ptr %7, align 8, !tbaa !70
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !70
  store ptr null, ptr %7, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.ca
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc30
  %8 = add i64 %i.cg, -8
  %9 = sub i64 %8, %i.ch                          ; 2 uses
  %i.ct = lshr i64 %9, 3
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cq, i64 8
  %i.cv = add i64 %i.cg, -8
  %i.cw = sub i64 %i.cv, %i.ch
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %scevgep65 = getelementptr i8, ptr %scevgep, i64 %i.cx
  %scevgep66 = getelementptr i8, ptr %i.cf, i64 8
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.cx
  %bound0 = icmp ult ptr %i.cq, %scevgep67
  %bound1 = icmp ult ptr %i.cf, %scevgep65
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cu, 4611686018427387900     ; 3 uses
  %i.cy = shl i64 %n.vec, 3                       ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cy  ; 2 uses
  %i.da = getelementptr i8, ptr %i.cf, i64 %i.cy
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.db ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cf, i64 %i.db ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.dc = getelementptr i8, ptr %next.gep68, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep68, align 8, !tbaa !70, !alias.scope !715, !noalias !710
  %wide.load69 = load <2 x i64>, ptr %i.dc, align 8, !tbaa !70, !alias.scope !715, !noalias !710
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !718, !noalias !715
  store <2 x i64> %wide.load69, ptr %i.dd, align 8, !tbaa !70, !alias.scope !718, !noalias !715
  %i.de = getelementptr i8, ptr %next.gep68, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep68, align 8, !tbaa !70, !alias.scope !715, !noalias !710
  store <2 x ptr> splat (ptr null), ptr %i.de, align 8, !tbaa !70, !alias.scope !715, !noalias !710
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !720

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader71

.lr.ph.i.i.i.i.i.i.i.preheader71:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cq, %vector.memcheck ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader71, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader71 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.dg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !713, !noalias !710
  store i64 %i.dg, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !710, !noalias !713
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !713, !noalias !710
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.ca
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !721

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc30
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cq, %.noexc30 ], [ %i.cz, %middle.block ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.z
  store ptr %i.cq, ptr %i.bu, align 8, !tbaa !68
  store ptr %i.dj, ptr %i.bz, align 8, !tbaa !69
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.dk, ptr %i.cb, align 8, !tbaa !43
  %.pr47 = load ptr, ptr %7, align 8, !tbaa !70   ; 3 uses
  %.not.i31 = icmp eq ptr %.pr47, null
  br i1 %.not.i31, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i32

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i32: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dl = load ptr, ptr %.pr47, align 8, !tbaa !15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(56) %.pr47) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.041.051, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.do, %i.bi
  br i1 %.not49, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %.lr.ph
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %bb.v, %bb.u
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !70    ; 3 uses
  %.not.i34 = icmp eq ptr %i.dr, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35: ; preds = %bb.ac
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(56) %i.dr) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35, %bb.ac, %bb.ab
  %.pn13 = phi { ptr, i32 } [ %i.dq, %bb.ab ], [ %lpad.phi, %bb.ac ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ae

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit33, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  invoke void @_ZN6duckdb6Binder4BindERNS_12SQLStatementE(ptr dead_on_unwind writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(472) %2, ptr noundef nonnull align 8 dereferenceable(120) %4)
          to label %bb.ad unwind label %bb.t

bb.ad:                                            ; preds = %._crit_edge
  call void @_ZN6duckdb15UpdateStatementD2Ev(ptr noundef nonnull align 8 dereferenceable(249) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.dv = load ptr, ptr %3, align 8, !tbaa !382   ; 3 uses
  %.not.i37 = icmp eq ptr %i.dv, null
  br i1 %.not.i37, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i: ; preds = %bb.ad
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(208) %i.dv) #25, !inline_history !385
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ad, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.ae:                                            ; preds = %bb.aa, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36, %bb.t, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit28, %.body
  %.pn13.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.bs, %bb.t ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit28 ], [ %.pn13, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit36 ], [ %i.dp, %bb.aa ]
  call void @_ZN6duckdb15UpdateStatementD2Ev(ptr noundef nonnull align 8 dereferenceable(249) %4) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.p
  %.pn13.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn, %bb.ae ], [ %i.bk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.o
  %.pn13.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn13.pn.pn.pn, %bb.af ], [ %i.bj, %bb.o ]
  %i.dz = load ptr, ptr %3, align 8, !tbaa !382   ; 3 uses
  %.not.i38 = icmp eq ptr %i.dz, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i39: ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(208) %i.dz) #25, !inline_history !385
  br label %_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN6duckdb12BaseTableRefESt14default_deleteIS1_EED2Ev.exit40: ; preds = %bb.ag, %_ZNKSt14default_deleteIN6duckdb12BaseTableRefEEclEPS1_.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn13.pn.pn.pn.pn
}

declare void @_ZN6duckdb15UpdateStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(249)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !502    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13UpdateSetInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb18ProjectionRelation12GetQueryNodeEv:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr56) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.au = load ptr, ptr %3, align 8, !tbaa !117
  store ptr null, ptr %3, align 8, !tbaa !117
  %i.av = load ptr, ptr %0, align 8, !tbaa !111   ; 3 uses
  store ptr %i.au, ptr %0, align 8, !tbaa !111
  %.not.i.i.i.i.i26 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i26, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.av) #25, !inline_history !112
  %.pr58 = load ptr, ptr %3, align 8, !tbaa !117  ; 3 uses
  %.not.i32 = icmp eq ptr %.pr58, null
  br i1 %.not.i32, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit31
  %i.az = load ptr, ptr %.pr58, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(240) %.pr58) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit31, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.o

bb.l:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35

bb.n:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i33 = icmp eq ptr %i.bf, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i34

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i34: ; preds = %bb.n
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i34, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %i.be, %bb.n ], [ %i.be, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i34 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bj = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i36 = icmp eq ptr %i.bj, null
  br i1 %.not.i36, label %.body, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i37

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i37: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(240) %i.bj) #25, !inline_history !123
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i37, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35, %bb.l, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.bc, %bb.l ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit35 ], [ %.pn, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.aa

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.bn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bo = invoke noundef nonnull align 8 dereferenceable(240) ptr @_ZN6duckdb9QueryNode4CastINS_10SelectNodeEEERT_v(ptr noundef nonnull align 8 dereferenceable(120) %i.bn)
          to label %bb.q unwind label %bb.r       ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  store i8 1, ptr %i.bp, align 8, !tbaa !124
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 120 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !68 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 128 ; 5 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %i.br
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.q, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.br, %bb.q ] ; 2 uses
  %i.bu = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(56) %i.bu) #25, !inline_history !184
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.by, %i.bt
  br i1 %.not.i.i.i.i.i39, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !69
  br label %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit

_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit: ; preds = %bb.q, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41 ; 2 uses
  %.not63 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not63, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 136 ; 2 uses
  br label %bb.s

._crit_edge66:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE5clearEv.exit
  ret void

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.s:                                             ; preds = %.lr.ph65, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.050.064 = phi ptr [ %i.ca, %.lr.ph65 ], [ %i.dw, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.cf = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.050.064)
          to label %bb.t unwind label %bb.y       ; 2 uses

bb.t:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.cf)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !69 ; 6 uses
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i, label %bb.v, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.u
  %i.cl = load i64, ptr %5, align 8, !tbaa !70
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !70
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cm, ptr %i.bs, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !68 ; 10 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 3 uses
  %i.cp = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.w, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #29
          to label %.noexc42 unwind label %.loopexit ; 10 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  %i.da = load i64, ptr %5, align 8, !tbaa !70
  store i64 %i.da, ptr %i.cz, align 8, !tbaa !70
  store ptr null, ptr %5, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.cj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc42
  %6 = add i64 %i.co, -8
  %7 = sub i64 %6, %i.cp                          ; 2 uses
  %i.db = lshr i64 %7, 3
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cy, i64 8
  %i.dd = add i64 %i.co, -8
  %i.de = sub i64 %i.dd, %i.cp
  %i.df = and i64 %i.de, -8                       ; 2 uses
  %scevgep86 = getelementptr i8, ptr %scevgep, i64 %i.df
  %scevgep87 = getelementptr i8, ptr %i.cn, i64 8
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.df
  %bound0 = icmp ult ptr %i.cy, %scevgep88
  %bound1 = icmp ult ptr %i.cn, %scevgep86
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dc, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cy, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.cn, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dj ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.cn, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.dk = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !70, !alias.scope !760, !noalias !755
  %wide.load90 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !70, !alias.scope !760, !noalias !755
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !763, !noalias !760
  store <2 x i64> %wide.load90, ptr %i.dl, align 8, !tbaa !70, !alias.scope !763, !noalias !760
  %i.dm = getelementptr i8, ptr %next.gep89, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep89, align 8, !tbaa !70, !alias.scope !760, !noalias !755
  store <2 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !70, !alias.scope !760, !noalias !755
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !765

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader92

.lr.ph.i.i.i.i.i.i.i.preheader92:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cy, %vector.memcheck ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader92, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader92 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader92 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !755)
  call void @llvm.experimental.noalias.scope.decl(metadata !758)
  %i.do = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !758, !noalias !755
  store i64 %i.do, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !755, !noalias !758
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !758, !noalias !755
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i40 = icmp eq ptr %i.dp, %i.cj
  br i1 %.not.i.i.i.i.i.i.i40, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !766

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc42
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cy, %.noexc42 ], [ %i.dh, %middle.block ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cn) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.x
  store ptr %i.cy, ptr %i.bq, align 8, !tbaa !68
  store ptr %i.dr, ptr %i.bs, align 8, !tbaa !69
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.ds, ptr %i.cd, align 8, !tbaa !43
  %.pr60 = load ptr, ptr %5, align 8, !tbaa !70   ; 3 uses
  %.not.i43 = icmp eq ptr %.pr60, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.dt = load ptr, ptr %.pr60, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(56) %.pr60) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.050.064, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dw, %i.cc
  br i1 %.not, label %._crit_edge66, label %bb.s

bb.y:                                             ; preds = %bb.t, %bb.s
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit46

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.dy = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i44 = icmp eq ptr %i.dy, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit46, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i45

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i45: ; preds = %bb.z
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(56) %i.dy) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit46: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i45, %bb.z, %bb.y
  %.pn20 = phi { ptr, i32 } [ %i.dx, %bb.y ], [ %lpad.phi, %bb.z ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.r, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit46, %.body, %bb.e
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.ad, %bb.e ], [ %.pn20, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit46 ], [ %i.ce, %bb.r ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !111   ; 3 uses
  %.not.i47 = icmp eq ptr %i.ec, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit49, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i48

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i48: ; preds = %bb.aa
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ec) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit49

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit49: ; preds = %bb.aa, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i48
  resume { ptr, i32 } %.pn20.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ProjectionRelation8GetAliasB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_8RelationELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb18ProjectionRelation7ColumnsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(168) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ProjectionRelation8ToStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb8Relation16RenderWhitespaceB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11, !noalias !767
  %i.c = add i64 %i.b, -4611686018427387892
  %i.d = icmp ult i64 %i.c, 12
  br i1 %i.d, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.76) #27
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.34, i64 noundef 12)
          to label %.noexc25 unwind label %bb.o   ; 6 uses

.noexc25:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
end_hunk_11
begin_hunk_12_@_ZN6duckdb13QueryRelation4BindERNS_6BinderE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::unique_ptr.116", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::unique_ptr.573", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::unique_ptr.548", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::unique_ptr.116", align 8 ; 9 uses
  %10 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 12 uses
  %i.a = tail call noundef zeroext i8 @_ZN6duckdb6Binder14GetBindingModeEv(ptr noundef nonnull align 8 dereferenceable(472) %2)
  tail call void @_ZN6duckdb6Binder14SetBindingModeENS_11BindingModeE(ptr noundef nonnull align 8 dereferenceable(472) %2, i8 noundef zeroext 2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !811
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !811
  tail call void @_ZN6duckdb8Relation4BindERNS_6BinderE(ptr dead_on_unwind writable sret(%"struct.duckdb::BoundStatement") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(472) %2)
  %i.f = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6Binder19GetReplacementScansB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(472) %2)
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.c, %i.e
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0180.0350 = load ptr, ptr %i.h, align 8, !tbaa !284 ; 2 uses
  %.not351 = icmp eq ptr %.sroa.0180.0350, null
  br i1 %.not351, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10unique_ptrINS6_8TableRefESt14default_deleteIS8_ELb1EEENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_SB_EEE5clearEv.exit, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.e:                                             ; preds = %.lr.ph, %bb.al
  %.sroa.0180.0352 = phi ptr [ %.sroa.0180.0350, %.lr.ph ], [ %.sroa.0180.0, %bb.al ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0180.0352, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0180.0352, i64 40 ; 3 uses
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !812
  %.not192 = icmp eq ptr %i.s, null
  br i1 %.not192, label %bb.al, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.u = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %bb.i unwind label %bb.am      ; 15 uses

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 1, ptr %i.v, align 8, !tbaa !233, !noalias !813
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !noalias !813
  store ptr %i.y, ptr %i.x, align 8, !tbaa !236, !noalias !813
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 1, ptr %i.z, align 8, !tbaa !237, !noalias !813
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false), !noalias !813
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !238, !noalias !813
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false), !noalias !813
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !7, !noalias !813
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i64 0, ptr %i.af, align 8, !tbaa !11, !noalias !813
  store i8 0, ptr %i.ae, align 8, !tbaa !14, !noalias !813
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.u, align 8, !tbaa !15, !noalias !813
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store ptr null, ptr %i.ag, align 8, !tbaa !108, !noalias !813
  store ptr %i.u, ptr %5, align 8, !tbaa !239, !alias.scope !813
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.ah = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29
          to label %.noexc unwind label %.body.thread ; 3 uses

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.ah)
          to label %bb.k unwind label %bb.j, !noalias !816

bb.j:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #26, !noalias !816
  br label %.body

bb.k:                                             ; preds = %.noexc
  store ptr %i.ah, ptr %6, align 8, !tbaa !117, !alias.scope !816
  %i.aj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.an      ; 3 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ak = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc52 unwind label %bb.ao  ; 6 uses

.noexc52:                                         ; preds = %bb.l
  store ptr %i.i, ptr %4, align 8, !tbaa !7, !noalias !819
  store i64 0, ptr %i.j, align 8, !tbaa !11, !noalias !819
  store i8 0, ptr %i.i, align 8, !tbaa !14, !noalias !819
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.ak, ptr noundef nonnull %4)
          to label %bb.m unwind label %bb.n, !noalias !819

bb.m:                                             ; preds = %.noexc52
  %i.al = load ptr, ptr %4, align 8, !tbaa !40, !noalias !819 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.i
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.al) #26, !noalias !819
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.n:                                             ; preds = %.noexc52
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %4, align 8, !tbaa !40, !noalias !819 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.ao) #26, !noalias !819
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.ak) #26, !noalias !819
  br label %.body53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 120 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 128 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 136 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.av = ptrtoint ptr %i.ak to i64
  store i64 %i.av, ptr %i.as, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !68 ; 10 uses
  %i.ay = ptrtoint ptr %i.as to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.q, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc55 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit128.loopexit.split-lp

.noexc55:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29
          to label %.noexc56 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit128.loopexit ; 10 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = ptrtoint ptr %i.ak to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.as
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc56
  %11 = add i64 %i.ay, -8
  %12 = sub i64 %11, %i.az                        ; 2 uses
  %i.bl = lshr i64 %12, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check721 = icmp ult i64 %12, 56
  br i1 %min.iters.check721, label %.lr.ph.i.i.i.i.i.i.i.preheader737, label %vector.memcheck712

vector.memcheck712:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep713 = getelementptr i8, ptr %i.bi, i64 8
  %i.bn = add i64 %i.ay, -8
  %i.bo = sub i64 %i.bn, %i.az
  %i.bp = and i64 %i.bo, -8                       ; 2 uses
  %scevgep714 = getelementptr i8, ptr %scevgep713, i64 %i.bp
  %scevgep715 = getelementptr i8, ptr %i.ax, i64 8
  %scevgep716 = getelementptr i8, ptr %scevgep715, i64 %i.bp
  %bound0717 = icmp ult ptr %i.bi, %scevgep716
  %bound1718 = icmp ult ptr %i.ax, %scevgep714
  %found.conflict719 = and i1 %bound0717, %bound1718
  br i1 %found.conflict719, label %.lr.ph.i.i.i.i.i.i.i.preheader737, label %vector.ph722

vector.ph722:                                     ; preds = %vector.memcheck712
  %n.vec724 = and i64 %i.bm, 4611686018427387900  ; 3 uses
  %i.bq = shl i64 %n.vec724, 3                    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 %i.bq
  br label %vector.body725

vector.body725:                                   ; preds = %vector.body725, %vector.ph722
  %index726 = phi i64 [ 0, %vector.ph722 ], [ %index.next731, %vector.body725 ] ; 2 uses
  %i.bt = shl i64 %index726, 3                    ; 2 uses
  %next.gep727 = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %next.gep728 = getelementptr i8, ptr %i.ax, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.bu = getelementptr i8, ptr %next.gep728, i64 16
  %wide.load729 = load <2 x i64>, ptr %next.gep728, align 8, !tbaa !70, !alias.scope !827, !noalias !822
  %wide.load730 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !70, !alias.scope !827, !noalias !822
  %i.bv = getelementptr i8, ptr %next.gep727, i64 16
  store <2 x i64> %wide.load729, ptr %next.gep727, align 8, !tbaa !70, !alias.scope !830, !noalias !827
  store <2 x i64> %wide.load730, ptr %i.bv, align 8, !tbaa !70, !alias.scope !830, !noalias !827
  %i.bw = getelementptr i8, ptr %next.gep728, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep728, align 8, !tbaa !70, !alias.scope !827, !noalias !822
  store <2 x ptr> splat (ptr null), ptr %i.bw, align 8, !tbaa !70, !alias.scope !827, !noalias !822
  %index.next731 = add nuw i64 %index726, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next731, %n.vec724
  br i1 %i.bx, label %middle.block732, label %vector.body725, !llvm.loop !832

middle.block732:                                  ; preds = %vector.body725
  %cmp.n733 = icmp eq i64 %i.bm, %n.vec724
  br i1 %cmp.n733, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader737

.lr.ph.i.i.i.i.i.i.i.preheader737:                ; preds = %vector.memcheck712, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block732
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck712 ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block732 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck712 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block732 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader737, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader737 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader737 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !822)
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.by = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !825, !noalias !822
  store i64 %i.by, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !822, !noalias !825
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !825, !noalias !822
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.as
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !833

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block732, %.noexc56
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc56 ], [ %i.br, %middle.block732 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bi, ptr %i.aq, align 8, !tbaa !68
  store ptr %i.cb, ptr %i.ar, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.cc, ptr %i.at, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.o
  %i.cd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.s unwind label %bb.an

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 144 ; 2 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !119
  store ptr null, ptr %i.p, align 8, !tbaa !119
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !119 ; 3 uses
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.cg) #25, !inline_history !121
  br label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !117   ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !117
  %i.cl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.t unwind label %bb.ap

bb.t:                                             ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 120 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !111 ; 3 uses
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !111
  %.not.i.i.i.i.i58 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i58, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.t
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cn) #25, !inline_history !112
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.cr = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %bb.u unwind label %bb.aq      ; 3 uses

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, i8 0, i64 64, i1 false), !noalias !834
  store i8 1, ptr %i.cs, align 8, !tbaa !837, !noalias !834
  store ptr %i.cr, ptr %7, align 8, !tbaa !847, !alias.scope !834
  %i.ct = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  %i.cv = load ptr, ptr %5, align 8, !tbaa !239
  store ptr null, ptr %5, align 8, !tbaa !239
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !239 ; 3 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !239
  %.not.i.i.i.i.i61 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i61, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #25, !inline_history !246
  br label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.v, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6duckdb9make_uniqINS_11SubqueryRefEJNS_10unique_ptrINS_15SelectStatementESt14default_deleteIS3_ELb1EEERA15_KcEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.548") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 1 dereferenceable(15) @.str.36)
          to label %bb.w unwind label %bb.as

bb.w:                                             ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.da = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %bb.x unwind label %bb.at      ; 15 uses

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 1, ptr %i.db, align 8, !tbaa !233, !noalias !849
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !849
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !236, !noalias !849
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  store i64 1, ptr %i.df, align 8, !tbaa !237, !noalias !849
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false), !noalias !849
  store float 1.000000e+00, ptr %i.dh, align 8, !tbaa !238, !noalias !849
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false), !noalias !849
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 104 ; 2 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !7, !noalias !849
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  store i64 0, ptr %i.dl, align 8, !tbaa !11, !noalias !849
  store i8 0, ptr %i.dk, align 8, !tbaa !14, !noalias !849
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.da, align 8, !tbaa !15, !noalias !849
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 120
  store ptr null, ptr %i.dm, align 8, !tbaa !108, !noalias !849
  store ptr %i.da, ptr %9, align 8, !tbaa !239, !alias.scope !849
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.dn = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29
          to label %.noexc64 unwind label %.body65.thread ; 3 uses

.noexc64:                                         ; preds = %bb.x
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.dn)
          to label %bb.z unwind label %bb.y, !noalias !852

bb.y:                                             ; preds = %.noexc64
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #26, !noalias !852
  br label %.body65

bb.z:                                             ; preds = %.noexc64
  store ptr %i.dn, ptr %10, align 8, !tbaa !117, !alias.scope !852
  %i.dp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aa unwind label %bb.au     ; 3 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dq = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc73 unwind label %bb.av  ; 6 uses

.noexc73:                                         ; preds = %bb.aa
  store ptr %i.l, ptr %3, align 8, !tbaa !7, !noalias !855
  store i64 0, ptr %i.m, align 8, !tbaa !11, !noalias !855
  store i8 0, ptr %i.l, align 8, !tbaa !14, !noalias !855
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.dq, ptr noundef nonnull %3)
          to label %bb.ab unwind label %bb.ac, !noalias !855

bb.ab:                                            ; preds = %.noexc73
  %i.dr = load ptr, ptr %3, align 8, !tbaa !40, !noalias !855 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.l
  br i1 %i.ds, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.dr) #26, !noalias !855
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i72

bb.ac:                                            ; preds = %.noexc73
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %3, align 8, !tbaa !40, !noalias !855 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.l
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i68: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.du) #26, !noalias !855
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i69: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i68
  call void @_ZdlPv(ptr noundef nonnull %i.dq) #26, !noalias !855
  br label %.body74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i72: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 120 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 128 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !69 ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 136 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !43
  %.not.i.i77 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not.i.i77, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i72
  %i.eb = ptrtoint ptr %i.dq to i64
  store i64 %i.eb, ptr %i.dy, align 8, !tbaa !70
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ec, ptr %i.dx, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit98

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i72
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !68 ; 10 uses
  %i.ee = ptrtoint ptr %i.dy to i64               ; 3 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775800
  br i1 %i.eh, label %bb.af, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i78

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc90 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit137.loopexit.split-lp

.noexc90:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i78: ; preds = %bb.ae
  %i.ei = ashr exact i64 %i.eg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i79 = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i.i79, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 1152921504606846975)
  %i.em = select i1 %i.ek, i64 1152921504606846975, i64 %i.el ; 3 uses
  %.not.i.i.i.i80 = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i.i80)
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #29
          to label %.noexc91 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit137.loopexit ; 10 uses

.noexc91:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i78
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  %i.eq = ptrtoint ptr %i.dq to i64
  store i64 %i.eq, ptr %i.ep, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i81 = icmp eq ptr %i.ed, %i.dy
  br i1 %.not10.i.i.i.i.i.i.i81, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i86, label %.lr.ph.i.i.i.i.i.i.i82.preheader

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %.noexc91
  %13 = add i64 %i.ee, -8
  %14 = sub i64 %13, %i.ef                        ; 2 uses
  %i.er = lshr i64 %14, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i82.preheader736, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i82.preheader
  %scevgep = getelementptr i8, ptr %i.eo, i64 8
  %i.et = add i64 %i.ee, -8
  %i.eu = sub i64 %i.et, %i.ef
  %i.ev = and i64 %i.eu, -8                       ; 2 uses
  %scevgep706 = getelementptr i8, ptr %scevgep, i64 %i.ev
  %scevgep707 = getelementptr i8, ptr %i.ed, i64 8
  %scevgep708 = getelementptr i8, ptr %scevgep707, i64 %i.ev
  %bound0 = icmp ult ptr %i.eo, %scevgep708
  %bound1 = icmp ult ptr %i.ed, %scevgep706
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i82.preheader736, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.es, 4611686018427387900     ; 3 uses
  %i.ew = shl i64 %n.vec, 3                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ed, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %next.gep709 = getelementptr i8, ptr %i.ed, i64 %i.ez ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.fa = getelementptr i8, ptr %next.gep709, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep709, align 8, !tbaa !70, !alias.scope !863, !noalias !858
  %wide.load710 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !70, !alias.scope !863, !noalias !858
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !866, !noalias !863
  store <2 x i64> %wide.load710, ptr %i.fb, align 8, !tbaa !70, !alias.scope !866, !noalias !863
  %i.fc = getelementptr i8, ptr %next.gep709, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep709, align 8, !tbaa !70, !alias.scope !863, !noalias !858
  store <2 x ptr> splat (ptr null), ptr %i.fc, align 8, !tbaa !70, !alias.scope !863, !noalias !858
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !868

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i86, label %.lr.ph.i.i.i.i.i.i.i82.preheader736

.lr.ph.i.i.i.i.i.i.i82.preheader736:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i82.preheader, %middle.block
  %.012.i.i.i.i.i.i.i83.ph = phi ptr [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i82.preheader ], [ %i.ex, %middle.block ]
  %.0911.i.i.i.i.i.i.i84.ph = phi ptr [ %i.ed, %vector.memcheck ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i82.preheader ], [ %i.ey, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i.i82:                           ; preds = %.lr.ph.i.i.i.i.i.i.i82.preheader736, %.lr.ph.i.i.i.i.i.i.i82
  %.012.i.i.i.i.i.i.i83 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i82 ], [ %.012.i.i.i.i.i.i.i83.ph, %.lr.ph.i.i.i.i.i.i.i82.preheader736 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i84 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i82 ], [ %.0911.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i82.preheader736 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.fe = load i64, ptr %.0911.i.i.i.i.i.i.i84, align 8, !tbaa !70, !alias.scope !861, !noalias !858
  store i64 %i.fe, ptr %.012.i.i.i.i.i.i.i83, align 8, !tbaa !70, !alias.scope !858, !noalias !861
  store ptr null, ptr %.0911.i.i.i.i.i.i.i84, align 8, !tbaa !70, !alias.scope !861, !noalias !858
  %i.ff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i84, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i83, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i85 = icmp eq ptr %i.ff, %i.dy
  br i1 %.not.i.i.i.i.i.i.i85, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i86, label %.lr.ph.i.i.i.i.i.i.i82, !llvm.loop !869

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i86: ; preds = %.lr.ph.i.i.i.i.i.i.i82, %middle.block, %.noexc91
  %.0.lcssa.i.i.i.i.i.i.i87 = phi ptr [ %i.eo, %.noexc91 ], [ %i.ex, %middle.block ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i82 ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i87, i64 8
  %.not.i23.i.i.i88 = icmp eq ptr %i.ed, null
  br i1 %.not.i23.i.i.i88, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i89, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i86
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i89

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i89: ; preds = %bb.ag, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i86
  store ptr %i.eo, ptr %i.dw, align 8, !tbaa !68
  store ptr %i.fh, ptr %i.dx, align 8, !tbaa !69
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.fi, ptr %i.dz, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit98

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit98: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i89, %bb.ad
  %i.fj = load ptr, ptr %8, align 8, !tbaa !870   ; 4 uses
  store ptr null, ptr %8, align 8, !tbaa !870
  %i.fk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ah unwind label %bb.aw

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit98
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 144 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !119 ; 3 uses
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !119
  %.not.i.i.i.i.i99 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i99, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i100

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i100: ; preds = %bb.ah
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.fm) #25, !inline_history !121
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i.i.i.i.i100, %bb.ah
  %i.fq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ai unwind label %bb.ax

bb.ai:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  %i.fr = load ptr, ptr %10, align 8, !tbaa !117  ; 4 uses
  store ptr null, ptr %10, align 8, !tbaa !117
  %i.fs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.aj unwind label %bb.ay

bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 120 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !111 ; 3 uses
  store ptr %i.fr, ptr %i.fu, align 8, !tbaa !111
  %.not.i.i.i.i.i103 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i.i103, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit108, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i104

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i104: ; preds = %bb.aj
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !15
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fv) #25, !inline_history !112
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit108

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit108: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i.i.i.i.i104, %bb.aj
  %i.fz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEEixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.ak unwind label %bb.ax     ; 2 uses

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit108
  %i.ga = load ptr, ptr %7, align 8, !tbaa !847
  store ptr null, ptr %7, align 8, !tbaa !847
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !847 ; 3 uses
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !847
  %.not.i.i.i.i.i109 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i109, label %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ak
  call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.gb) #25
  call void @_ZdlPv(ptr noundef nonnull %i.gb) #26
  br label %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.ak, %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i.i.i.i.i
  %i.gc = load ptr, ptr %9, align 8, !tbaa !239
  store ptr null, ptr %9, align 8, !tbaa !239
  %i.gd = load ptr, ptr %i.k, align 8, !tbaa !239 ; 3 uses
  store ptr %i.gc, ptr %i.k, align 8, !tbaa !239
  %.not.i.i.i.i.i110 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i110, label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit112, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i111

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i111: ; preds = %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !15
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(128) %i.gd) #25, !inline_history !246
  br label %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit112

_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit112: ; preds = %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i111
  %i.gh = load ptr, ptr %10, align 8, !tbaa !117  ; 3 uses
  %.not.i113 = icmp eq ptr %i.gh, null
  br i1 %.not.i113, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit112
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(240) %i.gh) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEaSEOS4_.exit112, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.gl = load ptr, ptr %9, align 8, !tbaa !239   ; 3 uses
  %.not.i114 = icmp eq ptr %i.gl, null
  br i1 %.not.i114, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #25, !inline_history !286
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.gp = load ptr, ptr %8, align 8, !tbaa !870   ; 3 uses
  %.not.i115 = icmp eq ptr %i.gp, null
  br i1 %.not.i115, label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb11SubqueryRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11SubqueryRefEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(112) %i.gp) #25, !inline_history !872
  br label %_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11SubqueryRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb11SubqueryRefEEclEPS1_.exit.i
end_hunk_12
begin_hunk_13_@_ZN6duckdb13SetOpRelationC2ENS_10shared_ptrINS_8RelationELb1EEES3_NS_16SetOperationTypeEb:._crit_edge.i.i
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit23

_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit23: ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i21, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit23
  %i.by = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.aj unwind label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ai

bb.z:                                             ; preds = %bb.f, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.i, %bb.h, %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn13 = phi { ptr, i32 } [ %i.ca, %bb.aa ], [ %i.bz, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread: ; preds = %bb.w
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y, %bb.x
  %.0 = phi i1 [ false, %bb.y ], [ true, %bb.x ]  ; 2 uses
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cd = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ad, label %bb.ah

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn1532 = phi { ptr, i32 } [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.thread ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  call void @__cxa_free_exception(ptr %i.by) #25
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit23
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  ret void

bb.ag:                                            ; preds = %bb.ae
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.ad, %bb.ag, %bb.ab
  %.pn15.pn = phi { ptr, i32 } [ %.pn1532, %bb.ad ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %i.cg, %bb.ag ], [ %.pn13, %bb.ab ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ]
  call void @_ZNSt6vectorIN6duckdb16ColumnDefinitionESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #25
  call void @_ZN6duckdb10shared_ptrINS_8RelationELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ab) #25
  call void @_ZN6duckdb10shared_ptrINS_8RelationELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.x) #25
  call void @_ZN6duckdb8RelationD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.ah ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ]
  resume { ptr, i32 } %.pn15.pn.pn

bb.aj:                                            ; preds = %bb.y
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13SetOpRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(169) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.794", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::unique_ptr.30", align 8 ; 9 uses
  %4 = alloca %"class.duckdb::unique_ptr.30", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #29, !noalias !1137 ; 3 uses
  invoke void @_ZN6duckdb16SetOperationNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.a)
          to label %_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1137

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit62, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn11, %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit62 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1137
  br label %common.resume

_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !1140, !alias.scope !1137
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !1136, !range !274, !noundef !275
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.j       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.g = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %bb.e unwind label %bb.k       ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 3, ptr %i.h, align 8, !tbaa !590, !noalias !1142
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb16DistinctModifierE, i64 16), ptr %i.g, align 8, !tbaa !15, !noalias !1142
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false), !noalias !1142
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !601  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !602
  %.not.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.g to i64
  store i64 %i.o, ptr %i.l, align 8, !tbaa !603
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.k, align 8, !tbaa !601
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !605  ; 10 uses
  %i.r = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775800
  br i1 %i.u, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc unwind label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit20

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.v = ashr exact i64 %i.t, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i.i, %i.v ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  %i.y = call i64 @llvm.umin.i64(i64 %i.w, i64 1152921504606846975)
  %i.z = select i1 %i.x, i64 1152921504606846975, i64 %i.y ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #29
          to label %.noexc13 unwind label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit20 ; 10 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.t
  %i.ad = ptrtoint ptr %i.g to i64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !603
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc13
  %5 = add i64 %i.r, -8
  %6 = sub i64 %5, %i.s                           ; 2 uses
  %i.ae = lshr i64 %6, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader145, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ag = add i64 %i.r, -8
  %i.ah = sub i64 %i.ag, %i.s
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.aj
  %scevgep94 = getelementptr i8, ptr %i.q, i64 %i.aj
  %bound0 = icmp ult ptr %i.ab, %scevgep94
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.q, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.an ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.q, i64 %i.an ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.ao = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !tbaa !603, !alias.scope !1150, !noalias !1145
  %wide.load96 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !603, !alias.scope !1150, !noalias !1145
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !603, !alias.scope !1153, !noalias !1150
  store <2 x i64> %wide.load96, ptr %i.ap, align 8, !tbaa !603, !alias.scope !1153, !noalias !1150
  %i.aq = getelementptr i8, ptr %next.gep95, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep95, align 8, !tbaa !603, !alias.scope !1150, !noalias !1145
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !603, !alias.scope !1150, !noalias !1145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !1155

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader145

.lr.ph.i.i.i.i.i.i.i.preheader145:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader145, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader145 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader145 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.as = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !603, !alias.scope !1148, !noalias !1145
  store i64 %i.as, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !603, !alias.scope !1145, !noalias !1148
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !603, !alias.scope !1148, !noalias !1145
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1156

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.noexc13 ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.q) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !605
  store ptr %i.av, ptr %i.k, align 8, !tbaa !601
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.z
  store ptr %i.aw, ptr %i.m, align 8, !tbaa !602
  br label %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit

bb.j:                                             ; preds = %bb.x, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit52, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit, %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.k:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit20: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.g) #25, !inline_history !619
  br label %bb.ac

_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %_ZN6duckdb9make_uniqINS_16SetOperationNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.j       ; 3 uses

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bg = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8RelationELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf)
          to label %bb.m unwind label %bb.y       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.30") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %i.bg)
          to label %bb.n unwind label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 136 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1157 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 144 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1160
  %.not.i.i21 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i21, label %bb.o, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.n
  %i.bo = load i64, ptr %3, align 8, !tbaa !111
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !111
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !1157
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !1161 ; 10 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.p, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc31 unwind label %bb.z

.noexc31:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i22 = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i22, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i23 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i23)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #29
          to label %.noexc32 unwind label %bb.z   ; 10 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = load i64, ptr %3, align 8, !tbaa !111
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !111
  store ptr null, ptr %3, align 8, !tbaa !111
  %.not10.i.i.i.i.i.i.i24 = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i24, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i25.preheader

.lr.ph.i.i.i.i.i.i.i25.preheader:                 ; preds = %.noexc32
  %7 = add i64 %i.br, -8
  %8 = sub i64 %7, %i.bs                          ; 2 uses
  %i.ce = lshr i64 %8, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %8, 152
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.i.i25.preheader143, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph.i.i.i.i.i.i.i25.preheader
  %i.cg = add i64 %i.br, -8
  %i.ch = sub i64 %i.cg, %i.bs
  %i.ci = and i64 %i.ch, -8
  %i.cj = add i64 %i.ci, 8                        ; 2 uses
  %scevgep99 = getelementptr i8, ptr %i.cb, i64 %i.cj
  %scevgep100 = getelementptr i8, ptr %i.bq, i64 %i.cj
  %bound0101 = icmp ult ptr %i.cb, %scevgep100
  %bound1102 = icmp ult ptr %i.bq, %scevgep99
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph.i.i.i.i.i.i.i25.preheader143, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck98
  %n.vec108 = and i64 %i.cf, 4611686018427387900  ; 3 uses
  %i.ck = shl i64 %n.vec108, 3                    ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.ck
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph106
  %index110 = phi i64 [ 0, %vector.ph106 ], [ %index.next115, %vector.body109 ] ; 2 uses
  %i.cn = shl i64 %index110, 3                    ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.cb, i64 %i.cn ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.bq, i64 %i.cn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.co = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load113 = load <2 x i64>, ptr %next.gep112, align 8, !tbaa !111, !alias.scope !1167, !noalias !1162
  %wide.load114 = load <2 x i64>, ptr %i.co, align 8, !tbaa !111, !alias.scope !1167, !noalias !1162
  %i.cp = getelementptr i8, ptr %next.gep111, i64 16
  store <2 x i64> %wide.load113, ptr %next.gep111, align 8, !tbaa !111, !alias.scope !1170, !noalias !1167
  store <2 x i64> %wide.load114, ptr %i.cp, align 8, !tbaa !111, !alias.scope !1170, !noalias !1167
  %i.cq = getelementptr i8, ptr %next.gep112, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep112, align 8, !tbaa !111, !alias.scope !1167, !noalias !1162
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !tbaa !111, !alias.scope !1167, !noalias !1162
  %index.next115 = add nuw i64 %index110, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next115, %n.vec108
  br i1 %i.cr, label %middle.block116, label %vector.body109, !llvm.loop !1172

middle.block116:                                  ; preds = %vector.body109
  %cmp.n117 = icmp eq i64 %i.cf, %n.vec108
  br i1 %cmp.n117, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i25.preheader143

.lr.ph.i.i.i.i.i.i.i25.preheader143:              ; preds = %vector.memcheck98, %.lr.ph.i.i.i.i.i.i.i25.preheader, %middle.block116
  %.012.i.i.i.i.i.i.i26.ph = phi ptr [ %i.cb, %vector.memcheck98 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i25.preheader ], [ %i.cl, %middle.block116 ]
  %.0911.i.i.i.i.i.i.i27.ph = phi ptr [ %i.bq, %vector.memcheck98 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i25.preheader ], [ %i.cm, %middle.block116 ]
  br label %.lr.ph.i.i.i.i.i.i.i25

.lr.ph.i.i.i.i.i.i.i25:                           ; preds = %.lr.ph.i.i.i.i.i.i.i25.preheader143, %.lr.ph.i.i.i.i.i.i.i25
  %.012.i.i.i.i.i.i.i26 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i25 ], [ %.012.i.i.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i.i.i25.preheader143 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i27 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i25 ], [ %.0911.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i25.preheader143 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i27, align 8, !tbaa !111, !alias.scope !1165, !noalias !1162
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i26, align 8, !tbaa !111, !alias.scope !1162, !noalias !1165
  store ptr null, ptr %.0911.i.i.i.i.i.i.i27, align 8, !tbaa !111, !alias.scope !1165, !noalias !1162
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i27, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i26, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.ct, %i.bl
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i25, !llvm.loop !1173

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i25, %middle.block116, %.noexc32
  %.0.lcssa.i.i.i.i.i.i.i29 = phi ptr [ %i.cb, %.noexc32 ], [ %i.cl, %middle.block116 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i25 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i29, i64 8
  %.not.i23.i.i.i30 = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i30, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.cb, ptr %i.be, align 8, !tbaa !1161
  store ptr %i.cv, ptr %i.bk, align 8, !tbaa !1157
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cw, ptr %i.bm, align 8, !tbaa !1160
  %.pr = load ptr, ptr %3, align 8, !tbaa !111    ; 3 uses
  %.not.i33 = icmp eq ptr %.pr, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cx = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.da = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.r unwind label %bb.j       ; 3 uses

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dd = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8RelationELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc)
          to label %bb.s unwind label %bb.aa      ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  invoke void %i.dg(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.30") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %i.dd)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 136 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1157 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 144 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1160
  %.not.i.i34 = icmp eq ptr %i.di, %i.dk
  br i1 %.not.i.i34, label %bb.u, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49.thread: ; preds = %bb.t
  %i.dl = load i64, ptr %4, align 8, !tbaa !111
  store i64 %i.dl, ptr %i.di, align 8, !tbaa !111
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !1157
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit52

bb.u:                                             ; preds = %bb.t
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !1161 ; 10 uses
  %i.do = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.v, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i35

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc47 unwind label %bb.ab

.noexc47:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i35: ; preds = %bb.u
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i36 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i36, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i.i37 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i37)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #29
          to label %.noexc48 unwind label %bb.ab  ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  %i.ea = load i64, ptr %4, align 8, !tbaa !111
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !111
  store ptr null, ptr %4, align 8, !tbaa !111
  %.not10.i.i.i.i.i.i.i38 = icmp eq ptr %i.dn, %i.di
  br i1 %.not10.i.i.i.i.i.i.i38, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i43, label %.lr.ph.i.i.i.i.i.i.i39.preheader

.lr.ph.i.i.i.i.i.i.i39.preheader:                 ; preds = %.noexc48
  %9 = add i64 %i.do, -8
  %10 = sub i64 %9, %i.dp                         ; 2 uses
  %i.eb = lshr i64 %10, 3
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %10, 152
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.i.i.i.i39.preheader142, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph.i.i.i.i.i.i.i39.preheader
  %i.ed = add i64 %i.do, -8
  %i.ee = sub i64 %i.ed, %i.dp
  %i.ef = and i64 %i.ee, -8
  %i.eg = add i64 %i.ef, 8                        ; 2 uses
  %scevgep121 = getelementptr i8, ptr %i.dy, i64 %i.eg
  %scevgep122 = getelementptr i8, ptr %i.dn, i64 %i.eg
  %bound0123 = icmp ult ptr %i.dy, %scevgep122
  %bound1124 = icmp ult ptr %i.dn, %scevgep121
  %found.conflict125 = and i1 %bound0123, %bound1124
  br i1 %found.conflict125, label %.lr.ph.i.i.i.i.i.i.i39.preheader142, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck120
  %n.vec130 = and i64 %i.ec, 4611686018427387900  ; 3 uses
  %i.eh = shl i64 %n.vec130, 3                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dy, i64 %i.eh  ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dn, i64 %i.eh
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph128
  %index132 = phi i64 [ 0, %vector.ph128 ], [ %index.next137, %vector.body131 ] ; 2 uses
  %i.ek = shl i64 %index132, 3                    ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.dy, i64 %i.ek ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.dn, i64 %i.ek ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.el = getelementptr i8, ptr %next.gep134, i64 16
  %wide.load135 = load <2 x i64>, ptr %next.gep134, align 8, !tbaa !111, !alias.scope !1179, !noalias !1174
  %wide.load136 = load <2 x i64>, ptr %i.el, align 8, !tbaa !111, !alias.scope !1179, !noalias !1174
  %i.em = getelementptr i8, ptr %next.gep133, i64 16
  store <2 x i64> %wide.load135, ptr %next.gep133, align 8, !tbaa !111, !alias.scope !1182, !noalias !1179
  store <2 x i64> %wide.load136, ptr %i.em, align 8, !tbaa !111, !alias.scope !1182, !noalias !1179
  %i.en = getelementptr i8, ptr %next.gep134, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep134, align 8, !tbaa !111, !alias.scope !1179, !noalias !1174
  store <2 x ptr> splat (ptr null), ptr %i.en, align 8, !tbaa !111, !alias.scope !1179, !noalias !1174
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next137, %n.vec130
  br i1 %i.eo, label %middle.block138, label %vector.body131, !llvm.loop !1184

middle.block138:                                  ; preds = %vector.body131
  %cmp.n139 = icmp eq i64 %i.ec, %n.vec130
  br i1 %cmp.n139, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i43, label %.lr.ph.i.i.i.i.i.i.i39.preheader142

.lr.ph.i.i.i.i.i.i.i39.preheader142:              ; preds = %vector.memcheck120, %.lr.ph.i.i.i.i.i.i.i39.preheader, %middle.block138
  %.012.i.i.i.i.i.i.i40.ph = phi ptr [ %i.dy, %vector.memcheck120 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.ei, %middle.block138 ]
  %.0911.i.i.i.i.i.i.i41.ph = phi ptr [ %i.dn, %vector.memcheck120 ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i39.preheader ], [ %i.ej, %middle.block138 ]
  br label %.lr.ph.i.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i.i39:                           ; preds = %.lr.ph.i.i.i.i.i.i.i39.preheader142, %.lr.ph.i.i.i.i.i.i.i39
  %.012.i.i.i.i.i.i.i40 = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.012.i.i.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i.i.i39.preheader142 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i41 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i.i39 ], [ %.0911.i.i.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i.i.i39.preheader142 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  %i.ep = load i64, ptr %.0911.i.i.i.i.i.i.i41, align 8, !tbaa !111, !alias.scope !1177, !noalias !1174
  store i64 %i.ep, ptr %.012.i.i.i.i.i.i.i40, align 8, !tbaa !111, !alias.scope !1174, !noalias !1177
  store ptr null, ptr %.0911.i.i.i.i.i.i.i41, align 8, !tbaa !111, !alias.scope !1177, !noalias !1174
  %i.eq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i41, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i40, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i42 = icmp eq ptr %i.eq, %i.di
  br i1 %.not.i.i.i.i.i.i.i42, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i43, label %.lr.ph.i.i.i.i.i.i.i39, !llvm.loop !1185

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i43: ; preds = %.lr.ph.i.i.i.i.i.i.i39, %middle.block138, %.noexc48
  %.0.lcssa.i.i.i.i.i.i.i44 = phi ptr [ %i.dy, %.noexc48 ], [ %i.ei, %middle.block138 ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i39 ]
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i44, i64 8
  %.not.i23.i.i.i45 = icmp eq ptr %i.dn, null
  br i1 %.not.i23.i.i.i45, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i43
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49

_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i43, %bb.w
  store ptr %i.dy, ptr %i.db, align 8, !tbaa !1161
  store ptr %i.es, ptr %i.dh, align 8, !tbaa !1157
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.et, ptr %i.dj, align 8, !tbaa !1160
  %.pr69 = load ptr, ptr %4, align 8, !tbaa !111  ; 3 uses
  %.not.i50 = icmp eq ptr %.pr69, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit52, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i51

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i51: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49
  %i.eu = load ptr, ptr %.pr69, align 8, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr69) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit52: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit49, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ey = load i8, ptr %i.ex, align 8, !tbaa !1133
  %i.ez = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.x unwind label %bb.j

bb.x:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit52
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 120
  store i8 %i.ey, ptr %i.fa, align 8, !tbaa !1186
  %i.fb = load i8, ptr %i.c, align 8, !tbaa !1136, !range !274, !noundef !275
  %i.fc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit unwind label %bb.j

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 121
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !1192
  %i.fe = load ptr, ptr %2, align 8, !tbaa !1140
  store ptr %i.fe, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.y:                                             ; preds = %bb.m, %bb.l
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit56

bb.z:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %.not.i54 = icmp eq ptr %i.fh, null
  br i1 %.not.i54, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit56, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i55

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i55: ; preds = %bb.z
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fh) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit56

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit56: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i55, %bb.z, %bb.y
  %.pn7 = phi { ptr, i32 } [ %i.ff, %bb.y ], [ %i.fg, %bb.z ], [ %i.fg, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ac

bb.aa:                                            ; preds = %bb.s, %bb.r
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit59

bb.ab:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_9QueryNodeESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i35, %bb.v
  %i.fm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i57 = icmp eq ptr %i.fn, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit59, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i58

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i58: ; preds = %bb.ab
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !15
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.fn) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit59

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit59: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i58, %bb.ab, %bb.aa
  %.pn9 = phi { ptr, i32 } [ %i.fl, %bb.aa ], [ %i.fm, %bb.ab ], [ %i.fm, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i58 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.k, %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit20, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit59, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit56, %bb.j
  %.pn11 = phi { ptr, i32 } [ %i.ax, %bb.j ], [ %.pn9, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit59 ], [ %.pn7, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit56 ], [ %i.az, %_ZNSt10unique_ptrIN6duckdb16DistinctModifierESt14default_deleteIS1_EED2Ev.exit20 ], [ %i.ay, %bb.k ]
  %i.fr = load ptr, ptr %2, align 8, !tbaa !1140  ; 3 uses
  %.not.i60 = icmp eq ptr %i.fr, null
  br i1 %.not.i60, label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit62, label %_ZNKSt14default_deleteIN6duckdb16SetOperationNodeEEclEPS1_.exit.i61

_ZNKSt14default_deleteIN6duckdb16SetOperationNodeEEclEPS1_.exit.i61: ; preds = %bb.ac
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(152) %i.fr) #25, !inline_history !1193
  br label %_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit62

_ZNSt10unique_ptrIN6duckdb16SetOperationNodeESt14default_deleteIS1_EED2Ev.exit62: ; preds = %bb.ac, %_ZNKSt14default_deleteIN6duckdb16SetOperationNodeEEclEPS1_.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1140   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16SetOperationNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.80, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

end_hunk_13
begin_hunk_14_@_ZN6duckdb21TableFunctionRelationC2ERKNS_10shared_ptrINS_22RelationContextWrapperELb1EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_5ValueELb1ESaISD_EEESt13unordered_mapISB_SD_NS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSB_SD_EEENS1_INS_8RelationELb1EEEb:._crit_edge.i.i
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.ba, ptr %i.an, align 8, !tbaa !935
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !1130
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !1130
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bf = phi ptr [ %i.ba, %bb.f ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !882
  %i.bi = urem i64 %i.bh, %i.ar
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  store ptr %i.as, ptr %i.bj, align 8, !tbaa !881
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit: ; preds = %bb.g, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bk, align 8, !tbaa !1131
  store i64 1, ptr %i.aq, align 8, !tbaa !936
  store ptr null, ptr %i.bc, align 8, !tbaa !1130
  store ptr %i.bc, ptr %4, align 8, !tbaa !935
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr null, ptr %i.bn, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bp = load <2 x ptr>, ptr %5, align 8, !tbaa !20
  store ptr null, ptr %i.bo, align 8, !tbaa !17
  store <2 x ptr> %i.bp, ptr %i.bm, align 8, !tbaa !20
  store ptr null, ptr %5, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i8 %i.a, ptr %i.bq, align 8, !tbaa !1073
  br i1 %6, label %bb.i, label %_ZN6duckdb21TableFunctionRelation17InitializeColumnsEv.exit

bb.i:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(257) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_ZN6duckdb21TableFunctionRelation17InitializeColumnsEv.exit unwind label %bb.j

_ZN6duckdb21TableFunctionRelation17InitializeColumnsEv.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEEC2EOSE_.exit, %bb.i
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_8RelationELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bm) #25
  call void @_ZNSt6vectorIN6duckdb16ColumnDefinitionESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bl) #25
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueENS6_33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.an) #25
  call void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #25
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !40  ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.w
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.bs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @_ZN6duckdb8RelationD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #25
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn7 = phi { ptr, i32 } [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21TableFunctionRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !1203 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1203

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1203
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !1203
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !1206
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !1206
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !1206
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !1206

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1206 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !1206
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1206 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !1206
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1206
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1214, !noalias !1209
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !1214, !noalias !1209
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1217, !noalias !1214
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !1217, !noalias !1214
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1214, !noalias !1209
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !1214, !noalias !1209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1212, !noalias !1209
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1209, !noalias !1212
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1212, !noalias !1209
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1220

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(257) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21TableFunctionRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(257) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %4 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"class.duckdb::vector", align 8    ; 22 uses
  %7 = alloca %"class.duckdb::unique_ptr.824", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::unique_ptr.30", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::unique_ptr.836", align 8 ; 8 uses
  %10 = alloca %"class.duckdb::unique_ptr.854", align 8 ; 9 uses
  %11 = alloca %"class.duckdb::unique_ptr.863", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.c = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29
          to label %.noexc unwind label %bb.n     ; 4 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb18SubqueryExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(81) %i.c)
          to label %bb.d unwind label %bb.c, !noalias !1221

bb.c:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26, !noalias !1221
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.c, ptr %7, align 8, !tbaa !1224, !alias.scope !1221
  %i.e = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %bb.e unwind label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51.thread ; 16 uses

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 1, ptr %i.f, align 8, !tbaa !233, !noalias !1226
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !1226
  store ptr %i.i, ptr %i.h, align 8, !tbaa !236, !noalias !1226
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 1, ptr %i.j, align 8, !tbaa !237, !noalias !1226
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !1226
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !238, !noalias !1226
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !1226
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !7, !noalias !1226
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 0, ptr %i.p, align 8, !tbaa !11, !noalias !1226
  store i8 0, ptr %i.o, align 8, !tbaa !14, !noalias !1226
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb15SelectStatementE, i64 16), ptr %i.e, align 8, !tbaa !15, !noalias !1226
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store ptr null, ptr %i.q, align 8, !tbaa !108, !noalias !1226
  %i.r = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit45

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !239  ; 3 uses
  store ptr %i.e, ptr %i.s, align 8, !tbaa !239
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #25, !inline_history !246
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.x = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_8RelationELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.30") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %i.x)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120 ; 2 uses
  %i.af = load ptr, ptr %8, align 8, !tbaa !111
  store ptr null, ptr %8, align 8, !tbaa !111
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !111 ; 3 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !111
  %.not.i.i.i.i.i37 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i37, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.ag) #25, !inline_history !112
  %.pr = load ptr, ptr %8, align 8, !tbaa !111    ; 3 uses
  %.not.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ak = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.pr) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.an = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SubqueryExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i8 1, ptr %i.ao, align 8, !tbaa !1229
  %i.ap = load ptr, ptr %7, align 8, !tbaa !1224  ; 5 uses
  store ptr null, ptr %7, align 8, !tbaa !1224
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not.i.i, label %bb.l, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %bb.k
  %i.au = ptrtoint ptr %i.ap to i64
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %6, align 8, !tbaa !68    ; 10 uses
  %i.ax = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = icmp eq i64 %i.az, 9223372036854775800
  br i1 %i.ba, label %bb.m, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc39 unwind label %bb.r

.noexc39:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.bb = ashr exact i64 %i.az, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.bc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bb ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.bb
  %i.be = call i64 @llvm.umin.i64(i64 %i.bc, i64 1152921504606846975)
  %i.bf = select i1 %i.bd, i64 1152921504606846975, i64 %i.be ; 4 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #29
          to label %.noexc40 unwind label %bb.r   ; 12 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  %i.bj = ptrtoint ptr %i.ap to i64
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.ar
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc40
  %12 = add i64 %i.ax, -8
  %13 = sub i64 %12, %i.ay                        ; 2 uses
  %i.bk = lshr i64 %13, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader387, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bm = add i64 %i.ax, -8
  %i.bn = sub i64 %i.bm, %i.ay
  %i.bo = and i64 %i.bn, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.bp
  %scevgep316 = getelementptr i8, ptr %i.aw, i64 %i.bp
  %bound0 = icmp ult ptr %i.bh, %scevgep316
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader387, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.aw, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bt ; 2 uses
  %next.gep317 = getelementptr i8, ptr %i.aw, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.bu = getelementptr i8, ptr %next.gep317, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep317, align 8, !tbaa !70, !alias.scope !1241, !noalias !1236
  %wide.load318 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !70, !alias.scope !1241, !noalias !1236
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1244, !noalias !1241
  store <2 x i64> %wide.load318, ptr %i.bv, align 8, !tbaa !70, !alias.scope !1244, !noalias !1241
  %i.bw = getelementptr i8, ptr %next.gep317, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep317, align 8, !tbaa !70, !alias.scope !1241, !noalias !1236
  store <2 x ptr> splat (ptr null), ptr %i.bw, align 8, !tbaa !70, !alias.scope !1241, !noalias !1236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader387

.lr.ph.i.i.i.i.i.i.i.preheader387:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader387, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader387 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader387 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.by = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1239, !noalias !1236
  store i64 %i.by, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1236, !noalias !1239
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1239, !noalias !1236
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1247

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc40
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bh, %.noexc40 ], [ %i.br, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread277, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread277: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bh, ptr %6, align 8, !tbaa !68
  store ptr %i.cb, ptr %i.aq, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cc, ptr %i.as, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #26
  %.pre.pre = load ptr, ptr %7, align 8, !tbaa !1224 ; 3 uses
  store ptr %i.bh, ptr %6, align 8, !tbaa !68
  store ptr %i.cb, ptr %i.aq, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.cd, ptr %i.as, align 8, !tbaa !43
  %.not.i42 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ce = load ptr, ptr %.pre.pre, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(81) %.pre.pre) #25, !inline_history !1248
  br label %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread277, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.s

bb.n:                                             ; preds = %bb.b
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51.thread: ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i53

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit45: ; preds = %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(128) %i.e) #25, !inline_history !286
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51

bb.o:                                             ; preds = %bb.g, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit48

bb.p:                                             ; preds = %bb.i, %bb.h
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i46 = icmp eq ptr %i.cp, null
  br i1 %.not.i46, label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit48, label %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i47

_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i47: ; preds = %bb.p
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.cp) #25, !inline_history !113
  br label %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit48

_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit48: ; preds = %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i47, %bb.p, %bb.o
  %.pn21 = phi { ptr, i32 } [ %i.cn, %bb.o ], [ %i.co, %bb.p ], [ %i.co, %_ZNKSt14default_deleteIN6duckdb9QueryNodeEEclEPS1_.exit.i47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51

bb.r:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i49 = icmp eq ptr %i.ap, null
  br i1 %.not.i49, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50: ; preds = %bb.r
  %i.cv = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(56) %i.ap) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50, %bb.r, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit45, %bb.q, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit48
  %.pn23.ph = phi { ptr, i32 } [ %i.cu, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i50 ], [ %i.cu, %bb.r ], [ %i.cj, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit45 ], [ %.pn21, %_ZNSt10unique_ptrIN6duckdb9QueryNodeESt14default_deleteIS1_EED2Ev.exit48 ], [ %i.ct, %bb.q ] ; 2 uses
  %.pr181 = load ptr, ptr %7, align 8, !tbaa !1224 ; 2 uses
  %.not.i52 = icmp eq ptr %.pr181, null
  br i1 %.not.i52, label %.body, label %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i53: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51.thread, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51
  %.pn23184 = phi { ptr, i32 } [ %i.ci, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51.thread ], [ %.pn23.ph, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51 ]
  %i.cy = phi ptr [ %i.c, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51.thread ], [ %.pr181, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51 ] ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(81) %i.cy) #25, !inline_history !1248
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i53, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51, %bb.n, %bb.c
  %.pn23.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.ch, %bb.n ], [ %.pn23.ph, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit51 ], [ %.pn23184, %_ZNKSt14default_deleteIN6duckdb18SubqueryExpressionEEclEPS1_.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body56

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb18SubqueryExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1107 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1107 ; 2 uses
  %.not192212 = icmp eq ptr %i.dd, %i.df
  br i1 %.not192212, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0161.0214 = load ptr, ptr %i.di, align 8, !tbaa !284 ; 2 uses
  %.not193215 = icmp eq ptr %.sroa.0161.0214, null
  br i1 %.not193215, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.af

bb.t:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0171.0213 = phi ptr [ %i.dd, %.lr.ph ], [ %i.ey, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.dl = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc55 unwind label %bb.ad  ; 6 uses

.noexc55:                                         ; preds = %bb.t
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0171.0213)
          to label %bb.u unwind label %bb.v, !noalias !1249

bb.u:                                             ; preds = %.noexc55
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.dl, ptr noundef nonnull %5)
          to label %bb.y unwind label %bb.w, !noalias !1249

bb.v:                                             ; preds = %.noexc55
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25, !noalias !1249
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.w ], [ %i.dm, %bb.v ]
  call void @_ZdlPv(ptr noundef nonnull %i.dl) #26, !noalias !1249
  br label %.body56

bb.y:                                             ; preds = %bb.u
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25, !noalias !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !69 ; 6 uses
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !43
  %.not.i.i58 = icmp eq ptr %i.do, %i.dp
  br i1 %.not.i.i58, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = ptrtoint ptr %i.dl to i64
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dr, ptr %i.dg, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.ds = load ptr, ptr %6, align 8, !tbaa !68    ; 10 uses
  %i.dt = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.du = ptrtoint ptr %i.ds to i64               ; 3 uses
  %i.dv = sub i64 %i.dt, %i.du                    ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775800
  br i1 %i.dw, label %bb.ab, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i59

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc71 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit.split-lp

.noexc71:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i59: ; preds = %bb.aa
  %i.dx = ashr exact i64 %i.dv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i60, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 1152921504606846975)
  %i.eb = select i1 %i.dz, i64 1152921504606846975, i64 %i.ea ; 3 uses
  %.not.i.i.i.i61 = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i61)
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #29
          to label %.noexc72 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit ; 10 uses

.noexc72:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i59
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dv
  %i.ef = ptrtoint ptr %i.dl to i64
  store i64 %i.ef, ptr %i.ee, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i62 = icmp eq ptr %i.ds, %i.do
  br i1 %.not10.i.i.i.i.i.i.i62, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i67, label %.lr.ph.i.i.i.i.i.i.i63.preheader

.lr.ph.i.i.i.i.i.i.i63.preheader:                 ; preds = %.noexc72
  %14 = add i64 %i.dt, -8
  %15 = sub i64 %14, %i.du                        ; 2 uses
  %i.eg = lshr i64 %15, 3
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check329 = icmp ult i64 %15, 56
  br i1 %min.iters.check329, label %.lr.ph.i.i.i.i.i.i.i63.preheader380, label %vector.memcheck320

vector.memcheck320:                               ; preds = %.lr.ph.i.i.i.i.i.i.i63.preheader
  %scevgep321 = getelementptr i8, ptr %i.ed, i64 8
  %i.ei = add i64 %i.dt, -8
  %i.ej = sub i64 %i.ei, %i.du
  %i.ek = and i64 %i.ej, -8                       ; 2 uses
  %scevgep322 = getelementptr i8, ptr %scevgep321, i64 %i.ek
  %scevgep323 = getelementptr i8, ptr %i.ds, i64 8
  %scevgep324 = getelementptr i8, ptr %scevgep323, i64 %i.ek
  %bound0325 = icmp ult ptr %i.ed, %scevgep324
  %bound1326 = icmp ult ptr %i.ds, %scevgep322
  %found.conflict327 = and i1 %bound0325, %bound1326
  br i1 %found.conflict327, label %.lr.ph.i.i.i.i.i.i.i63.preheader380, label %vector.ph330

vector.ph330:                                     ; preds = %vector.memcheck320
  %n.vec332 = and i64 %i.eh, 4611686018427387900  ; 3 uses
  %i.el = shl i64 %n.vec332, 3                    ; 2 uses
  %i.em = getelementptr i8, ptr %i.ed, i64 %i.el  ; 2 uses
  %i.en = getelementptr i8, ptr %i.ds, i64 %i.el
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph330
  %index334 = phi i64 [ 0, %vector.ph330 ], [ %index.next339, %vector.body333 ] ; 2 uses
  %i.eo = shl i64 %index334, 3                    ; 2 uses
  %next.gep335 = getelementptr i8, ptr %i.ed, i64 %i.eo ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.ds, i64 %i.eo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.ep = getelementptr i8, ptr %next.gep336, i64 16
  %wide.load337 = load <2 x i64>, ptr %next.gep336, align 8, !tbaa !70, !alias.scope !1257, !noalias !1252
  %wide.load338 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !70, !alias.scope !1257, !noalias !1252
  %i.eq = getelementptr i8, ptr %next.gep335, i64 16
  store <2 x i64> %wide.load337, ptr %next.gep335, align 8, !tbaa !70, !alias.scope !1260, !noalias !1257
  store <2 x i64> %wide.load338, ptr %i.eq, align 8, !tbaa !70, !alias.scope !1260, !noalias !1257
  %i.er = getelementptr i8, ptr %next.gep336, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep336, align 8, !tbaa !70, !alias.scope !1257, !noalias !1252
  store <2 x ptr> splat (ptr null), ptr %i.er, align 8, !tbaa !70, !alias.scope !1257, !noalias !1252
  %index.next339 = add nuw i64 %index334, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.es, label %middle.block340, label %vector.body333, !llvm.loop !1262

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %i.eh, %n.vec332
  br i1 %cmp.n341, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i67, label %.lr.ph.i.i.i.i.i.i.i63.preheader380

.lr.ph.i.i.i.i.i.i.i63.preheader380:              ; preds = %vector.memcheck320, %.lr.ph.i.i.i.i.i.i.i63.preheader, %middle.block340
  %.012.i.i.i.i.i.i.i64.ph = phi ptr [ %i.ed, %vector.memcheck320 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i63.preheader ], [ %i.em, %middle.block340 ]
  %.0911.i.i.i.i.i.i.i65.ph = phi ptr [ %i.ds, %vector.memcheck320 ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i63.preheader ], [ %i.en, %middle.block340 ]
  br label %.lr.ph.i.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i.i63:                           ; preds = %.lr.ph.i.i.i.i.i.i.i63.preheader380, %.lr.ph.i.i.i.i.i.i.i63
  %.012.i.i.i.i.i.i.i64 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i63 ], [ %.012.i.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i.i63.preheader380 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i65 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i.i.i63 ], [ %.0911.i.i.i.i.i.i.i65.ph, %.lr.ph.i.i.i.i.i.i.i63.preheader380 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.et = load i64, ptr %.0911.i.i.i.i.i.i.i65, align 8, !tbaa !70, !alias.scope !1255, !noalias !1252
  store i64 %i.et, ptr %.012.i.i.i.i.i.i.i64, align 8, !tbaa !70, !alias.scope !1252, !noalias !1255
  store ptr null, ptr %.0911.i.i.i.i.i.i.i65, align 8, !tbaa !70, !alias.scope !1255, !noalias !1252
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i65, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i64, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i66 = icmp eq ptr %i.eu, %i.do
  br i1 %.not.i.i.i.i.i.i.i66, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i67, label %.lr.ph.i.i.i.i.i.i.i63, !llvm.loop !1263

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i67: ; preds = %.lr.ph.i.i.i.i.i.i.i63, %middle.block340, %.noexc72
  %.0.lcssa.i.i.i.i.i.i.i68 = phi ptr [ %i.ed, %.noexc72 ], [ %i.em, %middle.block340 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i63 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i68, i64 8
  %.not.i23.i.i.i69 = icmp eq ptr %i.ds, null
  br i1 %.not.i23.i.i.i69, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i70, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i67
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i70

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i70: ; preds = %bb.ac, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i67
  store ptr %i.ed, ptr %6, align 8, !tbaa !68
  store ptr %i.ew, ptr %i.dg, align 8, !tbaa !69
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.eb
  store ptr %i.ex, ptr %i.dh, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i70, %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0171.0213, i64 64 ; 2 uses
  %.not192 = icmp eq ptr %i.ey, %i.df
  br i1 %.not192, label %._crit_edge, label %bb.t

bb.ad:                                            ; preds = %bb.t
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body56

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i59
  %lpad.loopexit194 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit.split-lp: ; preds = %bb.ab
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit
  %lpad.phi196 = phi { ptr, i32 } [ %lpad.loopexit194, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit ], [ %lpad.loopexit.split-lp195, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit83.loopexit.split-lp ]
  %i.fa = load ptr, ptr %i.dl, align 8, !tbaa !15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(56) %i.dl) #25, !inline_history !197
  br label %.body56

._crit_edge219:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.fd = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #29
          to label %.noexc84 unwind label %bb.az  ; 3 uses

.noexc84:                                         ; preds = %._crit_edge219
  invoke void @_ZN6duckdb16TableFunctionRefC1Ev(ptr noundef nonnull align 8 dereferenceable(121) %i.fd)
          to label %bb.av unwind label %bb.ae, !noalias !1264

bb.ae:                                            ; preds = %.noexc84
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #26, !noalias !1264
  br label %.body85

bb.af:                                            ; preds = %.lr.ph218, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0161.0216 = phi ptr [ %.sroa.0161.0214, %.lr.ph218 ], [ %.sroa.0161.0, %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0161.0216, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN6duckdb9make_uniqINS_19ColumnRefExpressionEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.836") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ff)
          to label %bb.ag unwind label %bb.at

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.fg = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc88 unwind label %bb.au  ; 5 uses

.noexc88:                                         ; preds = %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0161.0216, i64 40
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.fh)
          to label %bb.ah unwind label %bb.ai, !noalias !1267

bb.ah:                                            ; preds = %.noexc88
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.fg, ptr noundef nonnull %4)
          to label %bb.al unwind label %bb.aj, !noalias !1267

bb.ai:                                            ; preds = %.noexc88
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25, !noalias !1267
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn.i87 = phi { ptr, i32 } [ %i.fj, %bb.aj ], [ %i.fi, %bb.ai ]
  call void @_ZdlPv(ptr noundef nonnull %i.fg) #26, !noalias !1267
  br label %.body89

bb.al:                                            ; preds = %bb.ah
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25, !noalias !1267
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.fk = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #29
          to label %.noexc93 unwind label %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i127 ; 6 uses

.noexc93:                                         ; preds = %bb.al
  %i.fl = load ptr, ptr %9, align 8, !tbaa !1270, !noalias !1272
  store ptr null, ptr %9, align 8, !tbaa !1270, !noalias !1272
  store ptr %i.fl, ptr %2, align 8, !tbaa !516, !noalias !1272
  store ptr %i.fg, ptr %3, align 8, !tbaa !516, !noalias !1272
  invoke void @_ZN6duckdb20ComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(72) %i.fk, i8 noundef zeroext 25, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.am unwind label %bb.an, !noalias !1272

bb.am:                                            ; preds = %.noexc93
  %i.fm = load ptr, ptr %3, align 8, !tbaa !70, !noalias !1272 ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i92, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i: ; preds = %bb.am
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !15, !noalias !1272
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !1272
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(56) %i.fm) #25, !noalias !1272, !inline_history !1275
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i, %bb.am
  %i.fq = load ptr, ptr %2, align 8, !tbaa !70, !noalias !1272 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.fq, null
  br i1 %.not.i5.i, label %bb.ao, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !15, !noalias !1272
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !1272
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(56) %i.fq) #25, !noalias !1272, !inline_history !1275
  br label %bb.ao

bb.an:                                            ; preds = %.noexc93
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %3, align 8, !tbaa !70, !noalias !1272 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.fv, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i9.i: ; preds = %bb.an
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !15, !noalias !1272
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !1272
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(56) %i.fv) #25, !noalias !1272, !inline_history !1275
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i9.i, %bb.an
  %i.fz = load ptr, ptr %2, align 8, !tbaa !70, !noalias !1272 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.fz, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i12.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !15, !noalias !1272
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !1272
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(56) %i.fz) #25, !noalias !1272, !inline_history !1275
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i12.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  call void @_ZdlPv(ptr noundef nonnull %i.fk) #26, !noalias !1272
  br label %.body89

bb.ao:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i6.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gd = load ptr, ptr %i.dj, align 8, !tbaa !69 ; 6 uses
  %i.ge = load ptr, ptr %i.dk, align 8, !tbaa !43
  %.not.i.i96 = icmp eq ptr %i.gd, %i.ge
  br i1 %.not.i.i96, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gf = ptrtoint ptr %i.fk to i64
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !70
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gg, ptr %i.dj, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit118

bb.aq:                                            ; preds = %bb.ao
  %i.gh = load ptr, ptr %6, align 8, !tbaa !68    ; 10 uses
  %i.gi = ptrtoint ptr %i.gd to i64               ; 3 uses
  %i.gj = ptrtoint ptr %i.gh to i64               ; 3 uses
  %i.gk = sub i64 %i.gi, %i.gj                    ; 3 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775800
  br i1 %i.gl, label %bb.ar, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i97

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc109 unwind label %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit.split-lp

.noexc109:                                        ; preds = %bb.ar
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i97: ; preds = %bb.aq
  %i.gm = ashr exact i64 %i.gk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i.i98, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gn, i64 1152921504606846975)
  %i.gq = select i1 %i.go, i64 1152921504606846975, i64 %i.gp ; 3 uses
  %.not.i.i.i.i99 = icmp ne i64 %i.gq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i99)
  %i.gr = shl nuw nsw i64 %i.gq, 3
  %i.gs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gr) #29
          to label %.noexc110 unwind label %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit ; 10 uses

.noexc110:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i97
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gk
  %i.gu = ptrtoint ptr %i.fk to i64
  store i64 %i.gu, ptr %i.gt, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i100 = icmp eq ptr %i.gh, %i.gd
  br i1 %.not10.i.i.i.i.i.i.i100, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i105, label %.lr.ph.i.i.i.i.i.i.i101.preheader

.lr.ph.i.i.i.i.i.i.i101.preheader:                ; preds = %.noexc110
  %16 = add i64 %i.gi, -8
  %17 = sub i64 %16, %i.gj                        ; 2 uses
  %i.gv = lshr i64 %17, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check353 = icmp ult i64 %17, 56
  br i1 %min.iters.check353, label %.lr.ph.i.i.i.i.i.i.i101.preheader368, label %vector.memcheck344

vector.memcheck344:                               ; preds = %.lr.ph.i.i.i.i.i.i.i101.preheader
  %scevgep345 = getelementptr i8, ptr %i.gs, i64 8
  %i.gx = add i64 %i.gi, -8
  %i.gy = sub i64 %i.gx, %i.gj
  %i.gz = and i64 %i.gy, -8                       ; 2 uses
  %scevgep346 = getelementptr i8, ptr %scevgep345, i64 %i.gz
  %scevgep347 = getelementptr i8, ptr %i.gh, i64 8
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.gz
  %bound0349 = icmp ult ptr %i.gs, %scevgep348
  %bound1350 = icmp ult ptr %i.gh, %scevgep346
  %found.conflict351 = and i1 %bound0349, %bound1350
  br i1 %found.conflict351, label %.lr.ph.i.i.i.i.i.i.i101.preheader368, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck344
  %n.vec356 = and i64 %i.gw, 4611686018427387900  ; 3 uses
  %i.ha = shl i64 %n.vec356, 3                    ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gs, i64 %i.ha  ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gh, i64 %i.ha
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph354
  %index358 = phi i64 [ 0, %vector.ph354 ], [ %index.next363, %vector.body357 ] ; 2 uses
  %i.hd = shl i64 %index358, 3                    ; 2 uses
  %next.gep359 = getelementptr i8, ptr %i.gs, i64 %i.hd ; 2 uses
  %next.gep360 = getelementptr i8, ptr %i.gh, i64 %i.hd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.he = getelementptr i8, ptr %next.gep360, i64 16
  %wide.load361 = load <2 x i64>, ptr %next.gep360, align 8, !tbaa !70, !alias.scope !1281, !noalias !1276
  %wide.load362 = load <2 x i64>, ptr %i.he, align 8, !tbaa !70, !alias.scope !1281, !noalias !1276
  %i.hf = getelementptr i8, ptr %next.gep359, i64 16
  store <2 x i64> %wide.load361, ptr %next.gep359, align 8, !tbaa !70, !alias.scope !1284, !noalias !1281
  store <2 x i64> %wide.load362, ptr %i.hf, align 8, !tbaa !70, !alias.scope !1284, !noalias !1281
  %i.hg = getelementptr i8, ptr %next.gep360, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep360, align 8, !tbaa !70, !alias.scope !1281, !noalias !1276
  store <2 x ptr> splat (ptr null), ptr %i.hg, align 8, !tbaa !70, !alias.scope !1281, !noalias !1276
  %index.next363 = add nuw i64 %index358, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.hh, label %middle.block364, label %vector.body357, !llvm.loop !1286

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %i.gw, %n.vec356
  br i1 %cmp.n365, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i105, label %.lr.ph.i.i.i.i.i.i.i101.preheader368

.lr.ph.i.i.i.i.i.i.i101.preheader368:             ; preds = %vector.memcheck344, %.lr.ph.i.i.i.i.i.i.i101.preheader, %middle.block364
  %.012.i.i.i.i.i.i.i102.ph = phi ptr [ %i.gs, %vector.memcheck344 ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i101.preheader ], [ %i.hb, %middle.block364 ]
  %.0911.i.i.i.i.i.i.i103.ph = phi ptr [ %i.gh, %vector.memcheck344 ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.i101.preheader ], [ %i.hc, %middle.block364 ]
  br label %.lr.ph.i.i.i.i.i.i.i101

.lr.ph.i.i.i.i.i.i.i101:                          ; preds = %.lr.ph.i.i.i.i.i.i.i101.preheader368, %.lr.ph.i.i.i.i.i.i.i101
  %.012.i.i.i.i.i.i.i102 = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i.i101 ], [ %.012.i.i.i.i.i.i.i102.ph, %.lr.ph.i.i.i.i.i.i.i101.preheader368 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i103 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i.i101 ], [ %.0911.i.i.i.i.i.i.i103.ph, %.lr.ph.i.i.i.i.i.i.i101.preheader368 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  %i.hi = load i64, ptr %.0911.i.i.i.i.i.i.i103, align 8, !tbaa !70, !alias.scope !1279, !noalias !1276
  store i64 %i.hi, ptr %.012.i.i.i.i.i.i.i102, align 8, !tbaa !70, !alias.scope !1276, !noalias !1279
  store ptr null, ptr %.0911.i.i.i.i.i.i.i103, align 8, !tbaa !70, !alias.scope !1279, !noalias !1276
  %i.hj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i103, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i102, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i104 = icmp eq ptr %i.hj, %i.gd
  br i1 %.not.i.i.i.i.i.i.i104, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i105, label %.lr.ph.i.i.i.i.i.i.i101, !llvm.loop !1287

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i105: ; preds = %.lr.ph.i.i.i.i.i.i.i101, %middle.block364, %.noexc110
  %.0.lcssa.i.i.i.i.i.i.i106 = phi ptr [ %i.gs, %.noexc110 ], [ %i.hb, %middle.block364 ], [ %i.hk, %.lr.ph.i.i.i.i.i.i.i101 ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i106, i64 8
  %.not.i23.i.i.i107 = icmp eq ptr %i.gh, null
  br i1 %.not.i23.i.i.i107, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i108, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i105
  call void @_ZdlPv(ptr noundef nonnull %i.gh) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i108

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i108: ; preds = %bb.as, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i105
  store ptr %i.gs, ptr %6, align 8, !tbaa !68
  store ptr %i.hl, ptr %i.dj, align 8, !tbaa !69
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gq
  store ptr %i.hm, ptr %i.dk, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit118

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit118: ; preds = %bb.ap, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i108
  %i.hn = load ptr, ptr %9, align 8, !tbaa !1270  ; 3 uses
  %.not.i119 = icmp eq ptr %i.hn, null
  br i1 %.not.i119, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit118
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !15
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(80) %i.hn) #25, !inline_history !1288
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit118, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %.sroa.0161.0 = load ptr, ptr %.sroa.0161.0216, align 8, !tbaa !284 ; 2 uses
  %.not193 = icmp eq ptr %.sroa.0161.0, null
  br i1 %.not193, label %._crit_edge219, label %bb.af

bb.at:                                            ; preds = %bb.af
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit131

bb.au:                                            ; preds = %bb.ag
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.body89

_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i97
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125

_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit.split-lp: ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125

_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125: ; preds = %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125.loopexit.split-lp ]
  %i.ht = load ptr, ptr %i.fk, align 8, !tbaa !15
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8
  call void %i.hv(ptr noundef nonnull align 8 dereferenceable(56) %i.fk) #25, !inline_history !197
  br label %.body89

_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i127: ; preds = %bb.al
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %i.fg, align 8, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(120) %i.fg) #25, !inline_history !1289
  br label %.body89

.body89:                                          ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i, %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i127, %bb.au, %bb.ak
  %.pn29.pn = phi { ptr, i32 } [ %.pn.i87, %bb.ak ], [ %i.hs, %bb.au ], [ %i.hw, %_ZNKSt14default_deleteIN6duckdb18ConstantExpressionEEclEPS1_.exit.i127 ], [ %i.fu, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit13.i ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb20ComparisonExpressionESt14default_deleteIS1_EED2Ev.exit125 ] ; 2 uses
  %i.ia = load ptr, ptr %9, align 8, !tbaa !1270  ; 3 uses
  %.not.i129 = icmp eq ptr %i.ia, null
  br i1 %.not.i129, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit131, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i130

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i130: ; preds = %.body89
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(80) %i.ia) #25, !inline_history !1288
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit131

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit131: ; preds = %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i130, %.body89, %bb.at
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.at ], [ %.pn29.pn, %.body89 ], [ %.pn29.pn, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i130 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body56

bb.av:                                            ; preds = %.noexc84
  store ptr %i.fd, ptr %10, align 8, !tbaa !1290, !alias.scope !1264
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @_ZN6duckdb9make_uniqINS_18FunctionExpressionEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteISB_ELb1EEELb1ESaISE_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.863") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ie, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.if = load ptr, ptr %11, align 8, !tbaa !1292 ; 4 uses
  store ptr null, ptr %11, align 8, !tbaa !1292
  %i.ig = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16TableFunctionRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 104 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !70 ; 3 uses
  store ptr %i.if, ptr %i.ih, align 8, !tbaa !70
  %.not.i.i.i.i.i132 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i132, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.ax
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !15
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(56) %i.ii) #25, !inline_history !384
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %bb.ax
  %i.im = load ptr, ptr %10, align 8, !tbaa !1290
  store ptr null, ptr %10, align 8, !tbaa !1290
  store ptr %i.im, ptr %0, align 8, !tbaa !365
  %i.in = load ptr, ptr %11, align 8, !tbaa !1292 ; 3 uses
  %.not.i136 = icmp eq ptr %i.in, null
  br i1 %.not.i136, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit.thread, label %_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZNSt10unique_ptrIN6duckdb16TableFunctionRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18FunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
end_hunk_14
begin_hunk_15_@_ZN6duckdb13TableRelationC2ERKNS_10shared_ptrINS_22RelationContextWrapperELb1EEENS_10unique_ptrINS_16TableDescriptionESt14default_deleteIS7_ELb1EEE:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !11
  store i8 0, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6duckdb8RelationE, i64 16), ptr %0, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !20
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !20
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2INS_22RelationContextWrapperETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i, label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2INS_22RelationContextWrapperETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.val.i.pre = load ptr, ptr %3, align 8
  %.val6.i.pre = load i64, ptr %i.b, align 8, !tbaa !11
  br label %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2INS_22RelationContextWrapperETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i

_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2INS_22RelationContextWrapperETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %.val6.i = phi i64 [ %.val6.i.pre, %bb.c ], [ 0, %bb.b ], [ 0, %._crit_edge.i.i ]
  %.val.i = phi ptr [ %.val.i.pre, %bb.c ], [ %i.a, %bb.b ], [ %i.a, %._crit_edge.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_ZN6duckdbL19CreateRelationAliasENS_12RelationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %i.n, i8 noundef zeroext 1, ptr %.val.i, i64 %.val6.i)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2INS_22RelationContextWrapperETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.d) #25
  call void @_ZN6duckdb23enable_shared_from_thisINS_8RelationEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #25
  %i.p = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

bb.d:                                             ; preds = %_ZN6duckdb10shared_ptrINS_20ClientContextWrapperELb1EEC2INS_22RelationContextWrapperETnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERKNS0_IS6_Lb1EEE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %3, align 8, !tbaa !40     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6duckdb13TableRelationE, i64 16), ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load i64, ptr %2, align 8, !tbaa !1308
  store i64 %i.v, ptr %i.u, align 8, !tbaa !1308
  store ptr null, ptr %2, align 8, !tbaa !1308
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13TableRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !1310 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1310

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1310
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !1310
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !1313
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !1313
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !1313
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !1313

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1313 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !1313
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1313 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !1313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1313
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1321, !noalias !1316
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !1321, !noalias !1316
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1324, !noalias !1321
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !1324, !noalias !1321
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1321, !noalias !1316
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !1321, !noalias !1316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1319, !noalias !1316
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1316, !noalias !1319
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1319, !noalias !1316
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1327

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13TableRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.344", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #29, !noalias !1328 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 8, !tbaa !343, !noalias !1328
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !7, !noalias !1328
end_hunk_15
begin_hunk_16_@_ZN6duckdb15make_shared_ptrINS_13ValueRelationEJNS_10shared_ptrINS_13ClientContextELb1EEENS_6vectorINS5_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEELb1ESaISC_EEENS5_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISK_EEERA7_KcEEENS2_IT_Lb1EEEDpOT0_:bb.a
bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #25
  br label %_ZNSt12__shared_ptrIN6duckdb13ValueRelationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb13ValueRelationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ValueRelationC2ERKNS_10shared_ptrINS_13ClientContextELb1EEERKNS_6vectorINS6_INS_5ValueELb1ESaIS7_EEELb1ESaIS9_EEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISJ_EEESJ_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::Value", align 8     ; 6 uses
  %6 = alloca %"class.duckdb::vector", align 8    ; 13 uses
  tail call void @_ZN6duckdb8RelationC2ERKNS_10shared_ptrINS_13ClientContextELb1EEENS_12RelationTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext 15)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6duckdb13ValueRelationE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load <2 x ptr>, ptr %3, align 8, !tbaa !517
  store <2 x ptr> %i.c, ptr %i.b, align 8, !tbaa !517
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !518
  store ptr %i.f, ptr %i.d, align 8, !tbaa !518
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !7
  %i.j = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11   ; 2 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.j, ptr %i.h, align 8, !tbaa !40
  %i.q = load i64, ptr %i.k, align 8, !tbaa !14
  store i64 %i.q, ptr %i.i, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11
  store ptr %i.k, ptr %4, align 8, !tbaa !40
  store i64 0, ptr %i.r, align 8, !tbaa !11
  store i8 0, ptr %i.k, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1370
  %i.w = load ptr, ptr %2, align 8, !tbaa !1373
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.c

._crit_edge51:                                    ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  invoke void @_ZN6duckdb11QueryResult18DeduplicateColumnsERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.s unwind label %bb.u

bb.c:                                             ; preds = %.lr.ph50, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %.01849 = phi i64 [ 0, %.lr.ph50 ], [ %i.cx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_5ValueELb1ESaIS1_EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.01849)
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1072
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !1068 ; 2 uses
  %.not52 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not52, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.d
  %i.af = phi ptr [ null, %bb.d ], [ %i.cd, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.ag = phi ptr [ null, %bb.d ], [ %i.ce, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !1374 ; 6 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1377
  %.not.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i, label %bb.e, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge
  %i.aj = load ptr, ptr %6, align 8, !tbaa !68
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.af, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr %i.am, ptr %i.z, align 8, !tbaa !1374
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit unwind label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %bb.d, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ao = phi ptr [ %i.ch, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.ae, %bb.d ]
  %.048 = phi i64 [ %i.cf, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ap = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc23 unwind label %bb.p   ; 6 uses

.noexc23:                                         ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.ao, i64 %.048
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.aq)
          to label %bb.g unwind label %bb.h, !noalias !1378

bb.g:                                             ; preds = %.noexc23
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.ap, ptr noundef nonnull %5)
          to label %bb.k unwind label %bb.i, !noalias !1378

bb.h:                                             ; preds = %.noexc23
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25, !noalias !1378
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.as, %bb.i ], [ %i.ar, %bb.h ]
  call void @_ZdlPv(ptr noundef nonnull %i.ap) #26, !noalias !1378
  br label %.body

bb.k:                                             ; preds = %bb.g
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25, !noalias !1378
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.at = load ptr, ptr %i.x, align 8, !tbaa !69  ; 6 uses
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !43  ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = ptrtoint ptr %i.ap to i64
  store i64 %i.av, ptr %i.at, align 8, !tbaa !70
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.x, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %6, align 8, !tbaa !68    ; 10 uses
  %i.ay = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 3 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.n, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc27 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit.split-lp

.noexc27:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bc = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = call i64 @llvm.umin.i64(i64 %i.bd, i64 1152921504606846975)
  %i.bg = select i1 %i.be, i64 1152921504606846975, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29
          to label %.noexc28 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit ; 10 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  %i.bk = ptrtoint ptr %i.ap to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.at
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc28
  %7 = add i64 %i.ay, -8
  %8 = sub i64 %7, %i.az                          ; 2 uses
  %i.bl = lshr i64 %8, 3
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader99, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bi, i64 8
  %i.bn = add i64 %i.ay, -8
  %i.bo = sub i64 %i.bn, %i.az
  %i.bp = and i64 %i.bo, -8                       ; 2 uses
  %scevgep93 = getelementptr i8, ptr %scevgep, i64 %i.bp
  %scevgep94 = getelementptr i8, ptr %i.ax, i64 8
  %scevgep95 = getelementptr i8, ptr %scevgep94, i64 %i.bp
  %bound0 = icmp ult ptr %i.bi, %scevgep95
  %bound1 = icmp ult ptr %i.ax, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bm, 4611686018427387900     ; 3 uses
  %i.bq = shl i64 %n.vec, 3                       ; 2 uses
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ax, i64 %i.bq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bt ; 2 uses
  %next.gep96 = getelementptr i8, ptr %i.ax, i64 %i.bt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.bu = getelementptr i8, ptr %next.gep96, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep96, align 8, !tbaa !70, !alias.scope !1386, !noalias !1381
  %wide.load97 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !70, !alias.scope !1386, !noalias !1381
  %i.bv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1389, !noalias !1386
  store <2 x i64> %wide.load97, ptr %i.bv, align 8, !tbaa !70, !alias.scope !1389, !noalias !1386
  %i.bw = getelementptr i8, ptr %next.gep96, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep96, align 8, !tbaa !70, !alias.scope !1386, !noalias !1381
  store <2 x ptr> splat (ptr null), ptr %i.bw, align 8, !tbaa !70, !alias.scope !1386, !noalias !1381
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !1391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader99

.lr.ph.i.i.i.i.i.i.i.preheader99:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader99, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader99 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.by = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1384, !noalias !1381
  store i64 %i.by, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1381, !noalias !1384
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1384, !noalias !1381
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.at
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1392

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc28
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc28 ], [ %i.br, %middle.block ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ax) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bi, ptr %6, align 8, !tbaa !68
  store ptr %i.cb, ptr %i.x, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bg ; 2 uses
  store ptr %i.cc, ptr %i.y, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.l
  %i.cd = phi ptr [ %i.cc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.au, %bb.l ]
  %i.ce = phi ptr [ %i.cb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.aw, %bb.l ]
  %i.cf = add nuw i64 %.048, 1                    ; 2 uses
  %i.cg = load ptr, ptr %i.ac, align 8, !tbaa !1072
  %i.ch = load ptr, ptr %i.ab, align 8, !tbaa !1068 ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 6
  %i.cm = icmp ult i64 %i.cf, %i.cl
  br i1 %i.cm, label %.lr.ph, label %._crit_edge, !llvm.loop !1393

bb.p:                                             ; preds = %.lr.ph
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit.split-lp: ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35.loopexit.split-lp ]
  %i.co = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(56) %i.ap) #25, !inline_history !197
  br label %.body

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.e
  %.pre = load ptr, ptr %6, align 8, !tbaa !68    ; 3 uses
  %.pre58 = load ptr, ptr %i.x, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre58
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cv, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.cr = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(56) %i.cr) #25, !inline_history !72
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.cv, %.pre58
  br i1 %.not.i.i.i36, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit
  %i.cw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cw) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cx = add nuw i64 %.01849, 1                  ; 2 uses
  %i.cy = load ptr, ptr %i.u, align 8, !tbaa !1370
  %i.cz = load ptr, ptr %2, align 8, !tbaa !1373
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 24
  %i.de = icmp ult i64 %i.cx, %i.dd
  br i1 %i.de, label %bb.c, label %._crit_edge51, !llvm.loop !1394

bb.r:                                             ; preds = %bb.e
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35, %bb.p, %bb.j, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.df, %bb.r ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit35 ], [ %i.cn, %bb.p ], [ %.pn.i, %bb.j ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge51
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  ret void

bb.u:                                             ; preds = %bb.s, %._crit_edge51
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.f, %.body, %bb.u
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.u ], [ %.pn.pn, %.body ], [ %i.an, %bb.f ]
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.i
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.dh) #26
end_hunk_16
begin_hunk_17_@_ZN6duckdb13ValueRelationC2ERKNS_10shared_ptrINS_22RelationContextWrapperELb1EEERKNS_6vectorINS6_INS_5ValueELb1ESaIS7_EEELb1ESaIS9_EEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISJ_EEESJ_:._crit_edge.i.i
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.s) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6duckdb13ValueRelationE, i64 16), ptr %0, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.w = load <2 x ptr>, ptr %3, align 8, !tbaa !517
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !517
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !518
  store ptr %i.z, ptr %i.x, align 8, !tbaa !518
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !7
  %i.ad = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !40
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !14
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.am, ptr %i.an, align 8, !tbaa !11
  store ptr %i.ae, ptr %4, align 8, !tbaa !40
  store i64 0, ptr %i.al, align 8, !tbaa !11
  store i8 0, ptr %i.ae, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1370
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1373
  %.not = icmp eq ptr %i.ap, %i.aq
  br i1 %.not, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

._crit_edge70:                                    ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  invoke void @_ZN6duckdb11QueryResult18DeduplicateColumnsERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.v unwind label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.p) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.z

bb.f:                                             ; preds = %.lr.ph69, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %.01468 = phi i64 [ 0, %.lr.ph69 ], [ %i.dr, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 2 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS0_INS_5ValueELb1ESaIS1_EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.01468)
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1072
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !1068 ; 2 uses
  %.not71 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not71, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.g
  %i.az = phi ptr [ null, %bb.g ], [ %i.cx, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.ba = phi ptr [ null, %bb.g ], [ %i.cy, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !1374 ; 6 uses
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !1377
  %.not.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i, label %bb.h, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge
  %i.bd = load ptr, ptr %7, align 8, !tbaa !68
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.az, ptr %i.bf, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.bg, ptr %i.at, align 8, !tbaa !1374
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.h:                                             ; preds = %._crit_edge
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit unwind label %bb.u

bb.i:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %bb.g, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bi = phi ptr [ %i.db, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.ay, %bb.g ]
  %.067 = phi i64 [ %i.cz, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bj = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #29
          to label %.noexc34 unwind label %bb.s   ; 6 uses

.noexc34:                                         ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %i.bi, i64 %.067
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.bk)
          to label %bb.j unwind label %bb.k, !noalias !1412

bb.j:                                             ; preds = %.noexc34
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, ptr noundef nonnull %5)
          to label %bb.n unwind label %bb.l, !noalias !1412

bb.k:                                             ; preds = %.noexc34
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25, !noalias !1412
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bl, %bb.k ]
  call void @_ZdlPv(ptr noundef nonnull %i.bj) #26, !noalias !1412
  br label %.body32

bb.n:                                             ; preds = %bb.j
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25, !noalias !1412
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bn = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 6 uses
  %i.bo = load ptr, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i37, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = ptrtoint ptr %i.bj to i64
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.ar, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %7, align 8, !tbaa !68    ; 10 uses
  %i.bs = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.q, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc38 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp

.noexc38:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29
          to label %.noexc39 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit ; 10 uses

.noexc39:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %i.ce = ptrtoint ptr %i.bj to i64
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc39
  %8 = add i64 %i.bs, -8
  %9 = sub i64 %8, %i.bt                          ; 2 uses
  %i.cf = lshr i64 %9, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader123, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.cc, i64 8
  %i.ch = add i64 %i.bs, -8
  %i.ci = sub i64 %i.ch, %i.bt
  %i.cj = and i64 %i.ci, -8                       ; 2 uses
  %scevgep117 = getelementptr i8, ptr %scevgep, i64 %i.cj
  %scevgep118 = getelementptr i8, ptr %i.br, i64 8
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.cj
  %bound0 = icmp ult ptr %i.cc, %scevgep119
  %bound1 = icmp ult ptr %i.br, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader123, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cg, 4611686018427387900     ; 3 uses
  %i.ck = shl i64 %n.vec, 3                       ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cc, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.br, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cc, i64 %i.cn ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.br, i64 %i.cn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.co = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep120, align 8, !tbaa !70, !alias.scope !1420, !noalias !1415
  %wide.load121 = load <2 x i64>, ptr %i.co, align 8, !tbaa !70, !alias.scope !1420, !noalias !1415
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1423, !noalias !1420
  store <2 x i64> %wide.load121, ptr %i.cp, align 8, !tbaa !70, !alias.scope !1423, !noalias !1420
  %i.cq = getelementptr i8, ptr %next.gep120, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep120, align 8, !tbaa !70, !alias.scope !1420, !noalias !1415
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !tbaa !70, !alias.scope !1420, !noalias !1415
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1425

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader123

.lr.ph.i.i.i.i.i.i.i.preheader123:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cc, %vector.memcheck ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader123, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader123 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader123 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1418, !noalias !1415
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1415, !noalias !1418
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1418, !noalias !1415
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.bn
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1426

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc39
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.noexc39 ], [ %i.cl, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.br) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.r, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cc, ptr %7, align 8, !tbaa !68
  store ptr %i.cv, ptr %i.ar, align 8, !tbaa !69
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.cw, ptr %i.as, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.o
  %i.cx = phi ptr [ %i.cw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.bo, %bb.o ]
  %i.cy = phi ptr [ %i.cv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.bq, %bb.o ]
  %i.cz = add nuw i64 %.067, 1                    ; 2 uses
  %i.da = load ptr, ptr %i.aw, align 8, !tbaa !1072
  %i.db = load ptr, ptr %i.av, align 8, !tbaa !1068 ; 2 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 6
  %i.dg = icmp ult i64 %i.cz, %i.df
  br i1 %i.dg, label %.lr.ph, label %._crit_edge, !llvm.loop !1427

bb.s:                                             ; preds = %.lr.ph
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body32

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp: ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46.loopexit.split-lp ]
  %i.di = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(56) %i.bj) #25, !inline_history !197
  br label %.body32

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.h
  %.pre = load ptr, ptr %7, align 8, !tbaa !68    ; 3 uses
  %.pre79 = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre79
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dp, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.dl = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i47, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(56) %i.dl) #25, !inline_history !72
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.dp, %.pre79
  br i1 %.not.i.i.i48, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !68
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit
  %i.dq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dq) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.dr = add nuw i64 %.01468, 1                  ; 2 uses
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !1370
  %i.dt = load ptr, ptr %2, align 8, !tbaa !1373
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = sdiv exact i64 %i.dw, 24
  %i.dy = icmp ult i64 %i.dr, %i.dx
  br i1 %i.dy, label %bb.f, label %._crit_edge70, !llvm.loop !1428

bb.u:                                             ; preds = %bb.h
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body32

.body32:                                          ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46, %bb.s, %bb.m, %bb.u
  %.pn22.pn = phi { ptr, i32 } [ %i.dz, %bb.u ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit46 ], [ %i.dh, %bb.s ], [ %.pn.i, %bb.m ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.y

bb.v:                                             ; preds = %._crit_edge70
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  ret void

bb.x:                                             ; preds = %bb.v, %._crit_edge70
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.i, %.body32, %bb.x
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.x ], [ %.pn22.pn, %.body32 ], [ %i.bh, %bb.i ]
  %i.eb = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ac
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.y
  call void @_ZdlPv(ptr noundef %i.eb) #26
end_hunk_17
begin_hunk_18_@_ZN6duckdb13ValueRelationC2ERKNS_10shared_ptrINS_22RelationContextWrapperELb1EEERKNS_6vectorINS6_INS_5ValueELb1ESaIS7_EEELb1ESaIS9_EEENS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISJ_EEESJ_:._crit_edge.i.i
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.4", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1374
  %i.e = load ptr, ptr %0, align 8, !tbaa !1406   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.b, align 8, !tbaa !103
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EE3getILb1EEERS7_m.exit, label %bb.b, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %3)
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
  %i.m = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #26
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

_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EE3getILb1EEERS7_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ValueRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !1429 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1429

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1429
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !1429
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !1432
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !1432
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !1432
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !1432

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1432 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !1432
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1432 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !1432
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1432
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1440, !noalias !1435
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !1440, !noalias !1435
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1443, !noalias !1440
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !1443, !noalias !1440
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1440, !noalias !1435
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !1440, !noalias !1435
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1438, !noalias !1435
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1435, !noalias !1438
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1438, !noalias !1435
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1446

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ValueRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.914", align 8 ; 11 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 14 uses
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
end_hunk_18
begin_hunk_19_@_ZN6duckdb13ValueRelation11GetTableRefEv:bb.a
.loopexit75:                                      ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %.preheader
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1407 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1407 ; 2 uses
  %.not84 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not84, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %.loopexit75
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.v

._crit_edge88:                                    ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %.loopexit75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cw = load ptr, ptr %1, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  invoke void %i.cy(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.am unwind label %bb.au

bb.v:                                             ; preds = %.lr.ph87, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %.sroa.064.085 = phi ptr [ %i.cr, %.lr.ph87 ], [ %i.gh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.064.085, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !69 ; 3 uses
  %i.db = load ptr, ptr %.sroa.064.085, align 8, !tbaa !68 ; 3 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp ugt i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #27
          to label %.noexc39 unwind label %.loopexit.split-lp71

.noexc39:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %.not137 = icmp eq ptr %i.da, %i.db
  br i1 %.not137, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.x
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #29
          to label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %.loopexit70 ; 3 uses

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  store ptr %i.dg, ptr %4, align 16, !tbaa !68
  store ptr %i.dg, ptr %i.cv, align 8, !tbaa !69
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.de
  store ptr %i.dh, ptr %i.cu, align 16, !tbaa !43
  %.pre = load ptr, ptr %.sroa.064.085, align 8, !tbaa !41
  %.pre92 = load ptr, ptr %i.cz, align 8, !tbaa !41
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.x
  %i.di = phi ptr [ %.pre92, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.da, %bb.x ] ; 2 uses
  %i.dj = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.db, %bb.x ] ; 2 uses
  %.not6981 = icmp eq ptr %i.dj, %i.di
  br i1 %.not6981, label %._crit_edge, label %.lr.ph83

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.dk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ExpressionListRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ai unwind label %.loopexit70 ; 3 uses

.loopexit70:                                      ; preds = %._crit_edge, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.aj
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp71:                             ; preds = %bb.w
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.lr.ph83:                                         ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.060.082 = phi ptr [ %i.fm, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.dj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dl = load ptr, ptr %.sroa.060.082, align 8, !tbaa !70 ; 3 uses
  %.not.i41 = icmp eq ptr %i.dl, null
  br i1 %.not.i41, label %.noexc.i, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !47

.noexc.i:                                         ; preds = %.lr.ph83
  %i.dm = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.dn, ptr %2, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 49, ptr %i.a, align 8, !tbaa !103
  %i.do = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc59 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc59:                                         ; preds = %.noexc.i
  store ptr %i.do, ptr %2, align 8, !tbaa !40
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !103 ; 3 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.do, ptr noundef nonnull align 1 dereferenceable(49) @.str.80, i64 49, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  store i8 0, ptr %i.dr, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.noexc59
  invoke void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
          to label %bb.ab unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %.noexc59
  %.0.i.i = phi i1 [ false, %bb.y ], [ true, %.noexc59 ] ; 2 uses
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.du = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dn
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.du) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.aa, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.0.i.i, label %bb.aa, label %.body

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dm) #25
  br label %.body

bb.ab:                                            ; preds = %bb.y
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph83
  %i.dw = load ptr, ptr %i.dl, align 8, !tbaa !15
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = load ptr, ptr %i.dx, align 8
  invoke void %i.dy(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.dl)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.dz = load ptr, ptr %i.cv, align 8, !tbaa !69 ; 6 uses
  %i.ea = load ptr, ptr %i.cu, align 16, !tbaa !43
  %.not.i.i = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i, label %bb.ad, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ac
  %i.eb = load i64, ptr %5, align 8, !tbaa !70
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !70
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.ec, ptr %i.cv, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load ptr, ptr %4, align 16, !tbaa !68   ; 10 uses
  %i.ee = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ef = ptrtoint ptr %i.ed to i64               ; 3 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 3 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775800
  br i1 %i.eh, label %bb.ae, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc42 unwind label %.loopexit.split-lp

.noexc42:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.ei = ashr exact i64 %i.eg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = call i64 @llvm.umin.i64(i64 %i.ej, i64 1152921504606846975)
  %i.em = select i1 %i.ek, i64 1152921504606846975, i64 %i.el ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.em, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #29
          to label %.noexc43 unwind label %.loopexit ; 10 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eg
  %i.eq = load i64, ptr %5, align 8, !tbaa !70
  store i64 %i.eq, ptr %i.ep, align 8, !tbaa !70
  store ptr null, ptr %5, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ed, %i.dz
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc43
  %7 = add i64 %i.ee, -8
  %8 = sub i64 %7, %i.ef                          ; 2 uses
  %i.er = lshr i64 %8, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.eo, i64 8
  %i.et = add i64 %i.ee, -8
  %i.eu = sub i64 %i.et, %i.ef
  %i.ev = and i64 %i.eu, -8                       ; 2 uses
  %scevgep142 = getelementptr i8, ptr %scevgep, i64 %i.ev
  %scevgep143 = getelementptr i8, ptr %i.ed, i64 8
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ev
  %bound0 = icmp ult ptr %i.eo, %scevgep144
  %bound1 = icmp ult ptr %i.ed, %scevgep142
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.es, 4611686018427387900     ; 3 uses
  %i.ew = shl i64 %n.vec, 3                       ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eo, i64 %i.ew  ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ed, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eo, i64 %i.ez ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.ed, i64 %i.ez ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.fa = getelementptr i8, ptr %next.gep145, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep145, align 8, !tbaa !70, !alias.scope !1459, !noalias !1454
  %wide.load146 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !70, !alias.scope !1459, !noalias !1454
  %i.fb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1462, !noalias !1459
  store <2 x i64> %wide.load146, ptr %i.fb, align 8, !tbaa !70, !alias.scope !1462, !noalias !1459
  %i.fc = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep145, align 8, !tbaa !70, !alias.scope !1459, !noalias !1454
  store <2 x ptr> splat (ptr null), ptr %i.fc, align 8, !tbaa !70, !alias.scope !1459, !noalias !1454
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.es, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.preheader148:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ex, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ed, %vector.memcheck ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ey, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader148, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader148 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.fe = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1457, !noalias !1454
  store i64 %i.fe, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1454, !noalias !1457
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1457, !noalias !1454
  %i.ff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.dz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1465

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc43
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.noexc43 ], [ %i.ex, %middle.block ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ed) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.af
  store ptr %i.eo, ptr %4, align 16, !tbaa !68
  store ptr %i.fh, ptr %i.cv, align 8, !tbaa !69
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.em
  store ptr %i.fi, ptr %i.cu, align 16, !tbaa !43
  %.pr = load ptr, ptr %5, align 8, !tbaa !70     ; 3 uses
  %.not.i44 = icmp eq ptr %.pr, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.fj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.060.082, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.fm, %i.di
  br i1 %.not69, label %._crit_edge, label %.lr.ph83

bb.ag:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fo = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i45 = icmp eq ptr %i.fo, null
  br i1 %.not.i45, label %.body, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i46

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i46: ; preds = %bb.ah
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(56) %i.fo) #25, !inline_history !197
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i46, %bb.ah, %bb.ag, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn23 = phi { ptr, i32 } [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fn, %bb.ag ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.aa ], [ %lpad.phi, %bb.ah ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.al

bb.ai:                                            ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 112 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1374 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1377
  %.not.i.i48 = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i48, label %bb.aj, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread: ; preds = %bb.ai
  %i.fw = load <2 x ptr>, ptr %4, align 16, !tbaa !41
  store <2 x ptr> %i.fw, ptr %i.ft, align 8, !tbaa !41
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fy = load ptr, ptr %i.cu, align 16, !tbaa !43
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr %i.fz, ptr %i.fs, align 8, !tbaa !1374
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  invoke void @_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr %i.ft, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit unwind label %.loopexit70

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.aj
  %.pre93 = load ptr, ptr %4, align 16, !tbaa !68 ; 3 uses
  %.pre94 = load ptr, ptr %i.cv, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre93, %.pre94
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gf, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %.pre93, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %i.gb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i.i.i50 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i50, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !15
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(56) %i.gb) #25, !inline_history !72
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, %.pre94
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !73

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !68
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit
  %i.gg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre93, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.gg) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.064.085, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.gh, %i.ct
  br i1 %.not, label %._crit_edge88, label %bb.v

bb.al:                                            ; preds = %.loopexit70, %.loopexit.split-lp71, %.body
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %.body ], [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ]
end_hunk_19
begin_hunk_20_@_ZN6duckdb16ColumnDefinitionD2Ev:bb.a
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(56) %i.v) #25, !inline_history !197
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #25
  %i.aa = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_20ColumnDataCollectionELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6duckdb20ColumnDataCollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !50
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1481
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !1481
  br label %_ZNSt12__shared_ptrIN6duckdb20ColumnDataCollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6duckdb20ColumnDataCollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !47

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt12__shared_ptrIN6duckdb20ColumnDataCollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb20ColumnDataCollectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20MaterializedRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !1482 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1482

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1482
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !1482
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !1485
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !1485
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !1485
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !1485

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1485 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !1485
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1485 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !1485
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1485
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1493, !noalias !1488
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !1493, !noalias !1488
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1496, !noalias !1493
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !1496, !noalias !1493
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1493, !noalias !1488
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !1493, !noalias !1488
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1498

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.experimental.noalias.scope.decl(metadata !1491)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1491, !noalias !1488
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1488, !noalias !1491
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1491, !noalias !1488
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1499

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(176) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20MaterializedRelation11GetTableRefEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.48") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.duckdb::unique_ptr.953", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @_ZN6duckdb9make_uniqINS_13ColumnDataRefEJRNS_10shared_ptrINS_20ColumnDataCollectionELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.953") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !811  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
end_hunk_20
begin_hunk_21_@_ZN6duckdb12ViewRelationC2ERKNS_10shared_ptrINS_13ClientContextELb1EEENS_10unique_ptrINS_8TableRefESt14default_deleteIS7_ELb1EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.n, ptr %i.m, align 1, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.o, ptr %i.p, align 8, !tbaa !11
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.u = load i64, ptr %2, align 8, !tbaa !119
  store i64 %i.u, ptr %i.t, align 8, !tbaa !119
  store ptr null, ptr %2, align 8, !tbaa !119
  invoke void @_ZN6duckdb8Relation15TryBindRelationERNS_6vectorINS_16ColumnDefinitionELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.f
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !119  ; 3 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %bb.h
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.z) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i
  call void @_ZNSt6vectorIN6duckdb16ColumnDefinitionESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #25
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !40  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.f
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit ]
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @_ZN6duckdb8RelationD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12ViewRelation12GetQueryNodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.duckdb::unique_ptr.39", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::unique_ptr.48", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.a = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !1510 ; 3 uses
  invoke void @_ZN6duckdb10SelectNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1510

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %.pn6.pn, %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26, !noalias !1510
  br label %common.resume

_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !117, !alias.scope !1510
  %i.c = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.l       ; 3 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = invoke noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #29
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !7, !noalias !1513
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !11, !noalias !1513
  store i8 0, ptr %i.e, align 8, !tbaa !14, !noalias !1513
  invoke void @_ZN6duckdb14StarExpressionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(265) %i.d, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.e, !noalias !1513

bb.d:                                             ; preds = %.noexc
  %i.g = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1513 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.g) #26, !noalias !1513
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !40, !noalias !1513 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.e
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #26, !noalias !1513
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1513
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 128 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = ptrtoint ptr %i.d to i64
  store i64 %i.q, ptr %i.n, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.r, ptr %i.m, align 8, !tbaa !69
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !68   ; 10 uses
  %i.t = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #27
          to label %.noexc9 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19

.noexc9:                                          ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #29
          to label %.noexc10 unwind label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  %i.af = ptrtoint ptr %i.d to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !70
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc10
  %5 = add i64 %i.t, -8
  %6 = sub i64 %5, %i.u                           ; 2 uses
  %i.ag = lshr i64 %6, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %6, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ai = add i64 %i.t, -8
  %i.aj = sub i64 %i.ai, %i.u
  %i.ak = and i64 %i.aj, -8
  %i.al = add i64 %i.ak, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ad, i64 %i.al
  %scevgep39 = getelementptr i8, ptr %i.s, i64 %i.al
  %bound0 = icmp ult ptr %i.ad, %scevgep39
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.s, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.s, i64 %i.ap ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.aq = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1521, !noalias !1516
  %wide.load41 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !70, !alias.scope !1521, !noalias !1516
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !1524, !noalias !1521
  store <2 x i64> %wide.load41, ptr %i.ar, align 8, !tbaa !70, !alias.scope !1524, !noalias !1521
  %i.as = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep40, align 8, !tbaa !70, !alias.scope !1521, !noalias !1516
  store <2 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !70, !alias.scope !1521, !noalias !1516
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.i.i.preheader43:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader43 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.au = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1519, !noalias !1516
  store i64 %i.au, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1516, !noalias !1519
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !70, !alias.scope !1519, !noalias !1516
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1527

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc10 ], [ %i.an, %middle.block ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !68
  store ptr %i.ax, ptr %i.m, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ay, ptr %i.o, align 8, !tbaa !43
  br label %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.az = load ptr, ptr %1, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.48") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %1)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144 ; 2 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !119
  store ptr null, ptr %4, align 8, !tbaa !119
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !119 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bf) #25, !inline_history !121
  %.pr = load ptr, ptr %4, align 8, !tbaa !119    ; 3 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bj = load ptr, ptr %.pr, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %.pr) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i, %_ZN6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bm = load ptr, ptr %3, align 8, !tbaa !117
  store ptr %i.bm, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.l:                                             ; preds = %_ZN6duckdb9make_uniqINS_10SelectNodeEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19: ; preds = %bb.h, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25, !inline_history !197
  br label %.body

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

bb.o:                                             ; preds = %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !119   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21: ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bv) #25, !inline_history !122
  br label %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21, %bb.o, %bb.n
  %.pn6 = phi { ptr, i32 } [ %i.bt, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZNKSt14default_deleteIN6duckdb8TableRefEEclEPS1_.exit.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %bb.m, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22, %bb.l
  %.pn6.pn = phi { ptr, i32 } [ %.pn6, %_ZNSt10unique_ptrIN6duckdb8TableRefESt14default_deleteIS1_EED2Ev.exit22 ], [ %i.bn, %bb.l ], [ %i.bp, %_ZNSt10unique_ptrIN6duckdb14StarExpressionESt14default_deleteIS1_EED2Ev.exit19 ], [ %i.bo, %bb.m ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  %i.bz = load ptr, ptr %3, align 8, !tbaa !117   ; 3 uses
  %.not.i23 = icmp eq ptr %i.bz, null
  br i1 %.not.i23, label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25, label %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24

_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24: ; preds = %.body
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(240) %i.bz) #25, !inline_history !123
  br label %_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIN6duckdb10SelectNodeESt14default_deleteIS1_EED2Ev.exit25: ; preds = %.body, %_ZNKSt14default_deleteIN6duckdb10SelectNodeEEclEPS1_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb12ViewRelation11GetTableRefEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.48") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.344", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_8TableRefESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
end_hunk_21
