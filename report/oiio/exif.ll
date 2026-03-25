begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %.sroa.19.0.insert.insert.i.i = or disjoint i64 %.sroa.32.0.insert.insert.i.i, %.sroa.19.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.19.0.insert.insert.i.i, %.sroa.0.0.i.i ; 2 uses
  %35 = zext i32 %29 to i64                       ; 22 uses
  switch i16 %27, label %382 [
    i16 3, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i
    i16 4, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i150
    i16 5, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i181
end_hunk_1
begin_hunk_2
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph508
  %index512 = phi i64 [ 0, %vector.ph508 ], [ %index.next514, %vector.body511 ] ; 3 uses
  %213 = shl i64 %index512, 3
  %214 = getelementptr inbounds nuw i8, ptr %210, i64 %213
  %wide.vec = load <8 x i32>, ptr %214, align 1   ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec513 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %215 = sitofp <4 x i32> %strided.vec to <4 x double>
  %216 = sitofp <4 x i32> %strided.vec513 to <4 x double>
  %217 = fdiv <4 x double> %215, %216
  %218 = fptrunc <4 x double> %217 to <4 x float>
  %219 = getelementptr inbounds nuw [4 x i8], ptr %212, i64 %index512
  store <4 x float> %218, ptr %219, align 16, !tbaa !32
  %index.next514 = add nuw i64 %index512, 4       ; 2 uses
  %220 = icmp eq i64 %index.next514, %n.vec510
  br i1 %220, label %middle.block515, label %vector.body511, !llvm.loop !216

middle.block515:                                  ; preds = %vector.body511
  %cmp.n516 = icmp eq i64 %n.vec510, %35
  br i1 %cmp.n516, label %._crit_edge, label %.lr.ph.split.preheader608

.lr.ph.split.preheader608:                        ; preds = %.lr.ph.split.preheader, %middle.block515
  %.0126439.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec510, %middle.block515 ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
end_hunk_2
begin_hunk_3
  %exitcond448.not = icmp eq i64 %243, %35
  br i1 %exitcond448.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block515, %middle.block529
  br i1 %30, label %254, label %260

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader608, %.lr.ph.split
end_hunk_3
begin_hunk_4

.noexc.i219:                                      ; preds = %.critedge
  %294 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 0)
          to label %.noexc unwind label %358      ; 2 uses

.noexc:                                           ; preds = %.noexc.i219
  store ptr %294, ptr %22, align 8, !tbaa !51
end_hunk_4
begin_hunk_5
  %297 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 0, ptr %297, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  br label %308

iter.check:                                       ; preds = %.noexc, %.critedge
  %.ph483 = phi ptr [ %291, %.critedge ], [ %294, %.noexc ] ; 6 uses
end_hunk_5
begin_hunk_6
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.9.0438, 28
  %n.vec = and i64 %.sroa.9.0438, -32             ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.ph483, i64 %index ; 2 uses
  %next.gep495 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %index ; 2 uses
  %299 = getelementptr i8, ptr %next.gep495, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep495, align 1, !tbaa !53
  %wide.load496 = load <16 x i8>, ptr %299, align 1, !tbaa !53
  %300 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !53
  store <16 x i8> %wide.load496, ptr %300, align 1, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %301 = icmp eq i64 %index.next, %n.vec
  br i1 %301, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.9.0438, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %.ph483, i64 %n.vec
  %ind.end506 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec498 = and i64 %.sroa.9.0438, -4           ; 4 uses
  %302 = getelementptr i8, ptr %.ph483, i64 %n.vec498
  %303 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec498
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index499 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next503, %vec.epilog.vector.body ] ; 3 uses
  %next.gep500 = getelementptr i8, ptr %.ph483, i64 %index499
  %next.gep501 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %index499
  %wide.load502 = load <4 x i8>, ptr %next.gep501, align 1, !tbaa !53
  store <4 x i8> %wide.load502, ptr %next.gep500, align 1, !tbaa !53
  %index.next503 = add nuw i64 %index499, 4       ; 2 uses
  %304 = icmp eq i64 %index.next503, %n.vec498
  br i1 %304, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n504 = icmp eq i64 %.sroa.9.0438, %n.vec498
  br i1 %cmp.n504, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %.ph483, %iter.check ], [ %ind.end, %vec.epilog.iter.check ], [ %302, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %.sroa.011.0.i213480, %iter.check ], [ %ind.end506, %vec.epilog.iter.check ], [ %303, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %307, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %306, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %305 = load i8, ptr %.068.i.i.i, align 1, !tbaa !53
  store i8 %305, ptr %.09.i.i.i, align 1, !tbaa !53
  %306 = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %307 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i218 = icmp eq ptr %306, %290
  br i1 %.not.i.i.i218, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !224

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre12.i.i = load i64, ptr %11, align 8, !tbaa !50
  %.pre13.i.i = load ptr, ptr %22, align 8, !tbaa !51
  br label %308

308:                                              ; preds = %._crit_edge.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i
  %309 = phi ptr [ %291, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %296, %._crit_edge.i.i ] ; 8 uses
  %310 = phi ptr [ %292, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %297, %._crit_edge.i.i ] ; 6 uses
  %311 = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %296, %._crit_edge.i.i ]
  %312 = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  store i64 %312, ptr %310, align 8, !tbaa !54
  %313 = getelementptr inbounds nuw i8, ptr %311, i64 %312
  store i8 0, ptr %313, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %314 = load ptr, ptr %22, align 8, !tbaa !51    ; 4 uses
  %315 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %314) #37
  %316 = load i64, ptr %310, align 8, !tbaa !54
  %317 = icmp ult i64 %315, %316
  br i1 %317, label %318, label %362

318:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %319 = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 11 uses
  store ptr %319, ptr %23, align 8, !tbaa !48
  %320 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %314) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i64 %320, ptr %10, align 8, !tbaa !50
  %321 = icmp ugt i64 %320, 15
  br i1 %321, label %.noexc.i221, label %._crit_edge.i.i220

.noexc.i221:                                      ; preds = %318
  %322 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0)
          to label %.noexc223 unwind label %360   ; 2 uses

.noexc223:                                        ; preds = %.noexc.i221
  store ptr %322, ptr %23, align 8, !tbaa !51
  %323 = load i64, ptr %10, align 8, !tbaa !50
  store i64 %323, ptr %319, align 8, !tbaa !53
  br label %._crit_edge.i.i220

._crit_edge.i.i220:                               ; preds = %.noexc223, %318
  %324 = phi ptr [ %322, %.noexc223 ], [ %319, %318 ] ; 2 uses
  switch i64 %320, label %327 [
    i64 1, label %325
    i64 0, label %328
  ]

325:                                              ; preds = %._crit_edge.i.i220
  %326 = load i8, ptr %314, align 1, !tbaa !53
  store i8 %326, ptr %324, align 1, !tbaa !53
  br label %328

327:                                              ; preds = %._crit_edge.i.i220
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %324, ptr nonnull align 1 %314, i64 %320, i1 false)
  br label %328

328:                                              ; preds = %327, %325, %._crit_edge.i.i220
  %329 = load i64, ptr %10, align 8, !tbaa !50    ; 2 uses
  %330 = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  store i64 %329, ptr %330, align 8, !tbaa !54
  %331 = load ptr, ptr %23, align 8, !tbaa !51
  %332 = getelementptr inbounds nuw i8, ptr %331, i64 %329
  store i8 0, ptr %332, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %333 = load ptr, ptr %22, align 8, !tbaa !51    ; 6 uses
  %334 = icmp eq ptr %333, %309
  %335 = load ptr, ptr %23, align 8, !tbaa !51    ; 5 uses
  %336 = icmp eq ptr %335, %319                   ; 2 uses
  br i1 %334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %328
  br i1 %336, label %337, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %328
  br i1 %336, label %337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

337:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %338 = load i64, ptr %330, align 8, !tbaa !54   ; 3 uses
  %339 = icmp ult i64 %338, 16
  call void @llvm.assume(i1 %339)
  switch i64 %338, label %342 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %340
  ]

340:                                              ; preds = %337
  %341 = load i8, ptr %335, align 1, !tbaa !53
  store i8 %341, ptr %333, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

342:                                              ; preds = %337
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %333, ptr align 1 %335, i64 %338, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %342, %340, %337
  %343 = load i64, ptr %330, align 8, !tbaa !54   ; 2 uses
  store i64 %343, ptr %310, align 8, !tbaa !54
  %344 = load ptr, ptr %22, align 8, !tbaa !51
  %345 = getelementptr inbounds nuw i8, ptr %344, i64 %343
  store i8 0, ptr %345, align 1, !tbaa !53
  %.pre.i = load ptr, ptr %23, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %335, ptr %22, align 8, !tbaa !51
  %346 = load i64, ptr %330, align 8, !tbaa !54
  store i64 %346, ptr %310, align 8, !tbaa !54
  %347 = load i64, ptr %319, align 8, !tbaa !53
  store i64 %347, ptr %309, align 8, !tbaa !53
  br label %352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %348 = load i64, ptr %309, align 8, !tbaa !53
  store ptr %335, ptr %22, align 8, !tbaa !51
  %349 = load i64, ptr %330, align 8, !tbaa !54
  store i64 %349, ptr %310, align 8, !tbaa !54
  %350 = load i64, ptr %319, align 8, !tbaa !53
  store i64 %350, ptr %309, align 8, !tbaa !53
  %.not.i224 = icmp eq ptr %333, null
  br i1 %.not.i224, label %352, label %351

351:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %333, ptr %23, align 8, !tbaa !51
  store i64 %348, ptr %319, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

352:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %319, ptr %23, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %351, %352
  %353 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %333, %351 ], [ %319, %352 ]
  store i64 0, ptr %330, align 8, !tbaa !54
  store i8 0, ptr %353, align 1, !tbaa !53
  %354 = load ptr, ptr %23, align 8, !tbaa !51    ; 2 uses
  %355 = icmp eq ptr %354, %319
  br i1 %355, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %356 = load i64, ptr %319, align 8, !tbaa !53
  %357 = add i64 %356, 1
  call void @_ZdlPvm(ptr noundef %354, i64 noundef %357) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %362

358:                                              ; preds = %.noexc.i219
  %359 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

360:                                              ; preds = %.noexc.i221
  %361 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %377

362:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %308
  store ptr %1, ptr %24, align 8, !tbaa !7
  %.not.i225 = icmp eq ptr %1, null
  br i1 %.not.i225, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226, label %363

363:                                              ; preds = %362
  %364 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226: ; preds = %362, %363
  %365 = phi i64 [ %364, %363 ], [ 0, %362 ]
  %366 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %365, ptr %366, align 8, !tbaa !12
  %367 = load ptr, ptr %22, align 8, !tbaa !51
  store ptr %367, ptr %25, align 8, !tbaa !7
  %368 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %369 = load i64, ptr %310, align 8, !tbaa !54
  store i64 %369, ptr %368, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %370 unwind label %375

370:                                              ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226
  %371 = load ptr, ptr %22, align 8, !tbaa !51    ; 2 uses
  %372 = icmp eq ptr %371, %309
  br i1 %372, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %370
  %373 = load i64, ptr %309, align 8, !tbaa !53
  %374 = add i64 %373, 1
  call void @_ZdlPvm(ptr noundef %371, i64 noundef %374) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %_ZNSt6vectorItSaItEED2Ev.exit

375:                                              ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226
  %376 = landingpad { ptr, i32 }
          cleanup
  br label %377

377:                                              ; preds = %375, %360
  %.pn = phi { ptr, i32 } [ %376, %375 ], [ %361, %360 ] ; 2 uses
  %378 = load ptr, ptr %22, align 8, !tbaa !51    ; 2 uses
  %379 = icmp eq ptr %378, %309
  br i1 %379, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %377
  %380 = load i64, ptr %309, align 8, !tbaa !53
  %381 = add i64 %380, 1
  call void @_ZdlPvm(ptr noundef %378, i64 noundef %381) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %358
  %.pn.pn = phi { ptr, i32 } [ %359, %358 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn, %377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %.body

382:                                              ; preds = %_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescERK12TIFFDirEntry.exit
  %383 = icmp eq i16 %27, 1
  %or.cond = select i1 %383, i1 %30, i1 false
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408, label %_ZNSt6vectorItSaItEED2Ev.exit

_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408: ; preds = %382
  %384 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i242 = icmp eq ptr %1, null
  br i1 %.not.i242, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243, label %385

385:                                              ; preds = %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408
  %386 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243: ; preds = %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408, %385
  %387 = phi i64 [ %386, %385 ], [ 0, %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408 ]
  %388 = load i8, ptr %384, align 1, !tbaa !53
  %389 = zext i8 %388 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %389, ptr %8, align 4, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !7
  %390 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %387, ptr %390, align 8, !tbaa !12
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %9, i64 263, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i195, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i181, %275, %201, %137, %95, %43, %7, %7, %7, %7, %7, %7, %7, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit206, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit204, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit193, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit191, %_ZN11OpenImageIO4v3_13pvt8dataspanIjEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit179, %128, %_ZN11OpenImageIO4v3_13pvt8dataspanItEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit148, %80, %382
  ret void

.body:                                            ; preds = %129, %81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
end_hunk_6
