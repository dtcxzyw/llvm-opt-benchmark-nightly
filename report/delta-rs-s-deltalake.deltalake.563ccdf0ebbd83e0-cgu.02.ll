begin_hunk_0
          cleanup
  br label %.body118.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph1796
  %lpad.loopexit270.i = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i
end_hunk_0
begin_hunk_1
  br label %.body118.i

92:                                               ; preds = %76
  %.sroa.016.sroa.0.0.copyload.i = load i64, ptr %8, align 8, !noalias !15032 ; 2 uses
  %.sroa.016.sroa.4.0.copyload.i = load i64, ptr %.sroa.016.sroa.4.0..sroa_idx.i, align 8, !noalias !15032
  %.sroa.016.sroa.6.0.copyload.i = load i64, ptr %.sroa.016.sroa.6.0..sroa_idx.i, align 8, !noalias !15032 ; 3 uses
  %.sroa.016.sroa.7.0.copyload.i = load i64, ptr %.sroa.016.sroa.7.0..sroa_idx.i, align 8, !noalias !15032 ; 2 uses
end_hunk_1
begin_hunk_2
  %.sroa.93.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.016.sroa.6.0.copyload.i to i8
  %.sroa.93.sroa.978.0.extract.shift.i = lshr i64 %.sroa.016.sroa.6.0.copyload.i, 16
  %.sroa.93.sroa.978.0.extract.trunc.i = trunc i64 %.sroa.93.sroa.978.0.extract.shift.i to i8
  %.not.i2.i.i = icmp eq i64 %.sroa.016.sroa.0.0.copyload.i, 2
  %93 = trunc nuw i64 %.sroa.016.sroa.0.0.copyload.i to i1
  %94 = add nsw i64 %.sroa.016.sroa.15.0.copyload.i, -1 ; 3 uses
  %95 = and i64 %.sroa.016.sroa.6.0.copyload.i, -16711936 ; 2 uses
  br label %.loopexit273.i
end_hunk_2
begin_hunk_3
  %187 = add i64 %.sroa.63.2.i.lcssa302, -1       ; 2 uses
  %.first_iter.i = icmp ult i64 %187, %.sroa.102.2.i.lcssa
  %invariant.op = or disjoint i64 %.sroa.6818.sroa.961.0.insert.shift63.i, %.sroa.6818.sroa.11.0.insert.shift67.i
  %invariant.op.i = or disjoint i64 %.sroa.6818.sroa.9.0.insert.shift58.i, %.sroa.6818.sroa.0.0.insert.ext54.i
  %.sroa.6818.sroa.0.0.insert.insert56.reass.i.reass = or disjoint i64 %invariant.op.i, %invariant.op
  %188 = icmp ult i64 %.sroa.63.2.i.lcssa302, %.sroa.102.2.i.lcssa
  %.not259.i.us1789 = icmp eq i64 %.sroa.63.2.i.lcssa302, 0 ; 2 uses
  br label %189

189:                                              ; preds = %201, %.lr.ph.i248.i
end_hunk_3
begin_hunk_4
  br i1 %198, label %199, label %.preheader264.i.preheader

.preheader264.i.preheader:                        ; preds = %189
  br i1 %188, label %.lr.ph1788, label %.preheader263.i.preheader

199:                                              ; preds = %189
  %200 = add i64 %191, %.sroa.102.2.i.lcssa
end_hunk_4
begin_hunk_5
  br i1 %204, label %189, label %.noexc.i

.preheader264.i:                                  ; preds = %219
  %205 = add nuw nsw i64 %.sroa.04.0.i251.i1787, 1 ; 2 uses
  %206 = icmp ult i64 %205, %.sroa.102.2.i.lcssa
  br i1 %206, label %.lr.ph1788, label %.preheader263.i.preheader

.preheader263.i.preheader:                        ; preds = %.preheader264.i, %.preheader264.i.preheader
  br i1 %.first_iter.i, label %.preheader263.i.us.preheader, label %.preheader263.i.preheader.split

.preheader263.i.us.preheader:                     ; preds = %.preheader263.i.preheader
  br i1 %.not259.i.us1789, label %.split786.us, label %.lr.ph1791

.preheader263.i.us:                               ; preds = %210
  %.not259.i.us = icmp eq i64 %207, 0
  br i1 %.not259.i.us, label %.split786.us, label %.lr.ph1791

.lr.ph1791:                                       ; preds = %.preheader263.i.us.preheader, %.preheader263.i.us
  %.sroa.2.0.i252.i.us1790 = phi i64 [ %207, %.preheader263.i.us ], [ %.sroa.63.2.i.lcssa302, %.preheader263.i.us.preheader ]
  %207 = add i64 %.sroa.2.0.i252.i.us1790, -1     ; 4 uses
  %208 = add i64 %207, %191                       ; 3 uses
  %209 = icmp ult i64 %208, %.sroa.99.2.i.lcssa
  br i1 %209, label %210, label %.invoke.i

210:                                              ; preds = %.lr.ph1791
  %211 = getelementptr inbounds nuw i8, ptr %.sroa.101.2.i.lcssa, i64 %207
  %212 = load i8, ptr %211, align 1, !alias.scope !15061, !noalias !15066, !noundef !3
  %213 = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %208
end_hunk_5
begin_hunk_6
  br label %201

.preheader263.i.preheader.split:                  ; preds = %.preheader263.i.preheader
  br i1 %.not259.i.us1789, label %.split786.us, label %.invoke.i

.lr.ph1788:                                       ; preds = %.preheader264.i.preheader, %.preheader264.i
  %.sroa.04.0.i251.i1787 = phi i64 [ %205, %.preheader264.i ], [ %.sroa.63.2.i.lcssa302, %.preheader264.i.preheader ] ; 4 uses
  %216 = add i64 %.sroa.04.0.i251.i1787, %191     ; 2 uses
  %217 = icmp ult i64 %216, %.sroa.99.2.i.lcssa
  br i1 %217, label %219, label %224

end_hunk_6
begin_hunk_7
  %218 = add i64 %191, %.sroa.102.2.i.lcssa       ; 2 uses
  br label %.noexc.i

219:                                              ; preds = %.lr.ph1788
  %220 = getelementptr inbounds nuw i8, ptr %.sroa.101.2.i.lcssa, i64 %.sroa.04.0.i251.i1787
  %221 = load i8, ptr %220, align 1, !alias.scope !15061, !noalias !15066, !noundef !3
  %222 = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %216
  %223 = load i8, ptr %222, align 1, !alias.scope !15058, !noalias !15063, !noundef !3
  %.not23.i255.i = icmp eq i8 %221, %223
  br i1 %.not23.i255.i, label %.preheader264.i, label %226

224:                                              ; preds = %.lr.ph1788
  %225 = add i64 %191, %.sroa.63.2.i.lcssa302
  %umax.i254.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.99.2.i.lcssa, i64 %225)
  br label %.invoke.i
end_hunk_7
begin_hunk_8
226:                                              ; preds = %219
  %reass.sub814 = sub i64 %191, %.sroa.63.2.i.lcssa302
  %227 = add i64 %reass.sub814, 1
  %228 = add i64 %227, %.sroa.04.0.i251.i1787
  br label %201

229:                                              ; preds = %158
end_hunk_8
begin_hunk_9
244:                                              ; preds = %231
  %.sroa.0.0.i.i232.i = call i64 @llvm.umax.i64(i64 %232, i64 %.sroa.63.2.i.lcssa302) ; 3 uses
  %245 = icmp ult i64 %.sroa.0.0.i.i232.i, %.sroa.102.2.i.lcssa
  br i1 %245, label %.lr.ph1782, label %.preheader265.i.preheader

.sink.split.i236.i:                               ; preds = %275, %266, %242
  %.sink.i237.i = phi i64 [ %230, %266 ], [ 0, %275 ], [ 0, %242 ] ; 2 uses
end_hunk_9
begin_hunk_10
  br i1 %247, label %231, label %.noexc.i

248:                                              ; preds = %268
  %249 = add nuw nsw i64 %.sroa.04.0.i233.i1780, 1 ; 2 uses
  %250 = icmp ult i64 %249, %.sroa.102.2.i.lcssa
  br i1 %250, label %.lr.ph1782, label %.preheader265.i.preheader

.preheader265.i.preheader:                        ; preds = %248, %244
  %251 = icmp ult i64 %232, %.sroa.63.2.i.lcssa302
  br i1 %251, label %.lr.ph1784, label %.preheader265.i.preheader._crit_edge

.lr.ph1782:                                       ; preds = %244, %248
  %.sroa.04.0.i233.i1780 = phi i64 [ %249, %248 ], [ %.sroa.0.0.i.i232.i, %244 ] ; 4 uses
  %252 = add i64 %.sroa.04.0.i233.i1780, %234     ; 2 uses
  %253 = icmp ult i64 %252, %.sroa.99.2.i.lcssa
  br i1 %253, label %268, label %273

.preheader265.i:                                  ; preds = %261
  %254 = icmp ult i64 %232, %256
  br i1 %254, label %.lr.ph1784, label %.preheader265.i.preheader._crit_edge

.preheader265.i.preheader._crit_edge:             ; preds = %.preheader265.i.preheader, %.preheader265.i
  %255 = add i64 %234, %.sroa.102.2.i.lcssa       ; 2 uses
  br label %.noexc.i

.lr.ph1784:                                       ; preds = %.preheader265.i.preheader, %.preheader265.i
  %.sroa.2.0.i234.i1783 = phi i64 [ %256, %.preheader265.i ], [ %.sroa.63.2.i.lcssa302, %.preheader265.i.preheader ]
  %256 = add i64 %.sroa.2.0.i234.i1783, -1        ; 6 uses
  %257 = icmp ult i64 %256, %.sroa.102.2.i.lcssa
  br i1 %257, label %258, label %.invoke.i

258:                                              ; preds = %.lr.ph1784
  %259 = add i64 %256, %234                       ; 3 uses
  %260 = icmp ult i64 %259, %.sroa.99.2.i.lcssa
  br i1 %260, label %261, label %.invoke.i
end_hunk_10
begin_hunk_11
  %267 = add i64 %234, %.sroa.6818.sroa.0.0.insert.insert.i
  br label %.sink.split.i236.i

268:                                              ; preds = %.lr.ph1782
  %269 = getelementptr inbounds nuw i8, ptr %.sroa.101.2.i.lcssa, i64 %.sroa.04.0.i233.i1780
  %270 = load i8, ptr %269, align 1, !alias.scope !15070, !noalias !15075, !noundef !3
  %271 = getelementptr inbounds nuw i8, ptr %.sroa.9523.2.i.lcssa, i64 %252
  %272 = load i8, ptr %271, align 1, !alias.scope !15067, !noalias !15072, !noundef !3
  %.not23.i240.i = icmp eq i8 %270, %272
  br i1 %.not23.i240.i, label %248, label %275

273:                                              ; preds = %.lr.ph1782
  %274 = add i64 %234, %.sroa.0.0.i.i232.i
  %umax.i239.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.99.2.i.lcssa, i64 %274)
  br label %.invoke.i
end_hunk_11
begin_hunk_12
275:                                              ; preds = %268
  %reass.sub813 = sub i64 %234, %.sroa.63.2.i.lcssa302
  %276 = add i64 %reass.sub813, 1
  %277 = add i64 %276, %.sroa.04.0.i233.i1780
  br label %.sink.split.i236.i

.loopexit268.i:                                   ; preds = %.loopexit1603.i
end_hunk_12
begin_hunk_13
  %.sroa.93.sroa.0.0.insert.ext71.i = zext i8 %.sroa.93.sroa.0.0.i to i64
  %368 = add i64 %.sroa.5.0.i, -1                 ; 2 uses
  %.first_iter1639.i = icmp ult i64 %368, %.sroa.016.sroa.15.0.copyload.i
  %369 = or disjoint i64 %.sroa.93.sroa.978.0.insert.shift80.i, %.sroa.93.sroa.0.0.insert.ext71.i
  %.sroa.93.sroa.0.0.insert.insert73.i = or disjoint i64 %369, %95
  %370 = icmp ult i64 %.sroa.5.0.i, %.sroa.016.sroa.15.0.copyload.i
  %.not260.i.us1775 = icmp eq i64 %.sroa.5.0.i, 0 ; 2 uses
  br label %371

371:                                              ; preds = %383, %.lr.ph.i215.i
end_hunk_13
begin_hunk_14
  br i1 %380, label %381, label %.preheader261.i.preheader

.preheader261.i.preheader:                        ; preds = %371
  br i1 %370, label %.lr.ph1774, label %.preheader.i.preheader

381:                                              ; preds = %371
  %382 = add i64 %373, %.sroa.016.sroa.15.0.copyload.i
end_hunk_14
begin_hunk_15
  br i1 %386, label %371, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

.preheader261.i:                                  ; preds = %401
  %387 = add nuw nsw i64 %.sroa.04.0.i218.i1773, 1 ; 2 uses
  %388 = icmp ult i64 %387, %.sroa.016.sroa.15.0.copyload.i
  br i1 %388, label %.lr.ph1774, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader261.i, %.preheader261.i.preheader
  br i1 %.first_iter1639.i, label %.preheader.i.us.preheader, label %.preheader.i.preheader.split

.preheader.i.us.preheader:                        ; preds = %.preheader.i.preheader
  br i1 %.not260.i.us1775, label %.split.us, label %.lr.ph1777

.preheader.i.us:                                  ; preds = %392
  %.not260.i.us = icmp eq i64 %389, 0
  br i1 %.not260.i.us, label %.split.us, label %.lr.ph1777

.lr.ph1777:                                       ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.sroa.2.0.i219.i.us1776 = phi i64 [ %389, %.preheader.i.us ], [ %.sroa.5.0.i, %.preheader.i.us.preheader ]
  %389 = add i64 %.sroa.2.0.i219.i.us1776, -1     ; 4 uses
  %390 = add i64 %389, %373                       ; 3 uses
  %391 = icmp ult i64 %390, %.sroa.016.sroa.13.0.copyload.i
  br i1 %391, label %392, label %.invoke.i

392:                                              ; preds = %.lr.ph1777
  %393 = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.14.0.copyload.i, i64 %389
  %394 = load i8, ptr %393, align 1, !alias.scope !15092, !noalias !15097, !noundef !3
  %395 = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %390
end_hunk_15
begin_hunk_16
  br label %383

.preheader.i.preheader.split:                     ; preds = %.preheader.i.preheader
  br i1 %.not260.i.us1775, label %.split.us, label %.invoke.i

.lr.ph1774:                                       ; preds = %.preheader261.i.preheader, %.preheader261.i
  %.sroa.04.0.i218.i1773 = phi i64 [ %387, %.preheader261.i ], [ %.sroa.5.0.i, %.preheader261.i.preheader ] ; 4 uses
  %398 = add i64 %.sroa.04.0.i218.i1773, %373     ; 2 uses
  %399 = icmp ult i64 %398, %.sroa.016.sroa.13.0.copyload.i
  br i1 %399, label %401, label %406

end_hunk_16
begin_hunk_17
  %400 = add i64 %373, %.sroa.016.sroa.15.0.copyload.i ; 2 uses
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

401:                                              ; preds = %.lr.ph1774
  %402 = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.14.0.copyload.i, i64 %.sroa.04.0.i218.i1773
  %403 = load i8, ptr %402, align 1, !alias.scope !15092, !noalias !15097, !noundef !3
  %404 = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %398
  %405 = load i8, ptr %404, align 1, !alias.scope !15089, !noalias !15094, !noundef !3
  %.not23.i222.i = icmp eq i8 %403, %405
  br i1 %.not23.i222.i, label %.preheader261.i, label %408

406:                                              ; preds = %.lr.ph1774
  %407 = add i64 %373, %.sroa.5.0.i
  %umax.i221.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.016.sroa.13.0.copyload.i, i64 %407)
  br label %.invoke.i
end_hunk_17
begin_hunk_18
408:                                              ; preds = %401
  %reass.sub812 = sub i64 %373, %.sroa.5.0.i
  %409 = add i64 %reass.sub812, 1
  %410 = add i64 %409, %.sroa.04.0.i218.i1773
  br label %383

411:                                              ; preds = %337
end_hunk_18
begin_hunk_19
427:                                              ; preds = %414
  %.sroa.0.0.i.i199.i = call i64 @llvm.umax.i64(i64 %415, i64 %.sroa.5.0.i) ; 3 uses
  %428 = icmp ult i64 %.sroa.0.0.i.i199.i, %.sroa.016.sroa.15.0.copyload.i
  br i1 %428, label %.lr.ph1769, label %.preheader262.i.preheader

.sink.split.i203.i:                               ; preds = %461, %452, %425
  %.sink.i204.i = phi i64 [ %413, %452 ], [ 0, %461 ], [ 0, %425 ] ; 2 uses
end_hunk_19
begin_hunk_20
  br i1 %430, label %414, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

431:                                              ; preds = %454
  %432 = add nuw nsw i64 %.sroa.04.0.i200.i1767, 1 ; 2 uses
  %433 = icmp ult i64 %432, %.sroa.016.sroa.15.0.copyload.i
  br i1 %433, label %.lr.ph1769, label %.preheader262.i.preheader

.preheader262.i.preheader:                        ; preds = %431, %427
  %434 = icmp ult i64 %415, %.sroa.5.0.i
  br i1 %434, label %.lr.ph1771, label %.preheader262.i.preheader._crit_edge

.lr.ph1769:                                       ; preds = %427, %431
  %.sroa.04.0.i200.i1767 = phi i64 [ %432, %431 ], [ %.sroa.0.0.i.i199.i, %427 ] ; 4 uses
  %435 = add i64 %.sroa.04.0.i200.i1767, %417     ; 2 uses
  %436 = icmp ult i64 %435, %.sroa.016.sroa.13.0.copyload.i
  br i1 %436, label %454, label %459

.preheader262.i:                                  ; preds = %447
  %437 = icmp ult i64 %415, %439
  br i1 %437, label %.lr.ph1771, label %.preheader262.i.preheader._crit_edge

.preheader262.i.preheader._crit_edge:             ; preds = %.preheader262.i.preheader, %.preheader262.i
  %438 = add i64 %417, %.sroa.016.sroa.15.0.copyload.i ; 2 uses
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

.lr.ph1771:                                       ; preds = %.preheader262.i.preheader, %.preheader262.i
  %.sroa.2.0.i201.i1770 = phi i64 [ %439, %.preheader262.i ], [ %.sroa.5.0.i, %.preheader262.i.preheader ]
  %439 = add i64 %.sroa.2.0.i201.i1770, -1        ; 6 uses
  %440 = icmp ult i64 %439, %.sroa.016.sroa.15.0.copyload.i
  br i1 %440, label %441, label %.invoke.i

441:                                              ; preds = %.lr.ph1771
  %442 = add i64 %439, %417                       ; 3 uses
  %443 = icmp ult i64 %442, %.sroa.016.sroa.13.0.copyload.i
  br i1 %443, label %447, label %.invoke.i

.invoke.i:                                        ; preds = %.preheader.i.preheader.split, %.preheader263.i.preheader.split, %441, %.lr.ph1771, %.lr.ph1777, %258, %.lr.ph1784, %.lr.ph1791, %459, %406, %273, %224
  %444 = phi i64 [ %umax.i239.i, %273 ], [ %umax.i254.i, %224 ], [ %umax.i206.i, %459 ], [ %259, %258 ], [ %208, %.lr.ph1791 ], [ %umax.i221.i, %406 ], [ %439, %.lr.ph1771 ], [ %390, %.lr.ph1777 ], [ %256, %.lr.ph1784 ], [ %442, %441 ], [ %368, %.preheader.i.preheader.split ], [ %187, %.preheader263.i.preheader.split ]
  %445 = phi i64 [ %.sroa.99.2.i.lcssa, %273 ], [ %.sroa.99.2.i.lcssa, %224 ], [ %.sroa.016.sroa.13.0.copyload.i, %459 ], [ %.sroa.99.2.i.lcssa, %258 ], [ %.sroa.99.2.i.lcssa, %.lr.ph1791 ], [ %.sroa.016.sroa.13.0.copyload.i, %406 ], [ %.sroa.016.sroa.15.0.copyload.i, %.lr.ph1771 ], [ %.sroa.016.sroa.13.0.copyload.i, %.lr.ph1777 ], [ %.sroa.102.2.i.lcssa, %.lr.ph1784 ], [ %.sroa.016.sroa.13.0.copyload.i, %441 ], [ %.sroa.016.sroa.15.0.copyload.i, %.preheader.i.preheader.split ], [ %.sroa.102.2.i.lcssa, %.preheader263.i.preheader.split ]
  %446 = phi ptr [ @16, %273 ], [ @16, %224 ], [ @16, %459 ], [ @15, %258 ], [ @15, %.lr.ph1791 ], [ @16, %406 ], [ @14, %.lr.ph1771 ], [ @15, %.lr.ph1777 ], [ @14, %.lr.ph1784 ], [ @15, %441 ], [ @14, %.preheader263.i.preheader.split ], [ @14, %.preheader.i.preheader.split ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %444, i64 noundef range(i64 0, -9223372036854775808) %445, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %446) #28
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

end_hunk_20
begin_hunk_21
  %453 = add i64 %417, %.sroa.93.sroa.0.0.insert.insert.i
  br label %.sink.split.i203.i

454:                                              ; preds = %.lr.ph1769
  %455 = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.14.0.copyload.i, i64 %.sroa.04.0.i200.i1767
  %456 = load i8, ptr %455, align 1, !alias.scope !15101, !noalias !15106, !noundef !3
  %457 = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %435
  %458 = load i8, ptr %457, align 1, !alias.scope !15098, !noalias !15103, !noundef !3
  %.not23.i207.i = icmp eq i8 %456, %458
  br i1 %.not23.i207.i, label %431, label %461

459:                                              ; preds = %.lr.ph1769
  %460 = add i64 %417, %.sroa.0.0.i.i199.i
  %umax.i206.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.016.sroa.13.0.copyload.i, i64 %460)
  br label %.invoke.i
end_hunk_21
begin_hunk_22
461:                                              ; preds = %454
  %reass.sub = sub i64 %417, %.sroa.5.0.i
  %462 = add i64 %reass.sub, 1
  %463 = add i64 %462, %.sroa.04.0.i200.i1767
  br label %.sink.split.i203.i

464:                                              ; preds = %.loopexit1634.i
end_hunk_22
begin_hunk_23
  %474 = load i64, ptr %70, align 8, !noalias !15032, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %474, 4
  %475 = getelementptr inbounds nuw i8, ptr %473, i64 %.idx
  %.not.not.not.i.not.i1794 = icmp eq i64 %474, 0
  br i1 %.not.not.not.i.not.i1794, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i, label %.lr.ph1796

476:                                              ; preds = %.noexc107.i
  %477 = getelementptr inbounds nuw i8, ptr %478, i64 16 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %477, %475
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i, label %.lr.ph1796

.lr.ph1796:                                       ; preds = %472, %476
  %478 = phi ptr [ %477, %476 ], [ %473, %472 ]   ; 3 uses
  %.val3.i.i = load ptr, ptr %478, align 8, !noalias !15118, !nonnull !3, !noundef !3
  %479 = getelementptr i8, ptr %478, i64 8
end_hunk_23
begin_hunk_24
  %480 = invoke fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i20.pn.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3.i.i, i64 noundef %.val4.i.i) #33
          to label %.noexc107.i unwind label %.loopexit.split-lp.loopexit.i

.noexc107.i:                                      ; preds = %.lr.ph1796
  br i1 %480, label %.loopexit273.i.backedge, label %476

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i: ; preds = %476, %472
end_hunk_24
