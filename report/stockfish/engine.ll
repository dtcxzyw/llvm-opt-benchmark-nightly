Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish6Engine27set_numa_config_from_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit53

_ZN9Stockfish10NumaConfigD2Ev.exit53:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i51, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.q

bb.q:                                             ; preds = %_ZN9Stockfish10NumaConfigD2Ev.exit23, %_ZN9Stockfish10NumaConfigD2Ev.exit53, %_ZN9Stockfish10NumaConfigD2Ev.exit39, %_ZN9Stockfish10NumaConfigD2Ev.exit
  call void @_ZN9Stockfish6Engine14resize_threadsEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1304
  call void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.iq) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !guid !503 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.179", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.33", align 8    ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.b, align 8, !tbaa !163, !alias.scope !504
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !164, !alias.scope !504
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.d, align 8, !tbaa !165, !alias.scope !504
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.e, align 8, !tbaa !166, !alias.scope !504
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !alias.scope !504
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = load ptr, ptr %1, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !180
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %2, i64 %i.i, ptr %i.g, i64 1, ptr nonnull @.str.40)
  %i.j = load ptr, ptr %2, align 8, !tbaa !281    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !281  ; 2 uses
  %.not37 = icmp eq ptr %i.j, %i.l
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %.pre46 = load ptr, ptr %2, align 8, !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %.pre46, %._crit_edge.loopexit ], [ %i.j, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !284
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.aa, align 8, !tbaa !236
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %.039 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 6 uses
  %.sroa.024.038 = phi ptr [ %i.j, %.lr.ph ], [ %i.fl, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.024.038, align 8, !tbaa !157 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.038, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !285 ; 3 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !177
  %i.ab = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.ac = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !157
  %i.ad = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ad, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !179
  %i.af = load i64, ptr %i.a, align 8, !tbaa !157
  store i64 %i.af, ptr %i.m, align 8, !tbaa !181
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !181
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !180
  %i.aj = load ptr, ptr %4, align 8, !tbaa !179
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.al = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.an = load i64, ptr %i.m, align 8, !tbaa !181
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ap = load ptr, ptr %3, align 8, !tbaa !287   ; 3 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !287 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.x, label %.preheader

bb.i:                                             ; preds = %bb.w
  %i.as = add nuw i64 %.039, 1
  %.pr = load ptr, ptr %3, align 8, !tbaa !289
  br label %bb.x

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.sroa.019.036 = phi ptr [ %i.ff, %bb.w ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.at = load i64, ptr %.sroa.019.036, align 8, !tbaa !157 ; 11 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %.preheader ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.b, %.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !157
  %i.ax = icmp ult i64 %i.aw, %i.at               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ax, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ax, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = icmp eq ptr %.19.i.i.i.i.i, %i.b
  br i1 %i.ay, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !157
  %.not8.i = icmp ult i64 %i.at, %i.ba
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.preheader
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !188 ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !187   ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 48
  %.not11.i = icmp ugt i64 %i.bg, %.039
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %.pre44 = load ptr, ptr %i.q, align 8, !tbaa !185
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.bh = phi ptr [ %i.dd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.bc, %.lr.ph.i.preheader ] ; 5 uses
  %i.bi = phi ptr [ %i.de, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %.pre44, %.lr.ph.i.preheader ] ; 4 uses
  %i.bj = phi ptr [ %i.df, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.bb, %.lr.ph.i.preheader ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !165
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i64 0, ptr %i.bn, align 8, !tbaa !167
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !188
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !188
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !185
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !187
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
  %i.by = select i1 %i.bw, i64 192153584101141162, i64 %i.bx ; 3 uses
  %.not.i.i14 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i14)
  %i.bz = mul nuw nsw i64 %i.by, 48
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #31 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !165
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !166
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !167
  %.not10.i.i.i.i15 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not10.i.i.i.i15, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i17 = phi ptr [ %i.cx, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ca, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.cw, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bh, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !164, !alias.scope !506 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !163, !alias.scope !506
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !165, !alias.scope !506
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !166, !alias.scope !506
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cg, ptr %i.cp, align 8, !tbaa !186, !noalias !507
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !167, !alias.scope !506
  store ptr null, ptr %i.ch, align 8, !tbaa !164, !alias.scope !506
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !165, !alias.scope !506
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !166, !alias.scope !506
  store i64 0, ptr %i.cq, align 8, !tbaa !167, !alias.scope !506
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i16
  %.sink6.i.i.i.i.i = phi ptr [ %i.cm, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i16 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.co, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i16 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.cr, %bb.m ], [ 0, %.lr.ph.i.i.i.i16 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ck, %bb.m ], [ 0, %.lr.ph.i.i.i.i16 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 16
  store ptr %i.ci, ptr %i.cs, align 8, !tbaa !164, !alias.scope !505
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.ct, align 8, !tbaa !165, !alias.scope !505
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.cu, align 8, !tbaa !166, !alias.scope !505
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !167, !alias.scope !505
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.cg, align 8, !tbaa !163, !alias.scope !505
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i.i18 = icmp eq ptr %i.cw, %i.bi
  br i1 %.not.i.i.i.i18, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i16, !llvm.loop !5

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ca, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.cx, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.bh, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !185
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.db) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.n
  store ptr %i.ca, ptr %0, align 8, !tbaa !187
  store ptr %i.cy, ptr %i.p, align 8, !tbaa !188
  %i.dc = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.by ; 2 uses
  store ptr %i.dc, ptr %i.q, align 8, !tbaa !185
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.j
  %i.dd = phi ptr [ %.pre45, %bb.j ], [ %i.ca, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.de = phi ptr [ %.pre, %bb.j ], [ %i.dc, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ]
  %i.df = phi ptr [ %i.bp, %bb.j ], [ %i.cy, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 48
  %.not.i = icmp ugt i64 %i.dj, %.039
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.bc, %.preheader.i ], [ %i.dd, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.039 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !168 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !157 ; 2 uses
  %i.dp = icmp ult i64 %i.at, %i.do               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.dp, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i9, label %.lr.ph.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i9:                             ; preds = %.lr.ph.i.i.i.i
  br i1 %i.dp, label %._crit_edge.thread.i.i.i.i, label %bb.p

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i9, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i9 ], [ %i.dm, %._crit_edge.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !165
  %i.ds = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.dr
  br i1 %i.ds, label %select.unfold.i.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.dt = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !157
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i9
  %i.du = phi i64 [ %.pre.i.i.i, %bb.o ], [ %i.do, %._crit_edge.i.i.i.i9 ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.o ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i9 ]
  %i.dv = icmp ult i64 %i.du, %i.at
  br i1 %i.dv, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.p, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.p ] ; 3 uses
  %i.dw = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.dm
  br i1 %i.dw, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !157
  %i.dz = icmp ult i64 %i.at, %i.dy
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.q, %select.unfold.i.i.i
  %i.ea = phi i1 [ %i.dz, %bb.q ], [ true, %select.unfold.i.i.i ]
  %i.eb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store i64 %i.at, ptr %i.ec, align 8, !tbaa !157
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ea, ptr noundef nonnull %i.eb, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dm) #28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 40 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !167
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !167
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.p
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !164 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i11 ], [ %i.eg, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i11 ], [ %i.b, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !157
  %i.ej = icmp ult i64 %i.ei, %i.at               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ej, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ej, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i12, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i11, !llvm.loop !7

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i11
  %i.ek = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.ek, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !157
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Engine11get_optionsEv
define dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1680) %0) local_unnamed_addr #9 align 2 !guid !561 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine3fenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 !guid !562 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine4flipEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) local_unnamed_addr #4 align 2 !guid !563 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN9Stockfish8Position4flipEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.a) #28
  ret void
}

declare void @_ZN9Stockfish8Position4flipEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine9visualizeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 !guid !568 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8, !tbaa !324
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8, !tbaa !325
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1, !tbaa !326
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !238
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !238
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !328
  %i.l = load ptr, ptr %2, align 8, !tbaa !238
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #28
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !238
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !238
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !238
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #28
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !238
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8, !tbaa !238
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !238
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !238
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8, !tbaa !332
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !177
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8, !tbaa !180
  store i8 0, ptr %i.aj, align 8, !tbaa !181
  %i.al = load ptr, ptr %2, align 8, !tbaa !238
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(1048) %i.ap) #28 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !177, !alias.scope !571
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !180, !alias.scope !571
  store i8 0, ptr %i.ar, align 8, !tbaa !181, !alias.scope !571
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !333, !noalias !571 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !571 ; 2 uses
  %i.ax = icmp ugt ptr %i.au, %i.aw
  %.08.i.i.i = select i1 %i.ax, ptr %i.au, ptr %i.aw ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !334, !noalias !571 ; 2 uses
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
  store ptr %i.be, ptr %2, align 8, !tbaa !238
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !238
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !238
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !238
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !179 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aj
  br i1 %i.bl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !181
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !238
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #28
  store ptr %i.f, ptr %2, align 8, !tbaa !238
  %i.bo = load i64, ptr %i.h, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.g, ptr %i.bp, align 8, !tbaa !238
  store i64 0, ptr %i.k, align 8, !tbaa !328
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK9Stockfish6Engine12get_hashfullEi(ptr noundef nonnull align 8 dereferenceable(1680) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !guid !572 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.b = tail call noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17) %i.a, i32 noundef %1) #28
  ret i32 %i.b
}

declare noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.128") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 !guid !582 {
bb.a:
  %2 = alloca %"class.std::vector.33", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1304
  call void @_ZNK9Stockfish10ThreadPool35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !335  ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !289    ; 3 uses
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
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.037
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !167  ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.m, align 8, !tbaa !157
  store i64 %i.r, ptr %i.k, align 8, !tbaa !584
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !585
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.f, align 8, !tbaa !586
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
  %i.ac = select i1 %i.aa, i64 576460752303423487, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w ; 2 uses
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !157
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !584
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.q, ptr %i.ah, align 8, !tbaa !585
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !587
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !576

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.w) #33
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !586
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %i.al, ptr %i.g, align 8, !tbaa !338
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !335
  %.pre57 = load ptr, ptr %2, align 8, !tbaa !289
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.am = phi ptr [ %i.h, %bb.c ], [ %.pre57, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 5 uses
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
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !577

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit
  %i.ax = icmp eq ptr %i.am, %i.an
  store ptr %i.aq, ptr %0, align 8
  br i1 %i.ax, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !188 ; 2 uses
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !187 ; 2 uses
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
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !167 ; 2 uses
  %.not.i11 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.bl, align 8, !tbaa !584
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !585
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bg, align 8, !tbaa !586
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
  %i.ca = select i1 %i.by, i64 576460752303423487, i64 %i.bz ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.cb = shl nuw nsw i64 %i.ca, 4
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #31 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !584
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %i.bp, ptr %i.ce, align 8, !tbaa !585
  %.not10.i.i.i.i.i15 = icmp eq ptr %i.bm, %i.bk
  br i1 %.not10.i.i.i.i.i15, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12, %.lr.ph.i.i.i.i.i16
  %.012.i.i.i.i.i17 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i16 ], [ %i.cc, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ] ; 2 uses
  %.0911.i.i.i.i.i18 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i16 ], [ %i.bm, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i17, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i18, i64 16, i1 false), !alias.scope !588
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i18, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.cf, %i.bk
  br i1 %.not.i.i.i.i.i19, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20, label %.lr.ph.i.i.i.i.i16, !llvm.loop !576

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20: ; preds = %.lr.ph.i.i.i.i.i16, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12
  %.0.lcssa.i.i.i.i.i21 = phi ptr [ %i.cc, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ], [ %i.cg, %.lr.ph.i.i.i.i.i16 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i21, i64 16 ; 2 uses
  %.not.i24.i.i22 = icmp eq ptr %i.bm, null
  br i1 %.not.i24.i.i22, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bu) #33
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20
  store ptr %i.ch, ptr %i.bg, align 8, !tbaa !586
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  store ptr %i.ci, ptr %i.bh, align 8, !tbaa !338
  %.pre58 = load ptr, ptr %i.ay, align 8, !tbaa !188
  %.pre59 = load ptr, ptr %i.b, align 8, !tbaa !187
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.cj = phi ptr [ %i.bi, %bb.h ], [ %.pre59, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ck = phi ptr [ %i.bj, %bb.h ], [ %.pre58, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.cl = phi ptr [ %i.bk, %bb.h ], [ %i.ci, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cm = phi ptr [ %i.br, %bb.h ], [ %i.ch, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cn = phi ptr [ %i.bm, %bb.h ], [ %i.cc, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.co = add nuw i64 %.144, 1                    ; 2 uses
  %i.cp = ptrtoint ptr %i.ck to i64
  %i.cq = ptrtoint ptr %i.cj to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 48
  %i.ct = icmp ult i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.g, label %.loopexit.loopexit, !llvm.loop !581

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit
  %.pre60.pre = load ptr, ptr %2, align 8, !tbaa !289
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
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !294
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
define dso_local void @_ZNK9Stockfish6Engine25get_numa_config_as_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 !guid !589 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK9Stockfish10NumaConfig9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #4 comdat align 2 !guid !597 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !177
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !180
  store i8 0, ptr %i.a, align 8, !tbaa !181
  %i.c = load ptr, ptr %1, align 8, !tbaa !183    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !183  ; 2 uses
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
  %i.l = load i64, ptr %i.b, align 8, !tbaa !180
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !165  ; 3 uses
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
  %i.v = load i64, ptr %i.u, align 8, !tbaa !157
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.052.084, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157
  %i.y = add i64 %i.x, 1
  %.not = icmp eq i64 %i.v, %i.y
  br i1 %.not, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.f
  br i1 %.01285, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.z = load i64, ptr %i.b, align 8, !tbaa !180
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !157 ; 10 uses
  %.not66 = icmp eq ptr %.sroa.052.084, %.sroa.057.083
  br i1 %.not66, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.057.083, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !157 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !598)
  %i.ag = icmp ult i64 %i.af, 10
  br i1 %i.ag, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.p
  %.029.i.i = phi i32 [ %i.ao, %bb.p ], [ 1, %bb.j ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.an, %bb.p ], [ %i.af, %bb.j ] ; 5 uses
  %i.ah = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ai = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aj = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.al = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.an = udiv i64 %.02328.i.i, 10000
  %i.ao = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ap = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ap, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !2
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_:bb.a

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !219
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !217
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 8, !tbaa !157
  store i64 %i.r, ptr %i.q, align 8, !tbaa !157
  %i.s = load i32, ptr %1, align 8, !tbaa !685
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !685
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !186
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !220  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %i.x = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !220
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit
  %.0.in41 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.042 = load ptr, ptr %.0.in41, align 8, !tbaa !219 ; 2 uses
  %.not2843 = icmp eq ptr %.042, null
  br i1 %.not2843, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.q
  %.045 = phi ptr [ %.0, %bb.q ], [ %.042, %bb.i ] ; 4 uses
  %.02744 = phi ptr [ %.sink.i.i32, %bb.q ], [ %.sink.i.i, %bb.i ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !218  ; 7 uses
  %.not.i.i.i30 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i30, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !186 ; 5 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !218
  %.not9.i.i.i31 = icmp eq ptr %i.ab, null
  br i1 %.not9.i.i.i31, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !220
  %i.ae = icmp eq ptr %i.ad, %i.z
  br i1 %i.ae, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.ac, align 8, !tbaa !220
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !219 ; 2 uses
  %.not10.i.i.i33 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i33, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40, label %.preheader.i.i.i34

.preheader.i.i.i34:                               ; preds = %bb.l, %.preheader.i.i.i34
  %storemerge.i.i.i35 = phi ptr [ %i.ai, %.preheader.i.i.i34 ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !220 ; 2 uses
  %.not11.i.i.i36 = icmp eq ptr %i.ai, null
  br i1 %.not11.i.i.i36, label %bb.m, label %.preheader.i.i.i34, !llvm.loop !682

bb.m:                                             ; preds = %.preheader.i.i.i34
  %i.aj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i35, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !219 ; 2 uses
  %.not12.i.i.i37 = icmp eq ptr %i.ak, null
  %spec.store.select.i.i.i38 = select i1 %.not12.i.i.i37, ptr %storemerge.i.i.i35, ptr %i.ak
  store ptr %spec.store.select.i.i.i38, ptr %i.a, align 8, !tbaa !218
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.al, align 8, !tbaa !219
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

bb.o:                                             ; preds = %bb.j
  store ptr null, ptr %3, align 8, !tbaa !217
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39: ; preds = %.lr.ph
  %i.am = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40: ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39
  %.sink.i.i32 = phi ptr [ %i.am, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i39 ], [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.045, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 32
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !157
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !157
  %i.aq = load i32, ptr %.045, align 8, !tbaa !685
  store i32 %i.aq, ptr %.sink.i.i32, align 8, !tbaa !685
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %.02744, i64 16
  store ptr %.sink.i.i32, ptr %i.as, align 8, !tbaa !219
  %i.at = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 8
  store ptr %.02744, ptr %i.at, align 8, !tbaa !186
  %i.au = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !220 ; 2 uses
  %.not29 = icmp eq ptr %i.av, null
  br i1 %.not29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %i.aw = tail call noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.av, ptr noundef nonnull %.sink.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink.i.i32, i64 24
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !220
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeImESA_RT0_.exit40
  %.0.in = getelementptr inbounds nuw i8, ptr %.045, i64 16
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !219 ; 2 uses
  %.not28 = icmp eq ptr %.0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph, !llvm.loop !683

._crit_edge:                                      ; preds = %bb.q, %bb.i
  ret ptr %.sink.i.i
}

declare void @_ZN9Stockfish19read_file_to_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !guid !687 {
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !180  ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = load ptr, ptr %1, align 8, !tbaa !179
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %2, i64 %i.e, ptr %i.g, i64 1, ptr nonnull @.str.49)
  %i.h = load ptr, ptr %2, align 8, !tbaa !281    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !281  ; 2 uses
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
  %.pre = load ptr, ptr %2, align 8, !tbaa !283
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.u = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %bb.b ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !284
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
  %i.ae = load i64, ptr %.sroa.045.055, align 8, !tbaa !689
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.ah, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %.sroa.0.0.copyload = load i64, ptr %.sroa.045.055, align 8, !tbaa !157
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !285
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, i64 1, ptr nonnull @.str.50)
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !359
  %i.ah = load ptr, ptr %3, align 8, !tbaa !283   ; 6 uses
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
  %.sroa.0.0.copyload.i = load i64, ptr %i.ah, align 8, !tbaa !157 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !285 ; 3 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !177
  %i.am = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.an = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.an, %i.am
  br i1 %or.cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.c, align 8, !tbaa !157
  %i.ao = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ao, label %bb.i, label %._crit_edge.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ap, ptr %4, align 8, !tbaa !179
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !157
  store i64 %i.aq, ptr %i.r, align 8, !tbaa !181
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.ap, %bb.i ], [ %i.r, %bb.h ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !181
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.at = load i64, ptr %i.c, align 8, !tbaa !157 ; 2 uses
  store i64 %i.at, ptr %i.s, align 8, !tbaa !180
  %i.au = load ptr, ptr %4, align 8, !tbaa !179
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.aw = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %4) #28 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !179   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.r
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.az = load i64, ptr %i.r, align 8, !tbaa !181
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.not.i = icmp eq ptr %i.ac, %i.aa
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i64 %i.aw, ptr %i.ac, align 8, !tbaa !157
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !335
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
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i10 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i10)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #31 ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.be ; 2 uses
  store i64 %i.aw, ptr %i.bn, align 8, !tbaa !157
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
  store ptr %i.bm, ptr %0, align 8, !tbaa !289
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !335
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk ; 3 uses
  store ptr %i.bq, ptr %i.q, align 8, !tbaa !294
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.ah, align 8, !tbaa !157 ; 5 uses
  %.sroa.2.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i13 = load ptr, ptr %.sroa.2.0..sroa_idx.i12, align 8, !tbaa !285 ; 3 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !177
  %i.br = icmp eq ptr %.sroa.2.0.copyload.i13, null
  %i.bs = icmp ne i64 %.sroa.0.0.copyload.i11, 0
  %or.cond.i.i.i14 = and i1 %i.bs, %i.br
  br i1 %or.cond.i.i.i14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %.sroa.0.0.copyload.i11, ptr %i.b, align 8, !tbaa !157
  %i.bt = icmp ugt i64 %.sroa.0.0.copyload.i11, 15
  br i1 %i.bt, label %bb.t, label %._crit_edge.i.i.i.i15

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #28 ; 2 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !179
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !157
  store i64 %i.bv, ptr %i.l, align 8, !tbaa !181
  br label %._crit_edge.i.i.i.i15

._crit_edge.i.i.i.i15:                            ; preds = %bb.t, %bb.s
  %i.bw = phi ptr [ %i.bu, %bb.t ], [ %i.l, %bb.s ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i11, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i15
  %i.bx = load i8, ptr %.sroa.2.0.copyload.i13, align 1, !tbaa !181
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

bb.v:                                             ; preds = %._crit_edge.i.i.i.i15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %.sroa.2.0.copyload.i13, i64 %.sroa.0.0.copyload.i11, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16: ; preds = %._crit_edge.i.i.i.i15, %bb.u, %bb.v
  %i.by = load i64, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  store i64 %i.by, ptr %i.m, align 8, !tbaa !180
  %i.bz = load ptr, ptr %5, align 8, !tbaa !179
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 0, ptr %i.ca, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.cb = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %5) #28 ; 2 uses
  %i.cc = load ptr, ptr %5, align 8, !tbaa !179   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !181
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cg = load ptr, ptr %3, align 8, !tbaa !283   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.ch, align 8, !tbaa !157 ; 5 uses
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.2.0.copyload.i22 = load ptr, ptr %.sroa.2.0..sroa_idx.i21, align 8, !tbaa !285 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !177
  %i.ci = icmp eq ptr %.sroa.2.0.copyload.i22, null
  %i.cj = icmp ne i64 %.sroa.0.0.copyload.i20, 0
  %or.cond.i.i.i23 = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i23, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i20, ptr %i.a, align 8, !tbaa !157
  %i.ck = icmp ugt i64 %.sroa.0.0.copyload.i20, 15
  br i1 %i.ck, label %bb.y, label %._crit_edge.i.i.i.i24

bb.y:                                             ; preds = %bb.x
  %i.cl = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.cl, ptr %6, align 8, !tbaa !179
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !157
  store i64 %i.cm, ptr %i.n, align 8, !tbaa !181
  br label %._crit_edge.i.i.i.i24

._crit_edge.i.i.i.i24:                            ; preds = %bb.y, %bb.x
  %i.cn = phi ptr [ %i.cl, %bb.y ], [ %i.n, %bb.x ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i20, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.co = load i8, ptr %.sroa.2.0.copyload.i22, align 1, !tbaa !181
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !181
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %.sroa.2.0.copyload.i22, i64 %.sroa.0.0.copyload.i20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.z, %bb.aa
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  store i64 %i.cp, ptr %i.o, align 8, !tbaa !180
  %i.cq = load ptr, ptr %6, align 8, !tbaa !179
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cs = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #28 ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !179   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !181
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
  store i64 %storemerge53, ptr %i.cz, align 8, !tbaa !157
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.p, align 8, !tbaa !335
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
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i32)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #31 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store i64 %storemerge53, ptr %i.dn, align 8, !tbaa !157
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
  store ptr %i.dp, ptr %i.p, align 8, !tbaa !335
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 3 uses
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !294
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.dr = phi ptr [ %i.cx, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cy, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %i.db, %bb.ab ], [ %i.dp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.du = phi ptr [ %i.da, %bb.ab ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dv = add i64 %storemerge53, 1                ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.cs
  br i1 %.not, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph, !llvm.loop !686

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
  %.pr = load ptr, ptr %3, align 8, !tbaa !283
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
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !284
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
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !guid !700 {
bb.a:
  %3 = alloca %"class.std::tuple.202", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.205", align 1    ; 3 uses
  %5 = alloca %"class.std::map.193", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !163
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !165
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !166
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !167
  %i.f = load ptr, ptr %1, align 8, !tbaa !354    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !354  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !165
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !701
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !163, !alias.scope !701
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !164, !alias.scope !701
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !165, !alias.scope !701
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !166, !alias.scope !701
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !701
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.080.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !164  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.080.0101, align 8, !tbaa !157 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !157
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !692

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !157
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.080.0101, ptr %3, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !352 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !353
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.080.0101, align 8, !tbaa !349
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !349
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !163
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !164
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 40
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !168
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !168
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !186
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.080.0101, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !167
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !167
  store ptr null, ptr %i.ah, align 8, !tbaa !164
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !165
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !166
  store i64 0, ptr %i.ar, align 8, !tbaa !167
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i
end_hunk_2
begin_hunk_3_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a

select.unfold.i:                                  ; preds = %bb.n, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %.019.lcssa28.i.i, %bb.n ] ; 3 uses
  %i.cp = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.013.022.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bz) #28 ; 2 uses
  %i.cq = load i64, ptr %i.bu, align 8, !tbaa !167
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %i.bu, align 8, !tbaa !167
  %i.cs = icmp eq ptr %.sroa.4.0.i.ph.i, %i.cb
  br i1 %i.cs, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, label %bb.o

bb.o:                                             ; preds = %select.unfold.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !157
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !157
  %i.cx = icmp ult i64 %i.cv, %i.cw
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i: ; preds = %bb.o, %select.unfold.i
  %i.cy = phi i1 [ %i.cx, %bb.o ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cy, ptr noundef nonnull %i.cp, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cb) #28
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !167
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.br, align 8, !tbaa !167
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cd, %i.bz
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !694

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !354
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !354
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
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
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !349
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !349
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !164
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !164
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !165
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !166
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !167
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !168 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !163
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !163
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !164
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !168
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !168
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !186
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !167
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !167
  store ptr null, ptr %i.ds, align 8, !tbaa !164
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !165
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !166
  store i64 0, ptr %i.ea, align 8, !tbaa !167
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !695

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !352
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !352
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !164
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141 = load ptr, ptr %i.bd, align 8, !tbaa !352
  %.pre142 = load ptr, ptr %i.bc, align 8, !tbaa !355
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !696

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.076.0121) #30 ; 2 uses
  %.not86 = icmp eq ptr %i.es, %i.a
  br i1 %.not86, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.068.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !165 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.068.0115, i64 56 ; 2 uses
  %.not87 = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.064.0110 = phi ptr [ %i.jl, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.064.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !157 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !164 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !157
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !157
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !188 ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !187   ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %.pre144 = load ptr, ptr %i.p, align 8, !tbaa !185
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.lr.ph.i.preheader ] ; 5 uses
  %i.fo = phi ptr [ %i.hk, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %.pre144, %.lr.ph.i.preheader ] ; 4 uses
  %i.fp = phi ptr [ %i.hl, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.lr.ph.i.preheader ] ; 6 uses
  %.not.i.i38 = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !165
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !166
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store i64 0, ptr %i.ft, align 8, !tbaa !167
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !188
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !188
  %.pre143 = load ptr, ptr %i.p, align 8, !tbaa !185
  %.pre145 = load ptr, ptr %0, align 8, !tbaa !187
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
  %i.ge = select i1 %i.gc, i64 192153584101141162, i64 %i.gd ; 3 uses
  %.not.i.i59 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i59)
  %i.gf = mul nuw nsw i64 %i.ge, 48
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #31 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !165
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !166
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i64 0, ptr %i.gl, align 8, !tbaa !167
  %.not10.i.i.i.i60 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i60, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i62 = phi ptr [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !164, !alias.scope !703 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i61
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !163, !alias.scope !703
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !165, !alias.scope !703
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !166, !alias.scope !703
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gm, ptr %i.gv, align 8, !tbaa !186, !noalias !704
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !167, !alias.scope !703
  store ptr null, ptr %i.gn, align 8, !tbaa !164, !alias.scope !703
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !165, !alias.scope !703
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !166, !alias.scope !703
  store i64 0, ptr %i.gw, align 8, !tbaa !167, !alias.scope !703
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i61
  %.sink6.i.i.i.i.i = phi ptr [ %i.gs, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i61 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gu, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gx, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.v ], [ 0, %.lr.ph.i.i.i.i61 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 16
  store ptr %i.go, ptr %i.gy, align 8, !tbaa !164, !alias.scope !702
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !165, !alias.scope !702
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !166, !alias.scope !702
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.hb, align 8, !tbaa !167, !alias.scope !702
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gm, align 8, !tbaa !163, !alias.scope !702
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i62, i64 48 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.hc, %i.fo
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i61, !llvm.loop !5

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !185
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.hh) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gg, ptr %0, align 8, !tbaa !187
  store ptr %i.he, ptr %i.o, align 8, !tbaa !188
  %i.hi = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.ge ; 2 uses
  store ptr %i.hi, ptr %i.p, align 8, !tbaa !185
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hj = phi ptr [ %.pre145, %bb.s ], [ %i.gg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hk = phi ptr [ %.pre143, %bb.s ], [ %i.hi, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ]
  %i.hl = phi ptr [ %i.fv, %bb.s ], [ %i.he, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = sdiv exact i64 %i.ho, 48
  %.not.i39 = icmp ugt i64 %i.hp, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.fi, %.preheader.i ], [ %i.hj, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.hq = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.136116 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hr, align 8, !tbaa !168 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i40
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !157 ; 2 uses
  %i.hv = icmp ult i64 %i.ez, %i.hu               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.hv, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i41, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !0

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i40
  br i1 %i.hv, label %._crit_edge.thread.i.i.i.i, label %bb.y

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.hs, %._crit_edge.i ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !165
  %i.hy = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.hx
  br i1 %i.hy, label %select.unfold.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.hz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !157
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %i.ia = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.hu, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.x ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.ib = icmp ult i64 %i.ia, %i.ez
  br i1 %i.ib, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.y, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.y ] ; 3 uses
  %i.ic = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.hs
  br i1 %i.ic, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !157
  %i.if = icmp ult i64 %i.ez, %i.ie
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.z, %select.unfold.i.i.i
  %i.ig = phi i1 [ %i.if, %bb.z ], [ true, %select.unfold.i.i.i ]
  %i.ih = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  store i64 %i.ez, ptr %i.ii, align 8, !tbaa !157
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ig, ptr noundef nonnull %i.ih, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.hs) #28
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hq, i64 40 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !167
  %i.il = add i64 %i.ik, 1
  store i64 %i.il, ptr %i.ij, align 8, !tbaa !167
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.y
  %i.im = load ptr, ptr %i.k, align 8, !tbaa !164 ; 2 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.im, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i57, label %.lr.ph.i.i.i.i49

.lr.ph.i.i.i.i49:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i49
  %.012.i.i.i.i50 = phi ptr [ %.1.i.i.i.i55, %.lr.ph.i.i.i.i49 ], [ %i.im, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i51 = phi ptr [ %.19.i.i.i.i52, %.lr.ph.i.i.i.i49 ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 32
  %i.io = load i64, ptr %i.in, align 8, !tbaa !157
  %i.ip = icmp ult i64 %i.io, %i.ez               ; 2 uses
  %.19.i.i.i.i52 = select i1 %i.ip, ptr %.0811.i.i.i.i51, ptr %.012.i.i.i.i50 ; 6 uses
  %.1.in.v.i.i.i.i53 = select i1 %i.ip, i64 24, i64 16
  %.1.in.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i50, i64 %.1.in.v.i.i.i.i53
  %.1.i.i.i.i55 = load ptr, ptr %.1.in.i.i.i.i54, align 8, !tbaa !168 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %.1.i.i.i.i55, null
  br i1 %.not.i.i.i.i56, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i49, !llvm.loop !7

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i49
  %i.iq = icmp eq ptr %.19.i.i.i.i52, %i.j
  br i1 %i.iq, label %.critedge.i57, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !157
  %i.it = icmp ult i64 %i.ez, %i.is
  br i1 %i.it, label %.critedge.i57, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i57:                                    ; preds = %bb.aa, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %.19.i.i.i.i52, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.iu = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32 ; 3 uses
  store i64 %i.ez, ptr %i.iv, align 8, !tbaa !291
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  store i64 0, ptr %i.iw, align 8, !tbaa !292
  %i.ix = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.iv) ; 2 uses
  %i.iy = extractvalue { ptr, ptr } %i.ix, 0      ; 2 uses
  %i.iz = extractvalue { ptr, ptr } %i.ix, 1      ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i58, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i57
  %.not.i.i.i4.i = icmp ne ptr %i.iy, null
  %i.ja = icmp eq ptr %i.iz, %i.j
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.ja
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jc = load i64, ptr %i.iv, align 8, !tbaa !157
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !157
  %i.je = icmp ult i64 %i.jc, %i.jd
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.jf = phi i1 [ %i.je, %bb.ac ], [ true, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jf, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.jg = load i64, ptr %i.n, align 8, !tbaa !167
  %i.jh = add i64 %i.jg, 1
  store i64 %i.jh, ptr %i.n, align 8, !tbaa !167
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.ad:                                            ; preds = %.critedge.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef 48) #33
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.aa, %.thread.i.i, %bb.ad
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i52, %bb.aa ], [ %i.iu, %.thread.i.i ], [ %i.iy, %bb.ad ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.136116, ptr %i.ji, align 8, !tbaa !157
  %i.jj = load i64, ptr %i.r, align 8, !tbaa !293
  %i.jk = icmp ugt i64 %i.ez, %i.jj
  br i1 %i.jk, label %bb.ae, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

bb.ae:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.ez, ptr %i.r, align 8, !tbaa !293
  br label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.ae
  %i.jl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.064.0110) #30 ; 2 uses
  %.not88 = icmp eq ptr %i.jl, %i.ew
  br i1 %.not88, label %._crit_edge113, label %.lr.ph112
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.179") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat !guid !713 {
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
  %i.m = load i8, ptr %4, align 1, !tbaa !181
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
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %bb.f, !llvm.loop !705

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
  store i64 %.sroa.speculated.i, ptr %i.i, align 8, !tbaa !157
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !285
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !359
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
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #31 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.an, align 8, !tbaa !157
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aa, ptr %.sroa.534.0..sroa_idx35, align 8, !tbaa !285
  %.not10.i.i.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !714, !alias.scope !715
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !709

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ae) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !359
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak ; 2 uses
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !284
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
  store i64 %i.ax, ptr %i.i, align 8, !tbaa !157
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !285
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.az, ptr %i.f, align 8, !tbaa !359
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
  %i.bi = select i1 %i.bg, i64 576460752303423487, i64 %i.bh ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #31 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store i64 %i.ax, ptr %i.bl, align 8, !tbaa !157
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !285
  %.not10.i.i.i.i.i18 = icmp eq ptr %i.j, %i.h
  br i1 %.not10.i.i.i.i.i18, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15, %.lr.ph.i.i.i.i.i19
  %.012.i.i.i.i.i20 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i19 ], [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  %.0911.i.i.i.i.i21 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i19 ], [ %i.j, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i21, i64 16, i1 false), !tbaa.struct !714, !alias.scope !716
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i21, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i20, i64 16 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.bm, %i.h
  br i1 %.not.i.i.i.i.i22, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23, label %.lr.ph.i.i.i.i.i19, !llvm.loop !709

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23: ; preds = %.lr.ph.i.i.i.i.i19, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.bk, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i15 ], [ %i.bn, %.lr.ph.i.i.i.i.i19 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i24, i64 16
  %.not.i23.i.i25 = icmp eq ptr %i.j, null
  br i1 %.not.i23.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bc) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i26: ; preds = %bb.t, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i23
  store ptr %i.bk, ptr %0, align 8, !tbaa !283
  store ptr %i.bo, ptr %i.f, align 8, !tbaa !359
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !284
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
define linkonce_odr dso_local void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #4 comdat align 2 !guid !724 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !352  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !355    ; 5 uses
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
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 7 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !349
  store i64 %i.r, ptr %i.q, align 8, !tbaa !349
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !164  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.u, ptr %i.x, align 8, !tbaa !164
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !166
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.s, ptr %i.ac, align 8, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !167
  store ptr null, ptr %i.t, align 8, !tbaa !164
  store ptr %i.v, ptr %i.y, align 8, !tbaa !165
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !166
  store i64 0, ptr %i.ad, align 8, !tbaa !167
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN9Stockfish8L3DomainESaIS1_EE12_M_check_lenEmPKc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !164
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit

_ZN9Stockfish8L3DomainC2EOS0_.exit:               ; preds = %bb.c, %bb.d
  %.sink36 = phi ptr [ %i.s, %bb.d ], [ %i.z, %bb.c ]
  %.sink35 = phi ptr [ %i.s, %bb.d ], [ %i.ab, %bb.c ]
  %.sink = phi i64 [ 0, %bb.d ], [ %i.ae, %bb.c ]
  %.sink.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ %i.w, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sink36, ptr %i.ag, align 8, !tbaa !165
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sink35, ptr %i.ah, align 8, !tbaa !166
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sink, ptr %i.ai, align 8, !tbaa !167
  store i32 %.sink.i.i.i.i.i, ptr %i.s, align 8, !tbaa !163
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.ba, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN9Stockfish8L3DomainC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !349, !alias.scope !726
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !349, !alias.scope !725
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !164, !alias.scope !726 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !163, !alias.scope !726
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !165, !alias.scope !726
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !166, !alias.scope !726
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ak, ptr %i.at, align 8, !tbaa !186, !noalias !727
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !167, !alias.scope !726
  store ptr null, ptr %i.al, align 8, !tbaa !164, !alias.scope !726
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !165, !alias.scope !726
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !166, !alias.scope !726
  store i64 0, ptr %i.au, align 8, !tbaa !167, !alias.scope !726
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.as, %bb.e ], [ %i.ak, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.av, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.e ], [ 0, %.lr.ph.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %i.am, ptr %i.aw, align 8, !tbaa !164, !alias.scope !725
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink6.i.i.i.i, ptr %i.ax, align 8, !tbaa !165, !alias.scope !725
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store ptr %.sink5.i.i.i.i, ptr %i.ay, align 8, !tbaa !166, !alias.scope !725
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  store i64 %.sink.i.i.i.i, ptr %i.az, align 8, !tbaa !167, !alias.scope !725
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !163, !alias.scope !725
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ba, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !720

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9Stockfish8L3DomainC2EOS0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZN9Stockfish8L3DomainC2EOS0_.exit ], [ %i.bb, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bc, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  %.0911.i.i.i19 = phi ptr [ %i.bu, %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  %i.bd = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !349, !alias.scope !729
  store i64 %i.bd, ptr %.012.i.i.i18, align 8, !tbaa !349, !alias.scope !728
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !164, !alias.scope !729 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !163, !alias.scope !729
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !165, !alias.scope !729
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !166, !alias.scope !729
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !186, !noalias !730
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !167, !alias.scope !729
  store ptr null, ptr %i.bf, align 8, !tbaa !164, !alias.scope !729
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !165, !alias.scope !729
  store ptr %i.bh, ptr %i.bl, align 8, !tbaa !166, !alias.scope !729
  store i64 0, ptr %i.bo, align 8, !tbaa !167, !alias.scope !729
  br label %_ZSt19__relocate_object_aIN9Stockfish8L3DomainES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i21

end_hunk_3
