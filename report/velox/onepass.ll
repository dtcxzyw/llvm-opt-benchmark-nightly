inline.NumInlined: 485
inline.NumDeleted: 277
begin_hunk_0_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !noalias !125 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !125 ; 2 uses
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 12 uses
  %.sink.i = select i1 %i.b, i64 %i.f, i64 2048   ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 4 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.h = ptrtoint ptr %.sink2.i to i64            ; 6 uses
  %i.i = sub i64 %i.g, %i.h                       ; 13 uses
  %i.j = add i64 %i.i, %3                         ; 5 uses
  %i.k = add i64 %.sink1.i, %3                    ; 5 uses
  %i.l = icmp ugt i64 %i.k, %.sink.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  unreachable

_ZN4absl12lts_2024011623inlined_vector_internal13MallocAdapterISaIhELb0EE8AllocateERS3_m.exit.i: ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i) #20 ; 11 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.q = getelementptr i8, ptr %i.o, i64 %i.i     ; 2 uses
  %.not.i.i = icmp eq i64 %3, 0
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  br i1 %.not.i.i53, label %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit, label %.lr.ph.i.i54.preheader.a

.lr.ph.i.i54.preheader.a:                         ; preds = %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_16CopyValueAdapterIS3_EEEEvPhRT_m.exit
  %min.iters.check241 = icmp ult i64 %i.i, 8
  %i.s = sub i64 %i.p, %i.h
  %diff.check240 = icmp ult i64 %i.s, 128
  %or.cond = or i1 %min.iters.check241, %diff.check240
  br i1 %or.cond, label %.lr.ph.i.i54.preheader297, label %vector.main.loop.iter.check242

vector.main.loop.iter.check242:                   ; preds = %.lr.ph.i.i54.preheader.a
  %min.iters.check243 = icmp ult i64 %i.i, 128
  br i1 %min.iters.check243, label %vec.epilog.ph263, label %vector.ph242

vector.ph242:                                     ; preds = %vector.main.loop.iter.check242
  %n.mod.vf245 = and i64 %i.i, 120
  %n.vec244 = and i64 %i.i, -128                  ; 5 uses
  %i.t = getelementptr i8, ptr %.sink2.i, i64 %n.vec244 ; 2 uses
  br label %vector.body245

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <32 x i8> %wide.load251, ptr %i.aa, align 1, !tbaa !54
  %index.next252 = add nuw i64 %index246, 128     ; 2 uses
  %i.ab = icmp eq i64 %index.next252, %n.vec244
  br i1 %i.ab, label %middle.block255, label %vector.body245, !llvm.loop !128

middle.block255:                                  ; preds = %vector.body245
  %cmp.n256 = icmp eq i64 %i.i, %n.vec244
  br i1 %cmp.n256, label %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block255
  %min.epilog.iters.check262 = icmp eq i64 %n.mod.vf245, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph.i.i54.preheader297, label %vec.epilog.ph263, !prof !129

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check242, %vec.epilog.iter.check261
  %vec.epilog.resume.val257 = phi i64 [ %n.vec244, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check242 ]
  %n.vec265 = and i64 %i.i, -8                    ; 4 uses
  %4 = getelementptr i8, ptr %.sink2.i, i64 %n.vec265 ; 2 uses
  br label %vec.epilog.vector.body266

vec.epilog.vector.body266:                        ; preds = %vec.epilog.vector.body266, %vec.epilog.ph263
  %index267 = phi i64 [ %vec.epilog.resume.val257, %vec.epilog.ph263 ], [ %index.next270, %vec.epilog.vector.body266 ] ; 3 uses
  %next.gep268 = getelementptr i8, ptr %.sink2.i, i64 %index267
  %5 = getelementptr inbounds nuw i8, ptr %i.o, i64 %index267
  %wide.load269 = load <8 x i8>, ptr %next.gep268, align 1, !tbaa !54
  store <8 x i8> %wide.load269, ptr %5, align 1, !tbaa !54
  %index.next270 = add nuw i64 %index267, 8       ; 2 uses
  %6 = icmp eq i64 %index.next270, %n.vec265
  br i1 %6, label %middle.block253, label %vec.epilog.vector.body266, !llvm.loop !130

middle.block253:                                  ; preds = %vec.epilog.vector.body266
  %cmp.n254 = icmp eq i64 %i.i, %n.vec265
  br i1 %cmp.n254, label %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit, label %.lr.ph.i.i54.preheader297

.lr.ph.i.i54.preheader297:                        ; preds = %.lr.ph.i.i54.preheader.a, %vec.epilog.iter.check261, %middle.block253
  %.sroa.088.0.ph = phi ptr [ %.sink2.i, %.lr.ph.i.i54.preheader.a ], [ %i.t, %vec.epilog.iter.check261 ], [ %4, %middle.block253 ] ; 2 uses
  %.012.i.i.ph = phi i64 [ 0, %.lr.ph.i.i54.preheader.a ], [ %n.vec244, %vec.epilog.iter.check261 ], [ %n.vec265, %middle.block253 ] ; 3 uses
  %i.ac = sub i64 %i.g, %i.h
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  %i.ag = add nuw i64 %.012.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol, !llvm.loop !131

.lr.ph.i.i54.prol.loopexit:                       ; preds = %.lr.ph.i.i54.prol, %.lr.ph.i.i54.preheader297
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i54.preheader297 ], [ %i.af, %.lr.ph.i.i54.prol ]
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.088.0, i64 4 ; 2 uses
  %i.az = add nuw i64 %.012.i.i, 4                ; 2 uses
  %exitcond.not.i.i55.3 = icmp eq i64 %i.az, %i.i
  br i1 %exitcond.not.i.i55.3, label %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit, label %.lr.ph.i.i54, !llvm.loop !133

_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit: ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54, %middle.block255, %middle.block253, %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_16CopyValueAdapterIS3_EEEEvPhRT_m.exit
  %.sroa.088.1 = phi ptr [ %.sink2.i, %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_16CopyValueAdapterIS3_EEEEvPhRT_m.exit ], [ %4, %middle.block253 ], [ %i.t, %middle.block255 ], [ %.lcssa.unr, %.lr.ph.i.i54.prol.loopexit ], [ %i.ay, %.lr.ph.i.i54 ] ; 7 uses
  %.sroa.088.1258 = ptrtoaddr ptr %.sroa.088.1 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j ; 3 uses
  %i.bb = sub i64 %.sink1.i, %i.i                 ; 8 uses
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <32 x i8> %wide.load273, ptr %i.bn, align 1, !tbaa !54
  %index.next274 = add nuw i64 %index268, 128     ; 2 uses
  %i.bo = icmp eq i64 %index.next274, %n.vec266
  br i1 %i.bo, label %middle.block275, label %vector.body267, !llvm.loop !134

middle.block275:                                  ; preds = %vector.body267
  %cmp.n276 = icmp eq i64 %i.bb, %n.vec266
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a

vec.epilog.iter.check281:                         ; preds = %middle.block275
  %min.epilog.iters.check282 = icmp eq i64 %n.mod.vf265, 0
  br i1 %min.epilog.iters.check282, label %.lr.ph.i.preheader, label %vec.epilog.ph283, !prof !129

vec.epilog.ph283:                                 ; preds = %vector.main.loop.iter.check262, %vec.epilog.iter.check281
  %vec.epilog.resume.val277 = phi i64 [ %n.vec266, %vec.epilog.iter.check281 ], [ 0, %vector.main.loop.iter.check262 ]
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <8 x i8> %wide.load289, ptr %i.bq, align 1, !tbaa !54
  %index.next290 = add nuw i64 %index287, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next290, %n.vec285
  br i1 %i.br, label %vec.epilog.middle.block291, label %vec.epilog.vector.body286, !llvm.loop !135

vec.epilog.middle.block291:                       ; preds = %vec.epilog.vector.body286
  %cmp.n292 = icmp eq i64 %i.bb, %n.vec285
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.088.2, i64 1
  %i.bv = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bv, %i.bb
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2024011623inlined_vector_internal17ConstructElementsISaIhENS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvRNS1_12TypeIdentityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !136

_ZN4absl12lts_2024011623inlined_vector_internal17ConstructElementsISaIhENS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvRNS1_12TypeIdentityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit: ; preds = %.lr.ph.i, %middle.block275, %vec.epilog.middle.block291, %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2024011623inlined_vector_internal21AllocationTransactionISaIhEED2Ev.exit
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <32 x i8> %wide.load126, ptr %i.co, align 1, !tbaa !54
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i62.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <8 x i8> %wide.load131, ptr %i.cr, align 1, !tbaa !54
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next132, %n.vec128
  br i1 %i.cs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n133 = icmp eq i64 %i.bz, %n.vec128
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.084.0, i64 1
  %i.cw = add nuw i64 %.012.i.i63, 1              ; 2 uses
  %exitcond.not.i.i64 = icmp eq i64 %i.cw, %i.bz
  br i1 %exitcond.not.i.i64, label %_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit65, label %.lr.ph.i.i62, !llvm.loop !139

_ZN4absl12lts_2024011623inlined_vector_internal23ConstructionTransactionISaIhEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPhEEEEEvS8_RT_m.exit65: ; preds = %.lr.ph.i.i62, %middle.block, %vec.epilog.middle.block, %bb.d
  %.not = icmp sgt i64 %.sroa.speculated, %i.j
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <32 x i8> %wide.load152, ptr %i.dr, align 1, !tbaa !54
  %index.next160 = add nuw i64 %index145, 128     ; 2 uses
  %i.ds = icmp eq i64 %index.next160, %n.vec143
  br i1 %i.ds, label %middle.block161, label %vector.body144, !llvm.loop !140

middle.block161:                                  ; preds = %vector.body144
  %cmp.n162 = icmp eq i64 %i.de, %n.vec143
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a

vec.epilog.iter.check167:                         ; preds = %middle.block161
  %min.epilog.iters.check168 = icmp eq i64 %n.mod.vf142, 0
  br i1 %min.epilog.iters.check168, label %.lr.ph.preheader, label %vec.epilog.ph169, !prof !141

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check139, %vec.epilog.iter.check167
  %vec.epilog.resume.val163 = phi i64 [ %n.vec143, %vec.epilog.iter.check167 ], [ 0, %vector.main.loop.iter.check139 ]
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <16 x i8> %wide.load176, ptr %i.ea, align 1, !tbaa !54
  %index.next179 = add nuw i64 %index173, 16      ; 2 uses
  %i.eb = icmp eq i64 %index.next179, %n.vec171
  br i1 %i.eb, label %vec.epilog.middle.block180, label %vec.epilog.vector.body172, !llvm.loop !142

vec.epilog.middle.block180:                       ; preds = %vec.epilog.vector.body172
  %cmp.n181 = icmp eq i64 %i.de, %n.vec171
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <32 x i8> %broadcast.splat, ptr %i.ef, align 1, !tbaa !54
  %index.next192 = add nuw i64 %index191, 128     ; 2 uses
  %i.eg = icmp eq i64 %index.next192, %n.vec189
  br i1 %i.eg, label %middle.block193, label %vector.body190, !llvm.loop !143

middle.block193:                                  ; preds = %vector.body190
  %cmp.n194 = icmp eq i64 %i.bz, %n.vec189
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a

vec.epilog.iter.check198:                         ; preds = %middle.block193
  %min.epilog.iters.check199 = icmp eq i64 %n.mod.vf188, 0
  br i1 %min.epilog.iters.check199, label %.lr.ph.i67.preheader, label %vec.epilog.ph200, !prof !129

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check198
  %vec.epilog.resume.val195 = phi i64 [ %n.vec189, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check185 ]
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <8 x i8> %broadcast.splat204, ptr %i.eh, align 1, !tbaa !54
  %index.next207 = add nuw i64 %index206, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next207, %n.vec202
  br i1 %i.ei, label %vec.epilog.middle.block208, label %vec.epilog.vector.body205, !llvm.loop !144

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body205
  %cmp.n209 = icmp eq i64 %i.bz, %n.vec202
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store i8 %.pre, ptr %i.ej, align 1, !tbaa !54
  %i.ek = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %i.ek, %i.bz
  br i1 %exitcond.not.i68, label %_ZN4absl12lts_2024011623inlined_vector_internal14AssignElementsISaIhENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit, label %.lr.ph.i67, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.el = phi ptr [ %i.eo, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store i8 %i.en, ptr %i.el, align 1, !tbaa !54
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 -1 ; 2 uses
  %i.ep = icmp ult ptr %i.eo, %i.cb
  br i1 %i.ep, label %._crit_edge, label %.lr.ph, !llvm.loop !146

_ZN4absl12lts_2024011623inlined_vector_internal14AssignElementsISaIhENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit: ; preds = %.lr.ph.i67, %middle.block193, %vec.epilog.middle.block208, %._crit_edge
  %.not.i69 = icmp eq i64 %3, %i.bz
end_hunk_21
begin_hunk_22_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <32 x i8> %broadcast.splat217, ptr %i.et, align 1, !tbaa !54
  %index.next220 = add nuw i64 %index219, 128     ; 2 uses
  %i.eu = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.eu, label %middle.block221, label %vector.body218, !llvm.loop !147

middle.block221:                                  ; preds = %vector.body218
  %cmp.n222 = icmp eq i64 %i.ce, %n.vec215
end_hunk_22
begin_hunk_23_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a

vec.epilog.iter.check226:                         ; preds = %middle.block221
  %min.epilog.iters.check227 = icmp eq i64 %n.mod.vf214, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph.i70.preheader, label %vec.epilog.ph228, !prof !129

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check211, %vec.epilog.iter.check226
  %vec.epilog.resume.val223 = phi i64 [ %n.vec215, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check211 ]
end_hunk_23
begin_hunk_24_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store <8 x i8> %broadcast.splat232, ptr %i.ev, align 1, !tbaa !54
  %index.next235 = add nuw i64 %index234, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.ew, label %vec.epilog.middle.block236, label %vec.epilog.vector.body233, !llvm.loop !148

vec.epilog.middle.block236:                       ; preds = %vec.epilog.vector.body233
  %cmp.n237 = icmp eq i64 %i.ce, %n.vec230
end_hunk_24
begin_hunk_25_@_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m:bb.a
  store i8 %.pre121, ptr %i.ex, align 1, !tbaa !54
  %i.ey = add nuw i64 %.06.i, 1                   ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %i.ey, %i.ce
  br i1 %exitcond.not.i71, label %.loopexit, label %.lr.ph.i70, !llvm.loop !149

.loopexit:                                        ; preds = %.lr.ph.i70, %middle.block221, %vec.epilog.middle.block236, %_ZN4absl12lts_2024011623inlined_vector_internal14AssignElementsISaIhENS1_16CopyValueAdapterIS3_EEEEvNSt16allocator_traitsIT_E7pointerERT0_NS8_9size_typeE.exit
  %i.ez = shl i64 %3, 1
end_hunk_25
begin_hunk_26_@llvm.masked.store.v4p0.p0
!126 = distinct !{!126, !127, !"_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE15MakeStorageViewEv: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE15MakeStorageViewEv"}
!128 = distinct !{!128, !56, !57, !58}
!129 = !{!"branch_weights", i32 8, i32 120}
!130 = distinct !{!130, !56, !57, !58}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = distinct !{!133, !56, !57}
!134 = distinct !{!134, !56, !57, !58}
!135 = distinct !{!135, !56, !57, !58}
!136 = distinct !{!136, !56, !57}
!137 = distinct !{!137, !56, !57, !58}
!138 = distinct !{!138, !56, !57, !58}
!139 = distinct !{!139, !56, !57}
!140 = distinct !{!140, !56, !57, !58}
!141 = !{!"branch_weights", i32 16, i32 112}
!142 = distinct !{!142, !56, !57, !58}
!143 = distinct !{!143, !56, !57, !58}
!144 = distinct !{!144, !56, !57, !58}
!145 = distinct !{!145, !56, !58, !57}
!146 = distinct !{!146, !56, !57}
!147 = distinct !{!147, !56, !57, !58}
!148 = distinct !{!148, !56, !57, !58}
!149 = distinct !{!149, !56, !58, !57}
end_hunk_26
