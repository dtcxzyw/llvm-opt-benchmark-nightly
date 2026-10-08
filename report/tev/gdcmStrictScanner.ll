Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmStrictScanner?download=true
inline.NumInlined: 1754
inline.NumDeleted: 908
begin_hunk_0_@_ZNK4gdcm13StrictScanner9GetValuesERKNS_3TagE:bb.a
; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4gdcm13StrictScanner16GetOrderedValuesERKNS_3TagE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::basic_string", align 8 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not54 = icmp eq ptr %i.b, %i.d
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.sroa.041.055 = phi ptr [ %i.b, %.lr.ph ], [ %i.dm, %.thread ] ; 4 uses
  %i.k = load i8, ptr %.sroa.041.055, align 8
  %i.l = trunc i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.041.055, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.041.055, i64 1
  %i.p = select i1 %i.l, ptr %i.n, ptr %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm13StrictScanner10GetMappingEPKc(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %i.p)
          to label %bb.c unwind label %bb.ah

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 9 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not14.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.t = load i16, ptr %2, align 4, !tbaa !34     ; 8 uses
  %i.u = load i16, ptr %i.e, align 2              ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.016.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.ae, %bb.h ]
  %.0815.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.h ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0815.i.i.i, i64 32
  %i.w = load i16, ptr %i.v, align 4, !tbaa !34   ; 2 uses
  %i.x = icmp ult i16 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i16 %i.w, %i.t
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.0815.i.i.i, i64 34
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !34
  %i.ab = icmp ult i16 %i.aa, %i.u
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.0815.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ %.0815.i.i.i, %bb.f ], [ %.0815.i.i.i, %bb.e ]
  %i.ae = phi ptr [ %.016.i.i.i, %bb.g ], [ %.0815.i.i.i, %bb.f ], [ %.0815.i.i.i, %bb.e ] ; 4 uses
  %.19.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.19.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i, label %bb.d, !llvm.loop !7

_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i: ; preds = %bb.h
  %.not.i.i = icmp eq ptr %i.ae, %i.r
  br i1 %.not.i.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !34 ; 2 uses
  %i.ah = icmp ult i16 %i.t, %i.ag
  br i1 %i.ah, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i16 %i.t, %i.ag
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 34
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !34
  %.not45 = icmp ult i16 %i.u, %i.ak
  br i1 %.not45, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !27  ; 2 uses
  %.not14.i.i.i19 = icmp eq ptr %i.al, null
  br i1 %.not14.i.i.i19, label %bb.t, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %bb.l, %bb.p
  %.016.i.i.i21 = phi ptr [ %i.av, %bb.p ], [ %i.r, %bb.l ]
  %.0815.i.i.i22 = phi ptr [ %.19.i.i.i23, %bb.p ], [ %i.al, %bb.l ] ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0815.i.i.i22, i64 32
  %i.an = load i16, ptr %i.am, align 4, !tbaa !34 ; 2 uses
  %i.ao = icmp ult i16 %i.an, %i.t
  br i1 %i.ao, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i20
  %i.ap = icmp eq i16 %i.an, %i.t
  br i1 %i.ap, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.0815.i.i.i22, i64 34
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !34
  %i.as = icmp ult i16 %i.ar, %i.u
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i20
  %i.at = getelementptr inbounds nuw i8, ptr %.0815.i.i.i22, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.au = phi ptr [ %i.at, %bb.o ], [ %.0815.i.i.i22, %bb.n ], [ %.0815.i.i.i22, %bb.m ]
  %i.av = phi ptr [ %.016.i.i.i21, %bb.o ], [ %.0815.i.i.i22, %bb.n ], [ %.0815.i.i.i22, %bb.m ] ; 6 uses
  %.19.i.i.i23 = load ptr, ptr %i.au, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %.19.i.i.i23, null
  br i1 %.not.i.i.i24, label %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i25, label %.lr.ph.i.i.i20, !llvm.loop !7

_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i25: ; preds = %bb.p
  %.not.i.i26 = icmp eq ptr %i.av, %i.r
  br i1 %.not.i.i26, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !34 ; 2 uses
  %i.ay = icmp ult i16 %i.t, %i.ax
  br i1 %i.ay, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_PKcEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS6_.exit.thread.i.i28, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = icmp eq i16 %i.t, %i.ax
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 34
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !34
  %i.bc = icmp ult i16 %i.u, %i.bb
  br i1 %i.bc, label %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_PKcEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS6_.exit.thread.i.i28, label %bb.t

_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_PKcEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS6_.exit.thread.i.i28: ; preds = %bb.s, %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i25, %bb.r, %bb.s, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_PKcEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS6_.exit.thread.i.i28
  %.sroa.0.0.i.i27 = phi ptr [ %i.av, %bb.r ], [ %i.av, %bb.s ], [ %i.r, %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i25 ], [ %i.r, %_ZNKSt3__119__map_value_compareIN4gdcm3TagENS_12__value_typeIS2_PKcEENS_4lessIS2_EELb1EEclB8ne180100ERKS2_RKS6_.exit.thread.i.i28 ], [ %i.r, %bb.l ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i27, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76 ; 2 uses
  %i.bf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #25 ; 8 uses
  %i.bg = icmp ugt i64 %i.bf, -9
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bh = icmp ult i64 %i.bf, 23
  br i1 %i.bh, label %bb.w, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.v
  %i.bi = or i64 %i.bf, 7                         ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 23
  %i.bk = add nuw i64 %i.bi, 1
  %i.bl = select i1 %i.bj, i64 25, i64 %i.bk      ; 2 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #27
          to label %.noexc30 unwind label %.loopexit47 ; 2 uses

.noexc30:                                         ; preds = %.thread.i.i
  store ptr %i.bm, ptr %i.f, align 8, !tbaa !34
  %i.bn = or i64 %i.bl, 1
  store i64 %i.bn, ptr %3, align 8
  store i64 %i.bf, ptr %i.g, align 8, !tbaa !34
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = trunc nuw nsw i64 %i.bf to i8
  %i.bp = shl nuw nsw i8 %i.bo, 1
  store i8 %i.bp, ptr %3, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc30
  %.017.i.i = phi ptr [ %i.bm, %.noexc30 ], [ %i.h, %bb.w ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.017.i.i, ptr nonnull align 1 %i.be, i64 %i.bf, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.018.i.i = phi ptr [ %i.h, %bb.w ], [ %.017.i.i, %bb.x ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %i.bf
  store i8 0, ptr %i.bq, align 1, !tbaa !34
  %i.br = load ptr, ptr %0, align 8, !tbaa !32    ; 3 uses
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !33  ; 8 uses
  %.not14.i.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not14.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y
  %i.bt = load i8, ptr %3, align 8                ; 2 uses
  %i.bu = trunc i8 %i.bt to i1                    ; 2 uses
  %i.bv = load i64, ptr %i.g, align 8
  %i.bw = lshr i8 %i.bt, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = select i1 %i.bu, i64 %i.bv, i64 %i.bx
  %i.bz = load ptr, ptr %i.f, align 8
  %i.ca = select i1 %i.bu, ptr %i.bz, ptr %i.h    ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %i.cp, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i ] ; 8 uses
  %i.cb = load i8, ptr %.015.i.i, align 8         ; 2 uses
  %i.cc = trunc i8 %i.cb to i1                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = lshr i8 %i.cb, 1                        ; 2 uses
  %i.cg = zext nneg i8 %i.cf to i64               ; 2 uses
  %i.ch = select i1 %i.cc, i64 %i.ce, i64 %i.cg
  %.not.i.i.i31 = icmp eq i64 %i.ch, %i.by
  br i1 %.not.i.i.i31, label %bb.aa, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cc, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.aa
  %.not1922.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not1922.i.i.i, label %.loopexit, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.preheader.i.i.i, %bb.ab
  %.01525.pn.i.i.i = phi ptr [ %.01525.i.i.i, %bb.ab ], [ %.015.i.i, %.preheader.i.i.i ]
  %.024.i.i.i = phi ptr [ %i.cl, %bb.ab ], [ %i.ca, %.preheader.i.i.i ] ; 2 uses
  %.01623.i.i.i = phi i64 [ %i.ck, %bb.ab ], [ %i.cg, %.preheader.i.i.i ]
  %.01525.i.i.i = getelementptr inbounds nuw i8, ptr %.01525.pn.i.i.i, i64 1 ; 2 uses
  %i.ci = load i8, ptr %.01525.i.i.i, align 1, !tbaa !34
  %i.cj = load i8, ptr %.024.i.i.i, align 1, !tbaa !34
  %.not20.i.i.i = icmp eq i8 %i.ci, %i.cj
  br i1 %.not20.i.i.i, label %bb.ab, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i33
  %i.ck = add nsw i64 %.01623.i.i.i, -1           ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.024.i.i.i, i64 1
  %.not19.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not19.i.i.i, label %.loopexit, label %.lr.ph.i.i.i33, !llvm.loop !9

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.i.i: ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.cn, ptr %i.ca, i64 %i.ce)
  %i.co = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.co, label %.loopexit, label %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i

_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i: ; preds = %.lr.ph.i.i.i33, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.i.i, %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 24 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.cp, %i.bs
  br i1 %.not.i.i32, label %.loopexit.thread, label %bb.z, !llvm.loop !174

.loopexit:                                        ; preds = %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.i.i, %.preheader.i.i.i, %bb.ab, %bb.y
  %.013.i.i = phi ptr [ %.015.i.i, %bb.ab ], [ %i.br, %bb.y ], [ %.015.i.i, %.preheader.i.i.i ], [ %.015.i.i, %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.i.i ]
  %i.cq = icmp eq ptr %.013.i.i, %i.bs
  br i1 %i.cq, label %.loopexit.thread, label %bb.aj

.loopexit.thread:                                 ; preds = %_ZNSt3__1eqB8ne180100INS_9allocatorIcEEEEbRKNS_12basic_stringIcNS_11char_traitsIcEET_EES9_.exit.thread9.i.i, %.loopexit
  %i.cr = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.cs = icmp ult ptr %i.bs, %i.cr
  br i1 %i.cs, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.loopexit.thread
  %i.ct = load i8, ptr %3, align 8
  %i.cu = trunc i8 %i.ct to i1
  br i1 %i.cu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !86
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !34
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef %i.cv, i64 noundef %i.cw)
          to label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bs, ptr %i.i, align 8, !tbaa !33
  br label %.body

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit.i: ; preds = %bb.ae, %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  br label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9push_backB8ne180100ERKS6_.exit

bb.ag:                                            ; preds = %.loopexit.thread
  %i.cz = invoke noundef ptr @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE21__push_back_slow_pathIRKS6_EEPS6_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9push_backB8ne180100ERKS6_.exit unwind label %bb.ai

_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9push_backB8ne180100ERKS6_.exit: ; preds = %bb.ag, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit.i
  %.0.i = phi ptr [ %i.cy, %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE22__construct_one_at_endB8ne180100IJRKS6_EEEvDpOT_.exit.i ], [ %i.cz, %bb.ag ]
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !33
  br label %bb.aj

bb.ah:                                            ; preds = %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit47:                                      ; preds = %.thread.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

bb.ai:                                            ; preds = %bb.ag
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aj:                                            ; preds = %_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9push_backB8ne180100ERKS6_.exit, %.loopexit
  %i.dc = load i8, ptr %3, align 8
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %bb.ak, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.ak:                                            ; preds = %bb.aj
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.df = load i64, ptr %3, align 8
  %i.dg = and i64 %i.df, -2
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dg) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread

.body:                                            ; preds = %bb.ai, %bb.af
  %.pn15 = phi { ptr, i32 } [ %i.cx, %bb.af ], [ %i.db, %bb.ai ] ; 2 uses
  %i.dh = load i8, ptr %3, align 8
  %i.di = trunc i8 %i.dh to i1
  br i1 %i.di, label %bb.al, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

bb.al:                                            ; preds = %.body
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.dk = load i64, ptr %3, align 8
  %i.dl = and i64 %i.dk, -2
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dl) #26
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35: ; preds = %.loopexit47, %.loopexit.split-lp, %bb.al, %.body
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.al ], [ %.pn15, %.body ], [ %lpad.loopexit, %.loopexit47 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.am

.thread:                                          ; preds = %bb.i, %bb.k, %bb.c, %_ZNKSt3__16__treeINS_12__value_typeIN4gdcm3TagEPKcEENS_19__map_value_compareIS3_S6_NS_4lessIS3_EELb1EEENS_9allocatorIS6_EEE13__lower_boundIS3_EENS_21__tree_const_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEERKT_SJ_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISH_EEEE.exit.i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.041.055, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not = icmp eq ptr %i.dm, %i.dn
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !175

bb.am:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35, %bb.ah
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35 ], [ %i.da, %bb.ah ]
  call void @_ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  resume { ptr, i32 } %.pn15.pn.pn

._crit_edge:                                      ; preds = %.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4gdcm7DataSet15FindDataElementERKNS_3TagE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gdcm::DataElement", align 8 ; 6 uses
  %3 = alloca %"class.gdcm::DataElement", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load i32, ptr %1, align 4, !tbaa !34     ; 3 uses
  store i32 %i.a, ptr %2, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = trunc i32 %i.a to i16                    ; 4 uses
  %i.f = lshr i32 %i.a, 16
  %i.g = trunc nuw i32 %i.f to i16                ; 2 uses
  br i1 %.not14.i.i.i.i, label %.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.e
  %.016.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.c, %bb.a ]
  %.0815.i.i.i.i = phi ptr [ %.19.i.i.i.i, %bb.e ], [ %i.d, %bb.a ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 4, !tbaa !34   ; 2 uses
  %i.j = icmp ult i16 %i.i, %i.e
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.k = icmp eq i16 %i.i, %i.e
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i, i64 34
  %i.m = load i16, ptr %i.l, align 2, !tbaa !34
  %i.n = icmp ult i16 %i.m, %i.g
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0815.i.i.i.i, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.d ], [ %.0815.i.i.i.i, %bb.c ], [ %.0815.i.i.i.i, %bb.b ]
  %i.q = phi ptr [ %.016.i.i.i.i, %bb.d ], [ %.0815.i.i.i.i, %bb.c ], [ %.0815.i.i.i.i, %bb.b ] ; 4 uses
  %.19.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.19.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i: ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = icmp ugt i16 %i.s, %i.e
  br i1 %i.t, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i16 %i.s, %i.e
  br i1 %i.u, label %bb.h, label %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 34
  %i.w = load i16, ptr %i.v, align 2, !tbaa !34
  %.not.i = icmp ugt i16 %i.w, %i.g
  br i1 %.not.i, label %.thread.i, label %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit

common.resume:                                    ; preds = %bb.u, %bb.k, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.ah, %bb.k ], [ %i.bi, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.thread.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4gdcm12SmartPointerINS_5ValueEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

.thread.i:                                        ; preds = %bb.h, %bb.f, %_ZNKSt3__16__treeIN4gdcm11DataElementENS_4lessIS2_EENS_9allocatorIS2_EEE13__lower_boundIS2_EENS_21__tree_const_iteratorIS2_PNS_11__tree_nodeIS2_PvEElEERKT_SD_PNS_15__tree_end_nodeIPNS_16__tree_node_baseISB_EEEE.exit.i.i.i, %bb.a
  %i.z = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4gdcm7DataSet8GetDEEndEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit unwind label %bb.i

_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit: ; preds = %bb.g, %bb.h, %.thread.i
  %.05.i = phi ptr [ %i.z, %.thread.i ], [ %i.r, %bb.g ], [ %i.r, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.not.i3 = icmp eq ptr %3, %.05.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not.i3, label %_ZN4gdcm11DataElementC2ERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4gdcm7DataSet14GetDataElementERKNS_3TagE.exit
end_hunk_0
