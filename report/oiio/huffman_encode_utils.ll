inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@VP8LCreateCompressedHuffmanTree:bb.a
  br i1 %i.v, label %.lr.ph35.preheader.i, label %.lr.ph53

.lr.ph35.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.02232.i.lcssa = phi ptr [ %.059, %.lr.ph.preheader.i ], [ %indvars.iv.i52, %.lr.ph.i ] ; 2 uses
  %.02331.i.lcssa = phi i32 [ %i.q, %.lr.ph.preheader.i ], [ %i.ai, %.lr.ph.i ]
  %i.w = shl nuw nsw i32 %.02331.i.lcssa, 1
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
end_hunk_0
begin_hunk_1_@VP8LCreateCompressedHuffmanTree:bb.a
  br label %CodeRepeatedZeros.exit

.lr.ph53:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i52.pn = phi ptr [ %indvars.iv.i52, %.lr.ph.i ], [ %.059, %.lr.ph.preheader.i ] ; 6 uses
  %.02331.i51 = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ] ; 5 uses
  %indvars.iv.i52 = getelementptr i8, ptr %indvars.iv.i52.pn, i64 2 ; 4 uses
  %i.z = icmp samesign ult i32 %.02331.i51, 11
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph53
  store i8 17, ptr %indvars.iv.i52.pn, align 1, !tbaa !16
  %i.aa = trunc nuw nsw i32 %.02331.i51 to i8
  %i.ab = add nsw i8 %i.aa, -3
  %i.ac = getelementptr inbounds nuw i8, ptr %indvars.iv.i52.pn, i64 1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !18
  br label %CodeRepeatedZeros.exit

bb.f:                                             ; preds = %.lr.ph53
  %i.ad = icmp samesign ult i32 %.02331.i51, 139
  store i8 18, ptr %indvars.iv.i52.pn, align 1, !tbaa !16
  br i1 %i.ad, label %bb.g, label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.ae = trunc nuw i32 %i.u to i8
  %i.af = add i8 %i.ae, -10
  %i.ag = getelementptr inbounds nuw i8, ptr %indvars.iv.i52.pn, i64 1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !18
  br label %CodeRepeatedZeros.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %indvars.iv.i52.pn, i64 1
  store i8 127, ptr %i.ah, align 1, !tbaa !18
  %i.ai = add nsw i32 %.02331.i51, -138           ; 2 uses
  %i.aj = icmp samesign ult i32 %.02331.i51, 141
  br i1 %i.aj, label %.lr.ph35.preheader.i, label %.lr.ph53
end_hunk_1
begin_hunk_2_@VP8LCreateCompressedHuffmanTree:bb.a

CodeRepeatedZeros.exit:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.k, %bb.j, %bb.g, %bb.e, %.lr.ph35.preheader.i, %bb.d
  %.130 = phi i32 [ %.02958, %bb.g ], [ %.02958, %bb.d ], [ %.02958, %.lr.ph35.preheader.i ], [ %.02958, %bb.e ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.i, %middle.block ], [ %i.i, %vec.epilog.middle.block ], [ %i.i, %vec.epilog.scalar.ph ]
  %.1 = phi ptr [ %indvars.iv.i52, %bb.g ], [ %.059, %bb.d ], [ %i.y, %.lr.ph35.preheader.i ], [ %indvars.iv.i52, %bb.e ], [ %.026.i, %bb.j ], [ %i.ca, %bb.k ], [ %i.bl, %middle.block ], [ %i.bq, %vec.epilog.middle.block ], [ %i.bu, %vec.epilog.scalar.ph ] ; 2 uses
  %i.cf = icmp slt i32 %.028.lcssa, %i.a
  br i1 %i.cf, label %bb.b, label %._crit_edge, !llvm.loop !27

end_hunk_2
begin_hunk_3_@VP8LCreateHuffmanTree:bb.a

.lr.ph138.i:                                      ; preds = %bb.g, %.lr.ph138.preheader.i
  %indvar.i = phi i64 [ 0, %.lr.ph138.preheader.i ], [ %indvar.next.i, %bb.g ] ; 5 uses
  %.094136.i = phi i32 [ 0, %.lr.ph138.preheader.i ], [ %.195.i, %bb.g ] ; 5 uses
  %.096134.i = phi i32 [ %i.o, %.lr.ph138.preheader.i ], [ %.197.i, %bb.g ] ; 5 uses
  %5 = getelementptr i8, ptr %2, i64 %indvar.i
  %scevgep.i = getelementptr i8, ptr %5, i64 -1
  %i.q = icmp eq i64 %indvar.i, %i.i              ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.b

end_hunk_3
begin_hunk_4_@VP8LCreateHuffmanTree:bb.a
  br i1 %or.cond148.i, label %.lr.ph129.preheader.i, label %.loopexit121.i

.lr.ph129.preheader.i:                            ; preds = %bb.d, %bb.c
  %6 = add nsw i32 %.094136.i, -1
  %i.x = zext nneg i32 %6 to i64
  %i.y = sub nsw i64 0, %i.x
  %scevgep150.i = getelementptr i8, ptr %scevgep.i, i64 %i.y
  %7 = zext nneg i32 %.094136.i to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep150.i, i8 1, i64 %7, i1 false), !tbaa !13
  br label %.loopexit121.i

.loopexit121.i:                                   ; preds = %.lr.ph129.preheader.i, %bb.d
end_hunk_4
