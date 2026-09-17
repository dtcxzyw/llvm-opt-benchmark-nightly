Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi8xml_node12remove_childESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.019.us.i = phi ptr [ %.0.us.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.us.i ], [ %.017.i, %.lr.ph.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %.not14.us.i = icmp eq ptr %i.d, null
  br i1 %.not14.us.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.us.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.us.i

_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !86
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.split.us.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.us.i

_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.us.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.us.i, %.lr.ph.split.us.i
  %i.g = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 48
  %.0.us.i = load ptr, ptr %i.g, align 8, !tbaa !115 ; 2 uses
  %.not13.us.i = icmp eq ptr %.0.us.i, null
  br i1 %.not13.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !8

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i
  %.019.i = phi ptr [ %.0.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i ], [ %.017.i, %.lr.ph.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 3 uses
  %.not14.i = icmp eq ptr %i.i, null
  br i1 %.not14.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.split.i
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %.fr.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.016.i.i = phi i64 [ %i.m, %bb.e ], [ %.fr.i, %.lr.ph.preheader.i.i ]
  %.0815.i.i = phi ptr [ %i.o, %bb.e ], [ %2, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0914.i.i = phi ptr [ %i.n, %bb.e ], [ %i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.j = load i8, ptr %.0914.i.i, align 1, !tbaa !86 ; 2 uses
  %.not11.i.i = icmp eq i8 %i.j, 0
  br i1 %.not11.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.k = load i8, ptr %.0815.i.i, align 1, !tbaa !86
  %i.l = icmp eq i8 %i.k, %i.j
  br i1 %i.l, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %.016.i.i, -1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %.0815.i.i, i64 1
  %cond.i.i = icmp eq i64 %i.m, 0
  br i1 %cond.i.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !9

_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.loopexit.i: ; preds = %bb.e
  %i.p = load i8, ptr %scevgep.i.i, align 1, !tbaa !86
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.split.us.i, label %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i

_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i: ; preds = %bb.d, %.lr.ph.i.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.loopexit.i, %.lr.ph.split.i
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i, i64 48
  %.0.i = load ptr, ptr %i.r, align 8, !tbaa !115 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !8

.split.us.i:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.loopexit.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.us.i
  %.us-phi.i = phi ptr [ %.019.us.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.us.i ], [ %.019.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.loopexit.i ]
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.us-phi.i)
  br label %_ZNK4pugi8xml_node5childESt17basic_string_viewIcSt11char_traitsIcEE.exit

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.i, %_ZN4pugi4impl12_GLOBAL__N_116stringview_equalESt17basic_string_viewIcSt11char_traitsIcEEPKc.exit.thread.us.i, %bb.c
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNK4pugi8xml_node5childESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZNK4pugi8xml_node5childESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.b, %.split.us.i, %._crit_edge.i
  %i.s = load ptr, ptr %3, align 8                ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.t = load ptr, ptr %0, align 8, !tbaa !111    ; 4 uses
  %.not.i3 = icmp eq ptr %i.t, null
  %.not10.i = icmp eq ptr %i.s, null
  %or.cond = select i1 %.not.i3, i1 true, i1 %.not10.i
  br i1 %or.cond, label %_ZN4pugi8xml_node12remove_childERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4pugi8xml_node5childESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !122  ; 3 uses
  %.not11.i = icmp eq ptr %i.v, %i.t
  br i1 %.not11.i, label %bb.g, label %_ZN4pugi8xml_node12remove_childERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.t, align 8, !tbaa !117
  %i.x = lshr i64 %i.w, 8
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !120 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !121 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !113
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink17.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.ac, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink17.i.i, i64 40
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !121
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %.not16.i.i = icmp eq ptr %i.aj, null
  br i1 %.not16.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !120
  br label %_ZN4pugi4impl12_GLOBAL__N_111remove_nodeEPNS_15xml_node_structE.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !113
  br label %_ZN4pugi4impl12_GLOBAL__N_111remove_nodeEPNS_15xml_node_structE.exit.i

_ZN4pugi4impl12_GLOBAL__N_111remove_nodeEPNS_15xml_node_structE.exit.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.u, align 8, !tbaa !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN4pugi4impl12_GLOBAL__N_111remove_nodeEPNS_15xml_node_structE.exit.i
  %.0.i.i = phi ptr [ %i.s, %_ZN4pugi4impl12_GLOBAL__N_111remove_nodeEPNS_15xml_node_structE.exit.i ], [ %i.am, %bb.l ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !113 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.am, null
  br i1 %.not.i12.i, label %.preheader23.i.i, label %bb.l, !llvm.loop !15

.preheader23.i.i:                                 ; preds = %bb.l
  %.not2024.i.i = icmp eq ptr %.0.i.i, %i.s
  br i1 %.not2024.i.i, label %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit.i, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %.preheader23.i.i, %.loopexit.i.i
  %.125.i.i = phi ptr [ %.3.i.i, %.loopexit.i.i ], [ %.0.i.i, %.preheader23.i.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.125.i.i, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !122
  %i.ap = getelementptr inbounds nuw i8, ptr %.125.i.i, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !120 ; 2 uses
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112destroy_nodeEPNS_15xml_node_structERNS1_13xml_allocatorE(ptr noundef %.125.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  %.not21.i.i = icmp eq ptr %i.aq, null
  br i1 %.not21.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i4, %.preheader.i.i
  %.2.i.i = phi ptr [ %i.as, %.preheader.i.i ], [ %i.aq, %.lr.ph.i.i4 ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !113 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.as, null
  br i1 %.not22.i.i, label %.loopexit.i.i, label %.preheader.i.i, !llvm.loop !16

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph.i.i4
  %.3.i.i = phi ptr [ %i.ao, %.lr.ph.i.i4 ], [ %.2.i.i, %.preheader.i.i ] ; 2 uses
  %.not20.i.i = icmp eq ptr %.3.i.i, %i.s
  br i1 %.not20.i.i, label %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit.i, label %.lr.ph.i.i4, !llvm.loop !17

_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit.i: ; preds = %.loopexit.i.i, %.preheader23.i.i
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112destroy_nodeEPNS_15xml_node_structERNS1_13xml_allocatorE(ptr noundef %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.aa)
  br label %_ZN4pugi8xml_node12remove_childERKS0_.exit

_ZN4pugi8xml_node12remove_childERKS0_.exit:       ; preds = %_ZNK4pugi8xml_node5childESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.f, %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit.i
  %.1.i = phi i1 [ true, %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit.i ], [ false, %bb.f ], [ false, %_ZNK4pugi8xml_node5childESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4pugi8xml_node15remove_childrenEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.ay

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !117
  %i.c = lshr i64 %i.b, 8
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113  ; 2 uses
  %.not1021 = icmp eq ptr %i.h, null
  br i1 %.not1021, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 12 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !111
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.k, align 8, !tbaa !113
  br label %bb.ay

bb.c:                                             ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit
  %.0822 = phi ptr [ %i.h, %.lr.ph ], [ %2, %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit ] ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %.0822, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %.preheader23.i, label %bb.d, !llvm.loop !15

.preheader23.i:                                   ; preds = %bb.d
  %1 = getelementptr inbounds nuw i8, ptr %.0822, i64 48
  %2 = load ptr, ptr %1, align 8, !tbaa !120      ; 2 uses
  %.not2024.i = icmp eq ptr %.0.i, %.0822
  br i1 %.not2024.i, label %_ZN4pugi4impl12_GLOBAL__N_112destroy_treeEPNS_15xml_node_structERNS1_13xml_allocatorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader23.i, %.loopexit.i
  %.125.i = phi ptr [ %.3.i, %.loopexit.i ], [ %.0.i, %.preheader23.i ] ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.125.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.p = getelementptr inbounds nuw i8, ptr %.125.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120  ; 2 uses
  %i.r = load i64, ptr %.125.i, align 8, !tbaa !117
  %i.s = and i64 %i.r, 32
  %.not.i11 = icmp eq i64 %i.s, 0
  br i1 %.not.i11, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.125.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2, !tbaa !97
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = sub nuw nsw i64 -40, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.z ; 9 uses
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !98 ; 2 uses
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !99
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ag = zext i16 %i.ac to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi i64 [ %i.af, %bb.f ], [ %i.ah, %bb.g ]
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.ak = icmp eq ptr %i.aa, %i.aj
  br i1 %i.ak, label %bb.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !99
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %i.i, align 8, !tbaa !102 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !99
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %i.an = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.al, %bb.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !103
  %i.aq = add i64 %i.ap, %i.ai                    ; 2 uses
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.as = icmp eq i64 %i.aq, %i.an
  br i1 %i.as, label %bb.k, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.i, align 8, !tbaa !102
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.au, ptr %i.ay, align 8, !tbaa !104
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !105
  %i.bb = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.bb(ptr noundef nonnull %i.aa), !inline_history !292
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i: ; preds = %bb.m, %bb.l, %bb.j, %.lr.ph.i
  %i.bc = load i64, ptr %.125.i, align 8, !tbaa !117
  %i.bd = and i64 %i.bc, 16
  %.not16.i = icmp eq i64 %i.bd, 0
  br i1 %.not16.i, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit21.i, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %.125.i, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !118 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !97
  %i.bi = zext i16 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = sub nuw nsw i64 -40, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bg, i64 %i.bk ; 9 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bf, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !98 ; 2 uses
  %i.bo = icmp eq i16 %i.bn, 0
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !99
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.br = zext i16 %i.bn to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bt = phi i64 [ %i.bq, %bb.o ], [ %i.bs, %bb.p ]
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.bv = icmp eq ptr %i.bl, %i.bu
  br i1 %i.bv, label %bb.r, label %._crit_edge.i.i18.i

._crit_edge.i.i18.i:                              ; preds = %bb.q
  %.phi.trans.insert.i.i19.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %.pre.i.i20.i = load i64, ptr %.phi.trans.insert.i.i19.i, align 8, !tbaa !99
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = load i64, ptr %i.i, align 8, !tbaa !102 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !99
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i18.i
  %i.by = phi i64 [ %.pre.i.i20.i, %._crit_edge.i.i18.i ], [ %i.bw, %bb.r ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !103
  %i.cb = add i64 %i.ca, %i.bt                    ; 2 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cd = icmp eq i64 %i.cb, %i.by
  br i1 %i.cd, label %bb.t, label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit21.i

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.i, align 8, !tbaa !102
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit21.i

bb.v:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !105 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cf, ptr %i.cj, align 8, !tbaa !104
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !105
  %i.cm = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.cm(ptr noundef nonnull %i.bl), !inline_history !292
  br label %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit21.i

_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit21.i: ; preds = %bb.v, %bb.u, %bb.s, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.125.i, i64 56
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !114 ; 2 uses
  %.not1722.i = icmp eq ptr %i.co, null
  br i1 %.not1722.i, label %._crit_edge.i, label %.lr.ph.i12

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_117destroy_attributeEPNS_20xml_attribute_structERNS1_13xml_allocatorE.exit, %_ZN4pugi4impl12_GLOBAL__N_113xml_allocator17deallocate_stringEPc.exit21.i
  %i.cp = load i64, ptr %.125.i, align 8, !tbaa !117
  %i.cq = lshr i64 %i.cp, 8
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %.125.i, i64 %i.cr ; 8 uses
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !101
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %bb.w, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !99
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !102 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !99
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge.i.i
  %i.cx = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cv, %bb.w ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !103
  %i.da = add i64 %i.cz, 64                       ; 2 uses
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !103
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %.02938.i.i.i, i64 2 ; 3 uses
  br i1 %or.cond.i.i42.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !135
  %i.eg = and i16 %i.ef, 252
  %i.eh = icmp eq i16 %i.eg, 220
  br i1 %i.eh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ei = add i64 %.040.i.i.i, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.02938.i.i.i, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah
  %.sink.i.i43.i = phi i64 [ -2, %bb.am ], [ -1, %bb.ah ], [ -1, %bb.aj ], [ -1, %bb.al ], [ -1, %bb.ak ]
  %.231.i.i44.i = phi ptr [ %i.ej, %bb.am ], [ %i.dw, %bb.ah ], [ %i.ea, %bb.aj ], [ %i.ee, %bb.al ], [ %i.ee, %bb.ak ]
  %.2.i.i45.i = phi i64 [ %i.ei, %bb.am ], [ %i.dv, %bb.ah ], [ %i.dz, %bb.aj ], [ %.040.i.i.i, %bb.al ], [ %.040.i.i.i, %bb.ak ] ; 2 uses
  %i.ek = add nsw i64 %.sink.i.i43.i, %.02639.i.i.i ; 2 uses
  %.not.i.i46.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i46.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i, label %.lr.ph.i.i41.i, !llvm.loop !315

_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i: ; preds = %bb.an
  %i.el = add i64 %.2.i.i45.i, 1                  ; 2 uses
  %i.em = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.en = invoke noundef ptr %i.em(i64 noundef %i.el)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 3 uses

.noexc42:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i
  %.not.not.i47.i = icmp eq ptr %i.en, null
  br i1 %.not.not.i47.i, label %bb.bw, label %.lr.ph.i17.i48.i

_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i: ; preds = %bb.ag
  %i.eo = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ep = invoke noundef ptr %i.eo(i64 noundef 1)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 3 uses

.noexc43:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i
  %.not33.not.i.i = icmp eq ptr %i.ep, null
  br i1 %.not33.not.i.i, label %bb.bw, label %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i

.lr.ph.i17.i48.i:                                 ; preds = %.noexc42, %bb.ax
  %.040.i18.i.i = phi ptr [ %.2.i25.i.i, %bb.ax ], [ %i.en, %.noexc42 ] ; 15 uses
  %.02639.i19.i.i = phi i64 [ %i.hj, %bb.ax ], [ %i.u, %.noexc42 ] ; 2 uses
  %.02938.i20.i.i = phi ptr [ %.231.i24.i.i, %bb.ax ], [ %3, %.noexc42 ] ; 5 uses
  %i.eq = load i16, ptr %.02938.i20.i.i, align 1, !tbaa !135
  %rev.i.i21.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.eq) ; 13 uses
  %i.er = zext i16 %rev.i.i21.i.i to i32          ; 3 uses
  %i.es = icmp ult i16 %rev.i.i21.i.i, -10240
  br i1 %i.es, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %.lr.ph.i17.i48.i
  %i.et = icmp ult i16 %rev.i.i21.i.i, 128
  br i1 %i.et, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.eu = trunc nuw nsw i16 %rev.i.i21.i.i to i8
  store i8 %i.eu, ptr %.040.i18.i.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i

bb.aq:                                            ; preds = %bb.ao
  %i.ev = icmp ult i16 %rev.i.i21.i.i, 2048
  br i1 %i.ev, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ew = lshr i16 %rev.i.i21.i.i, 6
  %i.ex = trunc nuw nsw i16 %i.ew to i8
  %i.ey = or disjoint i8 %i.ex, -64
  store i8 %i.ey, ptr %.040.i18.i.i, align 1, !tbaa !86
  %i.ez = trunc i16 %rev.i.i21.i.i to i8
  %i.fa = and i8 %i.ez, 63
  %i.fb = or disjoint i8 %i.fa, -128
  %i.fc = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 1
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i

bb.as:                                            ; preds = %bb.aq
  %i.fd = lshr i16 %rev.i.i21.i.i, 12
  %i.fe = trunc nuw nsw i16 %i.fd to i8
  %i.ff = or disjoint i8 %i.fe, -32
  store i8 %i.ff, ptr %.040.i18.i.i, align 1, !tbaa !86
  %i.fg = lshr i16 %rev.i.i21.i.i, 6
  %i.fh = trunc i16 %i.fg to i8
  %i.fi = and i8 %i.fh, 63
  %i.fj = or disjoint i8 %i.fi, -128
  %i.fk = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 1
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !86
  %i.fl = trunc i16 %rev.i.i21.i.i to i8
  %i.fm = and i8 %i.fl, 63
  %i.fn = or disjoint i8 %i.fm, -128
  %i.fo = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 2
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i: ; preds = %bb.as, %bb.ar, %bb.ap
  %.sink.i.i28.i.i = phi i64 [ 3, %bb.as ], [ 2, %bb.ar ], [ 1, %bb.ap ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 %.sink.i.i28.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.02938.i20.i.i, i64 2
  br label %bb.ax

bb.at:                                            ; preds = %.lr.ph.i17.i48.i
  %i.fr = and i32 %i.er, 57344
  %i.fs = icmp eq i32 %i.fr, 57344
  br i1 %i.fs, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i49.i, label %bb.au

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i49.i: ; preds = %bb.at
  %i.ft = lshr i16 %rev.i.i21.i.i, 12
  %i.fu = trunc nuw nsw i16 %i.ft to i8
  %i.fv = or disjoint i8 %i.fu, -32
  store i8 %i.fv, ptr %.040.i18.i.i, align 1, !tbaa !86
  %i.fw = lshr i16 %rev.i.i21.i.i, 6
  %i.fx = trunc i16 %i.fw to i8
  %i.fy = and i8 %i.fx, 63
  %i.fz = or disjoint i8 %i.fy, -128
  %i.ga = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 1
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !86
  %i.gb = trunc i16 %rev.i.i21.i.i to i8
  %i.gc = and i8 %i.gb, 63
  %i.gd = or disjoint i8 %i.gc, -128
  %i.ge = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 2
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !86
  %i.gf = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 3
  %i.gg = getelementptr inbounds nuw i8, ptr %.02938.i20.i.i, i64 2
  br label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.gh = and i32 %i.er, 64512
  %i.gi = icmp eq i32 %i.gh, 55296
  %i.gj = icmp ne i64 %.02639.i19.i.i, 1
  %or.cond.i22.i.i = and i1 %i.gj, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.02938.i20.i.i, i64 2 ; 3 uses
  br i1 %or.cond.i22.i.i, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gl = load i16, ptr %i.gk, align 1, !tbaa !135
  %rev.i36.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.gl) ; 2 uses
  %i.gm = zext i16 %rev.i36.i.i.i to i32          ; 2 uses
  %i.gn = and i32 %i.gm, 64512
  %i.go = icmp eq i32 %i.gn, 56320
  br i1 %i.go, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gp = shl nuw nsw i32 %i.er, 10               ; 2 uses
  %i.gq = and i32 %i.gp, 1047552
  %i.gr = add nuw nsw i32 %i.gq, 65536            ; 2 uses
  %i.gs = and i32 %i.gm, 960
  %i.gt = or disjoint i32 %i.gs, %i.gp
  %i.gu = lshr i32 %i.gr, 18
  %i.gv = lshr i32 %i.gr, 12
  %i.gw = trunc i32 %i.gv to i8
  %i.gx = lshr exact i32 %i.gt, 6
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = trunc i16 %rev.i36.i.i.i to i8
  %i.ha = trunc nuw nsw i32 %i.gu to i8
  %i.hb = insertelement <4 x i8> poison, i8 %i.ha, i64 0
  %i.hc = insertelement <4 x i8> %i.hb, i8 %i.gw, i64 1
  %i.hd = insertelement <4 x i8> %i.hc, i8 %i.gy, i64 2
  %i.he = insertelement <4 x i8> %i.hd, i8 %i.gz, i64 3
  %i.hf = and <4 x i8> %i.he, <i8 -1, i8 63, i8 63, i8 63>
  %i.hg = or disjoint <4 x i8> %i.hf, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.hg, ptr %.040.i18.i.i, align 1, !tbaa !86
  %i.hh = getelementptr inbounds nuw i8, ptr %.040.i18.i.i, i64 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.02938.i20.i.i, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i49.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i
  %.sink.i23.i.i = phi i64 [ -2, %bb.aw ], [ -1, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i ], [ -1, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i49.i ], [ -1, %bb.av ], [ -1, %bb.au ]
  %.231.i24.i.i = phi ptr [ %i.hi, %bb.aw ], [ %i.fq, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i ], [ %i.gg, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i49.i ], [ %i.gk, %bb.av ], [ %i.gk, %bb.au ]
  %.2.i25.i.i = phi ptr [ %i.hh, %bb.aw ], [ %i.fp, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i50.i ], [ %i.gf, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit35.i.i49.i ], [ %.040.i18.i.i, %bb.av ], [ %.040.i18.i.i, %bb.au ] ; 2 uses
  %i.hj = add nsw i64 %.sink.i23.i.i, %.02639.i19.i.i ; 2 uses
  %.not.i26.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i26.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, label %.lr.ph.i17.i48.i, !llvm.loop !316

_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i: ; preds = %bb.ax, %.noexc43
  %.0.lcssa.i3440.i.i = phi i64 [ 1, %.noexc43 ], [ %i.el, %bb.ax ]
  %i.hk = phi ptr [ %i.ep, %.noexc43 ], [ %i.en, %bb.ax ]
  %.0.lcssa.i27.i.i = phi ptr [ %i.ep, %.noexc43 ], [ %.2.i25.i.i, %bb.ax ]
  store i8 0, ptr %.0.lcssa.i27.i.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.ay:                                            ; preds = %bb.m
  %i.hl = add i32 %i.d, -5
  %or.cond3.i = icmp ult i32 %i.hl, 2
  br i1 %or.cond3.i, label %bb.az, label %bb.bo

bb.az:                                            ; preds = %bb.ay
  %i.hm = icmp eq i32 %i.d, 5
  %i.hn = lshr i64 %4, 2                          ; 10 uses
  %.not17.i.i.i = icmp eq i64 %i.hn, 0            ; 2 uses
  br i1 %i.hm, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %bb.az
  br i1 %.not17.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i.i53.i.preheader

.lr.ph.i.i53.i.preheader:                         ; preds = %bb.ba
  %min.iters.check1449 = icmp ult i64 %4, 16
  br i1 %min.iters.check1449, label %.lr.ph.i.i53.i.preheader1755, label %vector.ph1450

vector.ph1450:                                    ; preds = %.lr.ph.i.i53.i.preheader
  %n.vec1451 = and i64 %i.hn, 4611686018427387900 ; 3 uses
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1459, %vector.body1452 ] ; 2 uses
  %vec.phi1454 = phi <2 x i64> [ zeroinitializer, %vector.ph1450 ], [ %i.ic, %vector.body1452 ]
  %vec.phi1455 = phi <2 x i64> [ zeroinitializer, %vector.ph1450 ], [ %i.id, %vector.body1452 ]
  %i.ho = shl i64 %index1453, 2
  %next.gep1456 = getelementptr i8, ptr %3, i64 %i.ho ; 2 uses
  %i.hp = getelementptr i8, ptr %next.gep1456, i64 8
  %wide.load1457 = load <2 x i32>, ptr %next.gep1456, align 1, !tbaa !136 ; 3 uses
  %wide.load1458 = load <2 x i32>, ptr %i.hp, align 1, !tbaa !136 ; 3 uses
  %i.hq = icmp ult <2 x i32> %wide.load1457, splat (i32 65536)
  %i.hr = icmp ult <2 x i32> %wide.load1458, splat (i32 65536)
  %i.hs = icmp ult <2 x i32> %wide.load1457, splat (i32 128)
  %i.ht = icmp ult <2 x i32> %wide.load1458, splat (i32 128)
  %i.hu = icmp ult <2 x i32> %wide.load1457, splat (i32 2048)
  %i.hv = icmp ult <2 x i32> %wide.load1458, splat (i32 2048)
  %i.hw = select <2 x i1> %i.hu, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.hx = select <2 x i1> %i.hv, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.hy = select <2 x i1> %i.hs, <2 x i64> splat (i64 1), <2 x i64> %i.hw
  %i.hz = select <2 x i1> %i.ht, <2 x i64> splat (i64 1), <2 x i64> %i.hx
  %i.ia = select <2 x i1> %i.hq, <2 x i64> %i.hy, <2 x i64> splat (i64 4)
  %i.ib = select <2 x i1> %i.hr, <2 x i64> %i.hz, <2 x i64> splat (i64 4)
  %i.ic = add <2 x i64> %i.ia, %vec.phi1454       ; 2 uses
  %i.id = add <2 x i64> %i.ib, %vec.phi1455       ; 2 uses
  %index.next1459 = add nuw i64 %index1453, 4     ; 2 uses
  %i.ie = icmp eq i64 %index.next1459, %n.vec1451
  br i1 %i.ie, label %middle.block1460, label %vector.body1452, !llvm.loop !317

middle.block1460:                                 ; preds = %vector.body1452
  %11 = and i64 %i.hn, 3
  %12 = shl nuw i64 %n.vec1451, 2
  %13 = getelementptr i8, ptr %3, i64 %12
  %bin.rdx1461 = add <2 x i64> %i.id, %i.ic
  %i.if = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1461) ; 2 uses
  %cmp.n1462 = icmp eq i64 %i.hn, %n.vec1451
  br i1 %cmp.n1462, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, label %.lr.ph.i.i53.i.preheader1755

.lr.ph.i.i53.i.preheader1755:                     ; preds = %.lr.ph.i.i53.i.preheader, %middle.block1460
  %.020.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i53.i.preheader ], [ %i.if, %middle.block1460 ]
  %.01119.i.i.i.ph = phi i64 [ %i.hn, %.lr.ph.i.i53.i.preheader ], [ %11, %middle.block1460 ]
  %.01318.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i53.i.preheader ], [ %13, %middle.block1460 ]
  br label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.preheader1755, %.lr.ph.i.i53.i
  %.020.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i53.i ], [ %.020.i.i.i.ph, %.lr.ph.i.i53.i.preheader1755 ]
  %.01119.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i53.i ], [ %.01119.i.i.i.ph, %.lr.ph.i.i53.i.preheader1755 ]
  %.01318.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i53.i ], [ %.01318.i.i.i.ph, %.lr.ph.i.i53.i.preheader1755 ] ; 2 uses
  %i.ig = load i32, ptr %.01318.i.i.i, align 1, !tbaa !136 ; 3 uses
  %i.ih = icmp ult i32 %i.ig, 65536
  %i.ii = icmp samesign ult i32 %i.ig, 128
  %i.ij = icmp samesign ult i32 %i.ig, 2048
  %..i.i.i54.i = select i1 %i.ij, i64 2, i64 3
  %.sink.i.i.i55.i = select i1 %i.ii, i64 1, i64 %..i.i.i54.i
  %.sink.i.pn.i.i.i = select i1 %i.ih, i64 %.sink.i.i.i55.i, i64 4
  %.1.i.i.i = add i64 %.sink.i.pn.i.i.i, %.020.i.i.i ; 2 uses
  %.112.i.i.i = add nsw i64 %.01119.i.i.i, -1     ; 2 uses
  %.114.i.i.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4
  %.not.i.i56.i = icmp eq i64 %.112.i.i.i, 0
  br i1 %.not.i.i56.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, label %.lr.ph.i.i53.i, !llvm.loop !318

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %bb.ba
  %i.ik = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.il = invoke noundef ptr %i.ik(i64 noundef 1)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 3 uses

.noexc44:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i
  %.not.not.i60.i = icmp eq ptr %i.il, null
  br i1 %.not.not.i60.i, label %bb.bw, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i: ; preds = %.lr.ph.i.i53.i, %middle.block1460
  %.1.i.i.i.lcssa = phi i64 [ %i.if, %middle.block1460 ], [ %.1.i.i.i, %.lr.ph.i.i53.i ]
  %i.im = add i64 %.1.i.i.i.lcssa, 1              ; 2 uses
  %i.in = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.io = invoke noundef ptr %i.in(i64 noundef %i.im)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 3 uses

.noexc45:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i
  %.not28.not.i.i = icmp eq ptr %i.io, null
  br i1 %.not28.not.i.i, label %bb.bw, label %.lr.ph.i17.i57.i

.lr.ph.i17.i57.i:                                 ; preds = %.noexc45, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i
  %.020.i18.i.i = phi ptr [ %i.ka, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ], [ %i.io, %.noexc45 ] ; 8 uses
  %.01119.i19.i.i = phi i64 [ %.112.i21.i.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ], [ %i.hn, %.noexc45 ]
  %.01318.i20.i.i = phi ptr [ %.114.i22.i.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ], [ %3, %.noexc45 ] ; 2 uses
  %i.ip = load i32, ptr %.01318.i20.i.i, align 1, !tbaa !136 ; 13 uses
  %i.iq = icmp ult i32 %i.ip, 65536
  br i1 %i.iq, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %.lr.ph.i17.i57.i
  %i.ir = icmp samesign ult i32 %i.ip, 128
  br i1 %i.ir, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.is = trunc nuw nsw i32 %i.ip to i8
  store i8 %i.is, ptr %.020.i18.i.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i

bb.bd:                                            ; preds = %bb.bb
  %i.it = icmp samesign ult i32 %i.ip, 2048
  br i1 %i.it, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.iu = lshr i32 %i.ip, 6
  %i.iv = trunc nuw nsw i32 %i.iu to i8
  %i.iw = or disjoint i8 %i.iv, -64
  store i8 %i.iw, ptr %.020.i18.i.i, align 1, !tbaa !86
  %i.ix = trunc i32 %i.ip to i8
  %i.iy = and i8 %i.ix, 63
  %i.iz = or disjoint i8 %i.iy, -128
  %i.ja = getelementptr inbounds nuw i8, ptr %.020.i18.i.i, i64 1
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i

bb.bf:                                            ; preds = %bb.bd
  %i.jb = lshr i32 %i.ip, 12
  %i.jc = trunc nuw nsw i32 %i.jb to i8
  %i.jd = or disjoint i8 %i.jc, -32
  store i8 %i.jd, ptr %.020.i18.i.i, align 1, !tbaa !86
  %i.je = lshr i32 %i.ip, 6
  %i.jf = trunc i32 %i.je to i8
  %i.jg = and i8 %i.jf, 63
  %i.jh = or disjoint i8 %i.jg, -128
  %i.ji = getelementptr inbounds nuw i8, ptr %.020.i18.i.i, i64 1
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !86
  %i.jj = trunc i32 %i.ip to i8
  %i.jk = and i8 %i.jj, 63
  %i.jl = or disjoint i8 %i.jk, -128
  %i.jm = getelementptr inbounds nuw i8, ptr %.020.i18.i.i, i64 2
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i

bb.bg:                                            ; preds = %.lr.ph.i17.i57.i
  %i.jn = lshr i32 %i.ip, 6
  %i.jo = lshr i32 %i.ip, 12
  %i.jp = lshr i32 %i.ip, 18
  %i.jq = trunc i32 %i.ip to i8
  %i.jr = trunc i32 %i.jn to i8
  %i.js = trunc i32 %i.jo to i8
  %i.jt = trunc i32 %i.jp to i8
  %i.ju = insertelement <4 x i8> poison, i8 %i.jt, i64 0
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.js, i64 1
  %i.jw = insertelement <4 x i8> %i.jv, i8 %i.jr, i64 2
  %i.jx = insertelement <4 x i8> %i.jw, i8 %i.jq, i64 3
  %i.jy = and <4 x i8> %i.jx, <i8 -1, i8 63, i8 63, i8 63>
  %i.jz = or <4 x i8> %i.jy, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.jz, ptr %.020.i18.i.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i: ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %.sink.i.i59.i = phi i64 [ 4, %bb.bg ], [ 3, %bb.bf ], [ 2, %bb.be ], [ 1, %bb.bc ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.020.i18.i.i, i64 %.sink.i.i59.i ; 2 uses
  %.112.i21.i.i = add nsw i64 %.01119.i19.i.i, -1 ; 2 uses
  %.114.i22.i.i = getelementptr inbounds nuw i8, ptr %.01318.i20.i.i, i64 4
  %.not.i23.i.i = icmp eq i64 %.112.i21.i.i, 0
  br i1 %.not.i23.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i17.i57.i, !llvm.loop !19

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i, %.noexc44
  %.0.lcssa.i2937.i.i = phi i64 [ 1, %.noexc44 ], [ %i.im, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ]
  %i.kb = phi ptr [ %i.il, %.noexc44 ], [ %i.io, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ]
  %.0.lcssa.i24.i.i = phi ptr [ %i.il, %.noexc44 ], [ %i.ka, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i58.i ]
  store i8 0, ptr %.0.lcssa.i24.i.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.bh:                                            ; preds = %bb.az
  br i1 %.not17.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i.i62.i.preheader

.lr.ph.i.i62.i.preheader:                         ; preds = %bb.bh
  %i.kc = icmp eq i64 %i.hn, 1
  br i1 %i.kc, label %.lr.ph.i.i62.i.epil.preheader, label %.lr.ph.i.i62.i.preheader.new

.lr.ph.i.i62.i.preheader.new:                     ; preds = %.lr.ph.i.i62.i.preheader
  %unroll_iter = and i64 %i.hn, 4611686018427387902
  br label %.lr.ph.i.i62.i

.lr.ph.i.i62.i:                                   ; preds = %.lr.ph.i.i62.i, %.lr.ph.i.i62.i.preheader.new
  %.020.i.i63.i = phi i64 [ 0, %.lr.ph.i.i62.i.preheader.new ], [ %.1.i.i69.i.1, %.lr.ph.i.i62.i ]
  %.01318.i.i65.i = phi ptr [ %3, %.lr.ph.i.i62.i.preheader.new ], [ %.114.i.i71.i.1, %.lr.ph.i.i62.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62.i ]
  %i.kd = load i32, ptr %.01318.i.i65.i, align 1, !tbaa !136
  %i.ke = tail call noundef i32 @llvm.bswap.i32(i32 %i.kd) ; 3 uses
  %i.kf = icmp ult i32 %i.ke, 65536
  %i.kg = icmp samesign ult i32 %i.ke, 128
  %i.kh = icmp samesign ult i32 %i.ke, 2048
  %..i.i.i66.i = select i1 %i.kh, i64 2, i64 3
  %.sink.i.i.i67.i = select i1 %i.kg, i64 1, i64 %..i.i.i66.i
  %.sink.i.pn.i.i68.i = select i1 %i.kf, i64 %.sink.i.i.i67.i, i64 4
  %.1.i.i69.i = add i64 %.sink.i.pn.i.i68.i, %.020.i.i63.i
  %.114.i.i71.i = getelementptr inbounds nuw i8, ptr %.01318.i.i65.i, i64 4
  %i.ki = load i32, ptr %.114.i.i71.i, align 1, !tbaa !136
  %i.kj = tail call noundef i32 @llvm.bswap.i32(i32 %i.ki) ; 3 uses
  %i.kk = icmp ult i32 %i.kj, 65536
  %i.kl = icmp samesign ult i32 %i.kj, 128
  %i.km = icmp samesign ult i32 %i.kj, 2048
  %..i.i.i66.i.1 = select i1 %i.km, i64 2, i64 3
  %.sink.i.i.i67.i.1 = select i1 %i.kl, i64 1, i64 %..i.i.i66.i.1
  %.sink.i.pn.i.i68.i.1 = select i1 %i.kk, i64 %.sink.i.i.i67.i.1, i64 4
  %.1.i.i69.i.1 = add i64 %.sink.i.pn.i.i68.i.1, %.1.i.i69.i ; 3 uses
  %.114.i.i71.i.1 = getelementptr inbounds nuw i8, ptr %.01318.i.i65.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa, label %.lr.ph.i.i62.i, !llvm.loop !319

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %bb.bh
  %i.kn = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ko = invoke noundef ptr %i.kn(i64 noundef 1)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 3 uses

.noexc46:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i
  %.not.not.i86.i = icmp eq ptr %i.ko, null
  br i1 %.not.not.i86.i, label %bb.bw, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa: ; preds = %.lr.ph.i.i62.i
  %i.kp = and i64 %4, 4
  %lcmp.mod1768.not = icmp eq i64 %i.kp, 0
  br i1 %lcmp.mod1768.not, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, label %.lr.ph.i.i62.i.epil.preheader

.lr.ph.i.i62.i.epil.preheader:                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa, %.lr.ph.i.i62.i.preheader
  %.020.i.i63.i.epil.init = phi i64 [ 0, %.lr.ph.i.i62.i.preheader ], [ %.1.i.i69.i.1, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa ]
  %.01318.i.i65.i.epil.init = phi ptr [ %3, %.lr.ph.i.i62.i.preheader ], [ %.114.i.i71.i.1, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa ]
  %lcmp.mod1770 = trunc i64 %i.hn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1770)
  %i.kq = load i32, ptr %.01318.i.i65.i.epil.init, align 1, !tbaa !136
  %i.kr = tail call noundef i32 @llvm.bswap.i32(i32 %i.kq) ; 3 uses
  %i.ks = icmp ult i32 %i.kr, 65536
  %i.kt = icmp samesign ult i32 %i.kr, 128
  %i.ku = icmp samesign ult i32 %i.kr, 2048
  %..i.i.i66.i.epil = select i1 %i.ku, i64 2, i64 3
  %.sink.i.i.i67.i.epil = select i1 %i.kt, i64 1, i64 %..i.i.i66.i.epil
  %.sink.i.pn.i.i68.i.epil = select i1 %i.ks, i64 %.sink.i.i.i67.i.epil, i64 4
  %.1.i.i69.i.epil = add i64 %.sink.i.pn.i.i68.i.epil, %.020.i.i63.i.epil.init
  br label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa, %.lr.ph.i.i62.i.epil.preheader
  %.1.i.i69.i.lcssa = phi i64 [ %.1.i.i69.i.1, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i.unr-lcssa ], [ %.1.i.i69.i.epil, %.lr.ph.i.i62.i.epil.preheader ]
  %i.kv = add i64 %.1.i.i69.i.lcssa, 1            ; 2 uses
  %i.kw = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.kx = invoke noundef ptr %i.kw(i64 noundef %i.kv)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 3 uses

.noexc47:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i
  %.not28.not.i73.i = icmp eq ptr %i.kx, null
  br i1 %.not28.not.i73.i, label %bb.bw, label %.lr.ph.i17.i74.i

.lr.ph.i17.i74.i:                                 ; preds = %.noexc47, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i
  %.020.i18.i75.i = phi ptr [ %i.mk, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ], [ %i.kx, %.noexc47 ] ; 8 uses
  %.01119.i19.i76.i = phi i64 [ %.112.i21.i80.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ], [ %i.hn, %.noexc47 ]
  %.01318.i20.i77.i = phi ptr [ %.114.i22.i81.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ], [ %3, %.noexc47 ] ; 2 uses
  %i.ky = load i32, ptr %.01318.i20.i77.i, align 1, !tbaa !136
  %i.kz = tail call noundef i32 @llvm.bswap.i32(i32 %i.ky) ; 13 uses
  %i.la = icmp ult i32 %i.kz, 65536
  br i1 %i.la, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %.lr.ph.i17.i74.i
  %i.lb = icmp samesign ult i32 %i.kz, 128
  br i1 %i.lb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lc = trunc nuw nsw i32 %i.kz to i8
  store i8 %i.lc, ptr %.020.i18.i75.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

bb.bk:                                            ; preds = %bb.bi
  %i.ld = icmp samesign ult i32 %i.kz, 2048
  br i1 %i.ld, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.le = lshr i32 %i.kz, 6
  %i.lf = trunc nuw nsw i32 %i.le to i8
  %i.lg = or disjoint i8 %i.lf, -64
  store i8 %i.lg, ptr %.020.i18.i75.i, align 1, !tbaa !86
  %i.lh = trunc i32 %i.kz to i8
  %i.li = and i8 %i.lh, 63
  %i.lj = or disjoint i8 %i.li, -128
  %i.lk = getelementptr inbounds nuw i8, ptr %.020.i18.i75.i, i64 1
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

bb.bm:                                            ; preds = %bb.bk
  %i.ll = lshr i32 %i.kz, 12
  %i.lm = trunc nuw nsw i32 %i.ll to i8
  %i.ln = or disjoint i8 %i.lm, -32
  store i8 %i.ln, ptr %.020.i18.i75.i, align 1, !tbaa !86
  %i.lo = lshr i32 %i.kz, 6
  %i.lp = trunc i32 %i.lo to i8
  %i.lq = and i8 %i.lp, 63
  %i.lr = or disjoint i8 %i.lq, -128
  %i.ls = getelementptr inbounds nuw i8, ptr %.020.i18.i75.i, i64 1
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !86
  %i.lt = trunc i32 %i.kz to i8
  %i.lu = and i8 %i.lt, 63
  %i.lv = or disjoint i8 %i.lu, -128
  %i.lw = getelementptr inbounds nuw i8, ptr %.020.i18.i75.i, i64 2
  store i8 %i.lv, ptr %i.lw, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

bb.bn:                                            ; preds = %.lr.ph.i17.i74.i
  %i.lx = lshr i32 %i.kz, 6
  %i.ly = lshr i32 %i.kz, 12
  %i.lz = lshr i32 %i.kz, 18
  %i.ma = trunc i32 %i.kz to i8
  %i.mb = trunc i32 %i.lx to i8
  %i.mc = trunc i32 %i.ly to i8
  %i.md = trunc i32 %i.lz to i8
  %i.me = insertelement <4 x i8> poison, i8 %i.md, i64 0
  %i.mf = insertelement <4 x i8> %i.me, i8 %i.mc, i64 1
  %i.mg = insertelement <4 x i8> %i.mf, i8 %i.mb, i64 2
  %i.mh = insertelement <4 x i8> %i.mg, i8 %i.ma, i64 3
  %i.mi = and <4 x i8> %i.mh, <i8 -1, i8 63, i8 63, i8 63>
  %i.mj = or <4 x i8> %i.mi, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.mj, ptr %.020.i18.i75.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  %.sink.i.i79.i = phi i64 [ 4, %bb.bn ], [ 3, %bb.bm ], [ 2, %bb.bl ], [ 1, %bb.bj ]
  %i.mk = getelementptr inbounds nuw i8, ptr %.020.i18.i75.i, i64 %.sink.i.i79.i ; 2 uses
  %.112.i21.i80.i = add nsw i64 %.01119.i19.i76.i, -1 ; 2 uses
  %.114.i22.i81.i = getelementptr inbounds nuw i8, ptr %.01318.i20.i77.i, i64 4
  %.not.i23.i82.i = icmp eq i64 %.112.i21.i80.i, 0
  br i1 %.not.i23.i82.i, label %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, label %.lr.ph.i17.i74.i, !llvm.loop !320

_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i, %.noexc46
  %.0.lcssa.i2937.i83.i = phi i64 [ 1, %.noexc46 ], [ %i.kv, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ]
  %i.ml = phi ptr [ %i.ko, %.noexc46 ], [ %i.kx, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ]
  %.0.lcssa.i24.i84.i = phi ptr [ %i.ko, %.noexc46 ], [ %i.mk, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i78.i ]
  store i8 0, ptr %.0.lcssa.i24.i84.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.bo:                                            ; preds = %bb.ay
  %i.mm = icmp eq i32 %i.d, 9
  br i1 %i.mm, label %.preheader.i, label %bb.bw

.preheader.i:                                     ; preds = %bb.bo, %bb.bp
  %.0811.i.i.i = phi i64 [ %i.mq, %bb.bp ], [ 0, %bb.bo ] ; 8 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i.i.i
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !86
  %i.mp = icmp slt i8 %i.mo, 0
  br i1 %i.mp, label %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %.preheader.i
  %i.mq = add nuw i64 %.0811.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.mq, %4
  br i1 %exitcond.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, label %.preheader.i, !llvm.loop !321

_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i: ; preds = %.preheader.i
  %i.mr = getelementptr inbounds nuw i8, ptr %3, i64 %.0811.i.i.i ; 6 uses
  %i.ms = sub i64 %4, %.0811.i.i.i                ; 8 uses
  %min.iters.check = icmp ult i64 %i.ms, 4
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i
  %n.vec = and i64 %i.ms, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.my, %vector.body ]
  %vec.phi1445 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.mz, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.mr, i64 %index ; 2 uses
  %i.mt = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !86
  %wide.load1446 = load <2 x i8>, ptr %i.mt, align 1, !tbaa !86
  %i.mu = icmp sgt <2 x i8> %wide.load, splat (i8 -1)
  %i.mv = icmp sgt <2 x i8> %wide.load1446, splat (i8 -1)
  %i.mw = select <2 x i1> %i.mu, <2 x i64> splat (i64 1), <2 x i64> splat (i64 2)
  %i.mx = select <2 x i1> %i.mv, <2 x i64> splat (i64 1), <2 x i64> splat (i64 2)
  %i.my = add <2 x i64> %i.mw, %vec.phi           ; 2 uses
  %i.mz = add <2 x i64> %i.mx, %vec.phi1445       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.na = icmp eq i64 %index.next, %n.vec
  br i1 %i.na, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  %14 = and i64 %i.ms, 3
  %15 = getelementptr i8, ptr %i.mr, i64 %n.vec
  %bin.rdx = add <2 x i64> %i.mz, %i.my
  %i.nb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ms, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i ], [ %i.nb, %middle.block ]
  %.058.i.i.i.ph = phi i64 [ %i.ms, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i ], [ %14, %middle.block ]
  %.067.i.i.i.ph = phi ptr [ %i.mr, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.i.i ], [ %15, %middle.block ]
  br label %.preheader.i.i

_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i: ; preds = %bb.bp
  br i1 %7, label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i
  %i.nc = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.nd = add i64 %4, 1                           ; 2 uses
  %i.ne = invoke noundef ptr %i.nc(i64 noundef %i.nd)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 4 uses

.noexc48:                                         ; preds = %bb.bq
  %.not.not.i.i.i = icmp eq ptr %i.ne, null
  br i1 %.not.not.i.i.i, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %.noexc48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ne, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 range(i64 1, 0) %4, i1 false)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %4
  store i8 0, ptr %i.nf, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.09.i.i.i = phi i64 [ %i.ni, %.preheader.i.i ], [ %.09.i.i.i.ph, %.preheader.i.i.preheader ]
  %.058.i.i.i = phi i64 [ %i.nk, %.preheader.i.i ], [ %.058.i.i.i.ph, %.preheader.i.i.preheader ]
  %.067.i.i.i = phi ptr [ %i.nj, %.preheader.i.i ], [ %.067.i.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %i.ng = load i8, ptr %.067.i.i.i, align 1, !tbaa !86
  %i.nh = icmp sgt i8 %i.ng, -1
  %.sink.i.i.i88.i = select i1 %i.nh, i64 1, i64 2
  %i.ni = add i64 %.sink.i.i.i88.i, %.09.i.i.i    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.067.i.i.i, i64 1
  %i.nk = add i64 %.058.i.i.i, -1                 ; 2 uses
  %.not.i.i89.i = icmp eq i64 %i.nk, 0
  br i1 %.not.i.i89.i, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader.i.i, !llvm.loop !323

_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %.preheader.i.i, %middle.block
  %.lcssa1443 = phi i64 [ %i.nb, %middle.block ], [ %i.ni, %.preheader.i.i ]
  %i.nl = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.nm = add i64 %.0811.i.i.i, 1
  %i.nn = add i64 %i.nm, %.lcssa1443              ; 2 uses
  %i.no = invoke noundef ptr %i.nl(i64 noundef %i.nn)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 4 uses

.noexc49:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %.not.not.i90.i = icmp eq ptr %i.no, null
  br i1 %.not.not.i90.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %.noexc49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.no, ptr nonnull align 1 %3, i64 %.0811.i.i.i, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %.0811.i.i.i ; 4 uses
  %.neg = add i64 %.0811.i.i.i, 1
  %xtraiter = and i64 %i.ms, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bs
  %i.nq = load i8, ptr %i.mr, align 1, !tbaa !86  ; 4 uses
  %i.nr = icmp sgt i8 %i.nq, -1
  br i1 %i.nr, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol, label %bb.bt

bb.bt:                                            ; preds = %.prol.preheader
  %i.ns = lshr i8 %i.nq, 6
  %i.nt = or disjoint i8 %i.ns, -64
  %i.nu = and i8 %i.nq, -65
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol: ; preds = %bb.bt, %.prol.preheader
  %.sink.i37.i.i.prol = phi i8 [ %i.nt, %bb.bt ], [ %i.nq, %.prol.preheader ]
  %.sink.i.i38.i.i.prol = phi i64 [ 2, %bb.bt ], [ 1, %.prol.preheader ]
  store i8 %.sink.i37.i.i.prol, ptr %i.np, align 1, !tbaa !86
  %i.nw = getelementptr inbounds nuw i8, ptr %i.np, i64 %.sink.i.i38.i.i.prol ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mr, i64 1
  %i.ny = add nsw i64 %i.ms, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol, %bb.bs
  %.lcssa1760.unr = phi ptr [ poison, %bb.bs ], [ %i.nw, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol ]
  %.09.i34.i.i.unr = phi ptr [ %i.np, %bb.bs ], [ %i.nw, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol ]
  %.058.i35.i.i.unr = phi i64 [ %i.ms, %bb.bs ], [ %i.ny, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol ]
  %.067.i36.i.i.unr = phi ptr [ %i.mr, %bb.bs ], [ %i.nx, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.prol ]
  %i.nz = icmp eq i64 %4, %.neg
  br i1 %i.nz, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1
  %.09.i34.i.i = phi ptr [ %i.oo, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1 ], [ %.09.i34.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.058.i35.i.i = phi i64 [ %i.oq, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1 ], [ %.058.i35.i.i.unr, %.prol.loopexit ]
  %.067.i36.i.i = phi ptr [ %i.op, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1 ], [ %.067.i36.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.oa = load i8, ptr %.067.i36.i.i, align 1, !tbaa !86 ; 4 uses
  %i.ob = icmp sgt i8 %i.oa, -1
  br i1 %i.ob, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i, label %bb.bu

bb.bu:                                            ; preds = %.new
  %i.oc = lshr i8 %i.oa, 6
  %i.od = or disjoint i8 %i.oc, -64
  %i.oe = and i8 %i.oa, -65
  %i.of = getelementptr inbounds nuw i8, ptr %.09.i34.i.i, i64 1
  store i8 %i.oe, ptr %i.of, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i: ; preds = %bb.bu, %.new
  %.sink.i37.i.i = phi i8 [ %i.od, %bb.bu ], [ %i.oa, %.new ]
  %.sink.i.i38.i.i = phi i64 [ 2, %bb.bu ], [ 1, %.new ]
  store i8 %.sink.i37.i.i, ptr %.09.i34.i.i, align 1, !tbaa !86
  %i.og = getelementptr inbounds nuw i8, ptr %.09.i34.i.i, i64 %.sink.i.i38.i.i ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.067.i36.i.i, i64 1
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !86  ; 4 uses
  %i.oj = icmp sgt i8 %i.oi, -1
  br i1 %i.oj, label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1, label %bb.bv

bb.bv:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i
  %i.ok = lshr i8 %i.oi, 6
  %i.ol = or disjoint i8 %i.ok, -64
  %i.om = and i8 %i.oi, -65
  %i.on = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store i8 %i.om, ptr %i.on, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1: ; preds = %bb.bv, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i
  %.sink.i37.i.i.1 = phi i8 [ %i.ol, %bb.bv ], [ %i.oi, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i ]
  %.sink.i.i38.i.i.1 = phi i64 [ 2, %bb.bv ], [ 1, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i ]
  store i8 %.sink.i37.i.i.1, ptr %i.og, align 1, !tbaa !86
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 %.sink.i.i38.i.i.1 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.067.i36.i.i, i64 2
  %i.oq = add i64 %.058.i35.i.i, -2               ; 2 uses
  %.not.i39.i.i.1 = icmp eq i64 %i.oq, 0
  br i1 %.not.i39.i.i.1, label %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.new, !llvm.loop !324

_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1, %.prol.loopexit
  %.lcssa1760 = phi ptr [ %.lcssa1760.unr, %.prol.loopexit ], [ %i.oo, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i91.i.1 ]
  store i8 0, ptr %.lcssa1760, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit

bb.bw:                                            ; preds = %bb.bo, %.noexc44, %.noexc47, %.noexc46, %.noexc48, %.noexc49, %.noexc, %.noexc41, %.noexc40, %.noexc43, %.noexc42, %.noexc45
  invoke void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %_ZN4pugi4impl12_GLOBAL__N_117make_parse_resultENS_16xml_parse_statusEl.exit51 unwind label %.loopexit.split-lp.loopexit.split-lp

_ZN4pugi4impl12_GLOBAL__N_117make_parse_resultENS_16xml_parse_statusEl.exit51: ; preds = %bb.bw
  store i32 3, ptr %0, align 8, !tbaa !128, !alias.scope !363
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.or, align 8, !tbaa !129, !alias.scope !363
  br label %bb.ii

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.critedge.i, %bb.ia, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, %bb.cb, %bb.bw, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i, %bb.bq, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %bb.i, %bb.by
  %.sroa.0.0.ph.ph = phi ptr [ null, %.critedge.i ], [ null, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i ], [ %i.e, %bb.bq ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_12utf8_counterEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ null, %bb.cb ], [ null, %bb.ia ], [ null, %bb.by ], [ %i.e, %bb.bw ], [ %i.e, %bb.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.thread.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.e, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_12utf8_counterEEENT_10value_typeEPKjmS8_S7_.exit.thread.i.i ]
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit: ; preds = %bb.h, %bb.l, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i, %bb.br, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %.079 = phi ptr [ %i.no, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ %i.ne, %bb.br ], [ %3, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i ], [ %3, %bb.h ], [ %i.ml, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.kb, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %i.hk, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.dp, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.q, %bb.l ] ; 12 uses
  %.0 = phi i64 [ %i.nn, %_ZN4pugi4impl12_GLOBAL__N_114latin1_decoder7processINS1_11utf8_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i ], [ %i.nd, %bb.br ], [ %4, %_ZN4pugi4impl12_GLOBAL__N_129get_latin1_7bit_prefix_lengthEPKhm.exit.thread.i.i ], [ %4, %bb.h ], [ %.0.lcssa.i2937.i83.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %.0.lcssa.i2937.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf32_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKjmS8_S7_.exit.i.i ], [ %.0.lcssa.i3440.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_8opt_trueEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %.0.lcssa.i3541.i.i, %_ZN4pugi4impl12_GLOBAL__N_113utf16_decoderINS1_9opt_falseEE7processINS1_11utf8_writerEEENT_10value_typeEPKtmS8_S7_.exit.i.i ], [ %i.p, %bb.l ] ; 3 uses
  br i1 %8, label %bb.bx, label %.critedge

bb.bx:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit
  %i.os = icmp ne ptr %.079, %3
  %i.ot = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.ot, %i.os
  br i1 %or.cond3, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ou = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.ou(ptr noundef nonnull %3)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_114convert_bufferERPcRmNS_12xml_encodingEPKvmb.exit
  %.not.old = icmp eq ptr %.079, %3
  br i1 %.not.old, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by, %.critedge
  store ptr %.079, ptr %9, align 8, !tbaa !94
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.critedge
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %.079, ptr %i.ov, align 8, !tbaa !139
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ow = icmp eq i64 %.0, 0
  br i1 %i.ow, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %bb.cb
  %i.ox = lshr i32 %5, 8
  %i.oy = and i32 %i.ox, 16
  %i.oz = xor i32 %i.oy, 16
  store i32 %i.oz, ptr %0, align 8, !tbaa !128, !alias.scope !365
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.pa, align 8, !tbaa !129, !alias.scope !365
end_hunk_1
begin_hunk_2_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
  br i1 %.not284.i.i, label %select.unfold331.i.i, label %bb.cs, !prof !107

bb.cs:                                            ; preds = %bb.cr
  %i.su = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 1
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.sz = and i8 %i.sy, 64
  %.not285.i.i = icmp eq i8 %i.sz, 0
  br i1 %.not285.i.i, label %select.unfold331.i.i.split.loop.exit1038, label %bb.ct, !prof !107

bb.ct:                                            ; preds = %bb.cs
  %i.ta = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 2
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.tc = zext i8 %i.tb to i64
  %i.td = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.tf = and i8 %i.te, 64
  %.not286.i.i = icmp eq i8 %i.tf, 0
  br i1 %.not286.i.i, label %select.unfold331.i.i.split.loop.exit1034, label %bb.cu, !prof !107

bb.cu:                                            ; preds = %bb.ct
  %i.tg = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 3
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.ti = zext i8 %i.th to i64
  %i.tj = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.tl = and i8 %i.tk, 64
  %.not287.i.i = icmp eq i8 %i.tl, 0
  %i.tm = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 4
  br i1 %.not287.i.i, label %select.unfold331.i.i.split.loop.exit1042, label %bb.cr, !prof !107

select.unfold331.i.i.split.loop.exit1034:         ; preds = %bb.ct
  %i.tn = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 2
  br label %select.unfold331.i.i

select.unfold331.i.i.split.loop.exit1038:         ; preds = %bb.cs
  %i.to = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 1
  br label %select.unfold331.i.i

select.unfold331.i.i.split.loop.exit1042:         ; preds = %bb.cu
  %i.tp = getelementptr inbounds nuw i8, ptr %.7217.i.i, i64 3
  br label %select.unfold331.i.i

select.unfold331.i.i:                             ; preds = %bb.cr, %select.unfold331.i.i.split.loop.exit1042, %select.unfold331.i.i.split.loop.exit1038, %select.unfold331.i.i.split.loop.exit1034
  %i.tq = phi i8 [ %i.tk, %select.unfold331.i.i.split.loop.exit1042 ], [ %i.te, %select.unfold331.i.i.split.loop.exit1034 ], [ %i.sy, %select.unfold331.i.i.split.loop.exit1038 ], [ %i.ss, %bb.cr ]
  %i.tr = phi i8 [ %i.th, %select.unfold331.i.i.split.loop.exit1042 ], [ %i.tb, %select.unfold331.i.i.split.loop.exit1034 ], [ %i.sv, %select.unfold331.i.i.split.loop.exit1038 ], [ %i.sp, %bb.cr ]
  %.8218.ph.i.i = phi ptr [ %i.tp, %select.unfold331.i.i.split.loop.exit1042 ], [ %i.tn, %select.unfold331.i.i.split.loop.exit1034 ], [ %i.to, %select.unfold331.i.i.split.loop.exit1038 ], [ %.7217.i.i, %bb.cr ] ; 2 uses
  store i8 0, ptr %.8218.ph.i.i, align 1, !tbaa !86, !noalias !364
  %i.ts = getelementptr inbounds nuw i8, ptr %.8218.ph.i.i, i64 1 ; 2 uses
  %i.tt = and i8 %i.tq, 8
  %.not288.i.i = icmp eq i8 %i.tt, 0
  br i1 %.not288.i.i, label %.loopexit1071.i.i, label %.preheader364.i.i

.preheader364.i.i:                                ; preds = %select.unfold331.i.i, %.preheader364.i.i
  %.9219.i.i = phi ptr [ %i.tz, %.preheader364.i.i ], [ %i.ts, %select.unfold331.i.i ] ; 2 uses
  %i.tu = load i8, ptr %.9219.i.i, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.tv = zext i8 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.tv
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !86, !noalias !364
  %i.ty = and i8 %i.tx, 8
  %.not289.i.i = icmp eq i8 %i.ty, 0
  %i.tz = getelementptr inbounds nuw i8, ptr %.9219.i.i, i64 1 ; 2 uses
  br i1 %.not289.i.i, label %.loopexit1071.i.i, label %.preheader364.i.i, !llvm.loop !332

.loopexit1071.i.i:                                ; preds = %.preheader364.i.i, %select.unfold331.i.i
  %.10.i.i = phi ptr [ %i.ts, %select.unfold331.i.i ], [ %i.tz, %.preheader364.i.i ] ; 2 uses
  %.0209.i.i = phi i8 [ %i.tr, %select.unfold331.i.i ], [ %i.tu, %.preheader364.i.i ]
  %i.ua = icmp eq i8 %.0209.i.i, 61
  br i1 %i.ua, label %.preheader.i.i54, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.preheader.i.i54:                                 ; preds = %.loopexit1071.i.i, %.preheader.i.i54
  %.11.i.i = phi ptr [ %i.ug, %.preheader.i.i54 ], [ %.10.i.i, %.loopexit1071.i.i ] ; 3 uses
  %i.ub = load i8, ptr %.11.i.i, align 1, !tbaa !86, !noalias !364 ; 3 uses
  %i.uc = zext i8 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !86, !noalias !364
  %i.uf = and i8 %i.ue, 8
  %.not290.i.i = icmp eq i8 %i.uf, 0
  %i.ug = getelementptr inbounds nuw i8, ptr %.11.i.i, i64 1 ; 3 uses
  br i1 %.not290.i.i, label %bb.cv, label %.preheader.i.i54, !llvm.loop !333

bb.cv:                                            ; preds = %.preheader.i.i54
  switch i8 %i.ub, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 34, label %.noexc62
    i8 39, label %.noexc62
  ]

.noexc62:                                         ; preds = %bb.cv, %bb.cv
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  store ptr %i.ug, ptr %i.uh, align 8, !tbaa !85, !noalias !364
  %i.ui = tail call noundef ptr %switch.load(ptr noundef nonnull %i.ug, i8 noundef signext %i.ub), !inline_history !334 ; 4 uses
  %.not291.i.i = icmp eq ptr %i.ui, null
  br i1 %.not291.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.noexc62
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !85, !noalias !364
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.cx:                                            ; preds = %.noexc62
  %i.ul = load i8, ptr %i.ui, align 1, !tbaa !86, !noalias !364
  %i.um = zext i8 %i.ul to i64
  %i.un = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.um
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !86, !noalias !364
  %.not292.i.i = icmp sgt i8 %i.uo, -1
  br i1 %.not292.i.i, label %.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.cy:                                            ; preds = %bb.cp
  switch i8 %i.sh, label %bb.dd [
    i8 47, label %bb.cz
    i8 62, label %.outer.i.i.backedge
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.up = load i8, ptr %i.sm, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.uq = icmp eq i8 %i.up, 62
  br i1 %i.uq, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ur = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 24
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !122, !noalias !364
  %i.ut = getelementptr inbounds nuw i8, ptr %.6216.i.i, i64 2
  br label %.outer.i.i.backedge

bb.db:                                            ; preds = %bb.cz
  %i.uu = icmp eq i8 %i.up, 0
  %or.cond.i.i = and i1 %.not280.i.i, %i.uu
  br i1 %or.cond.i.i, label %bb.dc, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dc:                                            ; preds = %bb.db
  %i.uv = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 24
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !122, !noalias !364
  br label %.outer.i.i.backedge

bb.dd:                                            ; preds = %bb.cy
  %i.ux = icmp eq i8 %i.sh, 0
  %or.cond7.i.i = and i1 %.not280.i.i, %i.ux
  br i1 %or.cond7.i.i, label %.outer.i.i.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.de:                                            ; preds = %bb.cm
  switch i8 %i.sd, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 47, label %bb.df
    i8 0, label %bb.dh
  ]

bb.df:                                            ; preds = %bb.de
  %i.uy = load i8, ptr %i.se, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.uz = icmp eq i8 %i.uy, 62                    ; 2 uses
  %i.va = icmp eq i8 %i.uy, 0
  %or.cond10.i.i = and i1 %.not280.i.i, %i.va
  %or.cond724.i.i = or i1 %i.uz, %or.cond10.i.i
  br i1 %or.cond724.i.i, label %bb.dg, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dg:                                            ; preds = %bb.df
  %i.vb = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !122, !noalias !364
  %i.vd = zext i1 %i.uz to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.vd
  br label %.outer.i.i.backedge

bb.dh:                                            ; preds = %bb.de
  br i1 %.not280.i.i, label %.outer.i.i.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.di:                                            ; preds = %.thread359.i.i
  switch i8 %i.qv, label %bb.hh [
    i8 47, label %bb.dj
    i8 63, label %bb.ds
    i8 33, label %bb.ei
  ]

bb.dj:                                            ; preds = %bb.di
  %i.vf = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 1 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 8
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !116, !noalias !364 ; 2 uses
  %.not267.i.i = icmp eq ptr %i.vh, null
  br i1 %.not267.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.preheader365.i.i

.preheader365.i.i:                                ; preds = %bb.dj, %bb.dk
  %.13.i.i = phi ptr [ %i.vn, %bb.dk ], [ %i.vf, %bb.dj ] ; 4 uses
  %.0197.i.i = phi ptr [ %i.vo, %bb.dk ], [ %i.vh, %bb.dj ] ; 4 uses
  %i.vi = load i8, ptr %.13.i.i, align 1, !tbaa !86, !noalias !364 ; 3 uses
  %i.vj = zext i8 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !86, !noalias !364
  %i.vm = and i8 %i.vl, 64
  %.not268.i.i = icmp eq i8 %i.vm, 0
  br i1 %.not268.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.preheader365.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %.13.i.i, i64 1
  %i.vo = getelementptr inbounds nuw i8, ptr %.0197.i.i, i64 1
  %i.vp = load i8, ptr %.0197.i.i, align 1, !tbaa !86, !noalias !364
  %.not273.i.i = icmp eq i8 %i.vi, %i.vp
  br i1 %.not273.i.i, label %.preheader365.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, !llvm.loop !335

bb.dl:                                            ; preds = %.preheader365.i.i
  %i.vq = load i8, ptr %.0197.i.i, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %.not269.i.i = icmp eq i8 %i.vq, 0
  br i1 %.not269.i.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.vr = icmp eq i8 %i.vi, 0
  %i.vs = icmp eq i8 %i.vq, %i.pj
  %or.cond293.i.i = and i1 %i.vr, %i.vs
  br i1 %or.cond293.i.i, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.vt = getelementptr inbounds nuw i8, ptr %.0197.i.i, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !86, !noalias !364
  %i.vv = icmp eq i8 %i.vu, 0
  br i1 %i.vv, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.dp:                                            ; preds = %bb.dl, %bb.dp
  %.14.i.i = phi ptr [ %i.wb, %bb.dp ], [ %.13.i.i, %bb.dl ] ; 5 uses
  %i.vw = load i8, ptr %.14.i.i, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.vx = zext i8 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.vx
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !86, !noalias !364
  %i.wa = and i8 %i.vz, 8
  %.not270.i.i = icmp eq i8 %i.wa, 0
  %i.wb = getelementptr inbounds nuw i8, ptr %.14.i.i, i64 1 ; 2 uses
  br i1 %.not270.i.i, label %bb.dq, label %bb.dp, !llvm.loop !336

bb.dq:                                            ; preds = %bb.dp
  %16 = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 24
  %17 = load ptr, ptr %16, align 8, !tbaa !122, !noalias !364 ; 2 uses
  switch i8 %i.vw, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i [
    i8 0, label %bb.dr
    i8 62, label %.outer.i.i.backedge
  ]

bb.dr:                                            ; preds = %bb.dq
  br i1 %.not280.i.i, label %.outer.i.i.backedge, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.ds:                                            ; preds = %bb.di
  %.ptr98.i.i.i = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 1 ; 3 uses
  %i.wc = load i8, ptr %.ptr98.i.i.i, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.wd = zext i8 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !86, !noalias !364
  %.not.i.i.i57 = icmp sgt i8 %i.wf, -1
  br i1 %.not.i.i.i57, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.preheader134.i.i.i

.preheader134.i.i.i:                              ; preds = %bb.ds, %.preheader134.i.i.i
  %.086.idx.i.i.i = phi i64 [ %.086.add.i.i.i, %.preheader134.i.i.i ], [ 1, %bb.ds ] ; 4 uses
  %.086.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 %.086.idx.i.i.i
  %i.wg = load i8, ptr %.086.ptr.i.i.i, align 1, !tbaa !86, !noalias !364 ; 4 uses
  %i.wh = zext i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !86, !noalias !364
  %i.wk = and i8 %i.wj, 64
  %.not97.i.i.i = icmp eq i8 %i.wk, 0
  %.086.add.i.i.i = add nuw nsw i64 %.086.idx.i.i.i, 1
  br i1 %.not97.i.i.i, label %bb.dt, label %.preheader134.i.i.i, !llvm.loop !337

bb.dt:                                            ; preds = %.preheader134.i.i.i
  %.086.ptr.i.i.i.le = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 %.086.idx.i.i.i ; 9 uses
  %i.wl = icmp eq i8 %i.wg, 0
  br i1 %i.wl, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wm = and i8 %i.wc, -33
  %i.wn = icmp eq i8 %i.wm, 88
  br i1 %i.wn, label %bb.dv, label %.thread121.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.wo = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 2
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !86, !noalias !364
  %i.wq = and i8 %i.wp, -33
  %i.wr = icmp eq i8 %i.wq, 77
  br i1 %i.wr, label %bb.dw, label %.thread121.i.i.i

bb.dw:                                            ; preds = %bb.dv
  %i.ws = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 3
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !86, !noalias !364
  %i.wu = and i8 %i.wt, -33
  %i.wv = icmp eq i8 %i.wu, 76
  %i.ww = icmp eq i64 %.086.idx.i.i.i, 4
  %spec.select.i.i.i = and i1 %i.ww, %i.wv
  %cond.fr.i.i.i = freeze i1 %spec.select.i.i.i   ; 2 uses
  %spec.select131.i.i.i = select i1 %cond.fr.i.i.i, i32 256, i32 1
  %i.wx = and i32 %spec.select131.i.i.i, %5
  %.not99.i.i.i = icmp eq i32 %i.wx, 0
  br i1 %.not99.i.i.i, label %.preheader.i.i.i, label %bb.dy

.thread121.i.i.i:                                 ; preds = %bb.dv, %bb.du
  br i1 %.not99122.i.i.i, label %.preheader.i.i.i, label %.thread123.i.i.i

.preheader.i.i.i:                                 ; preds = %.thread121.i.i.i, %bb.dw
  br i1 %.not280.i.i, label %.preheader.split.i.i.i, label %.preheader.split.us.i.i.i

.preheader.split.us.i.i.i:                        ; preds = %.preheader.i.i.i, %.critedge118.us.i.i.i
  %i.wy = phi i8 [ %.pre159.i.i.i, %.critedge118.us.i.i.i ], [ %i.wg, %.preheader.i.i.i ]
  %.5.us.i.i.i = phi ptr [ %i.xc, %.critedge118.us.i.i.i ], [ %.086.ptr.i.i.i.le, %.preheader.i.i.i ] ; 5 uses
  switch i8 %i.wy, label %.preheader.split.us..critedge118.us_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.dx
  ]

.preheader.split.us..critedge118.us_crit_edge.i.i.i: ; preds = %.preheader.split.us.i.i.i
  %.phi.trans.insert160.i.i.i = getelementptr inbounds nuw i8, ptr %.5.us.i.i.i, i64 1
  %.pre159.pre.i.i.i = load i8, ptr %.phi.trans.insert160.i.i.i, align 1, !tbaa !86, !noalias !364
  br label %.critedge118.us.i.i.i

bb.dx:                                            ; preds = %.preheader.split.us.i.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %.5.us.i.i.i, i64 1
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.xb = icmp eq i8 %i.xa, 62
  br i1 %i.xb, label %.split143.us.i.i.i, label %.critedge118.us.i.i.i

.critedge118.us.i.i.i:                            ; preds = %bb.dx, %.preheader.split.us..critedge118.us_crit_edge.i.i.i
  %.pre159.i.i.i = phi i8 [ %.pre159.pre.i.i.i, %.preheader.split.us..critedge118.us_crit_edge.i.i.i ], [ %i.xa, %bb.dx ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.5.us.i.i.i, i64 1
  br label %.preheader.split.us.i.i.i, !llvm.loop !338

bb.dy:                                            ; preds = %bb.dw
  br i1 %cond.fr.i.i.i, label %bb.dz, label %.thread123.i.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.xd = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 24
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !122, !noalias !364
  %.not105.i.i.i = icmp eq ptr %i.xe, null
  br i1 %.not105.i.i.i, label %.noexc63, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.noexc63:                                         ; preds = %bb.dz
  %i.xf = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef nonnull %.0.ph.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i32 noundef 7) ; 2 uses
  %.not106.i.i.i = icmp eq ptr %i.xf, null
  br i1 %.not106.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.ea

.thread123.i.i.i:                                 ; preds = %bb.dy, %.thread121.i.i.i
  %i.xg = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef %.0.ph.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i32 noundef 6) ; 2 uses
  %.not104.i.i.i = icmp eq ptr %i.xg, null
  br i1 %.not104.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.ea

bb.ea:                                            ; preds = %.thread123.i.i.i, %.noexc63
  %i.xh = phi i1 [ true, %.noexc63 ], [ false, %.thread123.i.i.i ]
  %.082.i.i.i = phi ptr [ %i.xf, %.noexc63 ], [ %i.xg, %.thread123.i.i.i ] ; 5 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %.082.i.i.i, i64 8
  store ptr %.ptr98.i.i.i, ptr %i.xi, align 8, !tbaa !116, !noalias !364
  %i.xj = load i8, ptr %.086.ptr.i.i.i.le, align 1, !tbaa !86, !noalias !364 ; 2 uses
  store i8 0, ptr %.086.ptr.i.i.i.le, align 1, !tbaa !86, !noalias !364
  %i.xk = getelementptr inbounds nuw i8, ptr %.086.ptr.i.i.i.le, i64 1 ; 5 uses
  %i.xl = icmp eq i8 %i.xj, 63
  br i1 %i.xl, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.xm = load i8, ptr %i.xk, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.xn = icmp eq i8 %i.xm, 62                    ; 2 uses
  %i.xo = icmp eq i8 %i.xm, 0
  %or.cond.i.i.i58 = and i1 %.not280.i.i, %i.xo
  %or.cond725.i.i = or i1 %i.xn, %or.cond.i.i.i58
  br i1 %or.cond725.i.i, label %bb.ec, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.xp = zext i1 %i.xn to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xp
  %i.xr = getelementptr inbounds nuw i8, ptr %.082.i.i.i, i64 24
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !122, !noalias !364
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i

bb.ed:                                            ; preds = %bb.ea
  %i.xt = zext i8 %i.xj to i64
  %i.xu = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !86, !noalias !364
  %i.xw = and i8 %i.xv, 8
  %.not107.i.i.i = icmp eq i8 %i.xw, 0
  br i1 %.not107.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.preheader133.i.i.i

.preheader133.i.i.i:                              ; preds = %bb.ed, %.preheader133.i.i.i
  %.187.i.i.i = phi ptr [ %i.yc, %.preheader133.i.i.i ], [ %i.xk, %bb.ed ] ; 6 uses
  %i.xx = load i8, ptr %.187.i.i.i, align 1, !tbaa !86, !noalias !364 ; 3 uses
  %i.xy = zext i8 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !86, !noalias !364
  %i.yb = and i8 %i.ya, 8
  %.not108.i.i.i = icmp eq i8 %i.yb, 0
  %i.yc = getelementptr inbounds nuw i8, ptr %.187.i.i.i, i64 1
  br i1 %.not108.i.i.i, label %.preheader132.i.i.i, label %.preheader133.i.i.i, !llvm.loop !339

.preheader132.i.i.i:                              ; preds = %.preheader133.i.i.i
  br i1 %.not280.i.i, label %.preheader132.split.i.i.i, label %.preheader132.split.us.i.i.i

.preheader132.split.us.i.i.i:                     ; preds = %.preheader132.i.i.i, %.critedge115.us.i.i.i
  %i.yd = phi i8 [ %.pre.i.i.i, %.critedge115.us.i.i.i ], [ %i.xx, %.preheader132.i.i.i ]
  %.288.us.i.i.i = phi ptr [ %i.yh, %.critedge115.us.i.i.i ], [ %.187.i.i.i, %.preheader132.i.i.i ] ; 5 uses
  switch i8 %i.yd, label %.preheader132.split.us..critedge115.us_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.ee
  ]

.preheader132.split.us..critedge115.us_crit_edge.i.i.i: ; preds = %.preheader132.split.us.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.288.us.i.i.i, i64 1
  %.pre.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !tbaa !86, !noalias !364
  br label %.critedge115.us.i.i.i

bb.ee:                                            ; preds = %.preheader132.split.us.i.i.i
  %i.ye = getelementptr inbounds nuw i8, ptr %.288.us.i.i.i, i64 1
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.yg = icmp eq i8 %i.yf, 62
  br i1 %i.yg, label %.split139.us.i.i.i, label %.critedge115.us.i.i.i

.critedge115.us.i.i.i:                            ; preds = %bb.ee, %.preheader132.split.us..critedge115.us_crit_edge.i.i.i
  %.pre.i.i.i = phi i8 [ %.pre.pre.i.i.i, %.preheader132.split.us..critedge115.us_crit_edge.i.i.i ], [ %i.yf, %bb.ee ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.288.us.i.i.i, i64 1
  br label %.preheader132.split.us.i.i.i, !llvm.loop !340

.preheader132.split.i.i.i:                        ; preds = %.preheader132.i.i.i, %.critedge115.i.i.i
  %i.yi = phi i8 [ %.pre156.i.i.i, %.critedge115.i.i.i ], [ %i.xx, %.preheader132.i.i.i ]
  %.288.i.i.i = phi ptr [ %i.yl, %.critedge115.i.i.i ], [ %.187.i.i.i, %.preheader132.i.i.i ] ; 6 uses
  switch i8 %i.yi, label %.preheader132.split..critedge115_crit_edge.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.ef
  ]

.preheader132.split..critedge115_crit_edge.i.i.i: ; preds = %.preheader132.split.i.i.i
  %.phi.trans.insert157.i.i.i = getelementptr inbounds nuw i8, ptr %.288.i.i.i, i64 1
  %.pre156.pre.i.i.i = load i8, ptr %.phi.trans.insert157.i.i.i, align 1, !tbaa !86, !noalias !364
  br label %.critedge115.i.i.i

bb.ef:                                            ; preds = %.preheader132.split.i.i.i
  %i.yj = getelementptr inbounds nuw i8, ptr %.288.i.i.i, i64 1
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !86, !noalias !364 ; 2 uses
  switch i8 %i.yk, label %.critedge115.i.i.i [
    i8 62, label %.split139.us.i.i.i
    i8 0, label %.split139.us.i.i.i
  ]
end_hunk_2
begin_hunk_3_@_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc:bb.a
.outer:                                           ; preds = %.outer.backedge, %bb.gi
  %.017.i.i.i.ph = phi ptr [ %i.agc, %bb.gi ], [ %.017.i.i.i.ph.be, %.outer.backedge ]
  %.0.i.i42.i.ph = phi i64 [ 0, %bb.gi ], [ %.0.i.i42.i.ph.be, %.outer.backedge ] ; 3 uses
  br label %bb.gj

bb.gj:                                            ; preds = %.outer, %.thread.i.i.i
  %.017.i.i.i = phi ptr [ %i.agv, %.thread.i.i.i ], [ %.017.i.i.i.ph, %.outer ] ; 9 uses
  %i.agd = load i8, ptr %.017.i.i.i, align 1, !tbaa !86, !noalias !364
  switch i8 %i.agd, label %.thread.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 60, label %bb.gk
    i8 93, label %bb.gn
  ]

bb.gk:                                            ; preds = %bb.gj
  %i.age = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !86, !noalias !364
  %i.agg = icmp eq i8 %i.agf, 33
  br i1 %i.agg, label %bb.gl, label %.thread.i.i.i

bb.gl:                                            ; preds = %bb.gk
  %i.agh = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 2
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !86, !noalias !364
  %i.agj = icmp eq i8 %i.agi, 91
  br i1 %i.agj, label %bb.gm, label %.thread.i.i.i

bb.gm:                                            ; preds = %bb.gl
  %i.agk = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 3
  %i.agl = add i64 %.0.i.i42.i.ph, 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.gm, %bb.gq
  %.017.i.i.i.ph.be = phi ptr [ %i.ags, %bb.gq ], [ %i.agk, %bb.gm ]
  %.0.i.i42.i.ph.be = phi i64 [ %i.agu, %bb.gq ], [ %i.agl, %bb.gm ]
  br label %.outer, !llvm.loop !345

bb.gn:                                            ; preds = %bb.gj
  %i.agm = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  %i.agn = load i8, ptr %i.agm, align 1, !tbaa !86, !noalias !364
  %i.ago = icmp eq i8 %i.agn, 93
  br i1 %i.ago, label %bb.go, label %.thread.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.agp = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 2
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !86, !noalias !364
  %i.agr = icmp eq i8 %i.agq, 62
  br i1 %i.agr, label %bb.gp, label %.thread.i.i.i

bb.gp:                                            ; preds = %bb.go
  %i.ags = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 3 ; 2 uses
  %i.agt = icmp eq i64 %.0.i.i42.i.ph, 0
  br i1 %i.agt, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.agu = add i64 %.0.i.i42.i.ph, -1
  br label %.outer.backedge

.thread.i.i.i:                                    ; preds = %bb.go, %bb.gn, %bb.gl, %bb.gk, %bb.gj
  %i.agv = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1
  br label %bb.gj, !llvm.loop !345

bb.gr:                                            ; preds = %bb.gh
  %i.agw = add i64 %.0.i.i, 1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.gs:                                            ; preds = %.preheader, %bb.gs
  %.pn.i.i.i = phi ptr [ %.041.i.i.i, %bb.gs ], [ %.031.i.i, %.preheader ] ; 2 uses
  %.041.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 1 ; 3 uses
  %i.agx = load i8, ptr %.041.i.i.i, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %.not51.i.i.i = icmp eq i8 %i.agx, 0            ; 2 uses
  %.not52.i.i.i = icmp eq i8 %i.agx, %i.afx
  %or.cond.i.i38.i = or i1 %.not51.i.i.i, %.not52.i.i.i
  br i1 %or.cond.i.i38.i, label %.critedge.i.i39.i, label %bb.gs, !llvm.loop !346

.critedge.i.i39.i:                                ; preds = %bb.gs
  br i1 %.not51.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.gt

bb.gt:                                            ; preds = %.critedge.i.i39.i
  %i.agy = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.gu:                                            ; preds = %bb.gg
  %i.agz = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 2
  br label %bb.gv

bb.gv:                                            ; preds = %.critedge55.i.i.i, %bb.gu
  %.2.i.i40.i = phi ptr [ %i.agz, %bb.gu ], [ %i.ahd, %.critedge55.i.i.i ] ; 5 uses
  %i.aha = load i8, ptr %.2.i.i40.i, align 1, !tbaa !86, !noalias !364
  switch i8 %i.aha, label %.critedge55.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 63, label %bb.gw
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.ahb = getelementptr inbounds nuw i8, ptr %.2.i.i40.i, i64 1
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !86, !noalias !364
  %.not60.i.i.i = icmp eq i8 %i.ahc, 62
  br i1 %.not60.i.i.i, label %.critedge2.i.i41.i, label %.critedge55.i.i.i

.critedge55.i.i.i:                                ; preds = %bb.gw, %bb.gv
  %i.ahd = getelementptr inbounds nuw i8, ptr %.2.i.i40.i, i64 1
  br label %bb.gv, !llvm.loop !347

.critedge2.i.i41.i:                               ; preds = %bb.gw
  %i.ahe = getelementptr inbounds nuw i8, ptr %.2.i.i40.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

.thread45.thread.i.i:                             ; preds = %bb.gh
  %i.ahf = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 3
  %i.ahg = load i8, ptr %i.ahf, align 1, !tbaa !86, !noalias !364
  %i.ahh = icmp eq i8 %i.ahg, 45
  br i1 %i.ahh, label %bb.gx, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.gx:                                            ; preds = %.thread45.thread.i.i
  %i.ahi = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 4
  br label %bb.gy

bb.gy:                                            ; preds = %.critedge57.i.i.i, %bb.gx
  %.3.i.i.i = phi ptr [ %i.ahi, %bb.gx ], [ %i.ahp, %.critedge57.i.i.i ] ; 6 uses
  %i.ahj = load i8, ptr %.3.i.i.i, align 1, !tbaa !86, !noalias !364
  switch i8 %i.ahj, label %.critedge57.i.i.i [
    i8 0, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
    i8 45, label %bb.gz
  ]

bb.gz:                                            ; preds = %bb.gy
  %i.ahk = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 1
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !86, !noalias !364
  %i.ahm = icmp eq i8 %i.ahl, 45
  br i1 %i.ahm, label %bb.ha, label %.critedge57.i.i.i

bb.ha:                                            ; preds = %bb.gz
  %i.ahn = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 2
  %i.aho = load i8, ptr %i.ahn, align 1, !tbaa !86, !noalias !364
  %.not.i.i43.i = icmp eq i8 %i.aho, 62
  br i1 %.not.i.i43.i, label %.critedge4.i.i44.i, label %.critedge57.i.i.i

.critedge57.i.i.i:                                ; preds = %bb.ha, %bb.gz, %bb.gy
  %i.ahp = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 1
  br label %bb.gy, !llvm.loop !348

.critedge4.i.i44.i:                               ; preds = %bb.ha
  %i.ahq = getelementptr inbounds nuw i8, ptr %.3.i.i.i, i64 3
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.hb:                                            ; preds = %bb.gf
  %i.ahr = icmp eq i64 %.0.i.i, 0
  br i1 %i.ahr, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ahs = add i64 %.0.i.i, -1
  %i.aht = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

bb.hd:                                            ; preds = %bb.gf
  %i.ahu = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser20parse_doctype_ignoreEPc.exit.i.i: ; preds = %bb.gp, %bb.hd, %bb.hc, %.critedge4.i.i44.i, %.critedge2.i.i41.i, %bb.gt, %bb.gr
  %.132.i.i = phi ptr [ %i.ahu, %bb.hd ], [ %i.aga, %bb.gr ], [ %i.ahe, %.critedge2.i.i41.i ], [ %i.aht, %bb.hc ], [ %i.agy, %bb.gt ], [ %i.ahq, %.critedge4.i.i44.i ], [ %i.ags, %bb.gp ] ; 2 uses
  %.1.i.i = phi i64 [ %.0.i.i, %bb.hd ], [ %i.agw, %bb.gr ], [ %.0.i.i, %.critedge2.i.i41.i ], [ %i.ahs, %bb.hc ], [ %.0.i.i, %bb.gt ], [ %.0.i.i, %.critedge4.i.i44.i ], [ %.0.i.i, %bb.gp ]
  %.pre.i = load i8, ptr %.132.i.i, align 1, !tbaa !86, !noalias !364
  br label %bb.gf, !llvm.loop !349

bb.he:                                            ; preds = %bb.gf
  %i.ahv = icmp ne i64 %.0.i.i, 0
  %or.cond.i45.i = or i1 %i.qo, %i.ahv
  br i1 %or.cond.i45.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i: ; preds = %bb.hb
  %i.ahw = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 1
  store i8 0, ptr %.031.i.i, align 1, !tbaa !86, !noalias !364
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i: ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i, %bb.he
  %.5.i303.i.i = phi ptr [ %i.ahw, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.i ], [ %.031.i.i, %bb.he ] ; 3 uses
  br i1 %.not144.i.i.i, label %.outer.i.i.backedge, label %.preheader186.i.i.i

.preheader186.i.i.i:                              ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i, %.preheader186.i.i.i
  %.0122.i.i.i = phi ptr [ %i.aic, %.preheader186.i.i.i ], [ %i.afw, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i ] ; 3 uses
  %i.ahx = load i8, ptr %.0122.i.i.i, align 1, !tbaa !86, !noalias !364
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ahy
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !86, !noalias !364
  %i.aib = and i8 %i.aia, 8
  %.not145.i304.i.i = icmp eq i8 %i.aib, 0
  %i.aic = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 1
  br i1 %.not145.i304.i.i, label %.noexc67, label %.preheader186.i.i.i, !llvm.loop !350

.noexc67:                                         ; preds = %.preheader186.i.i.i
  %i.aid = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef nonnull %.0.ph.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i32 noundef 8) ; 2 uses
  %.not146.i305.i.i = icmp eq ptr %i.aid, null
  br i1 %.not146.i305.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.hf

bb.hf:                                            ; preds = %.noexc67
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  store ptr %.0122.i.i.i, ptr %i.aie, align 8, !tbaa !118, !noalias !364
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.hf, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i, %bb.fw, %bb.fd, %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i, %bb.dr, %bb.dq, %bb.dh, %bb.dg, %bb.dd, %bb.dc, %bb.da, %bb.cy, %select.unfold.i.i
  %.0.ph.i.i.be = phi ptr [ %i.qz, %bb.dh ], [ %.2.i.i, %bb.dd ], [ %i.us, %bb.da ], [ %i.uw, %bb.dc ], [ %.0.ph.i.i, %bb.hf ], [ %.9327.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i ], [ %.2.i.i, %bb.cy ], [ %i.qz, %select.unfold.i.i ], [ %i.vc, %bb.dg ], [ %17, %bb.dr ], [ %.0.ph.i.i, %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i ], [ %.0.ph.i.i, %bb.fd ], [ %.0.ph.i.i, %bb.fw ], [ %.0.ph.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i ], [ %17, %bb.dq ]
  %.0210.ph.i.i.be = phi ptr [ %.3213.ph.i.i, %bb.dh ], [ %.6216.i.i, %bb.dd ], [ %i.ut, %bb.da ], [ %i.sm, %bb.dc ], [ %.5.i303.i.i, %bb.hf ], [ %.285.i.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser14parse_questionEPcRPNS_15xml_node_structEjc.exit.i.i ], [ %i.sm, %bb.cy ], [ %i.se, %select.unfold.i.i ], [ %i.ve, %bb.dg ], [ %.14.i.i, %bb.dr ], [ %i.ace, %_ZN4pugi4impl12_GLOBAL__N_115strconv_commentEPcc.exit.i.i.i ], [ %i.acr, %bb.fd ], [ %i.afa, %bb.fw ], [ %.5.i303.i.i, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser19parse_doctype_groupEPcc.exit.thread57.i ], [ %i.wb, %bb.dq ]
  br label %.outer.i.i, !llvm.loop !351

bb.hg:                                            ; preds = %bb.ei
  %i.aif = icmp eq i8 %i.zg, 0                    ; 2 uses
  %i.aig = icmp eq i8 %i.pj, 45
  %or.cond9.i.i.i = and i1 %i.aig, %i.aif
  br i1 %or.cond9.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %.thread182.i.i.i

.thread182.i.i.i:                                 ; preds = %bb.hg
  %i.aih = icmp eq i8 %i.pj, 91
  %or.cond12.i.i.i = and i1 %i.aih, %i.aif
  %spec.select65.i = select i1 %or.cond12.i.i.i, i32 8, i32 5
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

bb.hh:                                            ; preds = %bb.di
  %i.aii = icmp eq i8 %i.qv, 0
  %i.aij = icmp eq i8 %i.pj, 63
  %or.cond13.i.i = and i1 %i.aij, %i.aii
  %spec.select66.i = select i1 %or.cond13.i.i, i32 6, i32 5
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader376.i.i, %.lr.ph.i.i
  %.17673.i.i = phi ptr [ %i.aik, %.lr.ph.i.i ], [ %.0210.i.i, %.preheader376.i.i ]
  %i.aik = getelementptr inbounds nuw i8, ptr %.17673.i.i, i64 1 ; 3 uses
  %.pr.i.i = load i8, ptr %i.aik, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %i.ail = zext i8 %.pr.i.i to i64
  %i.aim = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ail
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !86, !noalias !364
  %i.aio = and i8 %i.ain, 8
  %.not241.i.i = icmp eq i8 %i.aio, 0
  br i1 %.not241.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !352

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader376.i.i
  %i.aip = phi i8 [ %i.qq, %.preheader376.i.i ], [ %.pr.i.i, %.lr.ph.i.i ] ; 3 uses
  %.17.lcssa.i.i = phi ptr [ %.0210.i.i, %.preheader376.i.i ], [ %i.aik, %.lr.ph.i.i ] ; 3 uses
  switch i8 %i.aip, label %bb.hn [
    i8 60, label %bb.hi
    i8 0, label %bb.hi
  ]

bb.hi:                                            ; preds = %._crit_edge.i.i, %._crit_edge.i.i
  br i1 %or.cond294.i.i, label %bb.hj, label %.backedge.i.i.backedge

bb.hj:                                            ; preds = %bb.hi
  br i1 %.not245.i.i, label %bb.hn, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.not246.i.i = icmp eq i8 %i.aip, 60
  br i1 %.not246.i.i, label %bb.hl, label %.backedge.i.i.backedge

bb.hl:                                            ; preds = %bb.hk
  %i.aiq = getelementptr inbounds nuw i8, ptr %.17.lcssa.i.i, i64 1
  %i.air = load i8, ptr %i.aiq, align 1, !tbaa !86, !noalias !364
  %.not247.i.i = icmp eq i8 %i.air, 47
  br i1 %.not247.i.i, label %bb.hm, label %.backedge.i.i.backedge

bb.hm:                                            ; preds = %bb.hl
  %i.ais = load ptr, ptr %i.qp, align 8, !tbaa !113, !noalias !364
  %.not248.i.i = icmp eq ptr %i.ais, null
  br i1 %.not248.i.i, label %bb.hn, label %.backedge.i.i.backedge

.backedge.i.i.backedge:                           ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hi
  br label %.backedge.i.i, !llvm.loop !351

bb.hn:                                            ; preds = %bb.hm, %bb.hj, %._crit_edge.i.i
  %spec.select.i35.i = select i1 %.not244.i.i, ptr %.0210.i.i, ptr %.17.lcssa.i.i ; 7 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 24 ; 2 uses
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !122, !noalias !364
  %.not250.i.i = icmp eq ptr %i.aiu, null
  %or.cond295.i.i = and i1 %.not251.i.i, %.not250.i.i
  br i1 %or.cond295.i.i, label %.preheader375.i.i, label %.noexc68

.noexc68:                                         ; preds = %bb.hn
  %i.aiv = tail call noundef ptr %switch.load1467(ptr noundef nonnull %spec.select.i35.i), !inline_history !334 ; 4 uses
  br i1 %.not255.i.i, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %.noexc68
  %i.aiw = load ptr, ptr %i.ait, align 8, !tbaa !122, !noalias !364
  %.not256.i.i = icmp eq ptr %i.aiw, null
  br i1 %.not256.i.i, label %bb.hs, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aix = load ptr, ptr %i.qp, align 8, !tbaa !113, !noalias !364
  %.not257.i.i = icmp eq ptr %i.aix, null
  br i1 %.not257.i.i, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  %i.aiy = getelementptr inbounds nuw i8, ptr %.0.ph.i.i, i64 16 ; 2 uses
  %i.aiz = load ptr, ptr %i.aiy, align 8, !tbaa !118, !noalias !364
  %.not258.i.i = icmp eq ptr %i.aiz, null
  br i1 %.not258.i.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store ptr %spec.select.i35.i, ptr %i.aiy, align 8, !tbaa !118, !noalias !364
  br label %bb.hx

bb.hs:                                            ; preds = %bb.hq, %bb.hp, %bb.ho, %.noexc68
  br i1 %.not259.i.i, label %.noexc69, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aja = load ptr, ptr %i.qp, align 8, !tbaa !113, !noalias !364 ; 2 uses
  %.not260.i.i = icmp eq ptr %i.aja, null
  br i1 %.not260.i.i, label %.noexc69, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 40
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !121, !noalias !364
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !117, !noalias !364
  %i.aje = and i64 %i.ajd, 15
  %i.ajf = icmp eq i64 %i.aje, 3
  br i1 %i.ajf, label %bb.hv, label %.noexc69

bb.hv:                                            ; preds = %bb.hu
  %i.ajg = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0204.ph.i.i) #50, !noalias !364
  %i.ajh = getelementptr inbounds nuw i8, ptr %.0204.ph.i.i, i64 %i.ajg ; 2 uses
  %i.aji = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i35.i) #50, !noalias !364 ; 2 uses
  %i.ajj = add i64 %i.aji, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ajh, ptr nonnull align 1 %spec.select.i35.i, i64 %i.ajj, i1 false), !noalias !364
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajh, i64 %i.aji
  br label %bb.hx

.noexc69:                                         ; preds = %bb.hu, %bb.ht, %bb.hs
  %i.ajl = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_115append_new_nodeEPNS_15xml_node_structERNS1_13xml_allocatorENS_13xml_node_typeE(ptr noundef nonnull %.0.ph.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i32 noundef 3) ; 2 uses
  %.not261.not.i.i = icmp eq ptr %i.ajl, null
  br i1 %.not261.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i, label %bb.hw

bb.hw:                                            ; preds = %.noexc69
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 16
  store ptr %spec.select.i35.i, ptr %i.ajm, align 8, !tbaa !118, !noalias !364
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hr
  %.3207.i.i = phi ptr [ %i.ajk, %bb.hv ], [ %spec.select.i35.i, %bb.hw ], [ %.0204.ph.i.i, %bb.hr ]
  %i.ajn = load i8, ptr %i.aiv, align 1, !tbaa !86, !noalias !364 ; 2 uses
  %.not262.i.i = icmp eq i8 %i.ajn, 0
  br i1 %.not262.i.i, label %.loopexit.i.i, label %.thread359.i.i

.preheader375.i.i:                                ; preds = %bb.hn, %bb.hy
  %.19.i.i = phi ptr [ %i.ajp, %bb.hy ], [ %spec.select.i35.i, %bb.hn ] ; 4 uses
  %i.ajo = load i8, ptr %.19.i.i, align 1, !tbaa !86, !noalias !364
  switch i8 %i.ajo, label %bb.hy [
    i8 0, label %.loopexit.i.i
    i8 60, label %thread-pre-split.i.i
  ]

bb.hy:                                            ; preds = %.preheader375.i.i
  %i.ajp = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 1
  br label %.preheader375.i.i, !llvm.loop !353

.loopexit.i.i:                                    ; preds = %bb.hx, %.backedge.i.i, %.preheader375.i.i
  %.21.i.i = phi ptr [ %.19.i.i, %.preheader375.i.i ], [ %.0210.i.i, %.backedge.i.i ], [ %i.aiv, %bb.hx ]
  %.not263.i.i = icmp eq ptr %.0.ph.i.i, %2       ; 2 uses
  %spec.select.i = select i1 %.not263.i.i, i32 0, i32 14
  %spec.select1069.i = select i1 %.not263.i.i, ptr null, ptr %.21.i.i
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit90.split.loop.exit371.i: ; preds = %bb.gd
  %i.ajq = getelementptr inbounds i8, ptr %.1211.i.i, i64 -1
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit: ; preds = %bb.ej
  %i.ajr = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1050: ; preds = %bb.fj
  %i.ajs = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 7
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1053: ; preds = %bb.fi
  %i.ajt = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 6
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1056: ; preds = %bb.fh
  %i.aju = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 5
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1059: ; preds = %bb.fg
  %i.ajv = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 4
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1062: ; preds = %bb.ff
  %i.ajw = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 3
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1065: ; preds = %bb.fe
  %i.ajx = getelementptr inbounds nuw i8, ptr %.1211.i.i, i64 2
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i: ; preds = %.noexc69, %.noexc67, %bb.he, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %.noexc66, %.noexc65, %bb.ed, %bb.eb, %.thread123.i.i.i, %.noexc63, %bb.dz, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dj, %bb.dh, %bb.df, %bb.de, %bb.dd, %bb.db, %.noexc60, %.thread45.thread.i.i, %.critedge.i.i39.i, %bb.gg, %.preheader185.split.us.i.i.i, %.preheader185.split.i.i.i, %.preheader184.split.us.i.i.i, %.preheader184.split.i.i.i, %.preheader.split.us.i310.i.i, %.preheader.split.i311.i.i, %.preheader132.split.us.i.i.i, %.preheader132.split.i.i.i, %.preheader.split.us.i.i.i, %.preheader.split.i.i.i, %bb.cx, %bb.cv, %.loopexit1071.i.i, %.noexc61, %bb.dk, %bb.gv, %bb.gj, %bb.gy, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1050, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1053, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1056, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1059, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1062, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1065, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit90.split.loop.exit371.i, %.loopexit.i.i, %bb.hh, %.thread182.i.i.i, %bb.hg, %bb.fr, %bb.ez, %bb.do, %bb.dn, %bb.cw
  %.sroa.57.2.i = phi i32 [ 14, %bb.dk ], [ 7, %.preheader.split.i311.i.i ], [ %spec.select66.i, %bb.hh ], [ 6, %.preheader.split.us.i.i.i ], [ 7, %bb.hg ], [ %spec.select65.i, %.thread182.i.i.i ], [ 13, %bb.dn ], [ 8, %.preheader185.split.us.i.i.i ], [ 14, %bb.do ], [ 7, %bb.ez ], [ 8, %.preheader185.split.i.i.i ], [ 9, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit90.split.loop.exit371.i ], [ 6, %.preheader.split.i.i.i ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1056 ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1062 ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1065 ], [ 9, %.thread45.thread.i.i ], [ 12, %bb.cw ], [ 9, %bb.gj ], [ 7, %.preheader.split.us.i310.i.i ], [ 8, %bb.fr ], [ 6, %.preheader132.split.us.i.i.i ], [ 9, %bb.gv ], [ 6, %.preheader132.split.i.i.i ], [ %spec.select.i, %.loopexit.i.i ], [ 12, %.loopexit1071.i.i ], [ 8, %.preheader184.split.us.i.i.i ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1050 ], [ 9, %bb.gy ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1053 ], [ 8, %.preheader184.split.i.i.i ], [ 8, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1059 ], [ 7, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit ], [ 12, %bb.cx ], [ 3, %.noexc61 ], [ 12, %bb.cv ], [ 9, %bb.gg ], [ 9, %.critedge.i.i39.i ], [ 13, %bb.dq ], [ 11, %bb.de ], [ 6, %bb.ds ], [ 6, %bb.ed ], [ 5, %bb.gc ], [ 6, %bb.dz ], [ 3, %.thread123.i.i.i ], [ 6, %bb.eb ], [ 6, %bb.dt ], [ 3, %.noexc63 ], [ 3, %.noexc65 ], [ 3, %.noexc66 ], [ 11, %bb.dh ], [ 11, %bb.dd ], [ 11, %bb.df ], [ 3, %.noexc67 ], [ 3, %.noexc69 ], [ 14, %bb.dj ], [ 9, %bb.he ], [ 5, %bb.fz ], [ 5, %bb.fy ], [ 5, %bb.fx ], [ 5, %bb.gb ], [ 11, %bb.db ], [ 5, %bb.ga ], [ 13, %bb.dr ], [ 3, %.noexc60 ] ; 2 uses
  %.sroa.11.2.i = phi ptr [ %i.vf, %bb.dk ], [ %.0124.i.i.i, %.preheader.split.i311.i.i ], [ %.1211.i.i, %bb.hh ], [ %.5.us.i.i.i, %.preheader.split.us.i.i.i ], [ %i.zf, %bb.hg ], [ %i.zf, %.thread182.i.i.i ], [ %.13.i.i, %bb.dn ], [ %.1125.us.i.i.i, %.preheader185.split.us.i.i.i ], [ %i.vf, %bb.do ], [ %i.acg, %bb.ez ], [ %.1125.i.i.i, %.preheader185.split.i.i.i ], [ %i.ajq, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.loopexit90.split.loop.exit371.i ], [ %.5.i.i.i, %.preheader.split.i.i.i ], [ %i.aju, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1056 ], [ %i.ajw, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1062 ], [ %i.ajx, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1065 ], [ %.031.i.i, %.thread45.thread.i.i ], [ %i.uk, %bb.cw ], [ %.017.i.i.i, %bb.gj ], [ %.0124.us.i.i.i, %.preheader.split.us.i310.i.i ], [ %i.aef, %bb.fr ], [ %.288.us.i.i.i, %.preheader132.split.us.i.i.i ], [ %.2.i.i40.i, %bb.gv ], [ %.288.i.i.i, %.preheader132.split.i.i.i ], [ %spec.select1069.i, %.loopexit.i.i ], [ %.10.i.i, %.loopexit1071.i.i ], [ %.2.us.i.i.i, %.preheader184.split.us.i.i.i ], [ %i.ajs, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1050 ], [ %.3.i.i.i, %bb.gy ], [ %i.ajt, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1053 ], [ %.2.i.i.i56, %.preheader184.split.i.i.i ], [ %i.ajv, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit1059 ], [ %i.ajr, %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i.loopexit821.split.loop.exit ], [ %i.ui, %bb.cx ], [ %.6216.i.i, %.noexc61 ], [ %.11.i.i, %bb.cv ], [ %.041.i.i.i, %.critedge.i.i39.i ], [ %.031.i.i, %bb.gg ], [ %.14.i.i, %bb.dq ], [ %i.se, %bb.de ], [ %.ptr98.i.i.i, %bb.ds ], [ %i.xk, %bb.ed ], [ %i.zf, %bb.gc ], [ %.086.ptr.i.i.i.le, %bb.dz ], [ %.086.ptr.i.i.i.le, %.thread123.i.i.i ], [ %i.xk, %bb.eb ], [ %.086.ptr.i.i.i.le, %bb.dt ], [ %.086.ptr.i.i.i.le, %.noexc63 ], [ %i.zk, %.noexc65 ], [ %i.adk, %.noexc66 ], [ %.3213.ph.i.i, %bb.dh ], [ %.6216.i.i, %bb.dd ], [ %i.se, %bb.df ], [ %.5.i303.i.i, %.noexc67 ], [ %i.aiv, %.noexc69 ], [ %i.vf, %bb.dj ], [ %.031.i.i, %bb.he ], [ %i.zf, %bb.fz ], [ %i.zf, %bb.fy ], [ %i.zf, %bb.fx ], [ %i.zf, %bb.gb ], [ %i.sm, %bb.db ], [ %i.zf, %bb.ga ], [ %.14.i.i, %bb.dr ], [ %.1211.i.i, %.noexc60 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49, !noalias !364
  %.not31.i = icmp eq ptr %.sroa.11.2.i, null
  %i.ajy = ptrtoint ptr %.sroa.11.2.i to i64
  %i.ajz = ptrtoint ptr %.079 to i64
  %i.aka = sub i64 %i.ajy, %i.ajz
  %i.akb = select i1 %.not31.i, i64 0, i64 %i.aka ; 3 uses
  invoke void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %10)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser10parse_treeEPcPNS_15xml_node_structEjc.exit.i
  store i32 %.sroa.57.2.i, ptr %10, align 8, !tbaa !128, !alias.scope !366, !noalias !364
  %i.akc = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.akb, ptr %i.akc, align 8, !tbaa !129, !alias.scope !366, !noalias !364
  %i.akd = icmp eq i32 %.sroa.57.2.i, 0
  br i1 %i.akd, label %bb.hz, label %bb.ie

bb.hz:                                            ; preds = %.noexc70
  %i.ake = icmp eq i8 %i.pj, 60
  br i1 %i.ake, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  invoke void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %.noexc71 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %bb.ia
  store i32 5, ptr %0, align 8, !tbaa !128, !alias.scope !367
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ph, ptr %i.akf, align 8, !tbaa !129, !alias.scope !367
  br label %bb.ih

bb.ib:                                            ; preds = %bb.hz
  br i1 %.not251.i.i, label %bb.ic, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

bb.ic:                                            ; preds = %bb.ib
  %.not32.i = icmp eq ptr %i.pf, null
  %i.akg = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %.in.i = select i1 %.not32.i, ptr %i.pb, ptr %i.akg
  %i.akh = load ptr, ptr %.in.i, align 8, !tbaa !115, !noalias !364 ; 2 uses
  %.not5.not.i.i = icmp eq ptr %i.akh, null
  br i1 %.not5.not.i.i, label %.critedge.i, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.ic, %bb.id
  %.06.i.i = phi ptr [ %i.akm, %bb.id ], [ %i.akh, %bb.ic ] ; 2 uses
  %i.aki = load i64, ptr %.06.i.i, align 8, !tbaa !117, !noalias !364
  %i.akj = and i64 %i.aki, 15
  %i.akk = icmp eq i64 %i.akj, 2
  br i1 %i.akk, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i, label %bb.id

bb.id:                                            ; preds = %.lr.ph.i36.i
  %i.akl = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !120, !noalias !364 ; 2 uses
  %.not.not.i.i53 = icmp eq ptr %i.akm, null
  br i1 %.not.not.i.i53, label %.critedge.i, label %.lr.ph.i36.i, !llvm.loop !358

.critedge.i:                                      ; preds = %bb.id, %bb.ic
  invoke void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %.critedge.i
  store i32 16, ptr %0, align 8, !tbaa !128, !alias.scope !368
  %i.akn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ph, ptr %i.akn, align 8, !tbaa !129, !alias.scope !368
  br label %bb.ih

bb.ie:                                            ; preds = %.noexc70
  %i.ako = icmp sgt i64 %i.akb, 0
  br i1 %i.ako, label %bb.if, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

bb.if:                                            ; preds = %bb.ie
  %i.akp = icmp eq i64 %i.akb, %i.ph
  %i.akq = icmp eq i8 %i.pj, 0
  %or.cond.i52 = select i1 %i.akp, i1 %i.akq, i1 false
  br i1 %or.cond.i52, label %bb.ig, label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

bb.ig:                                            ; preds = %bb.if
  %i.akr = add i64 %.0, -2
  store i64 %i.akr, ptr %i.akc, align 8, !tbaa !129, !noalias !364
  br label %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i

_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i: ; preds = %.lr.ph.i36.i, %bb.ig, %bb.if, %bb.ie, %bb.ib
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !371
  br label %bb.ih

bb.ih:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_110xml_parser25has_element_node_siblingsEPNS_15xml_node_structE.exit.i, %.noexc72, %.noexc71
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49, !noalias !364
  br label %.thread

.thread:                                          ; preds = %.noexc59, %bb.ih
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.d, ptr %i.aks, align 8, !tbaa !134
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit

bb.ii:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_117make_parse_resultENS_16xml_parse_statusEl.exit51, %bb.e
  %.not.i73 = icmp eq ptr %i.e, null
  br i1 %.not.i73, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  invoke void %i.f(ptr noundef nonnull %3)
          to label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit unwind label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.akt = landingpad { ptr, i32 }
          catch ptr null
  %i.aku = extractvalue { ptr, i32 } %i.akt, 0
  tail call void @__clang_call_terminate(ptr %i.aku) #48
  unreachable

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.sroa.0.3 = phi ptr [ %i.e, %bb.f ], [ %.sroa.0.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i74 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i74, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit75, label %bb.il

bb.il:                                            ; preds = %.loopexit.split-lp
  invoke void %i.f(ptr noundef nonnull %.sroa.0.3)
          to label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit75 unwind label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.akv = landingpad { ptr, i32 }
          catch ptr null
  %i.akw = extractvalue { ptr, i32 } %i.akv, 0
  call void @__clang_call_terminate(ptr %i.akw) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit75: ; preds = %.loopexit.split-lp, %bb.il
  resume { ptr, i32 } %.pn

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterIvED2Ev.exit: ; preds = %bb.ij, %bb.ii, %.thread, %bb.b
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi8xml_node23find_child_by_attributeEPKcS2_S2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.02750 = load ptr, ptr %i.b, align 8, !tbaa !115 ; 2 uses
  %.not3151 = icmp eq ptr %.02750, null
  br i1 %.not3151, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.c, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread
  %.02752 = phi ptr [ %.027, %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread ], [ %.02750, %bb.c ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02752, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 3 uses
  %.not32 = icmp eq ptr %i.d, null
  br i1 %.not32, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph54
  %i.e = load i8, ptr %1, align 1, !tbaa !86
  %i.f = load i8, ptr %i.d, align 1, !tbaa !86
  %i.g = icmp eq i8 %i.e, %i.f
  br i1 %i.g, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit: ; preds = %bb.d
  %i.h = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.d) #50
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread

bb.e:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.02752, i64 56
  %.047 = load ptr, ptr %i.j, align 8, !tbaa !119 ; 2 uses
  %.not3348 = icmp eq ptr %.047, null
  br i1 %.not3348, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.critedge37
  %.049 = phi ptr [ %.0, %.critedge37 ], [ %.047, %bb.e ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %.not34 = icmp eq ptr %i.l, null
  br i1 %.not34, label %.critedge37, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i8, ptr %2, align 1, !tbaa !86
  %i.n = load i8, ptr %i.l, align 1, !tbaa !86
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit38, label %.critedge37

_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit38: ; preds = %bb.f
  %i.p = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %i.l) #50
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %.critedge37

bb.g:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_18strequalEPKcS3_.exit38
  %i.r = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !85   ; 2 uses
  %.not35 = icmp eq ptr %i.s, null
  %i.t = select i1 %.not35, ptr @.str, ptr %i.s   ; 2 uses
  %i.u = load i8, ptr %3, align 1, !tbaa !86
  %i.v = load i8, ptr %i.t, align 1, !tbaa !86
end_hunk_3
begin_hunk_4_@_ZN4pugi4impl12_GLOBAL__N_114load_file_implEPNS1_19xml_document_structEP8_IO_FILEjNS_12xml_encodingEPPc:bb.a
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !450
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 32768
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !451  ; 7 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 2, ptr %0, align 8, !tbaa !128, !alias.scope !452
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !129, !alias.scope !452
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.l = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.m = add nuw i64 %i.i, 1                      ; 2 uses
  %i.n = tail call noundef ptr %i.l(i64 noundef %i.m) ; 6 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 3, ptr %0, align 8, !tbaa !128, !alias.scope !453
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !129, !alias.scope !453
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i64 @fread(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef %i.i, ptr noundef nonnull %2)
  %.not26 = icmp eq i64 %i.p, %i.i
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.q(ptr noundef nonnull %i.n)
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 2, ptr %0, align 8, !tbaa !128, !alias.scope !454
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !129, !alias.scope !454
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.s = tail call fastcc noundef i32 @_ZN4pugi4impl12_GLOBAL__N_119get_buffer_encodingENS_12xml_encodingEPKvm(i32 noundef %4, ptr noundef nonnull %i.n, i64 noundef %i.i) ; 2 uses
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.l, label %_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 0, ptr %i.u, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit: ; preds = %bb.k, %bb.l
  %.0.i27 = phi i64 [ %i.m, %bb.l ], [ %i.i, %bb.k ]
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %i.n, i64 noundef %.0.i27, i32 noundef %3, i32 noundef %i.s, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.h, %_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit, %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document9load_fileEPKwjNS_12xml_encodingE(ptr dead_on_unwind noalias writable sret(%"struct.pugi::xml_parse_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.c(ptr noundef nonnull %i.b), !inline_history !168
  store ptr null, ptr %i.a, align 8, !tbaa !165
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.016.i.i = load ptr, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %.not1317.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1317.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !111
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.f = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = lshr i64 %i.g, 8
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 2 uses
  %.not1419.i.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.016.i.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i.i, align 8, !tbaa !132 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.n(ptr noundef nonnull %i.m), !inline_history !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.o, align 8, !tbaa !167 ; 2 uses
  %.not13.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !24

.lr.ph22.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph22.i.i
  %.01020.i.i = phi ptr [ %i.q, %.lr.ph22.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01020.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104  ; 2 uses
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.r(ptr noundef nonnull %.01020.i.i), !inline_history !28
  %.not14.i.i = icmp eq ptr %i.q, null
  br i1 %.not14.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i, !llvm.loop !25

_ZN4pugi12xml_document5resetEv.exit:              ; preds = %.lr.ph22.i.i, %._crit_edge.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 32728, ptr %i.u, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store i64 10241, ptr %i.v, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 32728, ptr %i.y, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %1, align 8, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !121
  store ptr %i.x, ptr %i.s, align 8, !tbaa !93
  %i.ab = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_(ptr noundef %2, ptr noundef nonnull @.str.21) ; 5 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !111
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114load_file_implEPNS1_19xml_document_structEP8_IO_FILEjNS_12xml_encodingEPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.ac, ptr noundef %i.ab, i32 noundef %3, i32 noundef %4, ptr noundef %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN4pugi12xml_document5resetEv.exit
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit: ; preds = %bb.g, %bb.f
  ret void

bb.h:                                             ; preds = %_ZN4pugi12xml_document5resetEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.not.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i8, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit9

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit9: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %wcslen.i.i = tail call i64 @wcslen(ptr readonly %0) ; 2 uses
  %i.b = shl i64 %wcslen.i.i, 2                   ; 2 uses
  %i.c = ashr exact i64 %i.b, 2                   ; 4 uses
  %.not17.i.i.i.i = icmp eq i64 %i.b, 0           ; 2 uses
  br i1 %.not17.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %i.d = and i64 %wcslen.i.i, 3                   ; 3 uses
  %n.vec = sub nuw nsw i64 %i.c, %i.d             ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.e = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.e  ; 2 uses
  %i.f = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !tbaa !136 ; 3 uses
  %wide.load22 = load <2 x i32>, ptr %i.f, align 1, !tbaa !136 ; 3 uses
  %i.g = icmp ult <2 x i32> %wide.load, splat (i32 65536)
  %i.h = icmp ult <2 x i32> %wide.load22, splat (i32 65536)
  %i.i = icmp ult <2 x i32> %wide.load, splat (i32 128)
  %i.j = icmp ult <2 x i32> %wide.load22, splat (i32 128)
  %i.k = icmp ult <2 x i32> %wide.load, splat (i32 2048)
  %i.l = icmp ult <2 x i32> %wide.load22, splat (i32 2048)
  %i.m = select <2 x i1> %i.k, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.n = select <2 x i1> %i.l, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.o = select <2 x i1> %i.i, <2 x i64> splat (i64 1), <2 x i64> %i.m
  %i.p = select <2 x i1> %i.j, <2 x i64> splat (i64 1), <2 x i64> %i.n
  %i.q = select <2 x i1> %i.g, <2 x i64> %i.o, <2 x i64> splat (i64 4)
  %i.r = select <2 x i1> %i.h, <2 x i64> %i.p, <2 x i64> splat (i64 4)
  %i.s = add <2 x i64> %i.q, %vec.phi             ; 2 uses
  %i.t = add <2 x i64> %i.r, %vec.phi21           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %2 = shl i64 %n.vec, 2
  %3 = getelementptr i8, ptr %0, i64 %2
  %bin.rdx = add <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, 0
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  %.01119.i.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.d, %middle.block ]
  %.01318.i.i.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.i.i.preheader ], [ %3, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ]
  %.01119.i.i.i.i = phi i64 [ %.112.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.01119.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ]
  %.01318.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.01318.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 2 uses
  %i.w = load i32, ptr %.01318.i.i.i.i, align 1, !tbaa !136 ; 3 uses
  %i.x = icmp ult i32 %i.w, 65536
  %i.y = icmp samesign ult i32 %i.w, 128
  %i.z = icmp samesign ult i32 %i.w, 2048
  %..i.i.i.i.i = select i1 %i.z, i64 2, i64 3
  %.sink.i.i.i.i.i = select i1 %i.y, i64 1, i64 %..i.i.i.i.i
  %.sink.i.pn.i.i.i.i = select i1 %i.x, i64 %.sink.i.i.i.i.i, i64 4
  %.1.i.i.i.i = add i64 %.sink.i.pn.i.i.i.i, %.020.i.i.i.i ; 2 uses
  %.112.i.i.i.i = add i64 %.01119.i.i.i.i, -1     ; 2 uses
  %.114.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq i64 %.112.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !456

_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aa = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ab = add i64 %.0.lcssa.i.i.i.i, 1
  %i.ac = tail call noundef ptr %i.aa(i64 noundef %i.ab), !inline_history !457 ; 5 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i
  br i1 %.not17.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i
  %.020.i.i.i15.i = phi ptr [ %i.bo, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i ], [ %i.ac, %bb.b ] ; 8 uses
  %.01119.i.i.i16.i = phi i64 [ %.112.i.i.i18.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i ], [ %i.c, %bb.b ]
  %.01318.i.i.i17.i = phi ptr [ %.114.i.i.i19.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %i.ad = load i32, ptr %.01318.i.i.i17.i, align 1, !tbaa !136 ; 13 uses
  %i.ae = icmp ult i32 %i.ad, 65536
  br i1 %i.ae, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph.i.i.i14.i
  %i.af = icmp samesign ult i32 %i.ad, 128
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = trunc nuw nsw i32 %i.ad to i8
  store i8 %i.ag, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp samesign ult i32 %i.ad, 2048
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = lshr i32 %i.ad, 6
  %i.aj = trunc nuw nsw i32 %i.ai to i8
  %i.ak = or disjoint i8 %i.aj, -64
  store i8 %i.ak, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  %i.al = trunc i32 %i.ad to i8
  %i.am = and i8 %i.al, 63
  %i.an = or disjoint i8 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ap = lshr i32 %i.ad, 12
  %i.aq = trunc nuw nsw i32 %i.ap to i8
  %i.ar = or disjoint i8 %i.aq, -32
  store i8 %i.ar, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  %i.as = lshr i32 %i.ad, 6
  %i.at = trunc i32 %i.as to i8
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !86
  %i.ax = trunc i32 %i.ad to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 2
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i14.i
  %i.bb = lshr i32 %i.ad, 6
  %i.bc = lshr i32 %i.ad, 12
  %i.bd = lshr i32 %i.ad, 18
  %i.be = trunc i32 %i.ad to i8
  %i.bf = trunc i32 %i.bb to i8
  %i.bg = trunc i32 %i.bc to i8
  %i.bh = trunc i32 %i.bd to i8
  %i.bi = insertelement <4 x i8> poison, i8 %i.bh, i64 0
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bg, i64 1
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bf, i64 2
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.be, i64 3
  %i.bm = and <4 x i8> %i.bl, <i8 -1, i8 63, i8 63, i8 63>
  %i.bn = or <4 x i8> %i.bm, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bn, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.d ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 %.sink.i.i.i.i
  %.112.i.i.i18.i = add i64 %.01119.i.i.i16.i, -1 ; 2 uses
  %.114.i.i.i19.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i17.i, i64 4
  %.not.i.i.i20.i = icmp eq i64 %.112.i.i.i18.i, 0
  br i1 %.not.i.i.i20.i, label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15, label %.lr.ph.i.i.i14.i, !llvm.loop !19

_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i, %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.lcssa.i.i.i.i
  store i8 0, ptr %i.bp, align 1, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i32 0, ptr %i.a, align 4
  %i.bq = load i32, ptr %1, align 4, !tbaa !179   ; 2 uses
  %.not1416 = icmp eq i32 %i.bq, 0
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15
  %i.br = call noalias ptr @fopen(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.a)
  %i.bs = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.bs(ptr noundef nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15, %.lr.ph
  %i.bt = phi i32 [ %i.by, %.lr.ph ], [ %i.bq, %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15 ]
  %.01117 = phi i64 [ %i.bw, %.lr.ph ], [ 0, %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15 ] ; 2 uses
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01117
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !86
  %i.bw = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !179 ; 2 uses
  %.not14 = icmp eq i32 %i.by, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !458

_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, %._crit_edge
  %.0 = phi ptr [ %i.br, %._crit_edge ], [ null, %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document19load_buffer_inplaceEPvmjNS_12xml_encodingE(ptr dead_on_unwind noalias writable sret(%"struct.pugi::xml_parse_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.c(ptr noundef nonnull %i.b), !inline_history !168
  store ptr null, ptr %i.a, align 8, !tbaa !165
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.016.i.i = load ptr, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %.not1317.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1317.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !111
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.f = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = lshr i64 %i.g, 8
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 2 uses
  %.not1419.i.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.016.i.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i.i, align 8, !tbaa !132 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.n(ptr noundef nonnull %i.m), !inline_history !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.o, align 8, !tbaa !167 ; 2 uses
  %.not13.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !24
end_hunk_4
begin_hunk_5_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc:bb.a
  store i64 %i.be, ptr %i.a, align 8, !tbaa !151
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_directEPKcm.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_directEPKcm.exit: ; preds = %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi12xml_document4saveERSoPKcjNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN4pugi17xml_writer_streamC1ERSo(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi12xml_document4saveERSt13basic_ostreamIwSt11char_traitsIwEEPKcj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZN4pugi17xml_writer_streamC1ERSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i32 noundef %3, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4pugi12xml_document9save_fileEPKcS2_jNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_writer_file", align 8 ; 5 uses
  %i.a = and i32 %3, 32
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.25, ptr @.str.24
  %i.c = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull readonly %i.b) ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  invoke void @_ZN4pugi15xml_writer_fileC1EPv(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc:                                           ; preds = %bb.b
  invoke void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull readonly align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3, i32 noundef %4)
          to label %.noexc10 unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc10:                                         ; preds = %.noexc
  %i.d = call i32 @fflush(ptr noundef nonnull %i.c)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.d

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit: ; preds = %.noexc10
  %i.f = call i32 @ferror(ptr noundef nonnull %i.c) #49
  %i.g = icmp eq i32 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit
  %i.h = call i32 @fclose(ptr noundef nonnull %i.c)
  %i.i = icmp eq i32 %i.h, 0
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16
  %i.j = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.k = phi i1 [ false, %bb.d ], [ %i.i, %bb.c ], [ false, %bb.a ]
  ret i1 %i.k

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13: ; preds = %bb.b, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4pugi12xml_document9save_fileEPKwPKcjNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_writer_file", align 8 ; 5 uses
  %i.a = and i32 %3, 32
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.27, ptr @.str.26
  %i.c = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_(ptr noundef %1, ptr noundef nonnull %i.b) ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  invoke void @_ZN4pugi15xml_writer_fileC1EPv(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc:                                           ; preds = %bb.b
  invoke void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull readonly align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3, i32 noundef %4)
          to label %.noexc10 unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc10:                                         ; preds = %.noexc
  %i.d = call i32 @fflush(ptr noundef nonnull %i.c)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.d

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit: ; preds = %.noexc10
  %i.f = call i32 @ferror(ptr noundef nonnull %i.c) #49
  %i.g = icmp eq i32 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit
  %i.h = call i32 @fclose(ptr noundef nonnull %i.c)
  %i.i = icmp eq i32 %i.h, 0
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16
  %i.j = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.k = phi i1 [ false, %bb.d ], [ %i.i, %bb.c ], [ false, %bb.a ]
  ret i1 %i.k

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13: ; preds = %bb.b, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi12xml_document16document_elementEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.058 = load ptr, ptr %i.b, align 8, !tbaa !115 ; 2 uses
  %.not9 = icmp eq ptr %.058, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0510 = phi ptr [ %.05, %bb.b ], [ %.058, %bb.a ] ; 3 uses
  %i.c = load i64, ptr %.0510, align 8, !tbaa !117
  %i.d = and i64 %i.c, 15
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0510, i64 48
  %.05 = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not = icmp eq ptr %.05, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !461

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.0510)
  br label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.g = load ptr, ptr %1, align 8
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi7as_utf8B5cxx11EPKw(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr readonly %1)
  %i.a = shl i64 %wcslen.i, 2
  %i.b = ashr exact i64 %i.a, 2
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17.i.i.i = icmp eq i64 %2, 0               ; 2 uses
  br i1 %.not17.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %i.a = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.a  ; 2 uses
  %i.b = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !tbaa !136 ; 3 uses
  %wide.load21 = load <2 x i32>, ptr %i.b, align 1, !tbaa !136 ; 3 uses
  %i.c = icmp ult <2 x i32> %wide.load, splat (i32 65536)
  %i.d = icmp ult <2 x i32> %wide.load21, splat (i32 65536)
  %i.e = icmp ult <2 x i32> %wide.load, splat (i32 128)
  %i.f = icmp ult <2 x i32> %wide.load21, splat (i32 128)
  %i.g = icmp ult <2 x i32> %wide.load, splat (i32 2048)
  %i.h = icmp ult <2 x i32> %wide.load21, splat (i32 2048)
  %i.i = select <2 x i1> %i.g, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.j = select <2 x i1> %i.h, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.k = select <2 x i1> %i.e, <2 x i64> splat (i64 1), <2 x i64> %i.i
  %i.l = select <2 x i1> %i.f, <2 x i64> splat (i64 1), <2 x i64> %i.j
  %i.m = select <2 x i1> %i.c, <2 x i64> %i.k, <2 x i64> splat (i64 4)
  %i.n = select <2 x i1> %i.d, <2 x i64> %i.l, <2 x i64> splat (i64 4)
  %i.o = add <2 x i64> %i.m, %vec.phi             ; 2 uses
  %i.p = add <2 x i64> %i.n, %vec.phi20           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !462

middle.block:                                     ; preds = %vector.body
  %3 = and i64 %2, 3
  %4 = shl i64 %n.vec, 2
  %5 = getelementptr i8, ptr %1, i64 %4
  %bin.rdx = add <2 x i64> %i.p, %i.o
  %i.r = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit, label %.lr.ph.i.i.i.preheader23

.lr.ph.i.i.i.preheader23:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.020.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  %.01119.i.i.i.ph = phi i64 [ %2, %.lr.ph.i.i.i.preheader ], [ %3, %middle.block ]
  %.01318.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %5, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader23, %.lr.ph.i.i.i
  %.020.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ]
  %.01119.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ %.01119.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ]
  %.01318.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %.01318.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %i.s = load i32, ptr %.01318.i.i.i, align 1, !tbaa !136 ; 3 uses
  %i.t = icmp ult i32 %i.s, 65536
  %i.u = icmp samesign ult i32 %i.s, 128
  %i.v = icmp samesign ult i32 %i.s, 2048
  %..i.i.i.i = select i1 %i.v, i64 2, i64 3
  %.sink.i.i.i.i = select i1 %i.u, i64 1, i64 %..i.i.i.i
  %.sink.i.pn.i.i.i = select i1 %i.t, i64 %.sink.i.i.i.i, i64 4
  %.1.i.i.i = add i64 %.sink.i.pn.i.i.i, %.020.i.i.i ; 2 uses
  %.112.i.i.i = add i64 %.01119.i.i.i, -1         ; 2 uses
  %.114.i.i.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %.112.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit, label %.lr.ph.i.i.i, !llvm.loop !463

_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.a
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.r, %middle.block ], [ %.1.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !144
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !146
  store i8 0, ptr %i.w, align 8, !tbaa !86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.lcssa.i.i.i, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit
  %.not = icmp eq i64 %.0.lcssa.i.i.i, 0
  %brmerge = or i1 %.not, %.not17.i.i.i
  br i1 %brmerge, label %_ZN4pugi4impl12_GLOBAL__N_111as_utf8_endEPcmPKwm.exit, label %.lr.ph.i.i.i10.preheader

.lr.ph.i.i.i10.preheader:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.y = load ptr, ptr %0, align 8, !tbaa !147
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.preheader, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i
  %.020.i.i.i11 = phi ptr [ %i.bk, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i ], [ %i.y, %.lr.ph.i.i.i10.preheader ] ; 8 uses
  %.01119.i.i.i12 = phi i64 [ %.112.i.i.i14, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i ], [ %2, %.lr.ph.i.i.i10.preheader ]
  %.01318.i.i.i13 = phi ptr [ %.114.i.i.i15, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i ], [ %1, %.lr.ph.i.i.i10.preheader ] ; 2 uses
  %i.z = load i32, ptr %.01318.i.i.i13, align 1, !tbaa !136 ; 13 uses
  %i.aa = icmp ult i32 %i.z, 65536
  br i1 %i.aa, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph.i.i.i10
  %i.ab = icmp samesign ult i32 %i.z, 128
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = trunc nuw nsw i32 %i.z to i8
  store i8 %i.ac, ptr %.020.i.i.i11, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ad = icmp samesign ult i32 %i.z, 2048
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = lshr i32 %i.z, 6
  %i.af = trunc nuw nsw i32 %i.ae to i8
  %i.ag = or disjoint i8 %i.af, -64
  store i8 %i.ag, ptr %.020.i.i.i11, align 1, !tbaa !86
  %i.ah = trunc i32 %i.z to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.al = lshr i32 %i.z, 12
  %i.am = trunc nuw nsw i32 %i.al to i8
  %i.an = or disjoint i8 %i.am, -32
  store i8 %i.an, ptr %.020.i.i.i11, align 1, !tbaa !86
  %i.ao = lshr i32 %i.z, 6
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = and i8 %i.ap, 63
  %i.ar = or disjoint i8 %i.aq, -128
  %i.as = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !86
  %i.at = trunc i32 %i.z to i8
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128
  %i.aw = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i10
  %i.ax = lshr i32 %i.z, 6
  %i.ay = lshr i32 %i.z, 12
  %i.az = lshr i32 %i.z, 18
  %i.ba = trunc i32 %i.z to i8
  %i.bb = trunc i32 %i.ax to i8
  %i.bc = trunc i32 %i.ay to i8
  %i.bd = trunc i32 %i.az to i8
  %i.be = insertelement <4 x i8> poison, i8 %i.bd, i64 0
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bc, i64 1
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bb, i64 2
  %i.bh = insertelement <4 x i8> %i.bg, i8 %i.ba, i64 3
  %i.bi = and <4 x i8> %i.bh, <i8 -1, i8 63, i8 63, i8 63>
  %i.bj = or <4 x i8> %i.bi, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bj, ptr %.020.i.i.i11, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.c ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 %.sink.i.i.i
  %.112.i.i.i14 = add i64 %.01119.i.i.i12, -1     ; 2 uses
  %.114.i.i.i15 = getelementptr inbounds nuw i8, ptr %.01318.i.i.i13, i64 4
  %.not.i.i.i16 = icmp eq i64 %.112.i.i.i14, 0
  br i1 %.not.i.i.i16, label %_ZN4pugi4impl12_GLOBAL__N_111as_utf8_endEPcmPKwm.exit, label %.lr.ph.i.i.i10, !llvm.loop !19

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.w
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.bo = load i64, ptr %i.w, align 8, !tbaa !86
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.bl

_ZN4pugi4impl12_GLOBAL__N_111as_utf8_endEPcmPKwm.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi7as_utf8ERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !184
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.a, i64 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi7as_wideB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.8") align 8 %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #50
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_wide_implB5cxx11EPKcm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %1, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_wide_implB5cxx11EPKcm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not71.i = icmp eq i64 %2, 0
  br i1 %.not71.i, label %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_13utf32_counterEEENT_10value_typeEPKhmS6_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.074.i = phi i64 [ %.2.i, %.critedge.i ], [ 0, %bb.a ] ; 5 uses
  %.06073.i = phi i64 [ %.262.i, %.critedge.i ], [ %2, %bb.a ] ; 8 uses
  %.06372.i = phi ptr [ %.265.i, %.critedge.i ], [ %1, %bb.a ] ; 12 uses
  %i.a = load i8, ptr %.06372.i, align 1, !tbaa !86 ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i64 %.074.i, 1                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06372.i, i64 1 ; 3 uses
  %i.f = add i64 %.06073.i, -1                    ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 3
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ugt i64 %i.f, 3
  %or.cond7.i = and i1 %i.j, %i.i
  br i1 %or.cond7.i, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.164.i = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %.161.i = phi i64 [ %i.p, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.1.i = phi i64 [ %i.n, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.k = load i32, ptr %.164.i, align 4, !tbaa !136
  %i.l = and i32 %i.k, -2139062144
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader.i
  %i.n = add i64 %.1.i, 4                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.164.i, i64 4 ; 2 uses
  %i.p = add i64 %.161.i, -4                      ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm:bb.a
bb.e:                                             ; preds = %.preheader
  %i.n = zext nneg i8 %i.k to i16
  store i16 %i.n, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %.073.i.i.i.add7 = add nuw nsw i64 %.073.i.i.i.idx, 2 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1 ; 3 uses
  %i.p = add i64 %.06072.i.i.i, -1                ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = and i64 %i.q, 3
  %i.s = icmp eq i64 %i.r, 0
  %i.t = icmp ugt i64 %i.p, 3
  %or.cond7.i.i.i = and i1 %i.t, %i.s
  br i1 %or.cond7.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.164.i.i.i = phi ptr [ %i.al, %bb.f ], [ %i.o, %bb.e ] ; 6 uses
  %.161.i.i.i = phi i64 [ %i.am, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.1.i.i.i.idx = phi i64 [ %.1.i.i.i.add, %bb.f ], [ %.073.i.i.i.add7, %bb.e ] ; 3 uses
  %i.u = load i32, ptr %.164.i.i.i, align 4       ; 2 uses
  %i.v = and i32 %i.u, -2139062144
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %.critedge.i.i.i

bb.f:                                             ; preds = %.preheader.i.i.i
  %.1.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.1.i.i.i.idx ; 4 uses
  %i.x = trunc i32 %i.u to i16
  %i.y = and i16 %i.x, 127
  store i16 %i.y, ptr %.1.i.i.i.ptr, align 2, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i.ptr, i64 2
  %i.aa = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !86
  %i.ac = zext i8 %i.ab to i16
  store i16 %i.ac, ptr %i.z, align 2, !tbaa !135
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.ptr, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !86
  %i.ag = zext i8 %i.af to i16
  store i16 %i.ag, ptr %i.ad, align 2, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %.1.i.i.i.ptr, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !86
  %i.ak = zext i8 %i.aj to i16
  store i16 %i.ak, ptr %i.ah, align 2, !tbaa !135
  %.1.i.i.i.add = add nuw nsw i64 %.1.i.i.i.idx, 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.164.i.i.i, i64 4 ; 2 uses
  %i.am = add i64 %.161.i.i.i, -4                 ; 3 uses
  %.old6.i.i.i = icmp ugt i64 %i.am, 3
  br i1 %.old6.i.i.i, label %.preheader.i.i.i, label %.critedge.i.i.i

bb.g:                                             ; preds = %.preheader
  %i.an = and i32 %i.l, 224
  %i.ao = icmp eq i32 %i.an, 192
  %i.ap = icmp ne i64 %.06072.i.i.i, 1
  %or.cond.i.i.i = and i1 %i.ap, %i.ao
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !86
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = and i32 %i.as, 192
  %i.au = icmp eq i32 %i.at, 128
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = shl nuw nsw i32 %i.l, 6
  %i.aw = and i32 %i.av, 1984
  %i.ax = and i32 %i.as, 63
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = trunc nuw nsw i32 %i.ay to i16
  store i16 %i.az, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %.073.i.i.i.add6 = add nuw nsw i64 %.073.i.i.i.idx, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 2
  %i.bb = add i64 %.06072.i.i.i, -2
  br label %.critedge.i.i.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bc = and i32 %i.l, 240
  %i.bd = icmp eq i32 %i.bc, 224
  %i.be = icmp ugt i64 %.06072.i.i.i, 2
  %or.cond3.i.i.i = and i1 %i.be, %i.bd
  br i1 %or.cond3.i.i.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !86
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !86
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = and i32 %i.bm, 192
  %i.bo = icmp eq i32 %i.bn, 128
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = shl nuw nsw i32 %i.l, 12
  %i.bq = shl nuw nsw i32 %i.bh, 6
  %i.br = and i32 %i.bq, 4032
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = and i32 %i.bm, 63
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %.073.i.i.i.add = add nuw nsw i64 %.073.i.i.i.idx, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 3
  %i.bx = add i64 %.06072.i.i.i, -3
  br label %.critedge.i.i.i

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.by = and i32 %i.l, 248
  %i.bz = icmp eq i32 %i.by, 240
  %i.ca = icmp ugt i64 %.06072.i.i.i, 3
  %or.cond5.i.i.i = and i1 %i.ca, %i.bz
  br i1 %or.cond5.i.i.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !86
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = and i32 %i.cd, 192
  %i.cf = icmp eq i32 %i.ce, 128
  br i1 %i.cf, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 2
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !86
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = and i32 %i.ci, 192
  %i.ck = icmp eq i32 %i.cj, 128
  br i1 %i.ck, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 3
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !86
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = and i32 %i.cn, 192
  %i.cp = icmp eq i32 %i.co, 128
  br i1 %i.cp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = shl nuw nsw i32 %i.l, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cd, 12
  %i.ct = and i32 %i.cs, 258048
  %i.cu = shl nuw nsw i32 %i.ci, 6                ; 2 uses
  %i.cv = and i32 %i.cu, 3072
  %i.cw = and i32 %i.cn, 63
  %i.cx = or disjoint i32 %i.cw, %i.cu
  %i.cy = add nuw nsw i32 %i.cr, 67043328
  %i.cz = add nuw nsw i32 %i.cy, %i.ct
  %i.da = or disjoint i32 %i.cz, %i.cv
  %i.db = lshr exact i32 %i.da, 10
  %i.dc = trunc i32 %i.db to i16
  %i.dd = add nsw i16 %i.dc, -10240
  store i16 %i.dd, ptr %.073.i.i.i.ptr, align 2, !tbaa !135
  %i.de = trunc nuw nsw i32 %i.cx to i16
  %i.df = and i16 %i.de, 1023
  %i.dg = or disjoint i16 %i.df, -9216
  %i.dh = getelementptr inbounds nuw i8, ptr %.073.i.i.i.ptr, i64 2
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !135
  %.073.i.i.i.add8 = add nuw nsw i64 %.073.i.i.i.idx, 4
  %i.di = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 4
  %i.dj = add i64 %.06072.i.i.i, -4
  br label %.critedge.i.i.i

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.06371.i.i.i, i64 1
  %i.dl = add i64 %.06072.i.i.i, -1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.f, %.preheader.i.i.i, %bb.s, %bb.r, %bb.m, %bb.i, %bb.e
  %.265.i.i.i = phi ptr [ %i.di, %bb.r ], [ %i.dk, %bb.s ], [ %i.o, %bb.e ], [ %i.ba, %bb.i ], [ %i.bw, %bb.m ], [ %i.al, %bb.f ], [ %.164.i.i.i, %.preheader.i.i.i ]
  %.262.i.i.i = phi i64 [ %i.dj, %bb.r ], [ %i.dl, %bb.s ], [ %i.p, %bb.e ], [ %i.bb, %bb.i ], [ %i.bx, %bb.m ], [ %i.am, %bb.f ], [ %.161.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.2.i.i.i.idx = phi i64 [ %.073.i.i.i.add8, %bb.r ], [ %.073.i.i.i.idx, %bb.s ], [ %.073.i.i.i.add7, %bb.e ], [ %.073.i.i.i.add6, %bb.i ], [ %.073.i.i.i.add, %bb.m ], [ %.1.i.i.i.add, %bb.f ], [ %.1.i.i.i.idx, %.preheader.i.i.i ] ; 5 uses
  %.not.i.i.i = icmp eq i64 %.262.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i, label %.preheader, !llvm.loop !635

_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i: ; preds = %.critedge.i.i.i
  %.2.i.i.i.ptr.le = getelementptr inbounds nuw i8, ptr %0, i64 %.2.i.i.i.idx
  %i.dm = icmp ne i32 %i.c, 2
  %.not11.i.i = icmp ne i64 %.2.i.i.i.idx, 2048
  %or.cond.not.i.i = select i1 %i.dm, i1 %.not11.i.i, i1 false
  br i1 %or.cond.not.i.i, label %iter.check, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

iter.check:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %i.dn = add i64 %.2.i.i.i.idx, -2050            ; 3 uses
  %i.do = lshr i64 %i.dn, 1
  %i.dp = add nuw i64 %i.do, 1                    ; 5 uses
  %min.iters.check28 = icmp ult i64 %i.dn, 14
  br i1 %min.iters.check28, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %i.dn, 30
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph30

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %n.vec31 = and i64 %i.dp, -16                   ; 4 uses
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next37, %vector.body32 ] ; 2 uses
  %i.dq = shl i64 %index33, 1
  %next.gep34 = getelementptr i8, ptr %.ptr13, i64 %i.dq ; 3 uses
  %i.dr = getelementptr i8, ptr %next.gep34, i64 16 ; 2 uses
  %wide.load35 = load <8 x i16>, ptr %next.gep34, align 8, !tbaa !135
  %wide.load36 = load <8 x i16>, ptr %i.dr, align 8, !tbaa !135
  %i.ds = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load35)
  %i.dt = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load36)
  store <8 x i16> %i.ds, ptr %next.gep34, align 8, !tbaa !135
  store <8 x i16> %i.dt, ptr %i.dr, align 8, !tbaa !135
  %index.next37 = add nuw i64 %index33, 16        ; 2 uses
  %i.du = icmp eq i64 %index.next37, %n.vec31
  br i1 %i.du, label %middle.block38, label %vector.body32, !llvm.loop !636

middle.block38:                                   ; preds = %vector.body32
  %3 = and i64 %i.dp, 8
  %4 = shl i64 %n.vec31, 1
  %5 = getelementptr i8, ptr %.ptr13, i64 %4
  %cmp.n39 = icmp eq i64 %i.dp, %n.vec31
  br i1 %cmp.n39, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block38
  %min.epilog.iters.check.not.not = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !642

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec31, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.dp, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 2 uses
  %i.dv = shl i64 %index42, 1
  %next.gep43 = getelementptr i8, ptr %.ptr13, i64 %i.dv ; 2 uses
  %wide.load44 = load <8 x i16>, ptr %next.gep43, align 8, !tbaa !135
  %i.dw = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load44)
  store <8 x i16> %i.dw, ptr %next.gep43, align 8, !tbaa !135
  %index.next45 = add nuw i64 %index42, 8         ; 2 uses
  %i.dx = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !637

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %6 = shl i64 %n.vec41, 1
  %7 = getelementptr i8, ptr %.ptr13, i64 %6
  %cmp.n46 = icmp eq i64 %i.dp, %n.vec41
  br i1 %cmp.n46, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.ph = phi ptr [ %.ptr13, %iter.check ], [ %5, %vec.epilog.iter.check ], [ %7, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dy = load i16, ptr %.012.i.i, align 2, !tbaa !135
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.dy)
  store i16 %rev.i.i.i, ptr %.012.i.i, align 2, !tbaa !135
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dz, %.2.i.i.i.ptr.le
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i.i, !llvm.loop !638

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i.i, %middle.block38, %vec.epilog.middle.block, %_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf16_writerEEENT_10value_typeEPKhmS6_S5_.exit.i.i
  %gepdiff = add nsw i64 %.2.i.i.i.idx, -2048
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.t:                                             ; preds = %bb.d
  %i.ea = add i32 %i.c, -5
  %or.cond3.i = icmp ult i32 %i.ea, 2
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = icmp ne i32 %i.c, 5
  %i.ec = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef nonnull %.ptr13) ; 4 uses
  %.not11.i22.i = icmp ne ptr %.ptr13, %i.ec
  %or.cond.not.i23.i = and i1 %i.eb, %.not11.i22.i
  br i1 %or.cond.not.i23.i, label %.lr.ph.i24.i.preheader, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i

.lr.ph.i24.i.preheader:                           ; preds = %bb.u
  %i.ed = ptrtoaddr ptr %i.ec to i64
  %i.ee = ptrtoaddr ptr %0 to i64
  %i.ef = add i64 %i.ed, -2052
  %i.eg = sub i64 %i.ef, %i.ee                    ; 2 uses
  %i.eh = lshr i64 %i.eg, 2
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eg, 28
  br i1 %min.iters.check, label %.lr.ph.i24.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i24.i.preheader
  %n.vec = and i64 %i.ei, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ej = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.ptr13, i64 %i.ej ; 3 uses
  %i.ek = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 8, !tbaa !136
  %wide.load26 = load <4 x i32>, ptr %i.ek, align 8, !tbaa !136
  %i.el = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.em = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load26)
  store <4 x i32> %i.el, ptr %next.gep, align 8, !tbaa !136
  store <4 x i32> %i.em, ptr %i.ek, align 8, !tbaa !136
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %8 = shl i64 %n.vec, 2
  %9 = getelementptr i8, ptr %.ptr13, i64 %8
  %cmp.n = icmp eq i64 %i.ei, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i.preheader48

.lr.ph.i24.i.preheader48:                         ; preds = %.lr.ph.i24.i.preheader, %middle.block
  %.012.i25.i.ph = phi ptr [ %.ptr13, %.lr.ph.i24.i.preheader ], [ %9, %middle.block ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader48, %.lr.ph.i24.i
  %.012.i25.i = phi ptr [ %i.eq, %.lr.ph.i24.i ], [ %.012.i25.i.ph, %.lr.ph.i24.i.preheader48 ] ; 3 uses
  %i.eo = load i32, ptr %.012.i25.i, align 4, !tbaa !136
  %i.ep = tail call noundef i32 @llvm.bswap.i32(i32 %i.eo)
  store i32 %i.ep, ptr %.012.i25.i, align 4, !tbaa !136
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i25.i, i64 4 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.eq, %i.ec
  br i1 %.not.i26.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, label %.lr.ph.i24.i, !llvm.loop !640

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i: ; preds = %.lr.ph.i24.i, %middle.block, %bb.u
  %i.er = ptrtoint ptr %i.ec to i64
  %i.es = ptrtoint ptr %.ptr13 to i64
  %i.et = sub i64 %i.er, %i.es
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

bb.v:                                             ; preds = %bb.t
  %i.eu = icmp eq i32 %i.c, 9
  br i1 %i.eu, label %.preheader.i, label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

.preheader.i:                                     ; preds = %bb.v, %.critedge.i.i30.i
  %.074.i.i.i = phi ptr [ %.2.i.i33.i, %.critedge.i.i30.i ], [ %.ptr13, %bb.v ] ; 9 uses
  %.06073.i.i.i = phi i64 [ %.262.i.i32.i, %.critedge.i.i30.i ], [ %2, %bb.v ] ; 8 uses
  %.06372.i.i.i = phi ptr [ %.265.i.i31.i, %.critedge.i.i30.i ], [ %1, %bb.v ] ; 12 uses
  %i.ev = load i8, ptr %.06372.i.i.i, align 1, !tbaa !86 ; 4 uses
  %i.ew = zext i8 %i.ev to i32                    ; 5 uses
  %i.ex = icmp sgt i8 %i.ev, -1
  br i1 %i.ex, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.preheader.i
  store i8 %i.ev, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.ey = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1 ; 3 uses
  %i.fa = add i64 %.06073.i.i.i, -1               ; 3 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = and i64 %i.fb, 3
  %i.fd = icmp eq i64 %i.fc, 0
  %i.fe = icmp ugt i64 %i.fa, 3
  %or.cond7.i.i35.i = and i1 %i.fe, %i.fd
  br i1 %or.cond7.i.i35.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

.preheader.i.i36.i:                               ; preds = %bb.w, %bb.x
  %.164.i.i37.i = phi ptr [ %i.ft, %bb.x ], [ %i.ez, %bb.w ] ; 6 uses
  %.161.i.i38.i = phi i64 [ %i.fu, %bb.x ], [ %i.fa, %bb.w ] ; 2 uses
  %.1.i.i39.i = phi ptr [ %i.fs, %bb.x ], [ %i.ey, %bb.w ] ; 6 uses
  %i.ff = load i32, ptr %.164.i.i37.i, align 4    ; 2 uses
  %i.fg = and i32 %i.ff, -2139062144
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.x, label %.critedge.i.i30.i

bb.x:                                             ; preds = %.preheader.i.i36.i
  %i.fi = trunc i32 %i.ff to i8
  store i8 %i.fi, ptr %.1.i.i39.i, align 1, !tbaa !86
  %i.fj = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 1
  %i.fk = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !86
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !86
  %i.fm = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 2
  %i.fn = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 2
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !86
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !86
  %i.fp = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 3
  %i.fq = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 3
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !86
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !86
  %i.fs = getelementptr inbounds nuw i8, ptr %.1.i.i39.i, i64 4 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.164.i.i37.i, i64 4 ; 2 uses
  %i.fu = add i64 %.161.i.i38.i, -4               ; 3 uses
  %.old6.i.i40.i = icmp ugt i64 %i.fu, 3
  br i1 %.old6.i.i40.i, label %.preheader.i.i36.i, label %.critedge.i.i30.i

bb.y:                                             ; preds = %.preheader.i
  %i.fv = and i32 %i.ew, 224
  %i.fw = icmp eq i32 %i.fv, 192
  %i.fx = icmp ne i64 %.06073.i.i.i, 1
  %or.cond.i.i27.i = and i1 %i.fx, %i.fw
  br i1 %or.cond.i.i27.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fy = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !86  ; 2 uses
  %i.ga = icmp slt i8 %i.fz, -64
  br i1 %i.ga, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gb = shl i8 %i.ev, 6
  %i.gc = and i8 %i.fz, 63
  %i.gd = or disjoint i8 %i.gc, %i.gb
  %i.ge = and i32 %i.ew, 28
  %.not71.i.i.i = icmp eq i32 %i.ge, 0
  %i.gf = select i1 %.not71.i.i.i, i8 %i.gd, i8 63
  store i8 %i.gf, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 2
  %i.gi = add i64 %.06073.i.i.i, -2
  br label %.critedge.i.i30.i

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.gj = and i32 %i.ew, 240
  %i.gk = icmp eq i32 %i.gj, 224
  %i.gl = icmp ugt i64 %.06073.i.i.i, 2
  %or.cond3.i.i28.i = and i1 %i.gl, %i.gk
  br i1 %or.cond3.i.i28.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !86
  %i.go = zext i8 %i.gn to i32                    ; 2 uses
  %i.gp = and i32 %i.go, 192
  %i.gq = icmp eq i32 %i.gp, 128
  br i1 %i.gq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 2
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !86
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = and i32 %i.gt, 192
  %i.gv = icmp eq i32 %i.gu, 128
  br i1 %i.gv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gw = shl nuw nsw i32 %i.ew, 12
  %i.gx = and i32 %i.gw, 61440
  %i.gy = shl nuw nsw i32 %i.go, 6                ; 2 uses
  %i.gz = and i32 %i.gy, 3840
  %i.ha = or disjoint i32 %i.gz, %i.gx
  %i.hb = and i32 %i.gt, 63
  %i.hc = or disjoint i32 %i.hb, %i.gy
  %.not75.i.i.i = icmp eq i32 %i.ha, 0
  %i.hd = trunc i32 %i.hc to i8
  %i.he = select i1 %.not75.i.i.i, i8 %i.hd, i8 63
  store i8 %i.he, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.hf = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 3
  %i.hh = add i64 %.06073.i.i.i, -3
  br label %.critedge.i.i30.i

bb.af:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.hi = and i32 %i.ew, 248
  %i.hj = icmp eq i32 %i.hi, 240
  %i.hk = icmp ugt i64 %.06073.i.i.i, 3
  %or.cond5.i.i29.i = and i1 %i.hk, %i.hj
  br i1 %or.cond5.i.i29.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.hl = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !86
  %i.hn = icmp slt i8 %i.hm, -64
  br i1 %i.hn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 2
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !86
  %i.hq = icmp slt i8 %i.hp, -64
  br i1 %i.hq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.hr = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 3
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !86
  %i.ht = icmp slt i8 %i.hs, -64
  br i1 %i.ht, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i8 63, ptr %.074.i.i.i, align 1, !tbaa !86
  %i.hu = getelementptr inbounds nuw i8, ptr %.074.i.i.i, i64 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 4
  %i.hw = add i64 %.06073.i.i.i, -4
  br label %.critedge.i.i30.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.hx = getelementptr inbounds nuw i8, ptr %.06372.i.i.i, i64 1
  %i.hy = add i64 %.06073.i.i.i, -1
  br label %.critedge.i.i30.i

.critedge.i.i30.i:                                ; preds = %bb.x, %.preheader.i.i36.i, %bb.ak, %bb.aj, %bb.ae, %bb.aa, %bb.w
  %.265.i.i31.i = phi ptr [ %i.hv, %bb.aj ], [ %i.hx, %bb.ak ], [ %i.ez, %bb.w ], [ %i.gh, %bb.aa ], [ %i.hg, %bb.ae ], [ %i.ft, %bb.x ], [ %.164.i.i37.i, %.preheader.i.i36.i ]
  %.262.i.i32.i = phi i64 [ %i.hw, %bb.aj ], [ %i.hy, %bb.ak ], [ %i.fa, %bb.w ], [ %i.gi, %bb.aa ], [ %i.hh, %bb.ae ], [ %i.fu, %bb.x ], [ %.161.i.i38.i, %.preheader.i.i36.i ] ; 2 uses
  %.2.i.i33.i = phi ptr [ %i.hu, %bb.aj ], [ %.074.i.i.i, %bb.ak ], [ %i.ey, %bb.w ], [ %i.gg, %bb.aa ], [ %i.hf, %bb.ae ], [ %i.fs, %bb.x ], [ %.1.i.i39.i, %.preheader.i.i36.i ] ; 2 uses
  %.not.i.i34.i = icmp eq i64 %.262.i.i32.i, 0
  br i1 %.not.i.i34.i, label %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i, label %.preheader.i, !llvm.loop !641

_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i: ; preds = %.critedge.i.i30.i
  %i.hz = ptrtoint ptr %.2.i.i33.i to i64
  %i.ia = ptrtoint ptr %.ptr13 to i64
  %i.ib = sub i64 %i.hz, %i.ia
  br label %_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_121convert_buffer_outputEPcPhPtPjPKcmNS_12xml_encodingE.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i, %bb.v, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i
  %.0.i = phi i64 [ %gepdiff, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf16_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i ], [ %i.et, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_12utf32_writerEEEmNT0_10value_typeEPKcmT_S5_b.exit.i ], [ %i.ib, %_ZN4pugi4impl12_GLOBAL__N_129convert_buffer_output_genericINS1_12utf8_decoderENS1_13latin1_writerEEEmNT0_10value_typeEPKcmT_S5_.exit.i ], [ 0, %bb.v ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 10240
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !153, !nonnull !123, !align !154 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !65
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
end_hunk_6
begin_hunk_7_@_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_:bb.a
bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118 ; 2 uses
  %.not23.i43 = icmp ne ptr %i.bg, null
  %i.bh = and i64 %i.as, 80
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond27.i44 = and i1 %i.bi, %.not23.i43
  br i1 %or.cond27.i44, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.s:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.an, align 8, !tbaa !119 ; 4 uses
  %.not21.i46 = icmp eq ptr %.sroa.0.0.copyload.i.i45, null
  br i1 %.not21.i46, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %.sroa.0.0.copyload.i.i45, align 8, !tbaa !124 ; 3 uses
  %i.bk = lshr i64 %i.bj, 8
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i45, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93, !nonnull !123, !noundef !123
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -64
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !117
  %i.bq = and i64 %i.bp, 64
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.u, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.u:                                             ; preds = %bb.t
  %i.bs = and i64 %i.bj, 96
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = and i64 %i.bj, 80
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split: ; preds = %bb.v, %bb.u
  %.sink86 = phi i64 [ 8, %bb.u ], [ 16, %bb.v ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i45, i64 %.sink86
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !94
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47: ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, %bb.q, %bb.r
  %.1.i40 = phi ptr [ %i.bg, %bb.r ], [ %i.bc, %bb.q ], [ %i.bx, %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split ] ; 2 uses
  %i.by = icmp ne ptr %.1.i, null
  %i.bz = icmp ne ptr %.1.i40, null
  %or.cond = and i1 %i.by, %i.bz
  br i1 %or.cond, label %bb.w, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.w:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47
  %i.ca = icmp ult ptr %.1.i, %.1.i40
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread: ; preds = %bb.p, %bb.r, %bb.s, %bb.v, %bb.t, %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %4, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

bb.y:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread
  %i.cc = load i64, ptr %0, align 8, !tbaa !115
  %i.cd = inttoptr i64 %i.cc to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.x, %bb.y
  %i.ce = phi ptr [ %i.cd, %bb.y ], [ %.pre.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cf = load ptr, ptr %i.an, align 8, !tbaa !79
  %.not.i.i48 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i48, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i49 = load ptr, ptr %3, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit50

bb.aa:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %i.cg = load i64, ptr %1, align 8, !tbaa !115
  %i.ch = inttoptr i64 %i.cg to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit50

_ZNK4pugi10xpath_node4nodeEv.exit50:              ; preds = %bb.z, %bb.aa
  %i.ci = phi ptr [ %i.ch, %bb.aa ], [ %.pre.i49, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !119 ; 2 uses
  %.not.i51 = icmp eq ptr %.sroa.0.0.copyload.i, null
  %.sroa.0.0.copyload.i95 = load ptr, ptr %i.an, align 8, !tbaa !119
  %.not.i96 = icmp eq ptr %.sroa.0.0.copyload.i95, null ; 2 uses
  br i1 %.not.i51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit50
  %.sroa.0.0.copyload.i81 = load ptr, ptr %0, align 8, !tbaa !115 ; 4 uses
  br i1 %.not.i96, label %_ZNK4pugi10xpath_node4nodeEv.exit88, label %_ZNK4pugi10xpath_node6parentEv.exit61

_ZNK4pugi10xpath_node6parentEv.exit61:            ; preds = %bb.ab
  %.sroa.0.0.copyload.i57 = load ptr, ptr %1, align 8, !tbaa !115 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.copyload.i81, %.sroa.0.0.copyload.i57
  br i1 %i.cj, label %.lr.ph, label %_ZNK4pugi10xpath_node6parentEv.exit77

.lr.ph:                                           ; preds = %_ZNK4pugi10xpath_node6parentEv.exit61, %_ZNK4pugi13xml_attribute14next_attributeEv.exit
  %storemerge39 = phi ptr [ %i.cn, %_ZNK4pugi13xml_attribute14next_attributeEv.exit ], [ %.sroa.0.0.copyload.i, %_ZNK4pugi10xpath_node6parentEv.exit61 ] ; 2 uses
  %.sroa.0.0.copyload.i64 = load ptr, ptr %i.an, align 8, !tbaa !119
  %i.ck = icmp eq ptr %storemerge39, %.sroa.0.0.copyload.i64 ; 3 uses
  br i1 %i.ck, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %_ZNK4pugi13xml_attribute14next_attributeEv.exit

_ZNK4pugi13xml_attribute14next_attributeEv.exit:  ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge39, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !83
  call void @_ZN4pugi13xml_attributeC1EPNS_20xml_attribute_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.cm)
  %i.cn = load ptr, ptr %2, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i63.not = icmp eq ptr %i.cn, null
  br i1 %.not.i63.not, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %.lr.ph, !llvm.loop !649

_ZNK4pugi10xpath_node4nodeEv.exit88:              ; preds = %bb.ab
  %i.co = load i64, ptr %1, align 8, !tbaa !115
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = icmp eq ptr %.sroa.0.0.copyload.i81, %i.cp
  br i1 %i.cq, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit77

bb.ac:                                            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit50
  br i1 %.not.i96, label %_ZNK4pugi10xpath_node6parentEv.exit77, label %_ZNK4pugi10xpath_node4nodeEv.exit105

_ZNK4pugi10xpath_node4nodeEv.exit105:             ; preds = %bb.ac
  %.sroa.0.0.copyload.i98 = load ptr, ptr %1, align 8, !tbaa !115 ; 2 uses
  %i.cr = load i64, ptr %0, align 8, !tbaa !115
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = icmp eq ptr %.sroa.0.0.copyload.i98, %i.cs
  br i1 %i.ct, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %_ZNK4pugi10xpath_node6parentEv.exit77

_ZNK4pugi10xpath_node6parentEv.exit77:            ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit105, %_ZNK4pugi10xpath_node4nodeEv.exit88, %_ZNK4pugi10xpath_node6parentEv.exit61, %bb.ac
  %.sroa.014.0 = phi ptr [ %i.ci, %bb.ac ], [ %i.ci, %_ZNK4pugi10xpath_node4nodeEv.exit88 ], [ %.sroa.0.0.copyload.i57, %_ZNK4pugi10xpath_node6parentEv.exit61 ], [ %.sroa.0.0.copyload.i98, %_ZNK4pugi10xpath_node4nodeEv.exit105 ] ; 6 uses
  %.sroa.018.0 = phi ptr [ %i.ce, %bb.ac ], [ %.sroa.0.0.copyload.i81, %_ZNK4pugi10xpath_node4nodeEv.exit88 ], [ %.sroa.0.0.copyload.i81, %_ZNK4pugi10xpath_node6parentEv.exit61 ], [ %i.ce, %_ZNK4pugi10xpath_node4nodeEv.exit105 ] ; 6 uses
  %i.cu = icmp eq ptr %.sroa.018.0, %.sroa.014.0
  br i1 %i.cu, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4pugi10xpath_node6parentEv.exit77
  %.not.i112 = icmp eq ptr %.sroa.018.0, null
  %.not.i113 = icmp eq ptr %.sroa.014.0, null
  %or.cond24 = or i1 %.not.i113, %.not.i112
  br i1 %or.cond24, label %bb.ae, label %.preheader

bb.ae:                                            ; preds = %bb.ad
  %i.cv = icmp ult ptr %.sroa.018.0, %.sroa.014.0
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.preheader:                                       ; preds = %bb.ad, %bb.af
  %.031.i = phi ptr [ %i.cz, %bb.af ], [ %.sroa.018.0, %bb.ad ] ; 7 uses
  %.0.i = phi ptr [ %i.db, %bb.af ], [ %.sroa.014.0, %bb.ad ] ; 7 uses
  %i.cw = icmp ne ptr %.031.i, null               ; 2 uses
  %i.cx = icmp ne ptr %.0.i, null
  %or.cond.i114 = and i1 %i.cw, %i.cx
  br i1 %or.cond.i114, label %bb.af, label %.critedge46.i

bb.af:                                            ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.031.i, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !122 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !122 ; 2 uses
  %.not.i115 = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i115, label %.critedge.i, label %.preheader, !llvm.loop !650

.critedge.i:                                      ; preds = %bb.af
  %.not.i.i116 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i116, label %bb.ag, label %.lr.ph.i.i

bb.ag:                                            ; preds = %.critedge.i
  %i.dc = icmp ult ptr %.031.i, %.0.i
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.ah
  %.019.i.i = phi ptr [ %i.di, %bb.ah ], [ %.0.i, %.critedge.i ] ; 2 uses
  %.01518.i.i = phi ptr [ %i.dg, %bb.ah ], [ %.031.i, %.critedge.i ] ; 2 uses
  %i.dd = icmp eq ptr %.01518.i.i, %.0.i          ; 2 uses
  %i.de = icmp eq ptr %.019.i.i, %.031.i
  %or.cond100 = select i1 %i.dd, i1 true, i1 %i.de
  br i1 %or.cond100, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.01518.i.i, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !120 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 48
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !120 ; 2 uses
  %i.dj = icmp ne ptr %i.dg, null
  %i.dk = icmp ne ptr %i.di, null                 ; 2 uses
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !651

._crit_edge.i.i:                                  ; preds = %bb.ah
  %i.dm = xor i1 %i.dk, true
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.critedge46.i:                                    ; preds = %.preheader
  %.not4367.i = icmp eq ptr %.031.i, null
  br i1 %.not4367.i, label %.preheader59.i, label %.lr.ph.i

.preheader59.i:                                   ; preds = %.lr.ph.i, %.critedge46.i
  %.035.lcssa.i = phi ptr [ %.sroa.018.0, %.critedge46.i ], [ %i.dq, %.lr.ph.i ] ; 2 uses
  %.not4470.i = icmp eq ptr %.0.i, null
  br i1 %.not4470.i, label %._crit_edge.i, label %.lr.ph73.i

.lr.ph.i:                                         ; preds = %.critedge46.i, %.lr.ph.i
  %.13269.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.031.i, %.critedge46.i ]
  %.03568.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %.sroa.018.0, %.critedge46.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.13269.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !122 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.03568.i, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !122 ; 2 uses
  %.not43.i = icmp eq ptr %i.do, null
  br i1 %.not43.i, label %.preheader59.i, label %.lr.ph.i, !llvm.loop !652

.lr.ph73.i:                                       ; preds = %.preheader59.i, %.lr.ph73.i
  %.172.i = phi ptr [ %i.ds, %.lr.ph73.i ], [ %.0.i, %.preheader59.i ]
  %.03371.i = phi ptr [ %i.du, %.lr.ph73.i ], [ %.sroa.014.0, %.preheader59.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.172.i, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !122 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.03371.i, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !122 ; 2 uses
  %.not44.i = icmp eq ptr %i.ds, null
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph73.i, !llvm.loop !653

._crit_edge.i:                                    ; preds = %.lr.ph73.i, %.preheader59.i
  %.033.lcssa.i = phi ptr [ %.sroa.014.0, %.preheader59.i ], [ %i.du, %.lr.ph73.i ] ; 2 uses
  %7 = xor i1 %i.cw, true
  %i.dv = icmp eq ptr %.035.lcssa.i, %.033.lcssa.i
  br i1 %i.dv, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.i
  %.136.i = phi ptr [ %i.dx, %.preheader.i ], [ %.035.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.134.i = phi ptr [ %i.dz, %.preheader.i ], [ %.033.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.136.i, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !122 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.134.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !122 ; 2 uses
  %.not45.i = icmp eq ptr %i.dx, %i.dz
  br i1 %.not45.i, label %bb.ai, label %.preheader.i, !llvm.loop !654

bb.ai:                                            ; preds = %.preheader.i
  %.not.i47.i = icmp eq ptr %i.dx, null
  br i1 %.not.i47.i, label %bb.aj, label %.lr.ph.i50.i

bb.aj:                                            ; preds = %bb.ai
  %i.ea = icmp ult ptr %.136.i, %.134.i
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

.lr.ph.i50.i:                                     ; preds = %bb.ai, %bb.ak
  %.019.i51.i = phi ptr [ %i.eg, %bb.ak ], [ %.134.i, %bb.ai ] ; 2 uses
  %.01518.i52.i = phi ptr [ %i.ee, %bb.ak ], [ %.136.i, %bb.ai ] ; 2 uses
  %i.eb = icmp eq ptr %.01518.i52.i, %.134.i      ; 2 uses
  %i.ec = icmp eq ptr %.019.i51.i, %.136.i
  %or.cond101 = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond101, label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i50.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.01518.i52.i, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !120 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.019.i51.i, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !120 ; 2 uses
  %i.eh = icmp ne ptr %i.ee, null
  %i.ei = icmp ne ptr %i.eg, null                 ; 2 uses
  %i.ej = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %i.ej, label %.lr.ph.i50.i, label %._crit_edge.i53.i, !llvm.loop !651

._crit_edge.i53.i:                                ; preds = %bb.ak
  %i.ek = xor i1 %i.ei, true
  br label %_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit

_ZN4pugi4impl12_GLOBAL__N_114node_is_beforeEPNS_15xml_node_structES3_.exit: ; preds = %.lr.ph, %_ZNK4pugi13xml_attribute14next_attributeEv.exit, %.lr.ph.i50.i, %.lr.ph.i.i, %bb.ae, %_ZNK4pugi10xpath_node4nodeEv.exit88, %_ZNK4pugi10xpath_node4nodeEv.exit105, %_ZNK4pugi10xpath_node6parentEv.exit77, %bb.ag, %._crit_edge.i.i, %._crit_edge.i, %bb.aj, %._crit_edge.i53.i, %bb.w
  %.2 = phi i1 [ %i.ca, %bb.w ], [ false, %_ZNK4pugi10xpath_node4nodeEv.exit88 ], [ false, %_ZNK4pugi10xpath_node6parentEv.exit77 ], [ true, %_ZNK4pugi10xpath_node4nodeEv.exit105 ], [ %i.cv, %bb.ae ], [ %i.dd, %.lr.ph.i.i ], [ %7, %._crit_edge.i ], [ %i.ek, %._crit_edge.i53.i ], [ %i.dc, %bb.ag ], [ %i.dm, %._crit_edge.i.i ], [ %i.eb, %.lr.ph.i50.i ], [ %i.ea, %bb.aj ], [ %i.ck, %_ZNK4pugi13xml_attribute14next_attributeEv.exit ], [ %i.ck, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_111xpath_lexer4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %0) unnamed_addr #30 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.b ]  ; 19 uses
  %i.b = load i8, ptr %.0, align 1, !tbaa !86
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !86
  %i.f = and i8 %i.e, 8
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 29 uses
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !655

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0, ptr %i.h, align 8, !tbaa !239
  %i.i = load i8, ptr %.0, align 1, !tbaa !86     ; 3 uses
  switch i8 %i.i, label %bb.av [
    i8 0, label %bb.d
    i8 62, label %bb.e
    i8 60, label %bb.h
    i8 33, label %bb.k
    i8 61, label %bb.n
    i8 43, label %bb.o
    i8 45, label %bb.p
    i8 42, label %bb.q
    i8 124, label %bb.r
    i8 36, label %bb.s
    i8 40, label %bb.y
    i8 41, label %bb.z
    i8 91, label %bb.aa
    i8 93, label %bb.ab
    i8 44, label %bb.ac
    i8 47, label %bb.ad
    i8 46, label %bb.ag
    i8 64, label %bb.an
    i8 34, label %bb.ao
    i8 39, label %bb.ao
    i8 58, label %bb.as
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 26, ptr %i.j, align 8, !tbaa !238
  br label %bb.bh

bb.e:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.g, align 1, !tbaa !86
  %i.l = icmp eq i8 %i.k, 61
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 6, ptr %i.n, align 8, !tbaa !238
  br label %bb.bh

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 4, ptr %i.o, align 8, !tbaa !238
  br label %bb.bh

bb.h:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.g, align 1, !tbaa !86
  %i.q = icmp eq i8 %i.p, 61
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 5, ptr %i.s, align 8, !tbaa !238
  br label %bb.bh

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 3, ptr %i.t, align 8, !tbaa !238
  br label %bb.bh

bb.k:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.g, align 1, !tbaa !86
  %i.v = icmp eq i8 %i.u, 61
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.x, align 8, !tbaa !238
  br label %bb.bh

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !238
  br label %bb.bh

bb.n:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.z, align 8, !tbaa !238
  br label %bb.bh

bb.o:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 7, ptr %i.aa, align 8, !tbaa !238
  br label %bb.bh

bb.p:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 8, ptr %i.ab, align 8, !tbaa !238
  br label %bb.bh

bb.q:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 9, ptr %i.ac, align 8, !tbaa !238
  br label %bb.bh

bb.r:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 10, ptr %i.ad, align 8, !tbaa !238
  br label %bb.bh

bb.s:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.g, align 1, !tbaa !86
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !86
  %i.ai = and i8 %i.ah, 4
  %.not86 = icmp eq i8 %i.ai, 0
  br i1 %.not86, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !664
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.1 = phi ptr [ %i.g, %bb.t ], [ %i.ap, %bb.u ] ; 4 uses
  %i.ak = load i8, ptr %.1, align 1, !tbaa !86    ; 2 uses
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_115chartypex_tableE, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !86
  %i.ao = and i8 %i.an, 16
  %.not87 = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  br i1 %.not87, label %bb.v, label %bb.u, !llvm.loop !656

bb.v:                                             ; preds = %bb.u
  %i.aq = icmp eq i8 %i.ak, 58
  br i1 %i.aq, label %bb.w, label %.loopexit100

end_hunk_7
begin_hunk_8_@_ZN4pugi4impl12_GLOBAL__N_113namespace_uriERKNS_10xpath_nodeE:bb.a
  %.sroa.0.0.copyload.i7 = load ptr, ptr %0, align 8, !tbaa !115 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 2 uses
  %.not5.i.i = icmp eq ptr %i.c, null
  %i.d = select i1 %.not5.i.i, ptr @.str, ptr %i.c ; 3 uses
  %i.e = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.d, i32 noundef 58) #50 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.e, null             ; 3 uses
  %i.f = select i1 %.not.i6.i, ptr null, ptr %i.d
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = select i1 %.not.i6.i, i64 0, i64 %i.i
  %.not.i720.i = icmp eq ptr %.sroa.0.0.copyload.i7, null
  %or.cond.i = select i1 %.not.i6.i, i1 true, i1 %.not.i720.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4pugi13xml_attribute4nameEv.exit.i, %bb.b
  %.sroa.014.021.i = phi ptr [ %i.n, %bb.b ], [ %.sroa.0.0.copyload.i7, %_ZNK4pugi13xml_attribute4nameEv.exit.i ] ; 2 uses
  %i.k = call fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nonnull %.sroa.014.021.i, ptr %i.f, i64 %i.j) ; 2 uses
  %.not.i8.i = icmp eq ptr %i.k, null
  br i1 %.not.i8.i, label %bb.b, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !122
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.m)
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not.i7.i = icmp eq ptr %i.n, null
  br i1 %.not.i7.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i, !llvm.loop !731

_ZNK4pugi10xpath_node4nodeEv.exit:                ; preds = %bb.a
  %i.o = load i64, ptr %0, align 8, !tbaa !115    ; 2 uses
  %.not.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i10, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %_ZNK4pugi8xml_node4nameEv.exit.i

_ZNK4pugi8xml_node4nameEv.exit.i:                 ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116  ; 2 uses
  %.not5.i.i11 = icmp eq ptr %i.r, null
  %i.s = select i1 %.not5.i.i11, ptr @.str, ptr %i.r ; 3 uses
  %i.t = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.s, i32 noundef 58) #50 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.t, null             ; 2 uses
  %i.u = select i1 %.not.i4.i, ptr null, ptr %i.s
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = select i1 %.not.i4.i, i64 0, i64 %i.x
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.c, %_ZNK4pugi8xml_node4nameEv.exit.i
  %.sroa.012.019.i = phi ptr [ %i.ac, %bb.c ], [ %i.p, %_ZNK4pugi8xml_node4nameEv.exit.i ] ; 2 uses
  %i.z = call fastcc ptr @_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_(ptr nonnull %.sroa.012.019.i, ptr %i.u, i64 %i.y) ; 2 uses
  %.not.i6.i13 = icmp eq ptr %i.z, null
  br i1 %.not.i6.i13, label %bb.c, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split

bb.c:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.019.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %1, align 8               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.not.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit, label %.lr.ph.i12, !llvm.loop !732

_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split: ; preds = %.lr.ph.i, %.lr.ph.i12
  %.lcssa.sink = phi ptr [ %i.z, %.lr.ph.i12 ], [ %i.k, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa.sink, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !85 ; 2 uses
  %.not5.i8.i = icmp eq ptr %i.ae, null
  %i.af = select i1 %.not5.i8.i, ptr @.str, ptr %i.ae
  br label %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit: ; preds = %bb.b, %bb.c, %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split, %_ZNK4pugi10xpath_node4nodeEv.exit, %_ZNK4pugi13xml_attribute4nameEv.exit.i
  %i.ag = phi ptr [ %i.af, %_ZN4pugi4impl12_GLOBAL__N_113namespace_uriENS_13xml_attributeENS_8xml_nodeE.exit.sink.split ], [ @.str, %_ZNK4pugi13xml_attribute4nameEv.exit.i ], [ @.str, %_ZNK4pugi10xpath_node4nodeEv.exit ], [ @.str, %bb.c ], [ @.str, %bb.b ]
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_112xpath_string9from_heapEPKcS4_PNS1_15xpath_allocatorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 9), (16, 24)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = add i64 %i.e, 8                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !224  ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !223    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !250
  %.not.i.i = icmp ugt i64 %i.i, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !224
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.e, 1032
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 4096) ; 2 uses
  %i.q = add i64 %i.p, 16
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.s = tail call noundef ptr %i.r(i64 noundef %i.q), !inline_history !733 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.s, null
  br i1 %.not23.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225  ; 2 uses
  %.not24.i.i = icmp eq ptr %i.u, null
  br i1 %.not24.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 1, !tbaa !251
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.v, ptr %i.s, align 8, !tbaa !240
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.p, ptr %i.w, align 8, !tbaa !250
  store ptr %i.s, ptr %3, align 8, !tbaa !223
  store i64 %i.f, ptr %i.g, align 8, !tbaa !224
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.1.i.i = phi ptr [ %i.n, %bb.c ], [ %i.x, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr readonly align 1 %1, i64 %i.d, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %i.d
  store i8 0, ptr %i.y, align 1, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.h
  %.1.i.i.sink = phi ptr [ %.1.i.i, %bb.h ], [ @.str, %bb.a ], [ @.str, %bb.f ], [ @.str, %bb.e ]
  %.sink18 = phi i8 [ 1, %bb.h ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.sink = phi i64 [ %i.d, %bb.h ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  store ptr %.1.i.i.sink, ptr %0, align 8, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink18, ptr %i.z, align 8, !tbaa !273
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_124convert_number_to_stringEdPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, double noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = alloca double, align 8                   ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile double %1, ptr %i.a, align 8, !tbaa !272
  %.0..0..0..0..0..0..i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.c = fcmp oeq double %.0..0..0..0..0..0..i, 0.000000e+00
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0..0..0..0..0..0.1.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %.0..0..0..0..0..0.2.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.d = fcmp une double %.0..0..0..0..0..0.1.i, %.0..0..0..0..0..0.2.i
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0..0..0..0..0..0.3.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.e = fmul double %.0..0..0..0..0..0.3.i, 2.000000e+00
  %.0..0..0..0..0..0.4.i = load volatile double, ptr %i.a, align 8, !tbaa !272
  %i.f = fcmp oeq double %i.e, %.0..0..0..0..0..0.4.i
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = fcmp ogt double %1, 0.000000e+00
  %i.h = select i1 %i.g, ptr @.str.104, ptr @.str.105
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %.0.i.ph = phi ptr [ %i.h, %bb.d ], [ @.str.102, %bb.a ], [ @.str.103, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.0.i.ph, ptr %0, align 8, !tbaa !268, !alias.scope !741
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8, !tbaa !273, !alias.scope !741
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !274, !alias.scope !741
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 noundef 32, ptr noundef nonnull @.str.106, i32 noundef 15, double noundef %1) #49 ; 0 uses
  %i.l = call noundef ptr @strchr(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i32 noundef 101) #50 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !86    ; 2 uses
  %.not25.i = icmp eq i8 %i.n, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.o = phi i8 [ %i.u, %.lr.ph.i ], [ %i.n, %bb.f ]
  %.027.i = phi i32 [ %i.t, %.lr.ph.i ], [ 0, %bb.f ]
  %.02326.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.m, %bb.f ]
  %i.p = mul nsw i32 %.027.i, 10
  %i.q = getelementptr inbounds nuw i8, ptr %.02326.i, i64 1 ; 2 uses
  %i.r = sext i8 %i.o to i32
  %i.s = add nsw i32 %i.r, -48
  %i.t = add i32 %i.s, %i.p                       ; 2 uses
  %i.u = load i8, ptr %i.q, align 1, !tbaa !86    ; 2 uses
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !736

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.t, %.lr.ph.i ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !86
  %i.v = load i8, ptr %i.b, align 16, !tbaa !86   ; 2 uses
  %i.w = icmp eq i8 %i.v, 45                      ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.sroa.gep.val = load i8, ptr %.sroa.gep, align 1
  %i.x = select i1 %i.w, i8 %.sroa.gep.val, i8 %i.v
  %.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.idx.i.sroa.sel.sroa.sel = select i1 %i.w, ptr %.sroa.gep.sroa.gep, ptr %.sroa.gep ; 9 uses
  store i8 %i.x, ptr %.idx.i.sroa.sel.sroa.sel, align 1, !tbaa !86
  %i.y = ptrtoaddr ptr %i.l to i64
  %i.z = ptrtoaddr ptr %.idx.i.sroa.sel.sroa.sel to i64
  %i.aa = sub i64 %i.z, %i.y
  %scevgep.i.i = getelementptr i8, ptr %i.l, i64 %i.aa ; 2 uses
  %.not.i.i92 = icmp eq ptr %.idx.i.sroa.sel.sroa.sel, %i.l
  br i1 %.not.i.i92, label %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit, label %.lr.ph94

bb.g:                                             ; preds = %.lr.ph94
  %.not.i.i = icmp eq ptr %.idx.i.sroa.sel.sroa.sel, %i.ab
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit, label %.lr.ph94, !llvm.loop !737

.lr.ph94:                                         ; preds = %._crit_edge.i, %bb.g
  %.0.i.i93 = phi ptr [ %i.ab, %bb.g ], [ %i.l, %._crit_edge.i ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.0.i.i93, i64 -1 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !86
  %i.ad = icmp eq i8 %i.ac, 48
  br i1 %i.ad, label %bb.g, label %._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge95, !llvm.loop !737

._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge95: ; preds = %.lr.ph94
  br label %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit, !llvm.loop !737

_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit: ; preds = %bb.g, %._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge95, %._crit_edge.i
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.i ], [ %.0.i.i93, %._ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit_crit_edge95 ], [ %scevgep.i.i, %bb.g ]
  %i.ae = icmp eq i8 %4, 45
  %i.af = sub nsw i32 0, %.0.lcssa.i
  %i.ag = select i1 %i.ae, i32 %i.af, i32 %.0.lcssa.i ; 5 uses
  %i.ah = add nsw i32 %i.ag, 1                    ; 4 uses
  store i8 0, ptr %.0.lcssa.i.i, align 1, !tbaa !86
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #50
  %i.aj = call i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %narrow = add nuw i32 %i.aj, 11
  %i.ak = zext i32 %narrow to i64
  %i.al = add i64 %i.ai, %i.ak
  %i.am = and i64 %i.al, -8                       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !224 ; 2 uses
  %i.ap = add i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !223   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !250
  %.not.i23 = icmp ugt i64 %i.ap, %i.as
  br i1 %.not.i23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ao
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_135convert_number_to_mantissa_exponentEdRA32_cPPcPi.exit
  %i.av = add i64 %i.am, 1024
  %i.aw = call i64 @llvm.umax.i64(i64 %i.av, i64 4096) ; 2 uses
  %i.ax = add i64 %i.aw, 16
  %i.ay = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.az = call noundef ptr %i.ay(i64 noundef %i.ax), !inline_history !53 ; 5 uses
  %.not23.i = icmp eq ptr %i.az, null
  br i1 %.not23.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !225 ; 2 uses
  %.not24.i = icmp eq ptr %i.bb, null
  br i1 %.not24.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bb, align 1, !tbaa !251
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %2, align 8, !tbaa !223
  store ptr %i.bc, ptr %i.az, align 8, !tbaa !240
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.aw, ptr %i.bd, align 8, !tbaa !250
  store ptr %i.az, ptr %2, align 8, !tbaa !223
  store i64 %i.am, ptr %i.an, align 8, !tbaa !224
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.l, %bb.h
  %.1.i = phi ptr [ %i.au, %bb.h ], [ %i.be, %bb.l ] ; 5 uses
  %i.bf = fcmp olt double %1, 0.000000e+00
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 45, ptr %.1.i, align 1, !tbaa !86
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.0 = phi ptr [ %i.bg, %bb.m ], [ %.1.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ] ; 5 uses
  %i.bh = icmp slt i32 %i.ag, 0
  br i1 %i.bh, label %.loopexit46, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i32 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.149.prol = phi ptr [ %i.bj, %.lr.ph.prol ], [ %.0, %.lr.ph.preheader ] ; 3 uses
  %.03248.prol = phi i32 [ %i.bk, %.lr.ph.prol ], [ %i.ah, %.lr.ph.preheader ]
  %.03547.prol = phi ptr [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ], [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bi = load i8, ptr %.03547.prol, align 1, !tbaa !86 ; 2 uses
  %.not20.not.prol.not = icmp ne i8 %i.bi, 0      ; 2 uses
  %spec.select.idx.sroa.sel.idx.prol.sroa.sel.idx = zext i1 %.not20.not.prol.not to i64
  %spec.select.idx.sroa.sel.idx.prol.sroa.sel = getelementptr inbounds nuw i8, ptr %.03547.prol, i64 %spec.select.idx.sroa.sel.idx.prol.sroa.sel.idx ; 3 uses
  %spec.select44.prol = select i1 %.not20.not.prol.not, i8 %i.bi, i8 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.149.prol, i64 1 ; 3 uses
  store i8 %spec.select44.prol, ptr %.149.prol, align 1, !tbaa !86
  %i.bk = add nsw i32 %.03248.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !738

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.149.unr = phi ptr [ %.0, %.lr.ph.preheader ], [ %i.bj, %.lr.ph.prol ]
  %.03248.unr = phi i32 [ %i.ah, %.lr.ph.preheader ], [ %i.bk, %.lr.ph.prol ]
  %.03547.unr = phi ptr [ %.idx.i.sroa.sel.sroa.sel, %.lr.ph.preheader ], [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ]
  %.149.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.149.prol, %.lr.ph.prol ]
  %spec.select.idx.sroa.sel.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %spec.select.idx.sroa.sel.idx.prol.sroa.sel, %.lr.ph.prol ]
  %.lcssa97.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bj, %.lr.ph.prol ]
  %i.bl = icmp ult i32 %i.ag, 3
  br i1 %i.bl, label %.loopexit46.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.149 = phi ptr [ %i.bt, %.lr.ph ], [ %.149.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.03248 = phi i32 [ %i.bu, %.lr.ph ], [ %.03248.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03547 = phi ptr [ %spec.select.idx.sroa.sel.3, %.lr.ph ], [ %.03547.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bm = load i8, ptr %.03547, align 1, !tbaa !86 ; 2 uses
  %.not20.not.not = icmp ne i8 %i.bm, 0           ; 2 uses
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not20.not.not to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.03547, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %spec.select44 = select i1 %.not20.not.not, i8 %i.bm, i8 48
  %i.bn = getelementptr inbounds nuw i8, ptr %.149, i64 1
  store i8 %spec.select44, ptr %.149, align 1, !tbaa !86
  %i.bo = load i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !86 ; 2 uses
  %.not20.not.1 = icmp ne i8 %i.bo, 0             ; 2 uses
  %spec.select.idx.sroa.sel.idx.1 = zext i1 %.not20.not.1 to i64
  %spec.select.idx.sroa.sel.1 = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.idx.sroa.sel, i64 %spec.select.idx.sroa.sel.idx.1 ; 2 uses
  %spec.select44.1 = select i1 %.not20.not.1, i8 %i.bo, i8 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.149, i64 2
  store i8 %spec.select44.1, ptr %i.bn, align 1, !tbaa !86
  %i.bq = load i8, ptr %spec.select.idx.sroa.sel.1, align 1, !tbaa !86 ; 2 uses
  %.not20.not.2.not = icmp ne i8 %i.bq, 0         ; 2 uses
  %spec.select.idx.sroa.sel.idx.2.sroa.sel.idx = zext i1 %.not20.not.2.not to i64
  %spec.select.idx.sroa.sel.idx.2.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.1, i64 %spec.select.idx.sroa.sel.idx.2.sroa.sel.idx ; 2 uses
  %spec.select44.2 = select i1 %.not20.not.2.not, i8 %i.bq, i8 48
  %i.br = getelementptr inbounds nuw i8, ptr %.149, i64 3
  store i8 %spec.select44.2, ptr %i.bp, align 1, !tbaa !86
  %i.bs = load i8, ptr %spec.select.idx.sroa.sel.idx.2.sroa.sel, align 1, !tbaa !86 ; 2 uses
  %.not20.not.3 = icmp ne i8 %i.bs, 0             ; 2 uses
  %spec.select.idx.sroa.sel.idx.3 = zext i1 %.not20.not.3 to i64
  %spec.select.idx.sroa.sel.3 = getelementptr inbounds nuw i8, ptr %spec.select.idx.sroa.sel.idx.2.sroa.sel, i64 %spec.select.idx.sroa.sel.idx.3 ; 2 uses
  %spec.select44.3 = select i1 %.not20.not.3, i8 %i.bs, i8 48
  %i.bt = getelementptr inbounds nuw i8, ptr %.149, i64 4 ; 2 uses
  store i8 %spec.select44.3, ptr %i.br, align 1, !tbaa !86
  %i.bu = add nsw i32 %.03248, -4
  %i.bv = icmp sgt i32 %.03248, 4
  br i1 %i.bv, label %.lr.ph, label %.loopexit46.thread.unr-lcssa, !llvm.loop !739

.loopexit46:                                      ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 3 uses
  store i8 48, ptr %.0, align 1, !tbaa !86
  %i.bx = load i8, ptr %.idx.i.sroa.sel.sroa.sel, align 1, !tbaa !86
  %.not21 = icmp eq i8 %i.bx, 0
  br i1 %.not21, label %.loopexit, label %bb.o

.loopexit46.thread.unr-lcssa:                     ; preds = %.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %.149, i64 3
  br label %.loopexit46.thread

.loopexit46.thread:                               ; preds = %.lr.ph.prol.loopexit, %.loopexit46.thread.unr-lcssa
  %.149.lcssa = phi ptr [ %.149.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.by, %.loopexit46.thread.unr-lcssa ]
  %spec.select.idx.sroa.sel.lcssa = phi ptr [ %spec.select.idx.sroa.sel.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.idx.sroa.sel.3, %.loopexit46.thread.unr-lcssa ] ; 2 uses
  %.lcssa97 = phi ptr [ %.lcssa97.unr, %.lr.ph.prol.loopexit ], [ %i.bt, %.loopexit46.thread.unr-lcssa ] ; 2 uses
  %i.bz = load i8, ptr %spec.select.idx.sroa.sel.lcssa, align 1, !tbaa !86
  %.not2176 = icmp eq i8 %i.bz, 0
  br i1 %.not2176, label %.loopexit, label %.thread

.thread:                                          ; preds = %.loopexit46.thread
  store i8 46, ptr %.lcssa97, align 1, !tbaa !86
  %.35283 = getelementptr i8, ptr %.149.lcssa, i64 2
  br label %.preheader

bb.o:                                             ; preds = %.loopexit46
  store i8 46, ptr %i.bw, align 1, !tbaa !86
  %.352 = getelementptr i8, ptr %.0, i64 2        ; 2 uses
  %.not = icmp eq i32 %i.ag, -1
  br i1 %.not, label %.preheader, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %bb.o
end_hunk_8
