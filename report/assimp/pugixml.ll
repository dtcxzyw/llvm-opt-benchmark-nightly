inline.NumInlined: 2217
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_112utf8_decoder7processINS1_12utf32_writerEEENT_10value_typeEPKhmS6_S5_:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ch = shl nuw nsw i32 %i.b, 18
  %i.ci = and i32 %i.ch, 1835008
  %i.cj = shl nuw nsw i32 %i.bu, 12
  %i.ck = and i32 %i.cj, 258048
  %i.cl = or disjoint i32 %i.ck, %i.ci
  %i.cm = shl nuw nsw i32 %i.bz, 6
  %i.cn = and i32 %i.cm, 4032
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = and i32 %i.ce, 63
  %i.cq = or disjoint i32 %i.co, %i.cp
  store i32 %i.cq, ptr %.06372, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.06372, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.074, i64 4
  %i.ct = add i64 %.06073, -4
  br label %.critedge

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.074, i64 1
  %i.cv = add i64 %.06073, -1
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %bb.f, %bb.o, %bb.p, %bb.j, %bb.b
  %.265 = phi ptr [ %i.cr, %bb.o ], [ %.06372, %bb.p ], [ %i.d, %bb.b ], [ %i.ap, %bb.f ], [ %i.bm, %bb.j ], [ %.164, %.preheader ], [ %i.aa, %bb.c ] ; 2 uses
  %.262 = phi i64 [ %i.ct, %bb.o ], [ %i.cv, %bb.p ], [ %i.f, %bb.b ], [ %i.ar, %bb.f ], [ %i.bo, %bb.j ], [ %.161, %.preheader ], [ %i.ac, %bb.c ] ; 2 uses
  %.2 = phi ptr [ %i.cs, %bb.o ], [ %i.cu, %bb.p ], [ %i.e, %bb.b ], [ %i.aq, %bb.f ], [ %i.bn, %bb.j ], [ %.1, %.preheader ], [ %i.ab, %bb.c ]
  %.not = icmp eq i64 %.262, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !381

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.063.lcssa = phi ptr [ %2, %bb.a ], [ %.265, %.critedge ]
  ret ptr %.063.lcssa
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #33

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
bb.a:
  %2 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %3 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %4 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %5 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %6 = alloca %"class.pugi::xpath_node", align 8  ; 5 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.ak, %bb.j ]
  %i.h = phi i64 [ %i.b, %.lr.ph ], [ %.pre-phi8, %bb.j ]
  %i.i = phi i64 [ %i.a, %.lr.ph ], [ %.pre-phi, %bb.j ]
  %.05 = phi ptr [ %0, %.lr.ph ], [ %.1, %bb.j ]  ; 12 uses
  %.0224 = phi ptr [ %1, %.lr.ph ], [ %.123, %bb.j ] ; 8 uses
  %i.j = lshr i64 %i.g, 1
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.05, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.0224, i64 -16 ; 2 uses
  %i.m = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(16) %.05) ; 2 uses
  %spec.select.i = select i1 %i.m, ptr %i.k, ptr %.05 ; 2 uses
  %spec.select12.i = select i1 %i.m, ptr %.05, ptr %i.k ; 2 uses
  %i.n = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %spec.select12.i)
  %.1.i = select i1 %i.n, ptr %i.l, ptr %spec.select12.i ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i)
  %.2.i = select i1 %i.o, ptr %spec.select.i, ptr %.1.i ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.2.i, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.copyload, ptr %6, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.f, align 8
  %i.p = icmp ult ptr %.05, %.0224
  br i1 %i.p, label %.lr.ph.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit

.preheader.i:                                     ; preds = %bb.g
  %.not5.i = icmp eq ptr %.05, %.129.i
  br i1 %.not5.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit, label %.lr.ph8.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.g
  %.0253.i = phi ptr [ %.1.i25, %bb.g ], [ %.0224, %bb.b ] ; 3 uses
  %.0262.i = phi ptr [ %.127.i, %bb.g ], [ %.05, %bb.b ] ; 10 uses
  %.0281.i = phi ptr [ %.129.i, %bb.g ], [ %.05, %bb.b ] ; 5 uses
  %i.q = call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0262.i, i64 16
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = load ptr, ptr %.0262.i, align 8
  %i.t = icmp eq ptr %i.s, %.sroa.0.0.copyload
  %i.u = getelementptr inbounds nuw i8, ptr %.0262.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %.sroa.2.0.copyload
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.0281.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0262.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.0281.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0281.i, ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %.0253.i, i64 -16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0262.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.129.i = phi ptr [ %.0281.i, %bb.c ], [ %i.y, %bb.e ], [ %.0281.i, %bb.f ] ; 3 uses
  %.127.i = phi ptr [ %i.r, %bb.c ], [ %i.z, %bb.e ], [ %.0262.i, %bb.f ] ; 2 uses
  %.1.i25 = phi ptr [ %.0253.i, %bb.c ], [ %.0253.i, %bb.e ], [ %i.aa, %bb.f ] ; 6 uses
  %i.ab = icmp ult ptr %.127.i, %.1.i25
  br i1 %i.ab, label %.lr.ph.i, label %.preheader.i, !llvm.loop !382

.lr.ph8.i:                                        ; preds = %.preheader.i, %.lr.ph8.i
  %.07.i = phi ptr [ %i.ad, %.lr.ph8.i ], [ %.05, %.preheader.i ] ; 3 uses
  %.0246.i = phi ptr [ %i.ac, %.lr.ph8.i ], [ %.1.i25, %.preheader.i ]
  %i.ac = getelementptr inbounds i8, ptr %.0246.i, i64 -16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.07.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.07.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %.129.i
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit, label %.lr.ph8.i, !llvm.loop !383

_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit: ; preds = %.lr.ph8.i, %bb.b, %.preheader.i
  %.025.lcssa16.i = phi ptr [ %.1.i25, %.preheader.i ], [ %.0224, %bb.b ], [ %.1.i25, %.lr.ph8.i ] ; 3 uses
  %.024.lcssa.i = phi ptr [ %.1.i25, %.preheader.i ], [ %.0224, %bb.b ], [ %i.ac, %.lr.ph8.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ae = ptrtoint ptr %.024.lcssa.i to i64       ; 2 uses
  %i.af = sub i64 %i.ae, %i.h
  %i.ag = ptrtoint ptr %.025.lcssa16.i to i64     ; 2 uses
  %i.ah = sub i64 %i.i, %i.ag
  %i.ai = icmp sgt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef %.025.lcssa16.i, ptr noundef %.0224)
  %.pre7 = ptrtoint ptr %.05 to i64
  br label %bb.j

bb.i:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_110partition3INS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_S5_RKT0_PS6_SA_.exit
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_14sortIPNS_10xpath_nodeENS1_25document_order_comparatorEEEvT_S6_RKT0_(ptr noundef nonnull %.05, ptr noundef %.024.lcssa.i)
  %.pre = ptrtoint ptr %.0224 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi8 = phi i64 [ %i.ag, %bb.i ], [ %.pre7, %bb.h ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  %.123 = phi ptr [ %.0224, %bb.i ], [ %.024.lcssa.i, %bb.h ] ; 2 uses
  %.1 = phi ptr [ %.025.lcssa16.i, %bb.i ], [ %.05, %bb.h ] ; 2 uses
  %i.aj = sub i64 %.pre-phi, %.pre-phi8
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 16
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !384

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.022.lcssa = phi ptr [ %1, %bb.a ], [ %.123, %bb.j ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.j ] ; 4 uses
  %i.am = icmp eq ptr %.0.lcssa, %.022.lcssa
  %.0164.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %.not5.i26 = icmp eq ptr %.0164.i, %.022.lcssa
  %or.cond.i = select i1 %i.am, i1 true, i1 %.not5.i26
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge, %.critedge.i.loopexit
  %.0166.i = phi ptr [ %.016.i, %.critedge.i.loopexit ], [ %.0164.i, %._crit_edge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.0166.i, i64 16, i1 false)
  %7 = icmp ugt ptr %.0166.i, %.0.lcssa
  br i1 %7, label %.lr.ph.i28, label %.critedge.i.loopexit

.lr.ph.i28:                                       ; preds = %.lr.ph7.i, %bb.k
  %.01.i = phi ptr [ %i.an, %bb.k ], [ %.0166.i, %.lr.ph7.i ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.01.i, i64 -16 ; 5 uses
  %i.ao = call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
  br i1 %i.ao, label %bb.k, label %.critedge.i.loopexit

bb.k:                                             ; preds = %.lr.ph.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %i.ap = icmp ugt ptr %i.an, %.0.lcssa
  br i1 %i.ap, label %.lr.ph.i28, label %.critedge.i.loopexit, !llvm.loop !385

.critedge.i.loopexit:                             ; preds = %bb.k, %.lr.ph.i28, %.lr.ph7.i
  %.0.lcssa.i = phi ptr [ %.0166.i, %.lr.ph7.i ], [ %.01.i, %.lr.ph.i28 ], [ %i.an, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %.016.i = getelementptr inbounds nuw i8, ptr %.0166.i, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %.016.i, %.022.lcssa
  br i1 %.not.i27, label %_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit, label %.lr.ph7.i, !llvm.loop !386

_ZN4pugi4impl12_GLOBAL__N_114insertion_sortINS_10xpath_nodeENS1_25document_order_comparatorEEEvPT_S6_RKT0_.exit: ; preds = %.critedge.i.loopexit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.pugi::xml_attribute", align 8 ; 4 uses
  %3 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8
  %i.d = inttoptr i64 %i.c to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i

_ZNK4pugi10xpath_node4nodeEv.exit.i:              ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ %.pre.i.i, %bb.b ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = lshr i64 %i.f, 8
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !22, !noundef !22
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 64
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not22.i = icmp ne ptr %i.p, null
  %i.q = and i64 %i.f, 96
  %i.r = icmp eq i64 %i.q, 0
  %or.cond.i = and i1 %i.r, %.not22.i
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not23.i = icmp ne ptr %i.t, null
  %i.u = and i64 %i.f, 80
  %i.v = icmp eq i64 %i.u, 0
  %or.cond27.i = and i1 %i.v, %.not23.i
  br i1 %or.cond27.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.h:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8 ; 5 uses
  %.not21.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not21.i, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 3 uses
  %i.x = lshr i64 %i.w, 8
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !22, !noundef !22
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -64
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 64
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.af = and i64 %i.w, 96
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = and i64 %i.w, 80
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.t, %bb.f ], [ %i.p, %bb.e ], [ null, %bb.g ], [ %i.ai, %bb.k ], [ %i.am, %bb.m ], [ null, %bb.i ], [ null, %bb.l ], [ null, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %.not.i.i.i36 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre.i.i37 = load ptr, ptr %5, align 8
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

bb.o:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit
  %i.ap = load i64, ptr %1, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %_ZNK4pugi10xpath_node4nodeEv.exit.i38

_ZNK4pugi10xpath_node4nodeEv.exit.i38:            ; preds = %bb.o, %bb.n
  %i.ar = phi ptr [ %i.aq, %bb.o ], [ %.pre.i.i37, %bb.n ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i39 = icmp eq ptr %i.ar, null
  br i1 %.not.i39, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %i.as = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !22, !noundef !22
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -64
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 64
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.q, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not22.i41 = icmp ne ptr %i.bc, null
  %i.bd = and i64 %i.as, 96
  %i.be = icmp eq i64 %i.bd, 0
  %or.cond.i42 = and i1 %i.be, %.not22.i41
  br i1 %or.cond.i42, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not23.i43 = icmp ne ptr %i.bg, null
  %i.bh = and i64 %i.as, 80
  %i.bi = icmp eq i64 %i.bh, 0
  %or.cond27.i44 = and i1 %i.bi, %.not23.i43
  br i1 %or.cond27.i44, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread

bb.s:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i38
  %.sroa.0.0.copyload.i.i45 = load ptr, ptr %i.an, align 8 ; 4 uses
  %.not21.i46 = icmp eq ptr %.sroa.0.0.copyload.i.i45, null
  br i1 %.not21.i46, label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %.sroa.0.0.copyload.i.i45, align 8 ; 3 uses
  %i.bk = lshr i64 %i.bj, 8
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i45, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !22, !noundef !22
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -64
  %i.bp = load i64, ptr %i.bo, align 8
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
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47

_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47: ; preds = %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split, %bb.q, %bb.r
  %.1.i40 = phi ptr [ %i.bg, %bb.r ], [ %i.bc, %bb.q ], [ %i.bx, %_ZN4pugi4impl12_GLOBAL__N_121document_buffer_orderERKNS_10xpath_nodeE.exit47.sink.split ] ; 2 uses
  %i.by = icmp ne ptr %.1.i, null
  %i.bz = icmp ne ptr %.1.i40, null
end_hunk_0
