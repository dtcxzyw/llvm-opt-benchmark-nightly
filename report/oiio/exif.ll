begin_hunk_0
inline.NumInlined: 1716
inline.NumDeleted: 772
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %.sroa.19.0.insert.insert.i.i = or disjoint i64 %.sroa.32.0.insert.insert.i.i, %.sroa.19.0.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.19.0.insert.insert.i.i, %.sroa.0.0.i.i ; 2 uses
  %35 = zext i32 %29 to i64                       ; 22 uses
  switch i16 %27, label %384 [
    i16 3, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i
    i16 4, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i150
    i16 5, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i181
end_hunk_1
begin_hunk_2
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph508
  %index513 = phi i64 [ 0, %vector.ph508 ], [ %index.next515, %vector.body511 ] ; 3 uses
  %213 = shl i64 %index513, 3
  %214 = getelementptr inbounds nuw i8, ptr %210, i64 %213
  %wide.vec = load <8 x i32>, ptr %214, align 1   ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec514 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %215 = sitofp <4 x i32> %strided.vec to <4 x double>
  %216 = sitofp <4 x i32> %strided.vec514 to <4 x double>
  %217 = fdiv <4 x double> %215, %216
  %218 = fptrunc <4 x double> %217 to <4 x float>
  %219 = getelementptr inbounds nuw [4 x i8], ptr %212, i64 %index513
  store <4 x float> %218, ptr %219, align 16, !tbaa !32
  %index.next515 = add nuw i64 %index513, 4       ; 2 uses
  %220 = icmp eq i64 %index.next515, %n.vec510
  br i1 %220, label %middle.block516, label %vector.body511, !llvm.loop !216

middle.block516:                                  ; preds = %vector.body511
  %cmp.n517 = icmp eq i64 %n.vec510, %35
  br i1 %cmp.n517, label %._crit_edge, label %.lr.ph.split.preheader608

.lr.ph.split.preheader608:                        ; preds = %.lr.ph.split.preheader, %middle.block516
  %.0126439.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec510, %middle.block516 ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
end_hunk_2
begin_hunk_3
  %exitcond448.not = icmp eq i64 %243, %35
  br i1 %exitcond448.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block516, %middle.block529
  br i1 %30, label %254, label %260

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader608, %.lr.ph.split
end_hunk_3
begin_hunk_4

.noexc.i219:                                      ; preds = %.critedge
  %294 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 0)
          to label %.noexc unwind label %360      ; 2 uses

.noexc:                                           ; preds = %.noexc.i219
  store ptr %294, ptr %22, align 8, !tbaa !51
end_hunk_4
begin_hunk_5
  %297 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 0, ptr %297, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  br label %310

iter.check:                                       ; preds = %.noexc, %.critedge
  %.ph483 = phi ptr [ %291, %.critedge ], [ %294, %.noexc ] ; 6 uses
end_hunk_5
begin_hunk_6
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.9.0438, 28
  %n.vec = and i64 %.sroa.9.0438, -32             ; 5 uses
  %299 = getelementptr i8, ptr %.ph483, i64 %n.vec
  %300 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.ph483, i64 %index ; 2 uses
  %next.gep495 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %index ; 2 uses
  %301 = getelementptr i8, ptr %next.gep495, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep495, align 1, !tbaa !53
  %wide.load496 = load <16 x i8>, ptr %301, align 1, !tbaa !53
  %302 = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !53
  store <16 x i8> %wide.load496, ptr %302, align 1, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %303 = icmp eq i64 %index.next, %n.vec
  br i1 %303, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.9.0438, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !222

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec499 = and i64 %.sroa.9.0438, -4           ; 4 uses
  %304 = getelementptr i8, ptr %.ph483, i64 %n.vec499
  %305 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec499
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index500 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next504, %vec.epilog.vector.body ] ; 3 uses
  %next.gep501 = getelementptr i8, ptr %.ph483, i64 %index500
  %next.gep502 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %index500
  %wide.load503 = load <4 x i8>, ptr %next.gep502, align 1, !tbaa !53
  store <4 x i8> %wide.load503, ptr %next.gep501, align 1, !tbaa !53
  %index.next504 = add nuw i64 %index500, 4       ; 2 uses
  %306 = icmp eq i64 %index.next504, %n.vec499
  br i1 %306, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !223

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n505 = icmp eq i64 %.sroa.9.0438, %n.vec499
  br i1 %cmp.n505, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %.ph483, %iter.check ], [ %299, %vec.epilog.iter.check ], [ %304, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %.sroa.011.0.i213480, %iter.check ], [ %300, %vec.epilog.iter.check ], [ %305, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %309, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %308, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %307 = load i8, ptr %.068.i.i.i, align 1, !tbaa !53
  store i8 %307, ptr %.09.i.i.i, align 1, !tbaa !53
  %308 = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %309 = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i218 = icmp eq ptr %308, %290
  br i1 %.not.i.i.i218, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !224

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre12.i.i = load i64, ptr %11, align 8, !tbaa !50
  %.pre13.i.i = load ptr, ptr %22, align 8, !tbaa !51
  br label %310

310:                                              ; preds = %._crit_edge.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i
  %311 = phi ptr [ %291, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %296, %._crit_edge.i.i ] ; 8 uses
  %312 = phi ptr [ %292, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %297, %._crit_edge.i.i ] ; 6 uses
  %313 = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %296, %._crit_edge.i.i ]
  %314 = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  store i64 %314, ptr %312, align 8, !tbaa !54
  %315 = getelementptr inbounds nuw i8, ptr %313, i64 %314
  store i8 0, ptr %315, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  %316 = load ptr, ptr %22, align 8, !tbaa !51    ; 4 uses
  %317 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %316) #37
  %318 = load i64, ptr %312, align 8, !tbaa !54
  %319 = icmp ult i64 %317, %318
  br i1 %319, label %320, label %364

320:                                              ; preds = %310
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #34
  %321 = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 11 uses
  store ptr %321, ptr %23, align 8, !tbaa !48
  %322 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %316) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  store i64 %322, ptr %10, align 8, !tbaa !50
  %323 = icmp ugt i64 %322, 15
  br i1 %323, label %.noexc.i221, label %._crit_edge.i.i220

.noexc.i221:                                      ; preds = %320
  %324 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0)
          to label %.noexc223 unwind label %362   ; 2 uses

.noexc223:                                        ; preds = %.noexc.i221
  store ptr %324, ptr %23, align 8, !tbaa !51
  %325 = load i64, ptr %10, align 8, !tbaa !50
  store i64 %325, ptr %321, align 8, !tbaa !53
  br label %._crit_edge.i.i220

._crit_edge.i.i220:                               ; preds = %.noexc223, %320
  %326 = phi ptr [ %324, %.noexc223 ], [ %321, %320 ] ; 2 uses
  switch i64 %322, label %329 [
    i64 1, label %327
    i64 0, label %330
  ]

327:                                              ; preds = %._crit_edge.i.i220
  %328 = load i8, ptr %316, align 1, !tbaa !53
  store i8 %328, ptr %326, align 1, !tbaa !53
  br label %330

329:                                              ; preds = %._crit_edge.i.i220
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %326, ptr nonnull align 1 %316, i64 %322, i1 false)
  br label %330

330:                                              ; preds = %329, %327, %._crit_edge.i.i220
  %331 = load i64, ptr %10, align 8, !tbaa !50    ; 2 uses
  %332 = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  store i64 %331, ptr %332, align 8, !tbaa !54
  %333 = load ptr, ptr %23, align 8, !tbaa !51
  %334 = getelementptr inbounds nuw i8, ptr %333, i64 %331
  store i8 0, ptr %334, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %335 = load ptr, ptr %22, align 8, !tbaa !51    ; 6 uses
  %336 = icmp eq ptr %335, %311
  %337 = load ptr, ptr %23, align 8, !tbaa !51    ; 5 uses
  %338 = icmp eq ptr %337, %321                   ; 2 uses
  br i1 %336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %330
  br i1 %338, label %339, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %330
  br i1 %338, label %339, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

339:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %340 = load i64, ptr %332, align 8, !tbaa !54   ; 3 uses
  %341 = icmp ult i64 %340, 16
  call void @llvm.assume(i1 %341)
  switch i64 %340, label %344 [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %342
  ]

342:                                              ; preds = %339
  %343 = load i8, ptr %337, align 1, !tbaa !53
  store i8 %343, ptr %335, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

344:                                              ; preds = %339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %335, ptr align 1 %337, i64 %340, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %344, %342, %339
  %345 = load i64, ptr %332, align 8, !tbaa !54   ; 2 uses
  store i64 %345, ptr %312, align 8, !tbaa !54
  %346 = load ptr, ptr %22, align 8, !tbaa !51
  %347 = getelementptr inbounds nuw i8, ptr %346, i64 %345
  store i8 0, ptr %347, align 1, !tbaa !53
  %.pre.i = load ptr, ptr %23, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %337, ptr %22, align 8, !tbaa !51
  %348 = load i64, ptr %332, align 8, !tbaa !54
  store i64 %348, ptr %312, align 8, !tbaa !54
  %349 = load i64, ptr %321, align 8, !tbaa !53
  store i64 %349, ptr %311, align 8, !tbaa !53
  br label %354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %350 = load i64, ptr %311, align 8, !tbaa !53
  store ptr %337, ptr %22, align 8, !tbaa !51
  %351 = load i64, ptr %332, align 8, !tbaa !54
  store i64 %351, ptr %312, align 8, !tbaa !54
  %352 = load i64, ptr %321, align 8, !tbaa !53
  store i64 %352, ptr %311, align 8, !tbaa !53
  %.not.i224 = icmp eq ptr %335, null
  br i1 %.not.i224, label %354, label %353

353:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %335, ptr %23, align 8, !tbaa !51
  store i64 %350, ptr %321, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

354:                                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %321, ptr %23, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %353, %354
  %355 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %335, %353 ], [ %321, %354 ]
  store i64 0, ptr %332, align 8, !tbaa !54
  store i8 0, ptr %355, align 1, !tbaa !53
  %356 = load ptr, ptr %23, align 8, !tbaa !51    ; 2 uses
  %357 = icmp eq ptr %356, %321
  br i1 %357, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %358 = load i64, ptr %321, align 8, !tbaa !53
  %359 = add i64 %358, 1
  call void @_ZdlPvm(ptr noundef %356, i64 noundef %359) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %364

360:                                              ; preds = %.noexc.i219
  %361 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

362:                                              ; preds = %.noexc.i221
  %363 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #34
  br label %379

364:                                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %310
  store ptr %1, ptr %24, align 8, !tbaa !7
  %.not.i225 = icmp eq ptr %1, null
  br i1 %.not.i225, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226, label %365

365:                                              ; preds = %364
  %366 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226: ; preds = %364, %365
  %367 = phi i64 [ %366, %365 ], [ 0, %364 ]
  %368 = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %367, ptr %368, align 8, !tbaa !12
  %369 = load ptr, ptr %22, align 8, !tbaa !51
  store ptr %369, ptr %25, align 8, !tbaa !7
  %370 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %371 = load i64, ptr %312, align 8, !tbaa !54
  store i64 %371, ptr %370, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %372 unwind label %377

372:                                              ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226
  %373 = load ptr, ptr %22, align 8, !tbaa !51    ; 2 uses
  %374 = icmp eq ptr %373, %311
  br i1 %374, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %372
  %375 = load i64, ptr %311, align 8, !tbaa !53
  %376 = add i64 %375, 1
  call void @_ZdlPvm(ptr noundef %373, i64 noundef %376) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %_ZNSt6vectorItSaItEED2Ev.exit

377:                                              ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226
  %378 = landingpad { ptr, i32 }
          cleanup
  br label %379

379:                                              ; preds = %377, %362
  %.pn = phi { ptr, i32 } [ %378, %377 ], [ %363, %362 ] ; 2 uses
  %380 = load ptr, ptr %22, align 8, !tbaa !51    ; 2 uses
  %381 = icmp eq ptr %380, %311
  br i1 %381, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %379
  %382 = load i64, ptr %311, align 8, !tbaa !53
  %383 = add i64 %382, 1
  call void @_ZdlPvm(ptr noundef %380, i64 noundef %383) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %360
  %.pn.pn = phi { ptr, i32 } [ %361, %360 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn, %379 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #34
  br label %.body

384:                                              ; preds = %_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescERK12TIFFDirEntry.exit
  %385 = icmp eq i16 %27, 1
  %or.cond = select i1 %385, i1 %30, i1 false
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408, label %_ZNSt6vectorItSaItEED2Ev.exit

_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408: ; preds = %384
  %386 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i242 = icmp eq ptr %1, null
  br i1 %.not.i242, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243, label %387

387:                                              ; preds = %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408
  %388 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243: ; preds = %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408, %387
  %389 = phi i64 [ %388, %387 ], [ 0, %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408 ]
  %390 = load i8, ptr %386, align 1, !tbaa !53
  %391 = zext i8 %390 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %391, ptr %8, align 4, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !7
  %392 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %389, ptr %392, align 8, !tbaa !12
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %9, i64 263, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i195, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i181, %275, %201, %137, %95, %43, %7, %7, %7, %7, %7, %7, %7, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit206, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit204, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit193, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit191, %_ZN11OpenImageIO4v3_13pvt8dataspanIjEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit179, %128, %_ZN11OpenImageIO4v3_13pvt8dataspanItEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit148, %80, %384
  ret void

.body:                                            ; preds = %129, %81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
end_hunk_6
