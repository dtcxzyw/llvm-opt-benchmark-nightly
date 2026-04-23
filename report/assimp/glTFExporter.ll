inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN5o3dgc19TriangleListEncoderItE24ComputeTFANDecompositionEl:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl(ptr noundef nonnull align 8 dereferenceable(556) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 22 uses
  %i.b = alloca [256 x i64], align 16             ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.preheader297, %bb.cu
  %i.ax = phi i64 [ undef, %.preheader297 ], [ %i.cp, %bb.cu ]
  %i.ay = phi i64 [ undef, %.preheader297 ], [ %i.cq, %bb.cu ]
  %.pr274341.a = phi i64 [ undef, %.preheader297 ], [ %.pr274342.a, %bb.cu ]
  %i.az = phi i64 [ undef, %.preheader297 ], [ %i.rq, %bb.cu ]
  %i.ba = phi i64 [ undef, %.preheader297 ], [ %i.rr, %bb.cu ]
end_hunk_1
begin_hunk_2_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
._crit_edge307.loopexit:                          ; preds = %bb.t
  %.pre334 = load i64, ptr %i.b, align 16         ; 8 uses
  %.pre335 = load i64, ptr %i.an, align 8         ; 2 uses
  %.pre336 = load i64, ptr %i.a, align 16         ; 2 uses
  br label %._crit_edge307

._crit_edge307:                                   ; preds = %._crit_edge307.loopexit, %_ZNK5o3dgc12TriangleFans5BeginEl.exit
  %i.cp = phi i64 [ %i.ax, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre334, %._crit_edge307.loopexit ] ; 9 uses
  %i.cq = phi i64 [ %i.ay, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre335, %._crit_edge307.loopexit ] ; 4 uses
  %.pr274.a = phi i64 [ %.pr274341.a, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre334, %._crit_edge307.loopexit ] ; 8 uses
  %i.cr = phi i64 [ %i.az, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre334, %._crit_edge307.loopexit ] ; 8 uses
  %i.cs = phi i64 [ %i.ba, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre334, %._crit_edge307.loopexit ] ; 7 uses
  %.pr = phi i64 [ %.pr337, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre334, %._crit_edge307.loopexit ] ; 7 uses
  %i.ct = phi i64 [ %i.bb, %_ZNK5o3dgc12TriangleFans5BeginEl.exit ], [ %.pre334, %._crit_edge307.loopexit ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a

.thread262:                                       ; preds = %.lr.ph.i128, %.thread256, %bb.as
  %.not.i140 = icmp eq i64 %i.cs, -1
  %.pre344 = load i64, ptr %i.a, align 16         ; 2 uses
  br i1 %.not.i140, label %bb.ay, label %.thread267

bb.ay:                                            ; preds = %.thread262
  %.not14.i = icmp eq i64 %.pre344, 1
  br i1 %.not14.i, label %.lr.ph.i142, label %.thread270

bb.az:                                            ; preds = %.lr.ph.i142
end_hunk_3
begin_hunk_4_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.cu

.thread267:                                       ; preds = %.lr.ph.i142, %.thread262
  %i.kr = phi i64 [ %i.cs, %.thread262 ], [ %i.cr, %.lr.ph.i142 ]
  %.not.i153 = icmp eq i64 %i.kr, -2
  %.not14.i155 = icmp eq i64 %.pre344, 1
  %or.cond281 = select i1 %.not.i153, i1 %.not14.i155, i1 false
  br i1 %or.cond281, label %.lr.ph.i156, label %.thread270

end_hunk_4
begin_hunk_5_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.cu

.thread265:                                       ; preds = %.lr.ph.i156, %_ZN5o3dgc7IsCase1EllPKlS1_.exit.thread
  %i.lk = phi i64 [ %i.cs, %_ZN5o3dgc7IsCase1EllPKlS1_.exit.thread ], [ -2, %.lr.ph.i156 ]
  %.pr339 = phi i64 [ %.pr, %_ZN5o3dgc7IsCase1EllPKlS1_.exit.thread ], [ -2, %.lr.ph.i156 ]
  %i.ll = phi i64 [ %i.ct, %_ZN5o3dgc7IsCase1EllPKlS1_.exit.thread ], [ -2, %.lr.ph.i156 ]
end_hunk_5
begin_hunk_6_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.cu

.thread270:                                       ; preds = %.lr.ph.i170, %bb.ay, %.thread267, %.thread265
  %.not.i180 = icmp eq i64 %.pr274.a, -2
  %or.cond283 = select i1 %or.cond.i.not, i1 %.not.i180, i1 false
  %.not17.i182 = icmp eq i64 %i.cq, -1
  %or.cond285 = select i1 %or.cond283, i1 %.not17.i182, i1 false
  %2 = load i64, ptr %i.a, align 16               ; 4 uses
  %.not18.i183 = icmp eq i64 %2, 1                ; 2 uses
  %or.cond286 = select i1 %or.cond285, i1 %.not18.i183, i1 false
  br i1 %or.cond286, label %bb.bo, label %.loopexit

end_hunk_6
begin_hunk_7_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.cu

.loopexit:                                        ; preds = %.lr.ph.i186, %.thread270, %bb.bo
  %.not.i198 = icmp ne i64 %i.cp, -2
  %or.cond288.not = select i1 %or.cond.i91, i1 true, i1 %.not.i198
  br i1 %or.cond288.not, label %.preheader291, label %bb.bu

end_hunk_7
begin_hunk_8_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  %i.ne = getelementptr [8 x i8], ptr %i.b, i64 %.075.lcssa
  %i.nf = getelementptr i8, ptr %i.ne, i64 -8
  %i.ng = load i64, ptr %i.nf, align 8
  %.not12.i201 = icmp eq i64 %i.ng, -1
  %or.cond289 = select i1 %.not12.i201, i1 %.not18.i183, i1 false
  br i1 %or.cond289, label %bb.bv, label %.lr.ph319.preheader

bb.bv:                                            ; preds = %bb.bu
end_hunk_8
begin_hunk_9_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br i1 %i.nm, label %.lr.ph319.preheader, label %.preheader

.lr.ph319.preheader:                              ; preds = %bb.bv, %bb.bu, %.preheader291
  %i.nn = phi i64 [ %2, %.preheader291 ], [ 1, %bb.bv ], [ %2, %bb.bu ]
  br label %.lr.ph319

.preheader292:                                    ; preds = %_ZN5o3dgc22CompressedTriangleFans13PushOperationEl.exit209, %.preheader293
end_hunk_9
begin_hunk_10_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.cu

.preheader:                                       ; preds = %_ZN5o3dgc22CompressedTriangleFans13PushOperationEl.exit230, %.preheader291
  %i.pp = phi i64 [ %2, %.preheader291 ], [ %i.nn, %_ZN5o3dgc22CompressedTriangleFans13PushOperationEl.exit230 ] ; 2 uses
  %i.pq = icmp sgt i64 %.075.lcssa, 0
  br i1 %i.pq, label %.lr.ph321, label %._crit_edge322

end_hunk_10
begin_hunk_11_@_ZN5o3dgc19TriangleListEncoderItE12CompressTFANEl:bb.a
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111
  %.pr274342.a = phi i64 [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ %.pr274.a, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rq = phi i64 [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ %i.cr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rr = phi i64 [ %i.cs, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %i.cs, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.lk, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %i.cs, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ %i.cs, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %.pr338 = phi i64 [ %.pr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %.pr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %.pr339, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %.pr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ %.pr, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rs = phi i64 [ %i.ct, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.ll, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ %i.ct, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rt = phi i64 [ %i.cu, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %i.cu, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.lm, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.pp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %i.cu, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.ru = phi i64 [ %i.cv, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.ln, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rv = phi i64 [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %i.ig, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.lo, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.pp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %i.ig, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ 1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rw = phi i64 [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ %i.cx, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ %i.cx, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.cx, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ %i.cq, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cq, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ %i.cx, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ %i.cx, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ %i.cx, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.rx = phi i64 [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit123 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit151 ], [ %i.ln, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit178 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit223 ], [ %i.cp, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit244 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit196 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit166 ], [ -2, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit138 ], [ -1, %_ZN5o3dgc22CompressedTriangleFans10PushConfigEl.exit111 ]
  %i.ry = add nuw nsw i64 %.071323, 1             ; 2 uses
  %.not = icmp eq i64 %i.ry, %i.w
  br i1 %.not, label %.loopexit298, label %bb.f, !llvm.loop !1037
end_hunk_11
