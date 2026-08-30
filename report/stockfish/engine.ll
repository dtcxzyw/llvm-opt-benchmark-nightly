Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish10NumaConfig11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %2, i64 %i.i, ptr %i.g, i64 1, ptr nonnull @.str.40)
  %i.j = load ptr, ptr %2, align 8, !tbaa !241    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241  ; 2 uses
  %.not37 = icmp eq ptr %i.j, %i.l
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ %i.j, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !245
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.aa, align 8, !tbaa !143
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %.039 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 6 uses
  %.sroa.024.038 = phi ptr [ %i.j, %.lr.ph ], [ %i.fk, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.024.038, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !246 ; 3 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !46
  %i.ab = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.ac = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !25
  %i.ad = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ad, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !49
  %i.af = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.af, ptr %i.m, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !52
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !51
  %i.aj = load ptr, ptr %4, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.al = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.an = load i64, ptr %i.m, align 8, !tbaa !52
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ap = load ptr, ptr %3, align 8, !tbaa !247   ; 3 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !247 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.x, label %.preheader

bb.i:                                             ; preds = %bb.w
  %i.as = add nuw i64 %.039, 1
  %.pr = load ptr, ptr %3, align 8, !tbaa !249
  br label %bb.x

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.sroa.019.036 = phi ptr [ %i.fe, %bb.w ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.at = load i64, ptr %.sroa.019.036, align 8, !tbaa !25 ; 11 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %.preheader ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.b, %.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ax = icmp ult i64 %i.aw, %i.at               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ax, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ax, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !251

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = icmp eq ptr %.19.i.i.i.i.i, %i.b
  br i1 %i.ay, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %.not8.i = icmp ult i64 %i.at, %i.ba
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.preheader
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !58    ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 48
  %.not11.i = icmp ugt i64 %i.bg, %.039
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.bh = phi ptr [ %i.dd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.bc, %.preheader.i ] ; 5 uses
  %i.bi = phi ptr [ %i.de, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.bb, %.preheader.i ] ; 9 uses
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i64 0, ptr %i.bn, align 8, !tbaa !36
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !59
  %.pre = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bq = ptrtoint ptr %i.bi to i64
  %i.br = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775776
  br i1 %i.bt, label %bb.l, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.bu = sdiv exact i64 %i.bs, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 192153584101141162)
  %i.by = select i1 %i.bw, i64 192153584101141162, i64 %i.bx ; 2 uses
  %i.bz = mul nuw nsw i64 %i.by, 48
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #31 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !36
  %.not10.i.i.i.i15 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not10.i.i.i.i15, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i17 = phi ptr [ %i.cx, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ca, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.cw, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bh, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33, !alias.scope !255, !noalias !252 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !27, !alias.scope !255, !noalias !252
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !34, !alias.scope !255, !noalias !252
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !35, !alias.scope !255, !noalias !252
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cg, ptr %i.cp, align 8, !tbaa !57, !noalias !257
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36, !alias.scope !255, !noalias !252
  store ptr null, ptr %i.ch, align 8, !tbaa !33, !alias.scope !255, !noalias !252
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !34, !alias.scope !255, !noalias !252
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !35, !alias.scope !255, !noalias !252
  store i64 0, ptr %i.cq, align 8, !tbaa !36, !alias.scope !255, !noalias !252
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i16
  %.sink6.i.i.i.i.i = phi ptr [ %i.cm, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i16 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.co, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i16 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.cr, %bb.m ], [ 0, %.lr.ph.i.i.i.i16 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ck, %bb.m ], [ 0, %.lr.ph.i.i.i.i16 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 16
  store ptr %i.ci, ptr %i.cs, align 8, !tbaa !33, !alias.scope !252, !noalias !255
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.ct, align 8, !tbaa !34, !alias.scope !252, !noalias !255
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.cu, align 8, !tbaa !35, !alias.scope !252, !noalias !255
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !36, !alias.scope !252, !noalias !255
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.cg, align 8, !tbaa !27, !alias.scope !252, !noalias !255
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cw, %i.bi
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i16, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ca, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.cx, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.bh, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.db) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.n
  store ptr %i.ca, ptr %0, align 8, !tbaa !58
  store ptr %i.cy, ptr %i.p, align 8, !tbaa !59
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.dc, ptr %i.q, align 8, !tbaa !55
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.j
  %i.dd = phi ptr [ %.pre, %bb.j ], [ %i.ca, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.de = phi ptr [ %i.bp, %bb.j ], [ %i.cy, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 48
  %.not.i = icmp ugt i64 %i.di, %.039
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !259

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.bc, %.preheader.i ], [ %i.dd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.039 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !25 ; 2 uses
  %i.do = icmp ult i64 %i.at, %i.dn               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.do, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i9, label %.lr.ph.i.i.i.i, !llvm.loop !38

._crit_edge.i.i.i.i9:                             ; preds = %.lr.ph.i.i.i.i
  br i1 %i.do, label %._crit_edge.thread.i.i.i.i, label %bb.p

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i9, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i9 ], [ %i.dl, %._crit_edge.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.dr = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.dq
  br i1 %i.dr, label %select.unfold.i.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.ds = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i9
  %i.dt = phi i64 [ %.pre.i.i.i, %bb.o ], [ %i.dn, %._crit_edge.i.i.i.i9 ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.o ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i9 ]
  %i.du = icmp ult i64 %i.dt, %i.at
  br i1 %i.du, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.p, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.p ] ; 3 uses
  %i.dv = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.dl
  br i1 %i.dv, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !25
  %i.dy = icmp ult i64 %i.at, %i.dx
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.q, %select.unfold.i.i.i
  %i.dz = phi i1 [ %i.dy, %bb.q ], [ true, %select.unfold.i.i.i ]
  %i.ea = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i64 %i.at, ptr %i.eb, align 8, !tbaa !25
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dz, ptr noundef nonnull %i.ea, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dl) #28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 40 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !36
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.p
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i11 ], [ %i.ef, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i11 ], [ %i.b, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !25
  %i.ei = icmp ult i64 %i.eh, %i.at               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ei, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ei, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i12, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !260

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i11
  %i.ej = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.ej, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !25
  %i.em = icmp ult i64 %i.at, %i.el
  br i1 %i.em, label %.critedge.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i:                                      ; preds = %bb.r, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.r ], [ %.19.i.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.b, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.en = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 3 uses
  store i64 %i.at, ptr %i.eo, align 8, !tbaa !261
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store i64 0, ptr %i.ep, align 8, !tbaa !263
  %i.eq = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.eo) ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.eq, 0      ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.eq, 1      ; 4 uses
  %.not.i.i13 = icmp eq ptr %i.es, null
  br i1 %.not.i.i13, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %.not.i.i.i4.i = icmp ne ptr %i.er, null
  %i.et = icmp eq ptr %i.es, %i.b
end_hunk_0
begin_hunk_1_@_ZNK9Stockfish6Engine9visualizeB5cxx11Ev:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !153
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !344
  %i.l = load ptr, ptr %2, align 8, !tbaa !153
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #28
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !153
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !153
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !153
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #28
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !153
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8, !tbaa !153
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8, !tbaa !346
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8, !tbaa !51
  store i8 0, ptr %i.aj, align 8, !tbaa !52
  %i.al = load ptr, ptr %2, align 8, !tbaa !153
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(1048) %i.ap) #28 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !46, !alias.scope !356
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !51, !alias.scope !356
  store i8 0, ptr %i.ar, align 8, !tbaa !52, !alias.scope !356
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !357, !noalias !356 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !356 ; 2 uses
  %i.ax = icmp ugt ptr %i.au, %i.aw
  %.08.i.i.i = select i1 %i.ax, ptr %i.au, ptr %i.aw ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !358, !noalias !356 ; 2 uses
  %i.ba = ptrtoint ptr %.08.i.i.i to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.az, i64 noundef %i.bc) #28 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #28
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !153
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !153
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aj
  br i1 %i.bl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #28
  store ptr %i.f, ptr %2, align 8, !tbaa !153
  %i.bo = load i64, ptr %i.h, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.g, ptr %i.bp, align 8, !tbaa !153
  store i64 0, ptr %i.k, align 8, !tbaa !344
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK9Stockfish6Engine12get_hashfullEi(ptr noundef nonnull align 8 dereferenceable(1680) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.b = tail call noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17) %i.a, i32 noundef %1) #28
  ret i32 %i.b
}

declare noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.128") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.33", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1304
  call void @_ZNK9Stockfish10ThreadPool35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359  ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !249    ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.am, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 2 uses
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.an, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ]
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 5 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 4 uses
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 3 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 7 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.037 ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.037
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.r, ptr %i.k, align 8, !tbaa !360
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !362
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.f, align 8, !tbaa !363
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.x, label %bb.e, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.y = ashr exact i64 %i.w, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 576460752303423487)
  %i.ac = select i1 %i.aa, i64 576460752303423487, i64 %i.ab ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w ; 2 uses
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !360
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.q, ptr %i.ah, align 8, !tbaa !362
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !366
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !370

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.w) #33
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !363
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %i.al, ptr %i.g, align 8, !tbaa !371
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !359
  %.pre57.a = load ptr, ptr %2, align 8, !tbaa !249
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.am = phi ptr [ %i.h, %bb.c ], [ %.pre57.a, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 5 uses
  %i.an = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.ao = phi ptr [ %i.j, %bb.c ], [ %i.al, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ap = phi ptr [ %i.t, %bb.c ], [ %i.ak, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %i.l, %bb.c ], [ %i.ae, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.ar = add nuw i64 %.037, 1                    ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = icmp ult i64 %i.ar, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !372

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit
  %i.ax = icmp eq ptr %i.am, %i.an
  store ptr %i.aq, ptr %0, align 8
  br i1 %i.ax, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !59 ; 2 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 48
  %i.bf = icmp ult i64 %i.ar, %i.be
  br i1 %i.bf, label %.lr.ph45, label %.loopexit

.lr.ph45:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph45, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit
  %i.bi = phi ptr [ %i.ba, %.lr.ph45 ], [ %i.cj, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 2 uses
  %i.bj = phi ptr [ %i.az, %.lr.ph45 ], [ %i.ck, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ]
  %i.bk = phi ptr [ %i.ao, %.lr.ph45 ], [ %i.cl, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 5 uses
  %i.bl = phi ptr [ %i.ap, %.lr.ph45 ], [ %i.cm, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 4 uses
  %.144 = phi i64 [ %i.ar, %.lr.ph45 ], [ %i.co, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 2 uses
  %i.bm = phi ptr [ %i.aq, %.lr.ph45 ], [ %i.cn, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 7 uses
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %.144
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36 ; 2 uses
  %.not.i11 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.bl, align 8, !tbaa !360
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !362
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bg, align 8, !tbaa !363
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = ptrtoint ptr %i.bk to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775792
  br i1 %i.bv, label %bb.j, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12

bb.j:                                             ; preds = %bb.i
  store ptr %i.bm, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.i
  %i.bw = ashr exact i64 %i.bu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i13 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i13, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 576460752303423487)
  %i.ca = select i1 %i.by, i64 576460752303423487, i64 %i.bz ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 4
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #31 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !360
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.bp, ptr %i.ce, align 8, !tbaa !362
  %.not10.i.i.i.i.i15 = icmp eq ptr %i.bm, %i.bk
  br i1 %.not10.i.i.i.i.i15, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12, %.lr.ph.i.i.i.i.i16
  %.012.i.i.i.i.i17 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i16 ], [ %i.cc, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ] ; 2 uses
  %.0911.i.i.i.i.i18 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i16 ], [ %i.bm, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i17, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i18, i64 16, i1 false), !alias.scope !373
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i18, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cf, %i.bk
  br i1 %.not.i.i.i.i.i19, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20, label %.lr.ph.i.i.i.i.i16, !llvm.loop !370

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20: ; preds = %.lr.ph.i.i.i.i.i16, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12
  %.0.lcssa.i.i.i.i.i21 = phi ptr [ %i.cc, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ], [ %i.cg, %.lr.ph.i.i.i.i.i16 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i21, i64 16 ; 2 uses
  %.not.i24.i.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i24.i.i22, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #33
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20
  store ptr %i.ch, ptr %i.bg, align 8, !tbaa !363
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.ci, ptr %i.bh, align 8, !tbaa !371
  %.pre58.a = load ptr, ptr %i.ay, align 8, !tbaa !59
  %.pre59 = load ptr, ptr %i.b, align 8, !tbaa !58
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.cj = phi ptr [ %i.bi, %bb.h ], [ %.pre59, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ck = phi ptr [ %i.bj, %bb.h ], [ %.pre58.a, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.cl = phi ptr [ %i.bk, %bb.h ], [ %i.ci, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cm = phi ptr [ %i.br, %bb.h ], [ %i.ch, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cn = phi ptr [ %i.bm, %bb.h ], [ %i.cc, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.co = add nuw i64 %.144, 1                    ; 2 uses
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.cj to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 48
  %i.ct = icmp ult i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.g, label %.loopexit.loopexit, !llvm.loop !377

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit
  %.pre60.pre = load ptr, ptr %2, align 8, !tbaa !249
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader
  %.pre60 = phi ptr [ %i.am, %.preheader ], [ %.pre60.pre, %.loopexit.loopexit ]
  %.lcssa42 = phi ptr [ %i.aq, %.preheader ], [ %i.cn, %.loopexit.loopexit ]
  store ptr %.lcssa42, ptr %0, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %.loopexit, %._crit_edge
  %i.cu = phi ptr [ %.pre60, %.loopexit ], [ %i.am, %._crit_edge ], [ %i.e, %bb.a ] ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !265
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare void @_ZNK9Stockfish10ThreadPool35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind writable sret(%"class.std::vector.33") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine25get_numa_config_as_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK9Stockfish10NumaConfig9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !51
  store i8 0, ptr %i.a, align 8, !tbaa !52
  %i.c = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not6486 = icmp eq ptr %i.c, %i.e
  br i1 %.not6486, label %._crit_edge90, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

._crit_edge90:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.088 = phi i1 [ true, %.lr.ph ], [ false, %._crit_edge ]
  %.sroa.060.087 = phi ptr [ %i.c, %.lr.ph ], [ %i.t, %._crit_edge ] ; 3 uses
  br i1 %.088, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !51
  %i.m = icmp eq i64 %i.l, 4611686018427387903
  br i1 %i.m, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.40, i64 noundef 1) #28 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 8 ; 3 uses
  %.not6582 = icmp eq ptr %i.p, %i.q
  br i1 %.not6582, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.an
  %.01285 = phi i1 [ %.1, %bb.an ], [ true, %bb.e ] ; 2 uses
  %.sroa.052.084 = phi ptr [ %i.ga, %bb.an ], [ %i.p, %bb.e ] ; 5 uses
  %.sroa.057.083 = phi ptr [ %.sroa.057.1, %bb.an ], [ %i.p, %bb.e ] ; 3 uses
  %i.r = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.052.084) #30 ; 4 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %.critedge, label %bb.f

._crit_edge:                                      ; preds = %bb.an, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 48 ; 2 uses
  %.not64 = icmp eq ptr %i.t, %i.e
  br i1 %.not64, label %._crit_edge90, label %bb.b

bb.f:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.052.084, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  %.not = icmp eq i64 %i.v, %i.y
  br i1 %.not, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.f
  br i1 %.01285, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.z = load i64, ptr %i.b, align 8, !tbaa !51
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13: ; preds = %bb.g
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.49, i64 noundef 1) #28 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13, %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.052.084, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25 ; 10 uses
  %.not66 = icmp eq ptr %.sroa.052.084, %.sroa.057.083
  br i1 %.not66, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.057.083, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.ag = icmp ult i64 %i.af, 10
  br i1 %i.ag, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.p
  %.029.i.i = phi i32 [ %i.ao, %bb.p ], [ 1, %bb.j ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.an, %bb.p ], [ %i.af, %bb.j ] ; 5 uses
  %i.ah = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ah, label %bb.k, label %bb.l
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !132
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !130 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !481

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

declare void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.179", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.179", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = load ptr, ptr %1, align 8, !tbaa !49
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %2, i64 %i.e, ptr %i.g, i64 1, ptr nonnull @.str.49)
  %i.h = load ptr, ptr %2, align 8, !tbaa !241    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !241  ; 2 uses
  %.not5054 = icmp eq ptr %i.h, %i.j
  br i1 %.not5054, label %._crit_edge, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.pre = load ptr, ptr %2, align 8, !tbaa !243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !245
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ai

bb.d:                                             ; preds = %.lr.ph56, %bb.ah
  %i.aa = phi ptr [ null, %.lr.ph56 ], [ %i.eh, %bb.ah ] ; 8 uses
  %i.ab = phi ptr [ null, %.lr.ph56 ], [ %i.ei, %bb.ah ] ; 4 uses
  %i.ac = phi ptr [ null, %.lr.ph56 ], [ %i.ej, %bb.ah ] ; 7 uses
  %i.ad = phi ptr [ null, %.lr.ph56 ], [ %.promoted61, %bb.ah ] ; 9 uses
  %.sroa.045.055 = phi ptr [ %i.h, %.lr.ph56 ], [ %i.ek, %bb.ah ] ; 4 uses
  %i.ae = load i64, ptr %.sroa.045.055, align 8, !tbaa !482
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.sroa.0.0.copyload = load i64, ptr %.sroa.045.055, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !246
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, i64 1, ptr nonnull @.str.50)
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !484
  %i.ah = load ptr, ptr %3, align 8, !tbaa !243   ; 6 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 4
  switch i64 %i.al, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit [
    i64 1, label %bb.f
    i64 2, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !246 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !46
  %i.am = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.an = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !25
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ao, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !49
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !52
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = load i64, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !51
  %i.au = load ptr, ptr %4, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.aw = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #28 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.az = load i64, ptr %i.r, align 8, !tbaa !52
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !359
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = ptrtoint ptr %i.aa to i64
  %i.bd = ptrtoint ptr %i.ad to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.n, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.bg = ashr exact i64 %i.be, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.bg
  %i.bj = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #31 ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i64 %i.aw, ptr %i.bn, align 8, !tbaa !25
  %i.bo = icmp sgt i64 %i.be, 0
  br i1 %i.bo, label %bb.o, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.ad, i64 %i.be, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.be) #33
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.bm, ptr %0, align 8, !tbaa !249
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !359
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !265
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.ah, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !246 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !46
  %i.br = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.bs = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.bs, %i.br
  br i1 %or.cond.i.i.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %.sroa.0.0.copyload.i11, ptr %i.b, align 8, !tbaa !25
  %i.bt = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bt, label %bb.t, label %._crit_edge.i.i.i.i15

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !49
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.bv, ptr %i.l, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %bb.t, %bb.s
  %i.bw = phi ptr [ %i.bu, %bb.t ], [ %i.l, %bb.s ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bx = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !52
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

bb.v:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16: ; preds = %._crit_edge.i.i.i.i15, %bb.u, %bb.v
  %i.by = load i64, ptr %i.b, align 8, !tbaa !25  ; 2 uses
  store i64 %i.by, ptr %i.m, align 8, !tbaa !51
  %i.bz = load ptr, ptr %5, align 8, !tbaa !49
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.cb = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #28 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !52
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cg = load ptr, ptr %3, align 8, !tbaa !243   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.ch, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.2.0.copyload.i22 = load ptr, ptr %.sroa.2.0..sroa_idx.i21, align 8, !tbaa !246 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !46
  %i.ci = icmp eq ptr %.sroa.2.0.copyload.i22, null
  %i.cj = icmp ne i64 %.sroa.0.0.copyload.i20, 0
  %or.cond.i.i.i23 = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i23, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i20, ptr %i.a, align 8, !tbaa !25
  %i.ck = icmp ugt i64 %.sroa.0.0.copyload.i20, 15
  br i1 %i.ck, label %bb.y, label %._crit_edge.i.i.i.i24

bb.y:                                             ; preds = %bb.x
  %i.cl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !49
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %bb.y, %bb.x
  %i.cn = phi ptr [ %i.cl, %bb.y ], [ %i.n, %bb.x ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i20, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.co = load i8, ptr %.sroa.2.0.copyload.i22, align 1, !tbaa !52
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %.sroa.2.0.copyload.i22, i64 %.sroa.0.0.copyload.i20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.z, %bb.aa
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.cp, ptr %i.o, align 8, !tbaa !51
  %i.cq = load ptr, ptr %6, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cs = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #28 ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !52
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.not52 = icmp ugt i64 %i.cb, %i.cs
  br i1 %.not52, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.cx = phi ptr [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cy = phi ptr [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.cz = phi ptr [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %storemerge53 = phi i64 [ %i.dv, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.da = phi ptr [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 6 uses
  %.not.i29 = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.i29, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  store i64 %storemerge53, ptr %i.cz, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.p, align 8, !tbaa !359
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.ac:                                            ; preds = %.lr.ph
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.da, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.ac
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i31, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 2 uses
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #31 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store i64 %storemerge53, ptr %i.dn, align 8, !tbaa !25
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

bb.ae:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33: ; preds = %bb.ae, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not.i17.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #33
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  store ptr %i.dp, ptr %i.p, align 8, !tbaa !359
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 3 uses
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !265
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.dr = phi ptr [ %i.cx, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cy, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %i.db, %bb.ab ], [ %i.dp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.du = phi ptr [ %i.da, %bb.ab ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dv = add i64 %storemerge53, 1                ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.cs
  br i1 %.not, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph, !llvm.loop !485

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dw = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dx = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dy = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split: ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit
  %.ph = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dw, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph87 = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dx, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph88 = phi ptr [ %i.bb, %bb.l ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dy, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.promoted62.ph = phi ptr [ %i.ad, %bb.l ], [ %i.bm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.lcssa, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !243
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split, %bb.e
  %i.dz = phi ptr [ %.pr, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ea = phi ptr [ %.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.aa, %bb.e ]
  %i.eb = phi ptr [ %.ph87, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ab, %bb.e ]
  %i.ec = phi ptr [ %.ph88, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ac, %bb.e ]
  %.promoted62 = phi ptr [ %.promoted62.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ad, %bb.e ]
  %.not.i.i.i35 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !245
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eg) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36
  %i.eh = phi ptr [ %i.aa, %bb.d ], [ %i.ea, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ei = phi ptr [ %i.ab, %bb.d ], [ %i.eb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ej = phi ptr [ %i.ac, %bb.d ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %.promoted61 = phi ptr [ %i.ad, %bb.d ], [ %.promoted62, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ek, %i.j
  br i1 %.not50, label %._crit_edge.loopexit, label %bb.d

bb.ai:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.202", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.205", align 1    ; 3 uses
  %5 = alloca %"class.std::map.193", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !36
  %i.f = load ptr, ptr %1, align 8, !tbaa !459    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !459  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !486
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !486
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !33, !alias.scope !486
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !34, !alias.scope !486
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !35, !alias.scope !486
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !486
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.080.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.080.0101, align 8, !tbaa !25 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !489

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !25
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.080.0101, ptr %3, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !455 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !458
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.080.0101, align 8, !tbaa !450
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !450
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
end_hunk_2
begin_hunk_3_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140.a, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139.a, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.dc, i64 %.0103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.dj = udiv exact i64 %i.dh, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !450
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !450
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !27
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !27
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !37
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !57
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !36
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !36
  store ptr null, ptr %i.ds, align 8, !tbaa !33
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !34
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !35
  store i64 0, ptr %i.ea, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !492

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !455
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !455
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141.a = load ptr, ptr %i.bd, align 8, !tbaa !455
  %.pre142.a = load ptr, ptr %i.bc, align 8, !tbaa !460
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !493

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.076.0121) #30 ; 2 uses
  %.not86.a = icmp eq ptr %i.es, %i.a
  br i1 %.not86.a, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.068.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 56 ; 2 uses
  %.not87.a = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87.a, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.064.0110 = phi ptr [ %i.jk, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !25 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !251

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !25
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !58    ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.preheader.i ] ; 5 uses
  %i.fo = phi ptr [ %i.hk, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.preheader.i ] ; 9 uses
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !55
  %.not.i.i38 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 0, ptr %i.ft, align 8, !tbaa !36
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !59
  %.pre143 = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775776
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ga = sdiv exact i64 %i.fy, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 192153584101141162)
  %i.ge = select i1 %i.gc, i64 192153584101141162, i64 %i.gd ; 2 uses
  %i.gf = mul nuw nsw i64 %i.ge, 48
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #31 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i64 0, ptr %i.gl, align 8, !tbaa !36
  %.not10.i.i.i.i60 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i60, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i62 = phi ptr [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !33, !alias.scope !497, !noalias !494 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i61
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !27, !alias.scope !497, !noalias !494
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !34, !alias.scope !497, !noalias !494
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !35, !alias.scope !497, !noalias !494
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gm, ptr %i.gv, align 8, !tbaa !57, !noalias !499
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36, !alias.scope !497, !noalias !494
  store ptr null, ptr %i.gn, align 8, !tbaa !33, !alias.scope !497, !noalias !494
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !34, !alias.scope !497, !noalias !494
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !35, !alias.scope !497, !noalias !494
  store i64 0, ptr %i.gw, align 8, !tbaa !36, !alias.scope !497, !noalias !494
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i61
  %.sink6.i.i.i.i.i = phi ptr [ %i.gs, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i61 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gu, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gx, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 16
  store ptr %i.go, ptr %i.gy, align 8, !tbaa !33, !alias.scope !494, !noalias !497
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !34, !alias.scope !494, !noalias !497
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !35, !alias.scope !494, !noalias !497
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.hb, align 8, !tbaa !36, !alias.scope !494, !noalias !497
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gm, align 8, !tbaa !27, !alias.scope !494, !noalias !497
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 48 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.hc, %i.fo
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.hh) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gg, ptr %0, align 8, !tbaa !58
  store ptr %i.he, ptr %i.o, align 8, !tbaa !59
  %i.hi = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.hi, ptr %i.p, align 8, !tbaa !55
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hj = phi ptr [ %.pre143, %bb.s ], [ %i.gg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hk = phi ptr [ %i.fv, %bb.s ], [ %i.he, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hj to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 48
  %.not.i39 = icmp ugt i64 %i.ho, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !259

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.fi, %.preheader.i ], [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.136116 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hq, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i40
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !25 ; 2 uses
  %i.hu = icmp ult i64 %i.ez, %i.ht               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.hu, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i41, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !38

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i40
  br i1 %i.hu, label %._crit_edge.thread.i.i.i.i, label %bb.y

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hr, %._crit_edge.i ] ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !34
  %i.hx = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.hw
  br i1 %i.hx, label %select.unfold.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.hy = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %i.hz = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.ht, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.x ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ia = icmp ult i64 %i.hz, %i.ez
  br i1 %i.ia, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.y, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.y ] ; 3 uses
  %i.ib = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.hr
  br i1 %i.ib, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !25
  %i.ie = icmp ult i64 %i.ez, %i.id
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.z, %select.unfold.i.i.i
  %i.if = phi i1 [ %i.ie, %bb.z ], [ true, %select.unfold.i.i.i ]
  %i.ig = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store i64 %i.ez, ptr %i.ih, align 8, !tbaa !25
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.if, ptr noundef nonnull %i.ig, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hr) #28
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 40 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !36
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.y
  %i.il = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.il, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i57, label %.lr.ph.i.i.i.i49

.lr.ph.i.i.i.i49:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i49
  %.012.i.i.i.i50 = phi ptr [ %.1.i.i.i.i55, %.lr.ph.i.i.i.i49 ], [ %i.il, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i51 = phi ptr [ %.19.i.i.i.i52, %.lr.ph.i.i.i.i49 ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 32
  %i.in = load i64, ptr %i.im, align 8, !tbaa !25
  %i.io = icmp ult i64 %i.in, %i.ez               ; 2 uses
  %.19.i.i.i.i52 = select i1 %i.io, ptr %.0811.i.i.i.i51, ptr %.012.i.i.i.i50 ; 6 uses
  %.1.in.v.i.i.i.i53 = select i1 %i.io, i64 24, i64 16
  %.1.in.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 %.1.in.v.i.i.i.i53
  %.1.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i54, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i55, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i49, !llvm.loop !260

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i49
  %i.ip = icmp eq ptr %.19.i.i.i.i52, %i.j
  br i1 %i.ip, label %.critedge.i57, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !25
  %i.is = icmp ult i64 %i.ez, %i.ir
  br i1 %i.is, label %.critedge.i57, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i57:                                    ; preds = %bb.aa, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %.19.i.i.i.i52, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.it = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32 ; 3 uses
  store i64 %i.ez, ptr %i.iu, align 8, !tbaa !261
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 40
  store i64 0, ptr %i.iv, align 8, !tbaa !263
  %i.iw = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.iu) ; 2 uses
  %i.ix = extractvalue { ptr, ptr } %i.iw, 0      ; 2 uses
  %i.iy = extractvalue { ptr, ptr } %i.iw, 1      ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i58, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i57
  %.not.i.i.i4.i = icmp ne ptr %i.ix, null
  %i.iz = icmp eq ptr %i.iy, %i.j
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.iz
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jb = load i64, ptr %i.iu, align 8, !tbaa !25
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !25
  %i.jd = icmp ult i64 %i.jb, %i.jc
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.je = phi i1 [ %i.jd, %bb.ac ], [ true, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.je, ptr noundef nonnull %i.it, ptr noundef nonnull %i.iy, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.jf = load i64, ptr %i.n, align 8, !tbaa !36
  %i.jg = add i64 %i.jf, 1
  store i64 %i.jg, ptr %i.n, align 8, !tbaa !36
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.ad:                                            ; preds = %.critedge.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef 48) #33
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.aa, %.thread.i.i, %bb.ad
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %i.it, %.thread.i.i ], [ %i.ix, %bb.ad ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.136116, ptr %i.jh, align 8, !tbaa !25
  %i.ji = load i64, ptr %i.r, align 8, !tbaa !264
  %i.jj = icmp ugt i64 %i.ez, %i.ji
  br i1 %i.jj, label %bb.ae, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

bb.ae:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.ez, ptr %i.r, align 8, !tbaa !264
  br label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.ae
  %i.jk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.064.0110) #30 ; 2 uses
  %.not88 = icmp eq ptr %i.jk, %i.ew
  br i1 %.not88, label %._crit_edge113, label %.lr.ph112
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.179") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.au, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.av, %bb.o ], [ 0, %.preheader ] ; 14 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27.i.i = icmp ugt i64 %.09, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %.09, %1
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = sub nuw i64 %1, %.09                     ; 2 uses
  %.not2531.i.i = icmp ult i64 %i.k, %3
  br i1 %.not2531.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.09
  %i.m = load i8, ptr %4, align 1, !tbaa !52
  %i.n = sext i8 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.v, %bb.h ]
  %.02032.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i, %invariant.op ; 2 uses
  %i.o = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.f
  %i.p = tail call ptr @memchr(ptr noundef %.02032.i.i, i32 noundef %i.n, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.reass) #28 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.p, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %4, i64 %3)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %i.e
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.d, %i.u                       ; 2 uses
  %.not25.i.i = icmp ult i64 %i.v, %3
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !500

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %bb.c, %bb.g
  %.1.i.i = phi i64 [ %.09, %bb.c ], [ %i.s, %bb.g ] ; 3 uses
  %i.w = icmp eq i64 %.1.i.i, -1
  br i1 %i.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.x = icmp ugt i64 %.09, %1
  br i1 %i.x, label %bb.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %0, align 8
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i64 noundef %.09, i64 noundef %1) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.i
  %i.y = sub i64 %.1.i.i, %.09
  %i.z = sub nuw i64 %1, %.09
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !25
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !246
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !484
  br label %bb.o

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.m, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #31 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.an, align 8, !tbaa !25
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !246
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !501, !alias.scope !502
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !506

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !484
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !245
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.k
  %i.as = phi ptr [ %i.ar, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.h, %bb.k ]
  %i.at = phi ptr [ %i.aq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.ab, %bb.k ]
  %i.au = phi ptr [ %i.am, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.j, %bb.k ]
  %i.av = add i64 %.1.i.i, %3
  br label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.c, %bb.e, %bb.d, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %bb.f, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.h
  store ptr %i.j, ptr %0, align 8
  %i.aw = icmp ugt i64 %.09, %1
  br i1 %i.aw, label %bb.p, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i64 noundef %.09, i64 noundef %1) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread
  %i.ax = sub nuw i64 %1, %.09                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %.09 ; 2 uses
  %.not.i14 = icmp eq ptr %i.i, %i.h
  br i1 %.not.i14, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  store i64 %i.ax, ptr %i.i, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !246
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.az, ptr %i.f, align 8, !tbaa !484
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit13
  %i.ba = ptrtoint ptr %i.h to i64
  %i.bb = ptrtoint ptr %i.j to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775792
  br i1 %i.bd, label %bb.s, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.r
  %i.be = ashr exact i64 %i.bc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i16, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 576460752303423487)
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #31 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i64 %i.ax, ptr %i.bl, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !246
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i19 ], [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !501, !alias.scope !507
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bm, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !506

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bn, %.lr.ph.i.i.i.i.i19 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bc) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bk, ptr %0, align 8, !tbaa !243
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !484
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !245
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, %bb.q, %bb.a
  ret void
}

declare noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !455  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !460    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !450
  store i64 %i.r, ptr %i.q, align 8, !tbaa !450
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.u, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  store ptr null, ptr %i.t, align 8, !tbaa !33
  store ptr %i.v, ptr %i.y, align 8, !tbaa !34
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !35
  store i64 0, ptr %i.ad, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !33
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

_ZN9Stockfish8L3DomainC2EOS0_.exit:               ; preds = %bb.c, %bb.d
  %.sink36 = phi ptr [ %i.s, %bb.d ], [ %i.z, %bb.c ]
  %.sink35 = phi ptr [ %i.s, %bb.d ], [ %i.ab, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sink36, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sink35, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sink, ptr %i.ai, align 8, !tbaa !36
  store i32 %.sink.i.i.i.i.i, ptr %i.s, align 8, !tbaa !27
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !450, !alias.scope !514, !noalias !511
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !450, !alias.scope !511, !noalias !514
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33, !alias.scope !514, !noalias !511 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27, !alias.scope !514, !noalias !511
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34, !alias.scope !514, !noalias !511
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35, !alias.scope !514, !noalias !511
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !57, !noalias !516
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !36, !alias.scope !514, !noalias !511
  store ptr null, ptr %i.al, align 8, !tbaa !33, !alias.scope !514, !noalias !511
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !34, !alias.scope !514, !noalias !511
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !35, !alias.scope !514, !noalias !511
  store i64 0, ptr %i.au, align 8, !tbaa !36, !alias.scope !514, !noalias !511
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.as, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %i.am, ptr %i.aw, align 8, !tbaa !33, !alias.scope !511, !noalias !514
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink6.i.i.i.i, ptr %i.ax, align 8, !tbaa !34, !alias.scope !511, !noalias !514
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store ptr %.sink5.i.i.i.i, ptr %i.ay, align 8, !tbaa !35, !alias.scope !511, !noalias !514
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %.sink.i.i.i.i, ptr %i.az, align 8, !tbaa !36, !alias.scope !511, !noalias !514
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !27, !alias.scope !511, !noalias !514
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !517

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish8L3DomainC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !450, !alias.scope !521, !noalias !518
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !450, !alias.scope !518, !noalias !521
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33, !alias.scope !521, !noalias !518 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !27, !alias.scope !521, !noalias !518
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34, !alias.scope !521, !noalias !518
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35, !alias.scope !521, !noalias !518
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !57, !noalias !523
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36, !alias.scope !521, !noalias !518
  store ptr null, ptr %i.bf, align 8, !tbaa !33, !alias.scope !521, !noalias !518
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !34, !alias.scope !521, !noalias !518
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !35, !alias.scope !521, !noalias !518
  store i64 0, ptr %i.bo, align 8, !tbaa !36, !alias.scope !521, !noalias !518
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.f, %.lr.ph.i.i.i17
  %.sink6.i.i.i.i22 = phi ptr [ %i.bk, %bb.f ], [ %i.be, %.lr.ph.i.i.i17 ]
  %.sink5.i.i.i.i23 = phi ptr [ %i.bm, %bb.f ], [ %i.be, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i24 = phi i64 [ %i.bp, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %.sink.i.i.i.i.i.i.i.i.i25 = phi i32 [ %i.bi, %bb.f ], [ 0, %.lr.ph.i.i.i17 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  store ptr %i.bg, ptr %i.bq, align 8, !tbaa !33, !alias.scope !518, !noalias !521
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  store ptr %.sink6.i.i.i.i22, ptr %i.br, align 8, !tbaa !34, !alias.scope !518, !noalias !521
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store ptr %.sink5.i.i.i.i23, ptr %i.bs, align 8, !tbaa !35, !alias.scope !518, !noalias !521
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  store i64 %.sink.i.i.i.i24, ptr %i.bt, align 8, !tbaa !36, !alias.scope !518, !noalias !521
  store i32 %.sink.i.i.i.i.i.i.i.i.i25, ptr %i.be, align 8, !tbaa !27, !alias.scope !518, !noalias !521
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bu, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !517

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !458
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #33
  br label %_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN9Stockfish8L3DomainESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !460
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8, !tbaa !455
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !458
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp ult i64 %i.f, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !251

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !37 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !529

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp ult i64 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %bb.b, !llvm.loop !260

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp ult i64 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i64, ptr %1, align 8, !tbaa !25
  store i64 %i.n, ptr %i.m, align 8, !tbaa !261
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !263
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i64, ptr %i.m, align 8, !tbaa !25
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !36
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #33
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !36
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33, !alias.scope !533, !noalias !530 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27, !alias.scope !533, !noalias !530
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34, !alias.scope !533, !noalias !530
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35, !alias.scope !533, !noalias !530
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.ae, align 8, !tbaa !57, !noalias !535
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36, !alias.scope !533, !noalias !530
  store ptr null, ptr %i.w, align 8, !tbaa !33, !alias.scope !533, !noalias !530
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !34, !alias.scope !533, !noalias !530
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !35, !alias.scope !533, !noalias !530
  store i64 0, ptr %i.af, align 8, !tbaa !36, !alias.scope !533, !noalias !530
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.v, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.v, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.ag, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !33, !alias.scope !530, !noalias !533
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ai, align 8, !tbaa !34, !alias.scope !530, !noalias !533
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.aj, align 8, !tbaa !35, !alias.scope !530, !noalias !533
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i, ptr %i.ak, align 8, !tbaa !36, !alias.scope !530, !noalias !533
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !27, !alias.scope !530, !noalias !533
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.am, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20
  %.012.i.i.i17 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33, !alias.scope !539, !noalias !536 ; 3 uses
  %.not.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i19, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !27, !alias.scope !539, !noalias !536
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34, !alias.scope !539, !noalias !536
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35, !alias.scope !539, !noalias !536
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ao, ptr %i.ax, align 8, !tbaa !57, !noalias !541
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36, !alias.scope !539, !noalias !536
  store ptr null, ptr %i.ap, align 8, !tbaa !33, !alias.scope !539, !noalias !536
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !34, !alias.scope !539, !noalias !536
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !35, !alias.scope !539, !noalias !536
  store i64 0, ptr %i.ay, align 8, !tbaa !36, !alias.scope !539, !noalias !536
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %bb.d, %.lr.ph.i.i.i16
  %.sink6.i.i.i.i21 = phi ptr [ %i.au, %bb.d ], [ %i.ao, %.lr.ph.i.i.i16 ]
  %.sink5.i.i.i.i22 = phi ptr [ %i.aw, %bb.d ], [ %i.ao, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i23 = phi i64 [ %i.az, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i.i.i.i.i24 = phi i32 [ %i.as, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !33, !alias.scope !536, !noalias !539
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  store ptr %.sink6.i.i.i.i21, ptr %i.bb, align 8, !tbaa !34, !alias.scope !536, !noalias !539
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  store ptr %.sink5.i.i.i.i22, ptr %i.bc, align 8, !tbaa !35, !alias.scope !536, !noalias !539
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  store i64 %.sink.i.i.i.i23, ptr %i.bd, align 8, !tbaa !36, !alias.scope !536, !noalias !539
  store i32 %.sink.i.i.i.i.i.i.i.i24, ptr %i.ao, align 8, !tbaa !27, !alias.scope !536, !noalias !539
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.an, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bf, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #33
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !36
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = load i64, ptr %2, align 8, !tbaa !25
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !542

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !25
  %.pre82 = load i64, ptr %2, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E:bb.a

_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !458
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #33
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZSt8_DestroyIPN9Stockfish8L3DomainEEvT_S3_.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !543

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #33
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !544

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN9Stockfish10NumaConfig16from_system_numaIRZNS0_11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEbEUlmE_EES0_bOT_ENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.Stockfish::NumaConfig", align 8 ; 15 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !545, !nonnull !45
  store i8 1, ptr %i.a, align 1, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %1, i8 0, i64 24, i1 false), !alias.scope !547
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !547
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !33, !alias.scope !547
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34, !alias.scope !547
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !35, !alias.scope !547
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !alias.scope !547
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !550, !nonnull !45, !align !449 ; 11 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.u) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store ptr null, ptr %i.w, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 0, ptr %i.ab, align 8, !tbaa !36
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !37  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZN9Stockfish10NumaConfigaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !27
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !27
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !33
  %i.ae = load <2 x ptr>, ptr %i.d, align 8, !tbaa !37
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.y, ptr %i.af, align 8, !tbaa !57
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !36
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !36
  store ptr null, ptr %i.c, align 8, !tbaa !33
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34
  store ptr %i.b, ptr %i.e, align 8, !tbaa !35
  store i64 0, ptr %i.f, align 8, !tbaa !36
  br label %_ZN9Stockfish10NumaConfigaSEOS0_.exit

_ZN9Stockfish10NumaConfigaSEOS0_.exit:            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, ptr noundef nonnull align 8 dereferenceable(9) %i.ai, i64 9, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef null)
  %i.ak = load ptr, ptr %1, align 8, !tbaa !58    ; 3 uses
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !59  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZN9Stockfish10NumaConfigaSEOS0_.exit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.i.i.i1, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZN9Stockfish10NumaConfigaSEOS0_.exit
  %i.ap = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.ak, %_ZN9Stockfish10NumaConfigaSEOS0_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

declare void @_ZN9Stockfish17remove_whitespaceERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %3 = mul nuw nsw i64 %i.l, 48
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #31 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 6 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !33       ; 3 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %8, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.v, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  store ptr null, ptr %7, align 8, !tbaa !33
  store ptr %i.o, ptr %i.r, align 8, !tbaa !34
  store ptr %i.o, ptr %i.t, align 8, !tbaa !35
  store i64 0, ptr %i.w, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.y, align 8, !tbaa !33
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit:          ; preds = %bb.c, %bb.d
  %.sink37 = phi ptr [ %6, %bb.d ], [ %i.s, %bb.c ]
  %.sink36 = phi ptr [ %6, %bb.d ], [ %i.u, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.x, %bb.c ]
  %.sink.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.p, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sink37, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sink36, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sink, ptr %i.ab, align 8, !tbaa !36
  store i32 %.sink.i.i.i.i, ptr %6, align 8, !tbaa !27
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33, !alias.scope !554, !noalias !551 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27, !alias.scope !554, !noalias !551
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34, !alias.scope !554, !noalias !551
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35, !alias.scope !554, !noalias !551
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ac, ptr %i.al, align 8, !tbaa !57, !noalias !556
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !36, !alias.scope !554, !noalias !551
  store ptr null, ptr %i.ad, align 8, !tbaa !33, !alias.scope !554, !noalias !551
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !34, !alias.scope !554, !noalias !551
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !35, !alias.scope !554, !noalias !551
  store i64 0, ptr %i.am, align 8, !tbaa !36, !alias.scope !554, !noalias !551
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ac, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ac, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i16 = phi i64 [ %i.an, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.ae, ptr %i.ao, align 8, !tbaa !33, !alias.scope !551, !noalias !554
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ap, align 8, !tbaa !34, !alias.scope !551, !noalias !554
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.aq, align 8, !tbaa !35, !alias.scope !551, !noalias !554
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i16, ptr %i.ar, align 8, !tbaa !36, !alias.scope !551, !noalias !554
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !27, !alias.scope !551, !noalias !554
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit ], [ %i.at, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.au, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.bl, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33, !alias.scope !560, !noalias !557 ; 3 uses
  %.not.i.i.i.i.i.i.i.i21 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i18
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !27, !alias.scope !560, !noalias !557
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34, !alias.scope !560, !noalias !557
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 32 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35, !alias.scope !560, !noalias !557
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.av, ptr %i.be, align 8, !tbaa !57, !noalias !562
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36, !alias.scope !560, !noalias !557
  store ptr null, ptr %i.aw, align 8, !tbaa !33, !alias.scope !560, !noalias !557
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !34, !alias.scope !560, !noalias !557
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !35, !alias.scope !560, !noalias !557
  store i64 0, ptr %i.bf, align 8, !tbaa !36, !alias.scope !560, !noalias !557
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %bb.f, %.lr.ph.i.i.i18
  %.sink6.i.i.i.i23 = phi ptr [ %i.bb, %bb.f ], [ %i.av, %.lr.ph.i.i.i18 ]
  %.sink5.i.i.i.i24 = phi ptr [ %i.bd, %bb.f ], [ %i.av, %.lr.ph.i.i.i18 ]
  %.sink.i.i.i.i25 = phi i64 [ %i.bg, %bb.f ], [ 0, %.lr.ph.i.i.i18 ]
  %.sink.i.i.i.i.i.i.i.i26 = phi i32 [ %i.az, %bb.f ], [ 0, %.lr.ph.i.i.i18 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16
  store ptr %i.ax, ptr %i.bh, align 8, !tbaa !33, !alias.scope !557, !noalias !560
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24
  store ptr %.sink6.i.i.i.i23, ptr %i.bi, align 8, !tbaa !34, !alias.scope !557, !noalias !560
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 32
  store ptr %.sink5.i.i.i.i24, ptr %i.bj, align 8, !tbaa !35, !alias.scope !557, !noalias !560
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40
  store i64 %.sink.i.i.i.i25, ptr %i.bk, align 8, !tbaa !36, !alias.scope !557, !noalias !560
  store i32 %.sink.i.i.i.i.i.i.i.i26, ptr %i.av, align 8, !tbaa !27, !alias.scope !557, !noalias !560
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i27, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, label %.lr.ph.i.i.i18, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i28 = phi ptr [ %i.au, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bm, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !55
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bq) #33
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit29, %bb.g
  store ptr %4, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i28, ptr %i.a, align 8, !tbaa !59
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.l
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9Stockfish9Benchmark5perftILb1EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %3 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  %4 = alloca %"struct.Stockfish::MoveList", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = icmp eq i32 %1, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.c = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %3) #28 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !563
  %.not29 = icmp eq ptr %3, %i.c
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp slt i32 %1, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 622
  %i.h = add nsw i32 %1, -1
  %i.i = ptrtoint ptr %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 621
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.025.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i64 %.025.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.02531 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.02630 = phi ptr [ %3, %.lr.ph ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add i64 %.02531, 1
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.sroa.02.0.copyload = load i16, ptr %.02630, align 2, !tbaa !566 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !61
  %i.n = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.02.0.copyload) #28
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.02.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.n, ptr noundef nonnull align 1 dereferenceable(7) %i.g, ptr noundef nonnull align 8 dereferenceable(416) %i.e, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %4) #28
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.p, %i.i
  %i.r = ashr exact i64 %i.q, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = call noundef i64 @_ZN9Stockfish9Benchmark5perftILb0EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %i.h)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i64 [ %i.r, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.u = add i64 %i.t, %.02531
  %.sroa.01.0.copyload = load i16, ptr %.02630, align 2, !tbaa !566
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.1 = phi i64 [ %i.m, %bb.c ], [ %i.u, %bb.g ]  ; 2 uses
  %.0 = phi i64 [ 1, %bb.c ], [ %i.t, %bb.g ]
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.0.0.copyload = load i16, ptr %.02630, align 2, !tbaa !566
  %i.w = load i8, ptr %i.j, align 1, !tbaa !568, !range !44, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  call void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i16 %.sroa.0.0.copyload, i1 noundef zeroext %i.x) #28
  %i.y = load ptr, ptr %5, align 8, !tbaa !49
  %i.z = load i64, ptr %i.k, align 8, !tbaa !51
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.y, i64 noundef %i.z) #28 ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.32, i64 noundef 2) #28 ; 0 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %.0) #28 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !153
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !319 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt16__throw_bad_castv() #32
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !334
  %.not.i1.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai) #28
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !153
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10) #28, !inline_history !340
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext %.0.i.i.i) #28
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #28
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 1) #28 ; 0 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.l
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !52
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %.02630, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9Stockfish9Benchmark5perftILb0EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %"struct.Stockfish::StateInfo", align 8 ; 4 uses
  %3 = alloca %"struct.Stockfish::MoveList", align 8 ; 7 uses
  %4 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.b = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %3) #28 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !563
  %.not21 = icmp eq ptr %3, %i.b
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 2 uses
  %i.g = add nsw i32 %1, -1
  %i.h = ptrtoint ptr %4 to i64
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.023.us = phi i64 [ %i.n, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.01922.us = phi ptr [ %i.o, %.lr.ph.split.us ], [ %3, %.lr.ph ] ; 3 uses
  %.sroa.01.0.copyload.us = load i16, ptr %.01922.us, align 2, !tbaa !566 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !61
  %i.i = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload.us) #28
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 8 dereferenceable(416) %i.d, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.j = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %4) #28
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.h
  %i.m = ashr exact i64 %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = add i64 %i.m, %.023.us                   ; 2 uses
  %.sroa.0.0.copyload.us = load i16, ptr %.01922.us, align 2, !tbaa !566
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload.us) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.01922.us, i64 2 ; 2 uses
  %.not.us = icmp eq ptr %i.o, %i.b
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %.lr.ph.split.us ], [ %i.r, %.lr.ph.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i64 %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.023 = phi i64 [ %i.r, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.01922 = phi ptr [ %i.s, %.lr.ph.split ], [ %3, %.lr.ph ] ; 3 uses
  %.sroa.01.0.copyload = load i16, ptr %.01922, align 2, !tbaa !566 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !61
  %i.p = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload) #28
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.p, ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 8 dereferenceable(416) %i.d, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.q = call noundef i64 @_ZN9Stockfish9Benchmark5perftILb0EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %i.g)
end_hunk_5
begin_hunk_6_@_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !49
  store i8 0, ptr %i.bc, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #32
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !648 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !648 ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr i64 %i.f, 5                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.i = and i64 %i.f, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.g ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !649
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !649
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !649
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.v = add nsw i64 %.052.i.i.i.i, -1
  %i.w = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !651

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.d, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.f, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit ] ; 5 uses
  %i.x = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.x, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !649
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !649
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !649
  %i.af = icmp eq ptr %i.ae, %0
  %spec.select.i.i.i.i = select i1 %i.af, ptr %.sroa.032.2.i.i.i.i, ptr %i.c
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i: ; preds = %bb.c, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.ai, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31 ], [ %i.ah, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29 ], [ %i.ag, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.c ] ; 4 uses
  %i.aj = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.c
  %.sroa.07.026.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %.sroa.07.026.i.i, %i.c
  %or.cond.i.i = select i1 %i.aj, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, %bb.l
  %.sroa.07.029.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %.sroa.07.026.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i ] ; 2 uses
  %.sroa.013.028.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i ] ; 3 uses
  %i.ak = load ptr, ptr %.sroa.07.029.i.i, align 8, !tbaa !649 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  store ptr %i.ak, ptr %.sroa.013.028.i.i, align 8, !tbaa !649
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %.lr.ph.i.i ], [ %i.am, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 8 ; 2 uses
  %.not.i.i3 = icmp eq ptr %.sroa.07.0.i.i, %i.c
  br i1 %.not.i.i3, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !652

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit: ; preds = %bb.l, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.not.i.i4 = icmp eq ptr %.sroa.013.2.i.i, %i.c
  br i1 %.not.i.i4, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit
  %i.an = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.ao = sub i64 %i.an, %i.e
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #32
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653 ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !431
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.b, align 8, !tbaa !649
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.e = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !428 ; 4 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.q, align 8, !tbaa !649
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !431
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.v) #33
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.p, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !428
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  store ptr %i.w, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !431
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !153
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !52
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.t = load i64, ptr %i.r, align 8, !tbaa !52
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !153
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(144) %0), !inline_history !632
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) #28, !inline_history !632
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33, !inline_history !632
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !52
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33, !inline_history !632
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !52
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33, !inline_history !632
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE5closeEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !270
  %i.c = icmp eq i32 %i.b, -1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.g = load i32, ptr %i.a, align 8, !tbaa !270
  %i.h = tail call i32 @flock(i32 noundef %i.g, i32 noundef 2) #28
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit

bb.c:                                             ; preds = %.preheader.i
  %i.i = tail call ptr @__errno_location() #34
  %i.j = load i32, ptr %i.i, align 4, !tbaa !121
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %.preheader.i, label %.critedge, !llvm.loop !654

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !274
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %.preheader.i14

.preheader.i14:                                   ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, %.preheader.i14
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef %i.n) #28
  switch i32 %i.o, label %.critedge [
    i32 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
    i32 130, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
    i32 4, label %.preheader.i14
  ]

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit: ; preds = %.preheader.i14
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.q = tail call i32 @pthread_mutex_consistent(ptr noundef %i.p) #28
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread, label %.critedge

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread: ; preds = %.preheader.i14, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !274  ; 2 uses
  %.not9 = icmp eq ptr %i.s, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = icmp eq i64 %i.w, 0
end_hunk_6
begin_hunk_7_@_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE31has_other_live_sentinels_lockedEv:bb.a
  store ptr %i.y, ptr %4, align 8, !tbaa !46, !alias.scope !668
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 5 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !51 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.bt, ptr %4, align 8, !tbaa !49, !alias.scope !668
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !52
  store i64 %i.ca, ptr %i.y, align 8, !tbaa !52, !alias.scope !668
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cb = phi i64 [ %i.bx, %bb.s ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.cb, ptr %i.z, align 8, !tbaa !51, !alias.scope !668
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !49
  store i64 0, ptr %i.cc, align 8, !tbaa !51
  store i8 0, ptr %i.bu, align 8, !tbaa !52
  %i.cd = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.w
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit
  %i.cf = load i64, ptr %i.w, align 8, !tbaa !52
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ch = load ptr, ptr %4, align 8, !tbaa !49
  %i.ci = call i32 @unlink(ptr noundef %i.ch) #28 ; 0 uses
  %i.cj = load ptr, ptr %i.aa, align 8, !tbaa !274 ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load atomic i32, ptr %i.ck monotonic, align 4 ; 2 uses
  %.old1.not.i = icmp eq i32 %i.cl, 0
  br i1 %.old1.not.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %.0.i26 = phi i32 [ %i.cr, %.preheader.i ], [ %i.cl, %bb.t ] ; 2 uses
  %i.cm = load ptr, ptr %i.aa, align 8, !tbaa !274
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = add i32 %.0.i26, -1
  %i.cp = cmpxchg weak ptr %i.cn, i32 %.0.i26, i32 %i.co acq_rel monotonic, align 4 ; 2 uses
  %i.cq = extractvalue { i32, i1 } %i.cp, 1
  %i.cr = extractvalue { i32, i1 } %i.cp, 0       ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %or.cond.i = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond.i, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, label %.preheader.i, !llvm.loop !655

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit: ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t
  %i.ct = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.y
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit
  %i.cv = load i64, ptr %i.y, align 8, !tbaa !52
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE26decrement_refcount_relaxedEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %bb.o
  %i.cx = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ false, %bb.o ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit ], [ true, %bb.q ]
  %.2 = phi i1 [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %.0, %bb.o ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ true, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cy = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.u
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread
  %i.da = load i64, ptr %i.u, align 8, !tbaa !52
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE12pid_is_aliveEi.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.213 = phi i1 [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ]
  %.3 = phi i1 [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 2 uses
  %i.dc = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.s
  br i1 %i.dd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.u
  %i.de = load i64, ptr %i.s, align 8, !tbaa !52
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.213, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34
  %.445 = phi i1 [ %.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34 ], [ %.0, %bb.e ]
  %i.dg = call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  %i.dh = load ptr, ptr %1, align 8, !tbaa !49    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.i
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.thread
  %i.dj = load i64, ptr %i.i, align 8, !tbaa !52
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.015 = phi i1 [ %.445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ false, %bb.a ]
  ret i1 %.015
}

declare i32 @shm_unlink(ptr noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @flock(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @pthread_mutex_consistent(ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #19

declare ptr @readdir(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %class.anon.316, align 1            ; 3 uses
  %4 = alloca %class.anon.316, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !161    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 160                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 57646075230342348)
  %i.l = select i1 %i.j, i64 57646075230342348, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 160
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152 ; 2 uses
  store i8 -1, ptr %i.r, align 8, !tbaa !164
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !164   ; 3 uses
  switch i8 %i.t, label %bb.f [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit
  ]

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 144 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !268
  %i.w = load i8, ptr %i.u, align 8, !tbaa !268, !range !44, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %2) #28
  store i8 1, ptr %i.v, align 8, !tbaa !268
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 8, !tbaa !164
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit

bb.e:                                             ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = load i64, ptr %2, align 8, !tbaa !107
  store i64 %i.y, ptr %i.q, align 8, !tbaa !107
  store ptr null, ptr %2, align 8, !tbaa !107
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit

bb.f:                                             ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit: ; preds = %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c, %bb.d, %bb.e
  %i.z = phi i8 [ %i.t, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ %i.t, %_ZNKSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_M_check_lenEmPKc.exit ], [ 1, %bb.c ], [ %.pre.i.i.i.i.i.i, %bb.d ], [ 2, %bb.e ]
  store i8 %i.z, ptr %i.r, align 8, !tbaa !164
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.015.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit ] ; 5 uses
  %.0912.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 152 ; 3 uses
  store i8 -1, ptr %i.aa, align 8, !tbaa !164, !alias.scope !671, !noalias !674
  %i.ab = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 152 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !164, !alias.scope !674, !noalias !671 ; 4 uses
  switch i8 %i.ac, label %bb.i [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
    i8 1, label %bb.g
    i8 2, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  ]

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 144 ; 2 uses
  store i8 0, ptr %i.ae, align 8, !tbaa !268, !alias.scope !671, !noalias !674
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !268, !range !44, !alias.scope !674, !noalias !671, !noundef !45
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %.sink.split.i.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %.015.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i) #28
  store i8 1, ptr %i.ae, align 8, !tbaa !268, !alias.scope !671, !noalias !674
  %.pre.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ab, align 8, !tbaa !164, !alias.scope !674, !noalias !671
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ah = load i64, ptr %.0912.i.i.i, align 8, !tbaa !107, !alias.scope !674, !noalias !671
  store i64 %i.ah, ptr %.015.i.i.i, align 8, !tbaa !107, !alias.scope !671, !noalias !674
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !107, !alias.scope !674, !noalias !671
  br label %.sink.split.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.ai = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.ac, %.lr.ph.i.i.i ], [ %i.ac, %.lr.ph.i.i.i ] ; 2 uses
  store i8 %i.ai, ptr %i.aa, align 8, !tbaa !164, !alias.scope !671, !noalias !674
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.j, !prof !644

.sink.split.i.i.i.i:                              ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i, %bb.g
  store i8 %i.ac, ptr %i.aa, align 8, !tbaa !164, !alias.scope !671, !noalias !674
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i.i.i.i, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !676
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !676
  br label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.j, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 160 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !646

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit ], [ %i.ak, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 160 ; 2 uses
  %.not11.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i16, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22
  %.015.i.i.i18 = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.al, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0912.i.i.i19 = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.am = getelementptr inbounds nuw i8, ptr %.015.i.i.i18, i64 152 ; 3 uses
  store i8 -1, ptr %i.am, align 8, !tbaa !164, !alias.scope !677, !noalias !680
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 152 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !164, !alias.scope !680, !noalias !677 ; 4 uses
  switch i8 %i.ao, label %bb.m [
    i8 0, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
    i8 1, label %bb.k
    i8 2, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i25
    i8 -1, label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
  ]

bb.k:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 144
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i18, i64 144 ; 2 uses
  store i8 0, ptr %i.aq, align 8, !tbaa !268, !alias.scope !677, !noalias !680
  %i.ar = load i8, ptr %i.ap, align 8, !tbaa !268, !range !44, !alias.scope !680, !noalias !677, !noundef !45
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.l, label %.sink.split.i.i.i.i26

bb.l:                                             ; preds = %bb.k
  call void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(160) %.015.i.i.i18, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i19) #28
  store i8 1, ptr %i.aq, align 8, !tbaa !268, !alias.scope !677, !noalias !680
  %.pre.i.i.i.i.i.i.i.i.i.i27 = load i8, ptr %i.an, align 8, !tbaa !164, !alias.scope !680, !noalias !677
  br label %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i25: ; preds = %.lr.ph.i.i.i17
  %i.at = load i64, ptr %.0912.i.i.i19, align 8, !tbaa !107, !alias.scope !680, !noalias !677
  store i64 %i.at, ptr %.015.i.i.i18, align 8, !tbaa !107, !alias.scope !677, !noalias !680
  store ptr null, ptr %.0912.i.i.i19, align 8, !tbaa !107, !alias.scope !680, !noalias !677
  br label %.sink.split.i.i.i.i26

bb.m:                                             ; preds = %.lr.ph.i.i.i17
  unreachable

_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20: ; preds = %bb.l, %.lr.ph.i.i.i17, %.lr.ph.i.i.i17
  %i.au = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i27, %bb.l ], [ %i.ao, %.lr.ph.i.i.i17 ], [ %i.ao, %.lr.ph.i.i.i17 ] ; 2 uses
  store i8 %i.au, ptr %i.am, align 8, !tbaa !164, !alias.scope !677, !noalias !680
  %.not.i.i.i.i.i.i.i21 = icmp eq i8 %i.au, -1
  br i1 %.not.i.i.i.i.i.i.i21, label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, label %bb.n, !prof !644

.sink.split.i.i.i.i26:                            ; preds = %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.thread.i.i.i.i25, %bb.k
  store i8 %i.ao, ptr %i.am, align 8, !tbaa !164, !alias.scope !677, !noalias !680
  br label %bb.n

bb.n:                                             ; preds = %.sink.split.i.i.i.i26, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !682
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(160) %.0912.i.i.i19)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !682
  br label %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %bb.n, %_ZN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEC2EOS4_.exit.i.i.i.i20
  %i.av = getelementptr inbounds nuw i8, ptr %.0912.i.i.i19, i64 160 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i.i18, i64 160 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !646

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28: ; preds = %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.al, %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !593
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #33
  br label %_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28, %bb.o
  store ptr %i.p, ptr %0, align 8, !tbaa !161
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !266
  %i.bb = getelementptr inbounds nuw [160 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !593
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #19

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj1024ELi15ELi32EEENS1_18FeatureTransformerILj1024EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(131331893)) local_unnamed_addr #6

declare noundef i64 @_ZNK9Stockfish4Eval4NNUE7NetworkINS1_19NetworkArchitectureILj128ELi15ELi32EEENS1_18FeatureTransformerILj128EEEE16get_content_hashEv(ptr noundef nonnull align 64 dereferenceable(6517429)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
end_hunk_7
begin_hunk_8_@_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE17_M_reallocate_mapEmb:bb.a
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !226 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.o, label %bb.p, !prof !766

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.q, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !70
  store ptr %i.be, ptr %i.av, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !69
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !63
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #33
  store ptr %i.aq, ptr %0, align 8, !tbaa !69
  store i64 %i.am, ptr %i.k, align 8, !tbaa !63
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !71
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !70   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !71
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.d = load ptr, ptr %0, align 8, !tbaa !182
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !182    ; 3 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !179  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.r = load i32, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !770, !noalias !767
  store i32 %i.r, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !767, !noalias !770
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !41, !alias.scope !767, !noalias !770
  %i.w = load i8, ptr %i.u, align 8, !tbaa !41, !range !44, !alias.scope !770, !noalias !767, !noundef !45
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.s, align 8, !tbaa !46, !alias.scope !767, !noalias !770
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !49, !alias.scope !770, !noalias !767 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !51, !alias.scope !770, !noalias !767 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false), !alias.scope !772
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.z, ptr %i.s, align 8, !tbaa !49, !alias.scope !767, !noalias !770
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !52, !alias.scope !770, !noalias !767
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !52, !alias.scope !767, !noalias !770
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !770, !noalias !767
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !51, !alias.scope !767, !noalias !770
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !49, !alias.scope !770, !noalias !767
  store i64 0, ptr %i.ai, align 8, !tbaa !51, !alias.scope !770, !noalias !767
  store i8 0, ptr %i.aa, align 8, !tbaa !52, !alias.scope !770, !noalias !767
  store i8 1, ptr %i.v, align 8, !tbaa !41, !alias.scope !767, !noalias !770
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %i.u, align 8, !tbaa !41, !alias.scope !770, !noalias !767
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ak, %i.q
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !773

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit
  %i.am = phi ptr [ %.pr, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exitthread-pre-split ], [ %i.p, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #33
  br label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !182
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !179
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.as, ptr %i.b, align 8, !tbaa !184
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE17_M_realloc_insertIJS2_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !182    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !203
  store i32 %i.r, ptr %i.q, align 8, !tbaa !185
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !41
  %i.v = load i8, ptr %i.t, align 8, !tbaa !41, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !46
  %i.y = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.y, ptr %i.s, align 8, !tbaa !49
  %i.af = load i64, ptr %i.z, align 8, !tbaa !52
  store i64 %i.af, ptr %i.x, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !51
  store ptr %i.z, ptr %3, align 8, !tbaa !49
  store i64 0, ptr %i.ah, align 8, !tbaa !51
  store i8 0, ptr %i.z, align 8, !tbaa !52
  store i8 1, ptr %i.u, align 8, !tbaa !41
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.aj = load i32, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !777, !noalias !774
  store i32 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !774, !noalias !777
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !41, !alias.scope !774, !noalias !777
  %i.ao = load i8, ptr %i.am, align 8, !tbaa !41, !range !44, !alias.scope !777, !noalias !774, !noundef !45
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !46, !alias.scope !774, !noalias !777
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !49, !alias.scope !777, !noalias !774 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !51, !alias.scope !777, !noalias !774 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !779
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !49, !alias.scope !774, !noalias !777
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !52, !alias.scope !777, !noalias !774
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !52, !alias.scope !774, !noalias !777
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !777, !noalias !774
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !51, !alias.scope !774, !noalias !777
  store ptr %i.as, ptr %i.al, align 8, !tbaa !49, !alias.scope !777, !noalias !774
  store i64 0, ptr %i.ba, align 8, !tbaa !51, !alias.scope !777, !noalias !774
  store i8 0, ptr %i.as, align 8, !tbaa !52, !alias.scope !777, !noalias !774
  store i8 1, ptr %i.an, align 8, !tbaa !41, !alias.scope !774, !noalias !777
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %i.am, align 8, !tbaa !41, !alias.scope !777, !noalias !774
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !773

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.bd, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i19 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.be, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.by, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.bf = load i32, ptr %.0911.i.i.i20, align 8, !tbaa !185, !alias.scope !783, !noalias !780
  store i32 %i.bf, ptr %.012.i.i.i19, align 8, !tbaa !185, !alias.scope !780, !noalias !783
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40 ; 2 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !41, !alias.scope !780, !noalias !783
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !41, !range !44, !alias.scope !783, !noalias !780, !noundef !45
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21

bb.g:                                             ; preds = %.lr.ph.i.i.i18
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !46, !alias.scope !780, !noalias !783
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !49, !alias.scope !783, !noalias !780 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !51, !alias.scope !783, !noalias !780 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false), !alias.scope !785
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24: ; preds = %bb.g
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !49, !alias.scope !780, !noalias !783
  %i.bu = load i64, ptr %i.bo, align 8, !tbaa !52, !alias.scope !783, !noalias !780
  store i64 %i.bu, ptr %i.bm, align 8, !tbaa !52, !alias.scope !780, !noalias !783
  %.phi.trans.insert.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !51, !alias.scope !783, !noalias !780
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24, %bb.h
  %i.bv = phi i64 [ %i.br, %bb.h ], [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !51, !alias.scope !780, !noalias !783
  store ptr %i.bo, ptr %i.bh, align 8, !tbaa !49, !alias.scope !783, !noalias !780
  store i64 0, ptr %i.bw, align 8, !tbaa !51, !alias.scope !783, !noalias !780
  store i8 0, ptr %i.bo, align 8, !tbaa !52, !alias.scope !783, !noalias !780
  store i8 1, ptr %i.bj, align 8, !tbaa !41, !alias.scope !780, !noalias !783
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i18
  store i8 0, ptr %i.bi, align 8, !tbaa !41, !alias.scope !783, !noalias !780
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 48 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 48 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.by, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, label %.lr.ph.i.i.i18, !llvm.loop !773

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.be, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ], [ %i.bz, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !184
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cd) #33
  br label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !182
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !179
  %i.ce = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish19SharedMemoryBackendINS_4Eval4NNUE8NetworksEE17get_error_messageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #4 comdat align 2 {
end_hunk_8
