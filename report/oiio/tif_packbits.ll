begin_hunk_0_@PackBitsEncode:bb.a

.outer.split.us:                                  ; preds = %.outer, %.outer.split.us.backedge
  %.199.us = phi ptr [ %.3101.us, %.outer.split.us.backedge ], [ %.199.ph, %.outer ] ; 4 uses
  %.192.us = phi ptr [ %.394.us, %.outer.split.us.backedge ], [ %.192.ph, %.outer ] ; 8 uses
  %.1.us = phi i32 [ %.1.us.be, %.outer.split.us.backedge ], [ %.1.ph, %.outer ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.199.us, i64 2
  %.not.us = icmp ult ptr %i.q, %i.g
end_hunk_0
begin_hunk_1_@PackBitsEncode:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ag = ptrtoint ptr %.199.us to i64
  %i.ah = sub i64 %i.ag, %i.aa                    ; 11 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !34  ; 8 uses
  %i.aj = icmp sgt i64 %i.ah, 0
  br i1 %i.aj, label %.lr.ph146.us.preheader.a, label %._crit_edge.us

.lr.ph146.us.preheader.a:                         ; preds = %bb.h
  %i.ak = ptrtoaddr ptr %i.ai to i64
  %min.iters.check = icmp ult i64 %i.ah, 4
  %i.al = sub i64 %i.ak, %i.aa
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond296 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond296, label %.lr.ph146.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph146.us.preheader.a
  %min.iters.check273 = icmp ult i64 %i.ah, 32
  br i1 %min.iters.check273, label %.lr.ph146.us.preheader298, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ah, 28
  %n.vec = and i64 %i.ah, 9223372036854775776     ; 5 uses
  %i.am = and i64 %i.ah, 31
  %i.an = getelementptr i8, ptr %.192.us, i64 %n.vec
  %i.ao = getelementptr i8, ptr %i.ai, i64 %n.vec ; 2 uses
end_hunk_1
begin_hunk_2_@PackBitsEncode:bb.a
  store <16 x i8> %wide.load274, ptr %i.aq, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.loopexit, label %middle.block.a

middle.block.a:                                   ; preds = %middle.block
  %cmp.n.a = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n.a, label %.lr.ph146.us.preheader, label %.lr.ph146.us.preheader298, !prof !46

.lr.ph146.us.preheader298:                        ; preds = %vector.main.loop.iter.check, %middle.block.a
  %.088145.us.ph.a = phi i64 [ %n.vec, %middle.block.a ], [ 0, %vector.main.loop.iter.check ]
  %n.vec279 = and i64 %i.ah, 9223372036854775804  ; 4 uses
  %4 = and i64 %i.ah, 3
  %5 = getelementptr i8, ptr %.192.us, i64 %n.vec279
  %6 = getelementptr i8, ptr %i.ai, i64 %n.vec279 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %.lr.ph146.us.preheader298
  %index280 = phi i64 [ %.088145.us.ph.a, %.lr.ph146.us.preheader298 ], [ %index.next284, %vec.epilog.vector.body ] ; 3 uses
  %next.gep281 = getelementptr i8, ptr %.192.us, i64 %index280
  %next.gep282 = getelementptr i8, ptr %i.ai, i64 %index280
  %wide.load283 = load <4 x i8>, ptr %next.gep281, align 1, !tbaa !36
  store <4 x i8> %wide.load283, ptr %next.gep282, align 1, !tbaa !36
  %index.next284 = add nuw i64 %index280, 4       ; 2 uses
  %7 = icmp eq i64 %index.next284, %n.vec279
  br i1 %7, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n285 = icmp eq i64 %i.ah, %n.vec279
  br i1 %cmp.n285, label %._crit_edge.us.loopexit, label %.lr.ph146.us.preheader

.lr.ph146.us.preheader:                           ; preds = %.lr.ph146.us.preheader.a, %middle.block.a, %vec.epilog.middle.block
  %.088145.us.ph = phi i64 [ %i.ah, %.lr.ph146.us.preheader.a ], [ %i.am, %middle.block.a ], [ %4, %vec.epilog.middle.block ]
  %.293144.us.ph = phi ptr [ %.192.us, %.lr.ph146.us.preheader.a ], [ %i.an, %middle.block.a ], [ %5, %vec.epilog.middle.block ]
  %.2100143.us.ph = phi ptr [ %i.ai, %.lr.ph146.us.preheader.a ], [ %i.ao, %middle.block.a ], [ %6, %vec.epilog.middle.block ]
  br label %.lr.ph146.us

._crit_edge.us.loopexit:                          ; preds = %.lr.ph146.us, %vec.epilog.middle.block, %middle.block
  %.lcssa251 = phi ptr [ %6, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ %i.av, %.lr.ph146.us ]
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge.us

.lr.ph146.us:                                     ; preds = %.lr.ph146.us.preheader, %.lr.ph146.us
  %.088145.us = phi i64 [ %i.as, %.lr.ph146.us ], [ %.088145.us.ph, %.lr.ph146.us.preheader ] ; 2 uses
  %.293144.us = phi ptr [ %i.at, %.lr.ph146.us ], [ %.293144.us.ph, %.lr.ph146.us.preheader ] ; 2 uses
  %.2100143.us = phi ptr [ %i.av, %.lr.ph146.us ], [ %.2100143.us.ph, %.lr.ph146.us.preheader ] ; 2 uses
  %i.as = add nsw i64 %.088145.us, -1
  %i.at = getelementptr inbounds nuw i8, ptr %.293144.us, i64 1
  %i.au = load i8, ptr %.293144.us, align 1, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %.2100143.us, i64 1 ; 2 uses
  store i8 %i.au, ptr %.2100143.us, align 1, !tbaa !36
  %i.aw = icmp samesign ugt i64 %.088145.us, 1
  br i1 %i.aw, label %.lr.ph146.us, label %._crit_edge.us.loopexit, !llvm.loop !48

._crit_edge.us:                                   ; preds = %bb.h, %._crit_edge.us.loopexit, %bb.f, %.outer.split.us
  %.3101.us = phi ptr [ %.199.us, %.outer.split.us ], [ %i.z, %bb.f ], [ %i.ai, %bb.h ], [ %.lcssa251, %._crit_edge.us.loopexit ] ; 6 uses
end_hunk_2
begin_hunk_3_@PackBitsEncode:bb.a

.outer.split:                                     ; preds = %.outer, %._crit_edge
  %.199 = phi ptr [ %.3101, %._crit_edge ], [ %.199.ph, %.outer ] ; 4 uses
  %.192 = phi ptr [ %.394, %._crit_edge ], [ %.192.ph, %.outer ] ; 8 uses
  %.1 = phi i32 [ 2, %._crit_edge ], [ %.1.ph, %.outer ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.199, i64 2
  %.not = icmp ult ptr %i.bg, %i.g
end_hunk_3
begin_hunk_4_@PackBitsEncode:bb.a

bb.n:                                             ; preds = %bb.m
  %i.bp = ptrtoint ptr %.199 to i64
  %i.bq = sub i64 %i.bp, %i.bj                    ; 11 uses
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !34  ; 8 uses
  %i.bs = icmp sgt i64 %i.bq, 0
  br i1 %i.bs, label %.lr.ph146.preheader.a, label %._crit_edge

.lr.ph146.preheader.a:                            ; preds = %bb.n
  %i.bt = ptrtoaddr ptr %i.br to i64
  %min.iters.check280 = icmp ult i64 %i.bq, 4
  %i.bu = sub i64 %i.bt, %i.bj
  %diff.check278 = icmp ult i64 %i.bu, 32
  %or.cond297 = select i1 %min.iters.check280, i1 true, i1 %diff.check278
  br i1 %or.cond297, label %.lr.ph146.preheader, label %vector.main.loop.iter.check292

vector.main.loop.iter.check292:                   ; preds = %.lr.ph146.preheader.a
  %min.iters.check293 = icmp ult i64 %i.bq, 32
  br i1 %min.iters.check293, label %.lr.ph146.preheader299, label %vector.ph281

vector.ph281:                                     ; preds = %vector.main.loop.iter.check292
  %n.mod.vf295 = and i64 %i.bq, 28
  %n.vec283 = and i64 %i.bq, 9223372036854775776  ; 5 uses
  %i.bv = and i64 %i.bq, 31
  %i.bw = getelementptr i8, ptr %.192, i64 %n.vec283
  %i.bx = getelementptr i8, ptr %i.br, i64 %n.vec283 ; 2 uses
end_hunk_4
begin_hunk_5_@PackBitsEncode:bb.a
  store <16 x i8> %wide.load289, ptr %i.bz, align 1, !tbaa !36
  %index.next290 = add nuw i64 %index285, 32      ; 2 uses
  %i.ca = icmp eq i64 %index.next290, %n.vec283
  br i1 %i.ca, label %middle.block304, label %vector.body284, !llvm.loop !49

middle.block304:                                  ; preds = %vector.body284
  %cmp.n305 = icmp eq i64 %i.bq, %n.vec283
  br i1 %cmp.n305, label %._crit_edge.loopexit, label %middle.block291

middle.block291:                                  ; preds = %middle.block304
  %cmp.n292 = icmp eq i64 %n.mod.vf295, 0
  br i1 %cmp.n292, label %.lr.ph146.preheader, label %.lr.ph146.preheader299, !prof !46

.lr.ph146.preheader299:                           ; preds = %vector.main.loop.iter.check292, %middle.block291
  %.088145.ph.a = phi i64 [ %n.vec283, %middle.block291 ], [ 0, %vector.main.loop.iter.check292 ]
  %n.vec315 = and i64 %i.bq, 9223372036854775804  ; 4 uses
  %8 = and i64 %i.bq, 3
  %9 = getelementptr i8, ptr %.192, i64 %n.vec315
  %10 = getelementptr i8, ptr %i.br, i64 %n.vec315 ; 2 uses
  br label %vec.epilog.vector.body316

vec.epilog.vector.body316:                        ; preds = %vec.epilog.vector.body316, %.lr.ph146.preheader299
  %index317 = phi i64 [ %.088145.ph.a, %.lr.ph146.preheader299 ], [ %index.next321, %vec.epilog.vector.body316 ] ; 3 uses
  %next.gep318 = getelementptr i8, ptr %.192, i64 %index317
  %next.gep319 = getelementptr i8, ptr %i.br, i64 %index317
  %wide.load320 = load <4 x i8>, ptr %next.gep318, align 1, !tbaa !36
  store <4 x i8> %wide.load320, ptr %next.gep319, align 1, !tbaa !36
  %index.next321 = add nuw i64 %index317, 4       ; 2 uses
  %11 = icmp eq i64 %index.next321, %n.vec315
  br i1 %11, label %vec.epilog.middle.block322, label %vec.epilog.vector.body316, !llvm.loop !50

vec.epilog.middle.block322:                       ; preds = %vec.epilog.vector.body316
  %cmp.n323 = icmp eq i64 %i.bq, %n.vec315
  br i1 %cmp.n323, label %._crit_edge.loopexit, label %.lr.ph146.preheader

.lr.ph146.preheader:                              ; preds = %.lr.ph146.preheader.a, %middle.block291, %vec.epilog.middle.block322
  %.088145.ph = phi i64 [ %i.bq, %.lr.ph146.preheader.a ], [ %i.bv, %middle.block291 ], [ %8, %vec.epilog.middle.block322 ]
  %.293144.ph = phi ptr [ %.192, %.lr.ph146.preheader.a ], [ %i.bw, %middle.block291 ], [ %9, %vec.epilog.middle.block322 ]
  %.2100143.ph = phi ptr [ %i.br, %.lr.ph146.preheader.a ], [ %i.bx, %middle.block291 ], [ %10, %vec.epilog.middle.block322 ]
  br label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %.lr.ph146
  %.088145 = phi i64 [ %i.cb, %.lr.ph146 ], [ %.088145.ph, %.lr.ph146.preheader ] ; 2 uses
  %.293144 = phi ptr [ %i.cc, %.lr.ph146 ], [ %.293144.ph, %.lr.ph146.preheader ] ; 2 uses
  %.2100143 = phi ptr [ %i.ce, %.lr.ph146 ], [ %.2100143.ph, %.lr.ph146.preheader ] ; 2 uses
  %i.cb = add nsw i64 %.088145, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %.293144, i64 1
  %i.cd = load i8, ptr %.293144, align 1, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.2100143, i64 1 ; 2 uses
  store i8 %i.cd, ptr %.2100143, align 1, !tbaa !36
  %i.cf = icmp samesign ugt i64 %.088145, 1
  br i1 %i.cf, label %.lr.ph146, label %._crit_edge.loopexit, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph146, %vec.epilog.middle.block322, %middle.block304
  %.lcssa = phi ptr [ %10, %vec.epilog.middle.block322 ], [ %i.bx, %middle.block304 ], [ %i.ce, %.lr.ph146 ]
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge

end_hunk_5
begin_hunk_6_@llvm.smin.i64
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"branch_weights", i32 4, i32 28}
!47 = distinct !{!47, !44, !45}
!48 = distinct !{!48, !44}
!49 = distinct !{!49, !44, !45}
!50 = distinct !{!50, !44, !45}
!51 = distinct !{!51, !44}
end_hunk_6
