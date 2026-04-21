inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@internal_rle_compress:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.063 = phi ptr [ %2, %bb.a ], [ %.265, %.loopexit ] ; 10 uses
  %.pn = phi ptr [ %2, %bb.a ], [ %.362, %.loopexit ] ; 3 uses
  %.057 = phi i64 [ 0, %bb.a ], [ %.2, %.loopexit ] ; 6 uses
  %.063109 = ptrtoint ptr %.063 to i64            ; 3 uses
end_hunk_0
begin_hunk_1_@internal_rle_compress:bb.a

.critedge2:                                       ; preds = %.critedge2.loopexit, %.preheader
  %.261.lcssa108.pre-phi = phi i64 [ %.pre, %.critedge2.loopexit ], [ %.160.lcssa103120, %.preheader ] ; 2 uses
  %.261.lcssa = phi ptr [ %.261.lcssa.ph, %.critedge2.loopexit ], [ %.160.lcssa119, %.preheader ] ; 4 uses
  %.1.in.lcssa = phi i8 [ %.1.in.lcssa.ph, %.critedge2.loopexit ], [ %.056.lcssa118, %.preheader ]
  %i.ab = xor i8 %.1.in.lcssa, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.057
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !7
  %.15894 = add i64 %.057, 1                      ; 6 uses
  %i.ad = icmp ult ptr %.063, %.261.lcssa
  br i1 %i.ad, label %.lr.ph97.preheader.a, label %.loopexit

.lr.ph97.preheader.a:                             ; preds = %.critedge2
  %i.ae = add i64 %.15894, %.261.lcssa108.pre-phi
  %i.af = sub i64 %i.ae, %.063109                 ; 3 uses
  %i.ag = sub i64 %.261.lcssa108.pre-phi, %.063109 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check, label %.lr.ph97.preheader123, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader.a
  %i.ah = add i64 %i.e, %.057
  %i.ai = sub i64 %i.ah, %.063109
  %diff.check = icmp ult i64 %i.ai, 32
  br i1 %diff.check, label %.lr.ph97.preheader123, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -32                     ; 4 uses
  %i.aj = add i64 %.15894, %n.vec
  %i.ak = getelementptr i8, ptr %.063, i64 %n.vec ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 %.15894
end_hunk_1
begin_hunk_2_@internal_rle_compress:bb.a
  store <16 x i8> %wide.load121, ptr %i.ao, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block.a, label %vector.body, !llvm.loop !11

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n.a, label %.loopexit, label %.lr.ph97.preheader123

.lr.ph97.preheader123:                            ; preds = %vector.memcheck, %.lr.ph97.preheader.a, %middle.block.a
  %.15896.ph = phi i64 [ %.15894, %vector.memcheck ], [ %.15894, %.lr.ph97.preheader.a ], [ %i.aj, %middle.block.a ]
  %.16495.ph = phi ptr [ %.063, %vector.memcheck ], [ %.063, %.lr.ph97.preheader.a ], [ %i.ak, %middle.block.a ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader123, %.lr.ph97
end_hunk_2
begin_hunk_3_@internal_rle_compress:bb.a
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !7
  %.158 = add i64 %.15896, 1                      ; 2 uses
  %exitcond110.not = icmp eq i64 %.158, %i.af
  br i1 %exitcond110.not, label %.loopexit, label %.lr.ph97, !llvm.loop !14

.loopexit:                                        ; preds = %.lr.ph97, %middle.block.a, %.critedge2, %bb.e
  %.265 = phi ptr [ %.160.lcssa, %bb.e ], [ %.063, %.critedge2 ], [ %i.ak, %middle.block.a ], [ %i.aq, %.lr.ph97 ]
  %.362 = phi ptr [ %.160.lcssa, %bb.e ], [ %.261.lcssa, %.critedge2 ], [ %.261.lcssa, %middle.block.a ], [ %.261.lcssa, %.lr.ph97 ]
  %.2 = phi i64 [ %i.s, %bb.e ], [ %.15894, %.critedge2 ], [ %i.af, %middle.block.a ], [ %i.af, %.lr.ph97 ] ; 3 uses
  %.not72 = icmp ult i64 %.2, %1
  br i1 %.not72, label %bb.b, label %bb.k

end_hunk_3
begin_hunk_4_@internal_exr_apply_rle
define hidden i32 @internal_exr_apply_rle(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.b) #7 ; 2 uses
end_hunk_4
begin_hunk_5_@internal_exr_apply_rle:bb.a
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !23   ; 6 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.b ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %reorder_and_predict.exit, label %.lr.ph.preheader.i
end_hunk_5
begin_hunk_6_@internal_exr_apply_rle:bb.a
  %.128.i = phi ptr [ %i.t, %bb.c ], [ %.02732.i, %.lr.ph.i ]
  %.126.i = phi ptr [ %i.r, %bb.c ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.u = icmp ult ptr %.126.i, %i.j
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b
end_hunk_6
begin_hunk_7_@internal_exr_apply_rle:bb.a
  store <16 x i8> %i.ai, ptr %i.ac, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <16 x i8> %wide.load40, i64 15
end_hunk_7
begin_hunk_8_@internal_exr_apply_rle:bb.a
  store i8 %i.am, ptr %.137.i, align 1, !tbaa !7
  %.1.i = getelementptr inbounds nuw i8, ptr %.137.i, i64 1 ; 2 uses
  %i.an = icmp ult ptr %.1.i, %i.v
  br i1 %i.an, label %.lr.ph39.i, label %reorder_and_predict.exit, !llvm.loop !27

reorder_and_predict.exit:                         ; preds = %.lr.ph39.i, %middle.block, %bb.b, %._crit_edge.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28 ; 5 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !23  ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.b ; 5 uses
  %i.aw = add i64 %i.b, %i.au                     ; 3 uses
end_hunk_8
begin_hunk_9_@internal_exr_apply_rle:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.i, %reorder_and_predict.exit
  %.063.i = phi ptr [ %i.at, %reorder_and_predict.exit ], [ %.265.i, %.loopexit.i ] ; 10 uses
  %.pn.i = phi ptr [ %i.at, %reorder_and_predict.exit ], [ %.362.i, %.loopexit.i ] ; 3 uses
  %.057.i = phi i64 [ 0, %reorder_and_predict.exit ], [ %.2.i, %.loopexit.i ] ; 6 uses
  %.063109.i = ptrtoint ptr %.063.i to i64        ; 3 uses
end_hunk_9
begin_hunk_10_@internal_exr_apply_rle:bb.a

.critedge2.i:                                     ; preds = %.critedge2.loopexit.i, %.preheader.i
  %.261.lcssa108.pre-phi.i = phi i64 [ %.pre.i, %.critedge2.loopexit.i ], [ %.160.lcssa103120.i, %.preheader.i ] ; 2 uses
  %.261.lcssa.i = phi ptr [ %.261.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.160.lcssa119.i, %.preheader.i ] ; 4 uses
  %.1.in.lcssa.i = phi i8 [ %.1.in.lcssa.ph.i, %.critedge2.loopexit.i ], [ %.056.lcssa118.i, %.preheader.i ]
  %i.by = xor i8 %.1.in.lcssa.i, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.057.i
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !7
  %.15894.i = add i64 %.057.i, 1                  ; 6 uses
  %i.ca = icmp ult ptr %.063.i, %.261.lcssa.i
  br i1 %i.ca, label %.lr.ph97.preheader.i, label %.loopexit.i

.lr.ph97.preheader.i:                             ; preds = %.critedge2.i
  %i.cb = sub i64 %.15894.i, %.063109.i
  %i.cc = add i64 %i.cb, %.261.lcssa108.pre-phi.i ; 3 uses
  %i.cd = sub i64 %.261.lcssa108.pre-phi.i, %.063109.i ; 3 uses
  %min.iters.check42 = icmp ult i64 %i.cd, 32
  br i1 %min.iters.check42, label %.lr.ph97.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph97.preheader.i
  %i.ce = add i64 %i.ay, %.057.i
  %i.cf = sub i64 %i.ce, %.063109.i
  %diff.check = icmp ult i64 %i.cf, 32
  br i1 %diff.check, label %.lr.ph97.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %vector.memcheck
  %n.vec45 = and i64 %i.cd, -32                   ; 4 uses
  %i.cg = add i64 %.15894.i, %n.vec45
  %i.ch = getelementptr i8, ptr %.063.i, i64 %n.vec45 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ap, i64 %.15894.i
end_hunk_10
begin_hunk_11_@internal_exr_apply_rle:bb.a
  store <16 x i8> %wide.load50, ptr %i.cl, align 1, !tbaa !7
  %index.next51 = add nuw i64 %index47, 32        ; 2 uses
  %i.cm = icmp eq i64 %index.next51, %n.vec45
  br i1 %i.cm, label %middle.block52, label %vector.body46, !llvm.loop !30

middle.block52:                                   ; preds = %vector.body46
  %cmp.n53 = icmp eq i64 %i.cd, %n.vec45
  br i1 %cmp.n53, label %.loopexit.i, label %.lr.ph97.i.preheader

.lr.ph97.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph97.preheader.i, %middle.block52
  %.15896.i.ph = phi i64 [ %.15894.i, %vector.memcheck ], [ %.15894.i, %.lr.ph97.preheader.i ], [ %i.cg, %middle.block52 ]
  %.16495.i.ph = phi ptr [ %.063.i, %vector.memcheck ], [ %.063.i, %.lr.ph97.preheader.i ], [ %i.ch, %middle.block52 ]
  br label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %.lr.ph97.i.preheader, %.lr.ph97.i
end_hunk_11
begin_hunk_12_@internal_exr_apply_rle:bb.a
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7
  %.158.i = add i64 %.15896.i, 1                  ; 2 uses
  %exitcond110.not.i = icmp eq i64 %.158.i, %i.cc
  br i1 %exitcond110.not.i, label %.loopexit.i, label %.lr.ph97.i, !llvm.loop !31

.loopexit.i:                                      ; preds = %.lr.ph97.i, %middle.block52, %.critedge2.i, %bb.h
  %.265.i = phi ptr [ %.160.lcssa.i, %bb.h ], [ %.063.i, %.critedge2.i ], [ %i.ch, %middle.block52 ], [ %i.cn, %.lr.ph97.i ]
  %.362.i = phi ptr [ %.160.lcssa.i, %bb.h ], [ %.261.lcssa.i, %.critedge2.i ], [ %.261.lcssa.i, %middle.block52 ], [ %.261.lcssa.i, %.lr.ph97.i ]
  %.2.i = phi i64 [ %i.bp, %bb.h ], [ %.15894.i, %.critedge2.i ], [ %i.cc, %middle.block52 ], [ %i.cc, %.lr.ph97.i ] ; 3 uses
  %.not72.i = icmp ult i64 %.2.i, %i.as
  br i1 %.not72.i, label %bb.e, label %internal_rle_compress.exit

end_hunk_12
begin_hunk_13_@internal_exr_apply_rle:bb.a
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %internal_rle_compress.exit
  %i.cq = load ptr, ptr %i.ao, align 8, !tbaa !28
  %i.cr = load ptr, ptr %i.h, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cr, i64 %i.b, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %internal_rle_compress.exit
  %.022 = phi i64 [ %i.b, %bb.n ], [ %.3.i, %internal_rle_compress.exit ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.022, ptr %i.cs, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
end_hunk_13
begin_hunk_14_@internal_rle_decompress:bb.a
  %.349 = phi i64 [ %i.i, %bb.d ], [ %i.p, %bb.g ] ; 2 uses
  %.357 = getelementptr inbounds nuw i8, ptr %.05481, i64 %.pn
  %i.t = icmp ult i64 %.353, %3
  br i1 %i.t, label %.lr.ph, label %.thread, !llvm.loop !33

.thread:                                          ; preds = %bb.h, %bb.b, %bb.c, %bb.e, %bb.f, %bb.a
  %.4 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.f ], [ %.349, %bb.h ]
end_hunk_14
begin_hunk_15_@internal_exr_undo_rle:bb.a
  br i1 %.not, label %bb.c, label %internal_rle_decompress.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
end_hunk_15
begin_hunk_16_@internal_exr_undo_rle:bb.a
  %.349.i = phi i64 [ %i.o, %bb.f ], [ %i.v, %bb.i ] ; 7 uses
  %.357.i = getelementptr inbounds nuw i8, ptr %.05481.i, i64 %.pn.i
  %i.z = icmp ult i64 %.353.i, %2
  br i1 %i.z, label %.lr.ph.i, label %internal_rle_decompress.exit, !llvm.loop !33

internal_rle_decompress.exit:                     ; preds = %bb.j
  %i.aa = icmp eq i64 %.349.i, 0
  br i1 %i.aa, label %internal_rle_decompress.exit.thread, label %bb.k

bb.k:                                             ; preds = %internal_rle_decompress.exit
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !34  ; 5 uses
  %i.ac = add i64 %.349.i, 1
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
end_hunk_16
begin_hunk_17_@internal_exr_undo_rle:bb.a
  store i8 %i.aj, ptr %.033.i, align 1, !tbaa !7
  %.0.i = getelementptr inbounds nuw i8, ptr %.033.i, i64 1 ; 2 uses
  %i.ak = icmp ult ptr %.0.i, %i.af
  br i1 %i.ak, label %.lr.ph.i27, label %.lr.ph38.preheader.i, !llvm.loop !36

.lr.ph38.preheader.i:                             ; preds = %.lr.ph.i27, %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %.349.i ; 2 uses
end_hunk_17
begin_hunk_18_@internal_exr_undo_rle:bb.a
  %.127.i = phi ptr [ %i.aq, %bb.l ], [ %.02634.i, %.lr.ph38.i ]
  %.125.i = phi ptr [ %i.as, %bb.l ], [ %i.ao, %.lr.ph38.i ] ; 2 uses
  %i.at = icmp ult ptr %.125.i, %i.al
  br i1 %i.at, label %.lr.ph38.i, label %internal_rle_decompress.exit.thread.sink.split, !llvm.loop !37

internal_rle_decompress.exit.thread.sink.split:   ; preds = %bb.m, %bb.a
  %.349.i.lcssa.sink = phi i64 [ 0, %bb.a ], [ %.349.i, %bb.m ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.349.i.lcssa.sink, ptr %i.au, align 8, !tbaa !38
  br label %internal_rle_decompress.exit.thread

internal_rle_decompress.exit.thread:              ; preds = %bb.h, %bb.e, %bb.g, %bb.d, %internal_rle_decompress.exit.thread.sink.split, %internal_rle_decompress.exit, %bb.b
end_hunk_18
begin_hunk_19_@llvm.umax.i64
!11 = distinct !{!11, !9, !12, !13}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !9, !12}
!15 = !{!16, !17, i64 112}
!16 = !{!"_exr_encode_pipeline", !17, i64 0, !18, i64 8, !19, i64 16, !19, i64 18, !4, i64 20, !20, i64 24, !21, i64 32, !18, i64 96, !18, i64 104, !17, i64 112, !17, i64 120, !22, i64 128, !17, i64 136, !18, i64 144, !17, i64 152, !17, i64 160, !18, i64 168, !17, i64 176, !17, i64 184, !18, i64 192, !17, i64 200, !18, i64 208, !17, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !5, i64 272}
!17 = !{!"long", !5, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"short", !5, i64 0}
!20 = !{!"p1 _ZTS19_priv_exr_context_t", !18, i64 0}
!21 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!22 = !{!"p1 int", !18, i64 0}
!23 = !{!16, !18, i64 192}
!24 = !{!16, !18, i64 104}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9, !12, !13}
!27 = distinct !{!27, !9, !13, !12}
!28 = !{!16, !18, i64 168}
!29 = !{!16, !17, i64 184}
!30 = distinct !{!30, !9, !12, !13}
!31 = distinct !{!31, !9, !12}
!32 = !{!16, !17, i64 176}
!33 = distinct !{!33, !9}
!34 = !{!35, !18, i64 184}
!35 = !{!"_exr_decode_pipeline", !17, i64 0, !18, i64 8, !19, i64 16, !19, i64 18, !4, i64 20, !20, i64 24, !21, i64 32, !4, i64 96, !4, i64 100, !17, i64 104, !18, i64 112, !18, i64 120, !17, i64 128, !18, i64 136, !17, i64 144, !18, i64 152, !17, i64 160, !22, i64 168, !17, i64 176, !18, i64 184, !17, i64 192, !18, i64 200, !17, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !5, i64 264}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = !{!35, !17, i64 104}
end_hunk_19
