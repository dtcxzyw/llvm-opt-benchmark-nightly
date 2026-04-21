inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0_@FT_Bitmap_Convert:bb.a

bb.ag:                                            ; preds = %.lr.ph267, %bb.ai
  %.0181265 = phi i32 [ %i.gf, %.lr.ph267 ], [ %i.ir, %bb.ai ]
  %.4264 = phi ptr [ %.0183, %.lr.ph267 ], [ %i.in, %bb.ai ] ; 8 uses
  %.4196263 = phi ptr [ %.0192, %.lr.ph267 ], [ %i.iq, %bb.ai ] ; 9 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !31 ; 4 uses
  %i.gi = lshr i32 %i.gh, 1                       ; 5 uses
  %.not223254 = icmp eq i32 %i.gi, 0
  br i1 %.not223254, label %._crit_edge260, label %.lr.ph259.preheader.a

.lr.ph259.preheader.a:                            ; preds = %bb.ag
  %i.gj = lshr i32 %i.gh, 1
  %i.gk = zext nneg i32 %i.gj to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.gh, 32
  br i1 %min.iters.check, label %.lr.ph259.preheader381, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph259.preheader.a
end_hunk_0
begin_hunk_1_@FT_Bitmap_Convert:bb.a
  %bound0 = icmp ult ptr %.4196263, %scevgep369
  %bound1 = icmp ult ptr %.4264, %scevgep367
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph259.preheader381, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gk, 2147483632              ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.go = sub nsw i32 %i.gi, %.cast
  %i.gp = shl nuw nsw i64 %n.vec, 1
end_hunk_1
begin_hunk_2_@FT_Bitmap_Convert:bb.a
  store <16 x i8> %interleaved.vec373, ptr %next.gep370, align 1, !tbaa !23, !alias.scope !61, !noalias !58
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block.a, label %vector.body, !llvm.loop !63

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %n.vec, %i.gk
  br i1 %cmp.n.a, label %._crit_edge260.loopexit, label %.lr.ph259.preheader381

.lr.ph259.preheader381:                           ; preds = %vector.memcheck, %.lr.ph259.preheader.a, %middle.block.a
  %.0178257.ph = phi i32 [ %i.gi, %vector.memcheck ], [ %i.gi, %.lr.ph259.preheader.a ], [ %i.go, %middle.block.a ] ; 4 uses
  %.0179256.ph = phi ptr [ %.4196263, %vector.memcheck ], [ %.4196263, %.lr.ph259.preheader.a ], [ %i.gq, %middle.block.a ] ; 2 uses
  %.0180255.ph = phi ptr [ %.4264, %vector.memcheck ], [ %.4264, %.lr.ph259.preheader.a ], [ %i.gr, %middle.block.a ] ; 2 uses
  %i.gz = add nsw i32 %.0178257.ph, -1
  %xtraiter = and i32 %.0178257.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_2
begin_hunk_3_@FT_Bitmap_Convert:bb.a
  %i.hg = add nsw i32 %.0178257.prol, -1          ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph259.prol.loopexit, label %.lr.ph259.prol, !llvm.loop !64

.lr.ph259.prol.loopexit:                          ; preds = %.lr.ph259.prol, %.lr.ph259.preheader381
  %.lcssa384.unr = phi ptr [ poison, %.lr.ph259.preheader381 ], [ %i.he, %.lr.ph259.prol ]
end_hunk_3
begin_hunk_4_@FT_Bitmap_Convert:bb.a
  %i.if = getelementptr inbounds nuw i8, ptr %.0179256, i64 8 ; 2 uses
  %i.ig = add nsw i32 %.0178257, -4               ; 2 uses
  %.not223.3 = icmp eq i32 %i.ig, 0
  br i1 %.not223.3, label %._crit_edge260.loopexit, label %.lr.ph259, !llvm.loop !65

._crit_edge260.loopexit:                          ; preds = %.lr.ph259.prol.loopexit, %.lr.ph259, %middle.block.a
  %.lcssa366 = phi ptr [ %i.gr, %middle.block.a ], [ %.lcssa384.unr, %.lr.ph259.prol.loopexit ], [ %i.ie, %.lr.ph259 ]
  %.lcssa365 = phi ptr [ %i.gq, %middle.block.a ], [ %.lcssa383.unr, %.lr.ph259.prol.loopexit ], [ %i.if, %.lr.ph259 ]
  %.pre322 = load i32, ptr %i.gg, align 4, !tbaa !31
  br label %._crit_edge260

end_hunk_4
begin_hunk_5_@FT_Bitmap_Convert:bb.a
  %i.iq = getelementptr inbounds i8, ptr %.4196263, i64 %i.ip
  %i.ir = add i32 %.0181265, -1                   ; 2 uses
  %.not222 = icmp eq i32 %i.ir, 0
  br i1 %.not222, label %.loopexit238, label %bb.ag, !llvm.loop !66

bb.aj:                                            ; preds = %bb.p
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 24
end_hunk_5
begin_hunk_6_@FT_Bitmap_Convert:bb.a
  %i.kb = getelementptr inbounds nuw i8, ptr %.0174246, i64 1
  %i.kc = add i32 %.0247, -1                      ; 2 uses
  %.not221 = icmp eq i32 %i.kc, 0
  br i1 %.not221, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %ft_gray_for_premultiplied_srgb_bgra.exit
  %.pre320 = load i32, ptr %i.al, align 8, !tbaa !7
end_hunk_6
begin_hunk_7_@FT_Bitmap_Convert:bb.a
  %i.ke = phi i32 [ %.pre320, %._crit_edge.loopexit ], [ %i.jd, %.lr.ph253.split ] ; 2 uses
  %i.kf = add i32 %.0176251, -1                   ; 2 uses
  %.not220 = icmp eq i32 %i.kf, 0
  br i1 %.not220, label %.loopexit238, label %.lr.ph253.splitthread-pre-split, !llvm.loop !68

.loopexit238:                                     ; preds = %._crit_edge, %bb.ai, %.loopexit240, %.prol.loopexit, %.lr.ph291.new, %.loopexit, %.lr.ph253, %bb.aj, %bb.af, %bb.aa, %bb.z, %bb.q, %bb.p
  %i.kg = load i32, ptr %i.a, align 4, !tbaa !3
end_hunk_7
begin_hunk_8_@FT_Bitmap_Blend:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ab = and i64 %2, -64                         ; 4 uses
  %i.ac = and i64 %3, -64                         ; 5 uses
  %i.ad = load i64, ptr %5, align 8, !tbaa !70
  %i.ae = and i64 %i.ad, -64                      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !73
  %i.ah = and i64 %i.ag, -64                      ; 3 uses
  %i.ai = shl i32 %i.aa, 6
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
end_hunk_8
begin_hunk_9_@FT_Bitmap_Blend:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %.0229301, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.0228302, i64 %i.cn
  %i.dr = icmp ult ptr %i.dp, %i.dc
  br i1 %i.dr, label %bb.aa, label %.thread286, !llvm.loop !74

.thread286:                                       ; preds = %bb.aa, %bb.z, %bb.y
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
end_hunk_9
begin_hunk_10_@FT_Bitmap_Blend:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %.0223304, i64 4
  store i8 %i.gr, ptr %i.fz, align 1, !tbaa !23
  %i.gt = icmp ult ptr %i.ff, %i.fe
  br i1 %i.gt, label %.lr.ph305, label %._crit_edge.loopexit, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %.lr.ph305
  %.pre = load i32, ptr %.0212.sroa.phi244, align 8, !tbaa !7
end_hunk_10
begin_hunk_11_@FT_Bitmap_Blend:bb.a
  %i.gy = sext i32 %i.gu to i64
  %i.gz = getelementptr inbounds i8, ptr %.0225307, i64 %i.gy
  %i.ha = icmp ult ptr %i.gx, %i.eh
  br i1 %i.ha, label %bb.af, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %._crit_edge, %bb.ae, %bb.ad
  store i64 %i.bh, ptr %5, align 8, !tbaa !70
  %i.hb = and i64 %i.bm, 4294967232
  %i.hc = add nsw i64 %i.hb, %i.bi
  store i64 %i.hc, ptr %i.af, align 8, !tbaa !73
  %.pre312 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.hd = icmp ne i32 %.pre312, 0
  %i.he = and i1 %i.bw, %i.hd
end_hunk_11
begin_hunk_12_@FT_GlyphSlot_Own_Bitmap:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = icmp eq i32 %i.b, 1651078259
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !90
  %i.h = and i32 %i.g, 1
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.e
end_hunk_12
begin_hunk_13_@FT_GlyphSlot_Own_Bitmap:bb.a
bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.i = load ptr, ptr %0, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.k = call i32 @FT_Bitmap_Copy(ptr noundef %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %1) ; 2 uses
  %.not13.not = icmp eq i32 %i.k, 0
end_hunk_13
begin_hunk_14_@FT_GlyphSlot_Own_Bitmap:bb.a

.thread:                                          ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !20
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !90
  %i.o = or i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !90
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %.thread
end_hunk_14
begin_hunk_15_@llvm.abs.i32
!61 = !{!62}
!62 = distinct !{!62, !60}
!63 = distinct !{!63, !29, !42, !43}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !29, !42}
!66 = distinct !{!66, !29}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !29, !69}
!69 = !{!"llvm.loop.unswitch.partial.disable"}
!70 = !{!71, !72, i64 0}
!71 = !{!"FT_Vector_", !72, i64 0, !72, i64 8}
!72 = !{!"long", !5, i64 0}
!73 = !{!71, !72, i64 8}
!74 = distinct !{!74, !29}
!75 = distinct !{!75, !29}
!76 = distinct !{!76, !29}
!77 = !{!78, !4, i64 144}
!78 = !{!"FT_GlyphSlotRec_", !79, i64 0, !80, i64 8, !81, i64 16, !4, i64 24, !82, i64 32, !83, i64 48, !72, i64 112, !72, i64 120, !71, i64 128, !4, i64 144, !8, i64 152, !4, i64 192, !4, i64 196, !84, i64 200, !4, i64 240, !87, i64 248, !10, i64 256, !72, i64 264, !72, i64 272, !72, i64 280, !10, i64 288, !88, i64 296}
!79 = !{!"p1 _ZTS14FT_LibraryRec_", !10, i64 0}
!80 = !{!"p1 _ZTS11FT_FaceRec_", !10, i64 0}
!81 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !10, i64 0}
!82 = !{!"FT_Generic_", !10, i64 0, !10, i64 8}
!83 = !{!"FT_Glyph_Metrics_", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56}
!84 = !{!"FT_Outline_", !11, i64 0, !11, i64 2, !85, i64 8, !9, i64 16, !86, i64 24, !4, i64 32}
!85 = !{!"p1 _ZTS10FT_Vector_", !10, i64 0}
!86 = !{!"p1 short", !10, i64 0}
!87 = !{!"p1 _ZTS15FT_SubGlyphRec_", !10, i64 0}
!88 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !10, i64 0}
!89 = !{!78, !88, i64 296}
!90 = !{!91, !4, i64 8}
!91 = !{!"FT_Slot_InternalRec_", !92, i64 0, !4, i64 8, !5, i64 12, !93, i64 16, !71, i64 48, !10, i64 64, !4, i64 72}
!92 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !10, i64 0}
!93 = !{!"FT_Matrix_", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!94 = !{!78, !79, i64 0}
end_hunk_15
