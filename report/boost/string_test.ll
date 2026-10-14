Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS0_17constant_iteratorIcEEEEPcPKcT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE:bb.a
bb.w:                                             ; preds = %bb.v, %bb.a
  %.pre-phi = phi i1 [ %.pre218, %bb.v ], [ %i.d, %bb.a ]
  %i.js = phi ptr [ %.pre215, %bb.v ], [ %i.g, %bb.a ]
  %i.jt = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = sub i64 %i.h, %i.ju
  %i.jw = select i1 %.pre-phi, ptr %i.e, ptr %i.js
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 %i.jv
  ret ptr %i.jx
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS_7movelib16reverse_iteratorIPcEEEES8_PKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 19 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %.not180 = icmp eq ptr %i.i, %i.j
  br i1 %.not180, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 17 uses
  %i.n = lshr i8 %i.c, 1
  %i.o = zext nneg i8 %i.n to i64
  %i.p = load i64, ptr %0, align 8                ; 3 uses
  %i.q = lshr i64 %i.p, 1                         ; 2 uses
  %i.r = select i1 %i.d, i64 %i.o, i64 %i.q       ; 19 uses
  %i.s = trunc i64 %i.p to i1                     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = add i64 %i.u, -1
  %i.w = select i1 %i.s, i64 22, i64 %i.v         ; 4 uses
  %i.x = sub i64 %i.w, %i.r
  %i.y = select i1 %i.s, ptr %i.e, ptr %i.g       ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !77
  %.not181 = icmp ult i64 %i.x, %i.m
  br i1 %.not181, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.w, 1                          ; 5 uses
  %i.aa = lshr i64 %i.p, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.s, i64 %i.ab, i64 %i.q
  %.neg.i = sub i64 %i.ac, %i.w
  %i.ad = sub i64 9223372036854775806, %i.w
  %i.ae = add i64 %.neg.i, %i.m                   ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.423) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %i.z, 2305843009213693952
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = shl nuw i64 %i.z, 3
  %i.ai = udiv i64 %i.ah, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 9223372036854775807)
  %i.am = select i1 %i.aj, i64 9223372036854775807, i64 %i.al
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.am, %bb.g ]
  %i.an = add i64 %i.ae, %i.z
  %i.ao = tail call noundef i64 @llvm.umax.i64(i64 %i.an, i64 %.0.i.i)
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !56
  %i.ap = add i64 %i.r, %i.m                      ; 3 uses
  %i.aq = add i64 %i.ap, 1
  %spec.store.select = select i1 %i.s, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8, !tbaa !77
  %spec.select = select i1 %i.s, i32 1, i32 7
  %i.ar = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIcEELj1EE18allocation_commandERS4_jmRmRPc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 19 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 2 uses
  %i.at = icmp eq ptr %i.y, %i.ar
  br i1 %i.at, label %bb.h, label %bb.p

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.au = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.au, ptr %i.t, align 8, !tbaa !62
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.av = ptrtoint ptr %i.y to i64                ; 10 uses
  %.neg = sub i64 %i.av, %i.h
  %i.aw = add i64 %.neg, %i.r                     ; 4 uses
  %.not102 = icmp ult i64 %i.aw, %i.m
  br i1 %.not102, label %bb.k, label %iter.check367

iter.check367:                                    ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %i.y, i64 %i.r    ; 6 uses
  %i.ay = sub i64 %i.r, %i.m
  %i.az = getelementptr i8, ptr %i.y, i64 %i.ay   ; 5 uses
  %min.iters.check351 = icmp ult i64 %i.m, 8
  br i1 %min.iters.check351, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %iter.check367
  %min.iters.check353 = icmp ult i64 %i.m, 32
  br i1 %min.iters.check353, label %vec.epilog.ph371, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.ba = and i64 %i.m, 24
  %n.vec355 = and i64 %i.m, -32                   ; 5 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 %n.vec355
  %i.bc = getelementptr i8, ptr %i.az, i64 %n.vec355
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 3 uses
  %next.gep358 = getelementptr i8, ptr %i.ax, i64 %index357 ; 2 uses
  %next.gep359 = getelementptr i8, ptr %i.az, i64 %index357 ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep358, i64 1
  %i.be = getelementptr i8, ptr %next.gep359, i64 1
  %i.bf = getelementptr i8, ptr %next.gep359, i64 17
  %wide.load360 = load <16 x i8>, ptr %i.be, align 1, !tbaa !51
  %wide.load361 = load <16 x i8>, ptr %i.bf, align 1, !tbaa !51
  %i.bg = getelementptr i8, ptr %next.gep358, i64 17
  store <16 x i8> %wide.load360, ptr %i.bd, align 1, !tbaa !51
  store <16 x i8> %wide.load361, ptr %i.bg, align 1, !tbaa !51
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.bh = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.bh, label %middle.block363, label %vector.body356, !llvm.loop !814

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %i.m, %n.vec355
  br i1 %cmp.n364, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block363
  %min.epilog.iters.check370 = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check370, label %.lr.ph.i.preheader, label %vec.epilog.ph371, !prof !78

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check369
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec372 = and i64 %i.m, -8                    ; 4 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %n.vec372
  %i.bj = getelementptr i8, ptr %i.az, i64 %n.vec372
  br label %vec.epilog.vector.body373

vec.epilog.vector.body373:                        ; preds = %vec.epilog.vector.body373, %vec.epilog.ph371
  %index374 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph371 ], [ %index.next378, %vec.epilog.vector.body373 ] ; 3 uses
  %next.gep375 = getelementptr i8, ptr %i.ax, i64 %index374
  %next.gep376 = getelementptr i8, ptr %i.az, i64 %index374
  %i.bk = getelementptr i8, ptr %next.gep375, i64 1
  %i.bl = getelementptr i8, ptr %next.gep376, i64 1
  %wide.load377 = load <8 x i8>, ptr %i.bl, align 1, !tbaa !51
  store <8 x i8> %wide.load377, ptr %i.bk, align 1, !tbaa !51
  %index.next378 = add nuw i64 %index374, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next378, %n.vec372
  br i1 %i.bm, label %vec.epilog.middle.block379, label %vec.epilog.vector.body373, !llvm.loop !815

vec.epilog.middle.block379:                       ; preds = %vec.epilog.vector.body373
  %cmp.n380 = icmp eq i64 %i.m, %n.vec372
  br i1 %cmp.n380, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check367, %vec.epilog.iter.check369, %vec.epilog.middle.block379
  %.0711.i.pn.ph = phi ptr [ %i.ax, %iter.check367 ], [ %i.bb, %vec.epilog.iter.check369 ], [ %i.bi, %vec.epilog.middle.block379 ]
  %.0810.i.pn.ph = phi ptr [ %i.az, %iter.check367 ], [ %i.bc, %vec.epilog.iter.check369 ], [ %i.bj, %vec.epilog.middle.block379 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 1 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 1 ; 3 uses
  %i.bn = load i8, ptr %.0810.i, align 1, !tbaa !51
  store i8 %i.bn, ptr %.0711.i, align 1, !tbaa !51
  %.not.i = icmp eq ptr %.0810.i, %i.ax
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !816

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %vec.epilog.middle.block379, %middle.block363
  %i.bo = sub nuw i64 %i.aw, %i.m
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit
  %i.br = getelementptr inbounds i8, ptr %1, i64 %i.m
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %1, i64 %i.bp, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit

_ZNSt11char_traitsIcE4moveEPcPKcm.exit:           ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, %bb.j
  %i.bs = load ptr, ptr %2, align 8, !tbaa !69    ; 9 uses
  %5 = ptrtoaddr ptr %i.bs to i64                 ; 2 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !69    ; 4 uses
  %6 = ptrtoaddr ptr %i.bt to i64                 ; 4 uses
  %.not2.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not2.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %iter.check410

iter.check410:                                    ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %i.bu = sub i64 %5, %6                          ; 7 uses
  %min.iters.check388 = icmp ult i64 %i.bu, 8
  br i1 %min.iters.check388, label %.lr.ph.i103.preheader, label %vector.memcheck389

vector.memcheck389:                               ; preds = %iter.check410
  %i.bv = sub i64 %5, %6
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv
  %bound0390 = icmp ult ptr %1, %i.bs
  %bound1391 = icmp ult ptr %i.bt, %i.bw
  %found.conflict392 = and i1 %bound0390, %bound1391
  br i1 %found.conflict392, label %.lr.ph.i103.preheader, label %vector.main.loop.iter.check393

vector.main.loop.iter.check393:                   ; preds = %vector.memcheck389
  %min.iters.check394 = icmp ult i64 %i.bu, 32
  br i1 %min.iters.check394, label %vec.epilog.ph414, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check393
  %i.bx = and i64 %i.bu, 24
  %n.vec396 = and i64 %i.bu, -32                  ; 5 uses
  %i.by = sub i64 0, %n.vec396
  %i.bz = getelementptr i8, ptr %i.bs, i64 %i.by
  %i.ca = getelementptr i8, ptr %1, i64 %n.vec396
  br label %vector.body397

vector.body397:                                   ; preds = %vector.ph395, %vector.body397
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next405, %vector.body397 ] ; 3 uses
  %i.cb = sub i64 0, %index398
  %next.gep399 = getelementptr i8, ptr %i.bs, i64 %i.cb ; 2 uses
  %next.gep400 = getelementptr i8, ptr %1, i64 %index398 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep399, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep399, i64 -32
  %wide.load401 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !51, !alias.scope !863
  %wide.load402 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !51, !alias.scope !863
  %reverse403 = shufflevector <16 x i8> %wide.load401, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse404 = shufflevector <16 x i8> %wide.load402, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ce = getelementptr i8, ptr %next.gep400, i64 16
  store <16 x i8> %reverse403, ptr %next.gep400, align 1, !tbaa !51, !alias.scope !864, !noalias !863
  store <16 x i8> %reverse404, ptr %i.ce, align 1, !tbaa !51, !alias.scope !864, !noalias !863
  %index.next405 = add nuw i64 %index398, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next405, %n.vec396
  br i1 %i.cf, label %middle.block406, label %vector.body397, !llvm.loop !820

middle.block406:                                  ; preds = %vector.body397
  %cmp.n407 = icmp eq i64 %i.bu, %n.vec396
  br i1 %cmp.n407, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %vec.epilog.iter.check412

vec.epilog.iter.check412:                         ; preds = %middle.block406
  %min.epilog.iters.check413 = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check413, label %.lr.ph.i103.preheader, label %vec.epilog.ph414, !prof !78

vec.epilog.ph414:                                 ; preds = %vector.main.loop.iter.check393, %vec.epilog.iter.check412
  %vec.epilog.resume.val408 = phi i64 [ %n.vec396, %vec.epilog.iter.check412 ], [ 0, %vector.main.loop.iter.check393 ]
  %n.vec415 = and i64 %i.bu, -8                   ; 4 uses
  %i.cg = sub i64 0, %n.vec415
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cg
  %i.ci = getelementptr i8, ptr %1, i64 %n.vec415
  br label %vec.epilog.vector.body416

vec.epilog.vector.body416:                        ; preds = %vec.epilog.vector.body416, %vec.epilog.ph414
  %index417 = phi i64 [ %vec.epilog.resume.val408, %vec.epilog.ph414 ], [ %index.next422, %vec.epilog.vector.body416 ] ; 3 uses
  %i.cj = sub i64 0, %index417
  %next.gep418 = getelementptr i8, ptr %i.bs, i64 %i.cj
  %next.gep419 = getelementptr i8, ptr %1, i64 %index417
  %i.ck = getelementptr inbounds i8, ptr %next.gep418, i64 -8
  %wide.load420 = load <8 x i8>, ptr %i.ck, align 1, !tbaa !51, !alias.scope !863
  %reverse421 = shufflevector <8 x i8> %wide.load420, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse421, ptr %next.gep419, align 1, !tbaa !51, !alias.scope !864, !noalias !863
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.cl, label %vec.epilog.middle.block423, label %vec.epilog.vector.body416, !llvm.loop !821

vec.epilog.middle.block423:                       ; preds = %vec.epilog.vector.body416
  %cmp.n424 = icmp eq i64 %i.bu, %n.vec415
  br i1 %cmp.n424, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %.lr.ph.i103.preheader

.lr.ph.i103.preheader:                            ; preds = %iter.check410, %vector.memcheck389, %vec.epilog.iter.check412, %vec.epilog.middle.block423
  %.sroa.0174.0.ph = phi ptr [ %i.bs, %iter.check410 ], [ %i.bs, %vector.memcheck389 ], [ %i.bz, %vec.epilog.iter.check412 ], [ %i.ch, %vec.epilog.middle.block423 ] ; 3 uses
  %.03.i.ph = phi ptr [ %1, %iter.check410 ], [ %1, %vector.memcheck389 ], [ %i.ca, %vec.epilog.iter.check412 ], [ %i.ci, %vec.epilog.middle.block423 ] ; 2 uses
  %.sroa.0174.0.ph563 = ptrtoaddr ptr %.sroa.0174.0.ph to i64 ; 2 uses
  %i.cm = sub i64 %.sroa.0174.0.ph563, %6
  %xtraiter564 = and i64 %i.cm, 7                 ; 2 uses
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %.lr.ph.i103.prol.loopexit, label %.lr.ph.i103.prol

.lr.ph.i103.prol:                                 ; preds = %.lr.ph.i103.preheader, %.lr.ph.i103.prol
  %.sroa.0174.0.prol = phi ptr [ %i.cn, %.lr.ph.i103.prol ], [ %.sroa.0174.0.ph, %.lr.ph.i103.preheader ]
  %.03.i.prol = phi ptr [ %i.cp, %.lr.ph.i103.prol ], [ %.03.i.ph, %.lr.ph.i103.preheader ] ; 2 uses
  %prol.iter566 = phi i64 [ %prol.iter566.next, %.lr.ph.i103.prol ], [ 0, %.lr.ph.i103.preheader ]
  %i.cn = getelementptr inbounds i8, ptr %.sroa.0174.0.prol, i64 -1 ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !51
  store i8 %i.co, ptr %.03.i.prol, align 1, !tbaa !51
  %i.cp = getelementptr inbounds nuw i8, ptr %.03.i.prol, i64 1 ; 2 uses
  %prol.iter566.next = add i64 %prol.iter566, 1   ; 2 uses
  %prol.iter566.cmp.not = icmp eq i64 %prol.iter566.next, %xtraiter564
  br i1 %prol.iter566.cmp.not, label %.lr.ph.i103.prol.loopexit, label %.lr.ph.i103.prol, !llvm.loop !822

.lr.ph.i103.prol.loopexit:                        ; preds = %.lr.ph.i103.prol, %.lr.ph.i103.preheader
  %.sroa.0174.0.unr = phi ptr [ %.sroa.0174.0.ph, %.lr.ph.i103.preheader ], [ %i.cn, %.lr.ph.i103.prol ]
  %.03.i.unr = phi ptr [ %.03.i.ph, %.lr.ph.i103.preheader ], [ %i.cp, %.lr.ph.i103.prol ]
  %i.cq = sub i64 %6, %.sroa.0174.0.ph563
  %i.cr = icmp ugt i64 %i.cq, -8
  br i1 %i.cr, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %.lr.ph.i103.prol.loopexit, %.lr.ph.i103
  %.sroa.0174.0 = phi ptr [ %i.dn, %.lr.ph.i103 ], [ %.sroa.0174.0.unr, %.lr.ph.i103.prol.loopexit ] ; 8 uses
  %.03.i = phi ptr [ %i.dp, %.lr.ph.i103 ], [ %.03.i.unr, %.lr.ph.i103.prol.loopexit ] ; 9 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !51
  store i8 %i.ct, ptr %.03.i, align 1, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !51
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.03.i, i64 2
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -3
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !51
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !51
  %i.da = getelementptr inbounds nuw i8, ptr %.03.i, i64 3
  %i.db = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -4
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !51
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !51
  %i.dd = getelementptr inbounds nuw i8, ptr %.03.i, i64 4
  %i.de = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -5
  %i.df = load i8, ptr %i.de, align 1, !tbaa !51
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !51
  %i.dg = getelementptr inbounds nuw i8, ptr %.03.i, i64 5
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -6
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !51
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %.03.i, i64 6
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -7
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !51
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !51
  %i.dm = getelementptr inbounds nuw i8, ptr %.03.i, i64 7
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0174.0, i64 -8 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !51
  store i8 %i.do, ptr %i.dm, align 1, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  %.not.i104.7 = icmp eq ptr %i.dn, %i.bt
  br i1 %.not.i104.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %.lr.ph.i103, !llvm.loop !823

bb.k:                                             ; preds = %bb.i
  %i.dq = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64              ; 5 uses
  %i.ds = xor i64 %i.aw, -1
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds ; 10 uses
  %i.du = load ptr, ptr %3, align 8, !tbaa !69    ; 4 uses
  %7 = ptrtoaddr ptr %i.du to i64                 ; 4 uses
  %i.dv = getelementptr i8, ptr %i.y, i64 %i.r    ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 1      ; 8 uses
  %.not4.i = icmp eq ptr %i.dt, %i.du
  br i1 %.not4.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %iter.check454

iter.check454:                                    ; preds = %bb.k
  %i.dx = add i64 %i.h, %i.dr
  %i.dy = xor i64 %i.r, -1
  %i.dz = add i64 %i.dx, %i.dy
  %i.ea = add i64 %i.av, %7
  %i.eb = sub i64 %i.dz, %i.ea                    ; 7 uses
  %min.iters.check432 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check432, label %.lr.ph.i105.preheader, label %vector.memcheck433

vector.memcheck433:                               ; preds = %iter.check454
  %i.ec = add i64 %i.av, %7
  %i.ed = add i64 %i.h, %i.dr
  %i.ee = sub i64 %i.ed, %i.ec
  %i.ef = getelementptr i8, ptr %i.y, i64 %i.ee
  %bound0434 = icmp ult ptr %i.dw, %i.dt
  %bound1435 = icmp ult ptr %i.du, %i.ef
  %found.conflict436 = and i1 %bound0434, %bound1435
  br i1 %found.conflict436, label %.lr.ph.i105.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %vector.memcheck433
  %min.iters.check438 = icmp ult i64 %i.eb, 32
  br i1 %min.iters.check438, label %vec.epilog.ph458, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %i.eg = and i64 %i.eb, 24
  %n.vec440 = and i64 %i.eb, -32                  ; 5 uses
  %i.eh = sub i64 0, %n.vec440
  %i.ei = getelementptr i8, ptr %i.dt, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.dw, i64 %n.vec440
  br label %vector.body441

vector.body441:                                   ; preds = %vector.ph439, %vector.body441
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next449, %vector.body441 ] ; 3 uses
  %i.ek = sub i64 0, %index442
  %next.gep443 = getelementptr i8, ptr %i.dt, i64 %i.ek ; 2 uses
  %next.gep444 = getelementptr i8, ptr %i.dw, i64 %index442 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %next.gep443, i64 -16
  %i.em = getelementptr inbounds i8, ptr %next.gep443, i64 -32
  %wide.load445 = load <16 x i8>, ptr %i.el, align 1, !tbaa !51, !alias.scope !865
  %wide.load446 = load <16 x i8>, ptr %i.em, align 1, !tbaa !51, !alias.scope !865
  %reverse447 = shufflevector <16 x i8> %wide.load445, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse448 = shufflevector <16 x i8> %wide.load446, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.en = getelementptr i8, ptr %next.gep444, i64 16
  store <16 x i8> %reverse447, ptr %next.gep444, align 1, !tbaa !51, !alias.scope !866, !noalias !865
  store <16 x i8> %reverse448, ptr %i.en, align 1, !tbaa !51, !alias.scope !866, !noalias !865
  %index.next449 = add nuw i64 %index442, 32      ; 2 uses
  %i.eo = icmp eq i64 %index.next449, %n.vec440
  br i1 %i.eo, label %middle.block450, label %vector.body441, !llvm.loop !827

middle.block450:                                  ; preds = %vector.body441
  %cmp.n451 = icmp eq i64 %i.eb, %n.vec440
  br i1 %cmp.n451, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %vec.epilog.iter.check456

vec.epilog.iter.check456:                         ; preds = %middle.block450
  %min.epilog.iters.check457 = icmp eq i64 %i.eg, 0
  br i1 %min.epilog.iters.check457, label %.lr.ph.i105.preheader, label %vec.epilog.ph458, !prof !78

vec.epilog.ph458:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check456
  %vec.epilog.resume.val452 = phi i64 [ %n.vec440, %vec.epilog.iter.check456 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec459 = and i64 %i.eb, -8                   ; 4 uses
  %i.ep = sub i64 0, %n.vec459
  %i.eq = getelementptr i8, ptr %i.dt, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.dw, i64 %n.vec459
  br label %vec.epilog.vector.body460

vec.epilog.vector.body460:                        ; preds = %vec.epilog.vector.body460, %vec.epilog.ph458
  %index461 = phi i64 [ %vec.epilog.resume.val452, %vec.epilog.ph458 ], [ %index.next466, %vec.epilog.vector.body460 ] ; 3 uses
  %i.es = sub i64 0, %index461
  %next.gep462 = getelementptr i8, ptr %i.dt, i64 %i.es
  %next.gep463 = getelementptr i8, ptr %i.dw, i64 %index461
  %i.et = getelementptr inbounds i8, ptr %next.gep462, i64 -8
  %wide.load464 = load <8 x i8>, ptr %i.et, align 1, !tbaa !51, !alias.scope !865
  %reverse465 = shufflevector <8 x i8> %wide.load464, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse465, ptr %next.gep463, align 1, !tbaa !51, !alias.scope !866, !noalias !865
  %index.next466 = add nuw i64 %index461, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next466, %n.vec459
  br i1 %i.eu, label %vec.epilog.middle.block467, label %vec.epilog.vector.body460, !llvm.loop !828

vec.epilog.middle.block467:                       ; preds = %vec.epilog.vector.body460
  %cmp.n468 = icmp eq i64 %i.eb, %n.vec459
  br i1 %cmp.n468, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %.lr.ph.i105.preheader

.lr.ph.i105.preheader:                            ; preds = %iter.check454, %vector.memcheck433, %vec.epilog.iter.check456, %vec.epilog.middle.block467
  %.sroa.0167.0.ph = phi ptr [ %i.dt, %iter.check454 ], [ %i.dt, %vector.memcheck433 ], [ %i.ei, %vec.epilog.iter.check456 ], [ %i.eq, %vec.epilog.middle.block467 ] ; 3 uses
  %.035.i.ph = phi ptr [ %i.dw, %iter.check454 ], [ %i.dw, %vector.memcheck433 ], [ %i.ej, %vec.epilog.iter.check456 ], [ %i.er, %vec.epilog.middle.block467 ] ; 2 uses
  %.sroa.0167.0.ph567 = ptrtoaddr ptr %.sroa.0167.0.ph to i64 ; 2 uses
  %i.ev = sub i64 %.sroa.0167.0.ph567, %7
  %xtraiter568 = and i64 %i.ev, 7                 ; 2 uses
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.i105.preheader, %.lr.ph.i105.prol
  %.sroa.0167.0.prol = phi ptr [ %i.ew, %.lr.ph.i105.prol ], [ %.sroa.0167.0.ph, %.lr.ph.i105.preheader ]
  %.035.i.prol = phi ptr [ %i.ey, %.lr.ph.i105.prol ], [ %.035.i.ph, %.lr.ph.i105.preheader ] ; 2 uses
  %prol.iter570 = phi i64 [ %prol.iter570.next, %.lr.ph.i105.prol ], [ 0, %.lr.ph.i105.preheader ]
  %i.ew = getelementptr inbounds i8, ptr %.sroa.0167.0.prol, i64 -1 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !51
  store i8 %i.ex, ptr %.035.i.prol, align 1, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %.035.i.prol, i64 1 ; 2 uses
  %prol.iter570.next = add i64 %prol.iter570, 1   ; 2 uses
  %prol.iter570.cmp.not = icmp eq i64 %prol.iter570.next, %xtraiter568
  br i1 %prol.iter570.cmp.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !829

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.i105.preheader
  %.sroa.0167.0.unr = phi ptr [ %.sroa.0167.0.ph, %.lr.ph.i105.preheader ], [ %i.ew, %.lr.ph.i105.prol ]
  %.035.i.unr = phi ptr [ %.035.i.ph, %.lr.ph.i105.preheader ], [ %i.ey, %.lr.ph.i105.prol ]
  %i.ez = sub i64 %7, %.sroa.0167.0.ph567
  %i.fa = icmp ugt i64 %i.ez, -8
  br i1 %i.fa, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %.sroa.0167.0 = phi ptr [ %i.fw, %.lr.ph.i105 ], [ %.sroa.0167.0.unr, %.lr.ph.i105.prol.loopexit ] ; 8 uses
  %.035.i = phi ptr [ %i.fy, %.lr.ph.i105 ], [ %.035.i.unr, %.lr.ph.i105.prol.loopexit ] ; 9 uses
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !51
  store i8 %i.fc, ptr %.035.i, align 1, !tbaa !51
  %i.fd = getelementptr inbounds nuw i8, ptr %.035.i, i64 1
  %i.fe = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -2
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !51
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -3
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !51
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %.035.i, i64 3
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -4
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !51
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.fn = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -5
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !51
  store i8 %i.fo, ptr %i.fm, align 1, !tbaa !51
  %i.fp = getelementptr inbounds nuw i8, ptr %.035.i, i64 5
  %i.fq = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -6
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !51
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !51
  %i.fs = getelementptr inbounds nuw i8, ptr %.035.i, i64 6
  %i.ft = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -7
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !51
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !51
  %i.fv = getelementptr inbounds nuw i8, ptr %.035.i, i64 7
  %i.fw = getelementptr inbounds i8, ptr %.sroa.0167.0, i64 -8 ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !51
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !51
  %i.fy = getelementptr inbounds nuw i8, ptr %.035.i, i64 8
  %.not.i106.7 = icmp eq ptr %i.fw, %i.du
  br i1 %.not.i106.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit, label %.lr.ph.i105, !llvm.loop !830

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105, %middle.block450, %vec.epilog.middle.block467, %bb.k
  %i.fz = sub nuw i64 %i.m, %i.aw
  %i.ga = add i64 %i.fz, %i.r                     ; 3 uses
  %i.gb = load i8, ptr %0, align 8, !tbaa !51
  %i.gc = trunc i8 %i.gb to i1
  br i1 %i.gc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit
  %i.gd = trunc i64 %i.ga to i8
  %i.ge = shl i8 %i.gd, 1
  %i.gf = or disjoint i8 %i.ge, 1
  store i8 %i.gf, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit
  %i.gg = load i64, ptr %0, align 8
  %i.gh = shl i64 %i.ga, 1
  %i.gi = and i64 %i.gg, 1
  %i.gj = or disjoint i64 %i.gi, %i.gh
  store i64 %i.gj, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit: ; preds = %bb.l, %bb.m
  %.not9.i108 = icmp eq ptr %1, %i.dw
  br i1 %.not9.i108, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %iter.check489

iter.check489:                                    ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.gk = getelementptr inbounds i8, ptr %i.y, i64 %i.ga ; 6 uses
  %i.gl = add i64 %i.r, %i.av
  %i.gm = add i64 %i.gl, 1
  %i.gn = sub i64 %i.gm, %i.h                     ; 7 uses
  %min.iters.check473 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check473, label %.lr.ph.i109.preheader, label %vector.memcheck471

vector.memcheck471:                               ; preds = %iter.check489
  %i.go = add i64 %i.h, %i.av
  %i.gp = add i64 %i.go, %i.k
  %i.gq = add i64 %i.av, %i.l
  %i.gr = add i64 %i.gq, %i.h
  %i.gs = sub i64 %i.gr, %i.gp
  %diff.check472 = icmp ugt i64 %i.gs, -32
  br i1 %diff.check472, label %.lr.ph.i109.preheader, label %vector.main.loop.iter.check474

vector.main.loop.iter.check474:                   ; preds = %vector.memcheck471
  %min.iters.check475 = icmp ult i64 %i.gn, 32
  br i1 %min.iters.check475, label %vec.epilog.ph493, label %vector.ph476

vector.ph476:                                     ; preds = %vector.main.loop.iter.check474
  %i.gt = and i64 %i.gn, 24
  %n.vec477 = and i64 %i.gn, -32                  ; 5 uses
  %i.gu = getelementptr i8, ptr %i.gk, i64 %n.vec477
  %i.gv = getelementptr i8, ptr %1, i64 %n.vec477
  br label %vector.body478

vector.body478:                                   ; preds = %vector.ph476, %vector.body478
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next484, %vector.body478 ] ; 3 uses
  %next.gep480 = getelementptr i8, ptr %i.gk, i64 %index479 ; 2 uses
  %next.gep481 = getelementptr i8, ptr %1, i64 %index479 ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep481, i64 16
  %wide.load482 = load <16 x i8>, ptr %next.gep481, align 1, !tbaa !51
  %wide.load483 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !51
  %i.gx = getelementptr i8, ptr %next.gep480, i64 16
  store <16 x i8> %wide.load482, ptr %next.gep480, align 1, !tbaa !51
  store <16 x i8> %wide.load483, ptr %i.gx, align 1, !tbaa !51
  %index.next484 = add nuw i64 %index479, 32      ; 2 uses
  %i.gy = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.gy, label %middle.block485, label %vector.body478, !llvm.loop !831

middle.block485:                                  ; preds = %vector.body478
  %cmp.n486 = icmp eq i64 %i.gn, %n.vec477
  br i1 %cmp.n486, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %vec.epilog.iter.check491

vec.epilog.iter.check491:                         ; preds = %middle.block485
  %min.epilog.iters.check492 = icmp eq i64 %i.gt, 0
  br i1 %min.epilog.iters.check492, label %.lr.ph.i109.preheader, label %vec.epilog.ph493, !prof !78

vec.epilog.ph493:                                 ; preds = %vector.main.loop.iter.check474, %vec.epilog.iter.check491
  %vec.epilog.resume.val487 = phi i64 [ %n.vec477, %vec.epilog.iter.check491 ], [ 0, %vector.main.loop.iter.check474 ]
  %n.vec494 = and i64 %i.gn, -8                   ; 4 uses
  %i.gz = getelementptr i8, ptr %i.gk, i64 %n.vec494
  %i.ha = getelementptr i8, ptr %1, i64 %n.vec494
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph493
  %index496 = phi i64 [ %vec.epilog.resume.val487, %vec.epilog.ph493 ], [ %index.next500, %vec.epilog.vector.body495 ] ; 3 uses
  %next.gep497 = getelementptr i8, ptr %i.gk, i64 %index496
  %next.gep498 = getelementptr i8, ptr %1, i64 %index496
  %wide.load499 = load <8 x i8>, ptr %next.gep498, align 1, !tbaa !51
  store <8 x i8> %wide.load499, ptr %next.gep497, align 1, !tbaa !51
  %index.next500 = add nuw i64 %index496, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next500, %n.vec494
  br i1 %i.hb, label %vec.epilog.middle.block501, label %vec.epilog.vector.body495, !llvm.loop !832

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body495
  %cmp.n502 = icmp eq i64 %i.gn, %n.vec494
  br i1 %cmp.n502, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %iter.check489, %vector.memcheck471, %vec.epilog.iter.check491, %vec.epilog.middle.block501
  %.0711.i110.ph = phi ptr [ %i.gk, %iter.check489 ], [ %i.gk, %vector.memcheck471 ], [ %i.gu, %vec.epilog.iter.check491 ], [ %i.gz, %vec.epilog.middle.block501 ] ; 2 uses
  %.0810.i111.ph = phi ptr [ %1, %iter.check489 ], [ %1, %vector.memcheck471 ], [ %i.gv, %vec.epilog.iter.check491 ], [ %i.ha, %vec.epilog.middle.block501 ] ; 3 uses
  %i.hc = add i64 %i.r, %i.av                     ; 2 uses
  %i.hd = add i64 %i.hc, 1
  %.0810.i111.ph571 = ptrtoaddr ptr %.0810.i111.ph to i64 ; 2 uses
  %i.he = sub i64 %i.hd, %.0810.i111.ph571
  %i.hf = sub i64 %i.hc, %.0810.i111.ph571
  %xtraiter572 = and i64 %i.he, 7                 ; 2 uses
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol

.lr.ph.i109.prol:                                 ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109.prol
  %.0711.i110.prol = phi ptr [ %i.hh, %.lr.ph.i109.prol ], [ %.0711.i110.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %.0810.i111.prol = phi ptr [ %i.hi, %.lr.ph.i109.prol ], [ %.0810.i111.ph, %.lr.ph.i109.preheader ] ; 2 uses
  %prol.iter574 = phi i64 [ %prol.iter574.next, %.lr.ph.i109.prol ], [ 0, %.lr.ph.i109.preheader ]
  %i.hg = load i8, ptr %.0810.i111.prol, align 1, !tbaa !51
  store i8 %i.hg, ptr %.0711.i110.prol, align 1, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %.0711.i110.prol, i64 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0810.i111.prol, i64 1 ; 2 uses
  %prol.iter574.next = add i64 %prol.iter574, 1   ; 2 uses
  %prol.iter574.cmp.not = icmp eq i64 %prol.iter574.next, %xtraiter572
  br i1 %prol.iter574.cmp.not, label %.lr.ph.i109.prol.loopexit, label %.lr.ph.i109.prol, !llvm.loop !833

.lr.ph.i109.prol.loopexit:                        ; preds = %.lr.ph.i109.prol, %.lr.ph.i109.preheader
  %.0711.i110.unr = phi ptr [ %.0711.i110.ph, %.lr.ph.i109.preheader ], [ %i.hh, %.lr.ph.i109.prol ]
  %.0810.i111.unr = phi ptr [ %.0810.i111.ph, %.lr.ph.i109.preheader ], [ %i.hi, %.lr.ph.i109.prol ]
  %i.hj = icmp ult i64 %i.hf, 7
  br i1 %i.hj, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109
  %.0711.i110 = phi ptr [ %i.ig, %.lr.ph.i109 ], [ %.0711.i110.unr, %.lr.ph.i109.prol.loopexit ] ; 9 uses
  %.0810.i111 = phi ptr [ %i.ih, %.lr.ph.i109 ], [ %.0810.i111.unr, %.lr.ph.i109.prol.loopexit ] ; 9 uses
  %i.hk = load i8, ptr %.0810.i111, align 1, !tbaa !51
  store i8 %i.hk, ptr %.0711.i110, align 1, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !51
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !51
  %i.ho = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 2
  %i.hp = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 2
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !51
  store i8 %i.hq, ptr %i.ho, align 1, !tbaa !51
  %i.hr = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 3
  %i.hs = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !51
  store i8 %i.ht, ptr %i.hr, align 1, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 4
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !51
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !51
  %i.hx = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 5
  %i.hy = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 5
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !51
  store i8 %i.hz, ptr %i.hx, align 1, !tbaa !51
  %i.ia = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 6
  %i.ib = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 6
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !51
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !51
  %i.id = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 7
  %i.ie = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 7 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !51
  store i8 %i.if, ptr %i.id, align 1, !tbaa !51
  %i.ig = getelementptr inbounds nuw i8, ptr %.0711.i110, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %.0810.i111, i64 8
  %.not.i112.7 = icmp eq ptr %i.ie, %i.dv
  br i1 %.not.i112.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, label %.lr.ph.i109, !llvm.loop !834

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit: ; preds = %.lr.ph.i109.prol.loopexit, %.lr.ph.i109, %middle.block485, %vec.epilog.middle.block501, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit
  %i.ii = load ptr, ptr %2, align 8, !tbaa !69    ; 10 uses
  %8 = ptrtoaddr ptr %i.ii to i64                 ; 3 uses
  %.not2.i115 = icmp eq ptr %i.ii, %i.dt
  br i1 %.not2.i115, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %iter.check532

iter.check532:                                    ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit
  %i.ij = add i64 %i.r, %i.av
  %i.ik = add i64 %i.ij, %8
  %i.il = add i64 %i.ik, 1
  %i.im = add i64 %i.h, %i.dr
  %i.in = sub i64 %i.il, %i.im                    ; 7 uses
  %min.iters.check510 = icmp ult i64 %i.in, 8
  br i1 %min.iters.check510, label %.lr.ph.i116.preheader, label %vector.memcheck511

vector.memcheck511:                               ; preds = %iter.check532
  %i.io = add i64 %i.r, %i.av
  %i.ip = add i64 %i.io, %8
  %i.iq = add i64 %i.ip, 1
  %i.ir = add i64 %i.h, %i.dr
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = getelementptr i8, ptr %1, i64 %i.is
  %i.iu = add i64 %i.h, %i.dr
  %i.iv = xor i64 %i.r, -1
  %i.iw = add i64 %i.iu, %i.iv
  %i.ix = add i64 %i.av, %8
  %i.iy = sub i64 %i.iw, %i.ix
  %i.iz = getelementptr i8, ptr %i.ii, i64 %i.iy
  %bound0512 = icmp ult ptr %1, %i.ii
  %bound1513 = icmp ult ptr %i.iz, %i.it
  %found.conflict514 = and i1 %bound0512, %bound1513
  br i1 %found.conflict514, label %.lr.ph.i116.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %vector.memcheck511
  %min.iters.check516 = icmp ult i64 %i.in, 32
  br i1 %min.iters.check516, label %vec.epilog.ph536, label %vector.ph517

vector.ph517:                                     ; preds = %vector.main.loop.iter.check515
  %i.ja = and i64 %i.in, 24
  %n.vec518 = and i64 %i.in, -32                  ; 5 uses
  %i.jb = sub i64 0, %n.vec518
  %i.jc = getelementptr i8, ptr %i.ii, i64 %i.jb
  %i.jd = getelementptr i8, ptr %1, i64 %n.vec518
  br label %vector.body519

vector.body519:                                   ; preds = %vector.ph517, %vector.body519
  %index520 = phi i64 [ 0, %vector.ph517 ], [ %index.next527, %vector.body519 ] ; 3 uses
  %i.je = sub i64 0, %index520
  %next.gep521 = getelementptr i8, ptr %i.ii, i64 %i.je ; 2 uses
  %next.gep522 = getelementptr i8, ptr %1, i64 %index520 ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %next.gep521, i64 -16
  %i.jg = getelementptr inbounds i8, ptr %next.gep521, i64 -32
  %wide.load523 = load <16 x i8>, ptr %i.jf, align 1, !tbaa !51, !alias.scope !867
  %wide.load524 = load <16 x i8>, ptr %i.jg, align 1, !tbaa !51, !alias.scope !867
  %reverse525 = shufflevector <16 x i8> %wide.load523, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse526 = shufflevector <16 x i8> %wide.load524, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jh = getelementptr i8, ptr %next.gep522, i64 16
  store <16 x i8> %reverse525, ptr %next.gep522, align 1, !tbaa !51, !alias.scope !868, !noalias !867
  store <16 x i8> %reverse526, ptr %i.jh, align 1, !tbaa !51, !alias.scope !868, !noalias !867
  %index.next527 = add nuw i64 %index520, 32      ; 2 uses
  %i.ji = icmp eq i64 %index.next527, %n.vec518
  br i1 %i.ji, label %middle.block528, label %vector.body519, !llvm.loop !838

middle.block528:                                  ; preds = %vector.body519
  %cmp.n529 = icmp eq i64 %i.in, %n.vec518
  br i1 %cmp.n529, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %vec.epilog.iter.check534

vec.epilog.iter.check534:                         ; preds = %middle.block528
  %min.epilog.iters.check535 = icmp eq i64 %i.ja, 0
  br i1 %min.epilog.iters.check535, label %.lr.ph.i116.preheader, label %vec.epilog.ph536, !prof !78

vec.epilog.ph536:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check534
  %vec.epilog.resume.val530 = phi i64 [ %n.vec518, %vec.epilog.iter.check534 ], [ 0, %vector.main.loop.iter.check515 ]
  %n.vec537 = and i64 %i.in, -8                   ; 4 uses
  %i.jj = sub i64 0, %n.vec537
  %i.jk = getelementptr i8, ptr %i.ii, i64 %i.jj
  %i.jl = getelementptr i8, ptr %1, i64 %n.vec537
  br label %vec.epilog.vector.body538

vec.epilog.vector.body538:                        ; preds = %vec.epilog.vector.body538, %vec.epilog.ph536
  %index539 = phi i64 [ %vec.epilog.resume.val530, %vec.epilog.ph536 ], [ %index.next544, %vec.epilog.vector.body538 ] ; 3 uses
  %i.jm = sub i64 0, %index539
  %next.gep540 = getelementptr i8, ptr %i.ii, i64 %i.jm
  %next.gep541 = getelementptr i8, ptr %1, i64 %index539
  %i.jn = getelementptr inbounds i8, ptr %next.gep540, i64 -8
  %wide.load542 = load <8 x i8>, ptr %i.jn, align 1, !tbaa !51, !alias.scope !867
  %reverse543 = shufflevector <8 x i8> %wide.load542, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse543, ptr %next.gep541, align 1, !tbaa !51, !alias.scope !868, !noalias !867
  %index.next544 = add nuw i64 %index539, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next544, %n.vec537
  br i1 %i.jo, label %vec.epilog.middle.block545, label %vec.epilog.vector.body538, !llvm.loop !839

vec.epilog.middle.block545:                       ; preds = %vec.epilog.vector.body538
  %cmp.n546 = icmp eq i64 %i.in, %n.vec537
  br i1 %cmp.n546, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %.lr.ph.i116.preheader

.lr.ph.i116.preheader:                            ; preds = %iter.check532, %vector.memcheck511, %vec.epilog.iter.check534, %vec.epilog.middle.block545
  %.sroa.0163.0.ph = phi ptr [ %i.ii, %iter.check532 ], [ %i.ii, %vector.memcheck511 ], [ %i.jc, %vec.epilog.iter.check534 ], [ %i.jk, %vec.epilog.middle.block545 ]
  %.03.i117.ph = phi ptr [ %1, %iter.check532 ], [ %1, %vector.memcheck511 ], [ %i.jd, %vec.epilog.iter.check534 ], [ %i.jl, %vec.epilog.middle.block545 ]
  br label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %.lr.ph.i116.preheader, %.lr.ph.i116
  %.sroa.0163.0 = phi ptr [ %i.jp, %.lr.ph.i116 ], [ %.sroa.0163.0.ph, %.lr.ph.i116.preheader ]
  %.03.i117 = phi ptr [ %i.jr, %.lr.ph.i116 ], [ %.03.i117.ph, %.lr.ph.i116.preheader ] ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.0163.0, i64 -1 ; 3 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !51
  store i8 %i.jq, ptr %.03.i117, align 1, !tbaa !51
  %i.jr = getelementptr inbounds nuw i8, ptr %.03.i117, i64 1
  %.not.i118 = icmp eq ptr %i.jp, %i.dt
  br i1 %.not.i118, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit, label %.lr.ph.i116, !llvm.loop !840

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit: ; preds = %.lr.ph.i103.prol.loopexit, %.lr.ph.i103, %.lr.ph.i116, %middle.block406, %vec.epilog.middle.block423, %middle.block528, %vec.epilog.middle.block545, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %.095 = add i64 %i.r, %i.m                      ; 3 uses
  %i.js = load i8, ptr %0, align 8, !tbaa !51
  %i.jt = trunc i8 %i.js to i1
  br i1 %i.jt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit
  %i.ju = trunc i64 %.095 to i8
  %i.jv = shl i8 %i.ju, 1
  %i.jw = or disjoint i8 %i.jv, 1
  store i8 %i.jw, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit120

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE9priv_copyINS_7movelib16reverse_iteratorIPcEES8_EEvT_SA_T0_.exit
  %i.jx = load i64, ptr %0, align 8
  %i.jy = shl i64 %.095, 1
  %i.jz = and i64 %i.jx, 1
  %i.ka = or disjoint i64 %i.jz, %i.jy
  store i64 %i.ka, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit120

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit120: ; preds = %bb.n, %bb.o
  %i.kb = getelementptr inbounds i8, ptr %i.y, i64 %.095
  store i8 0, ptr %i.kb, align 1, !tbaa !51
  %.pre187.pre = load i8, ptr %0, align 8, !tbaa !51
  %.pre188.pre = load ptr, ptr %i.f, align 8
  br label %bb.v

bb.p:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.kc = load ptr, ptr %i.b, align 8, !tbaa !77
  %.not = icmp eq ptr %i.kc, null
  br i1 %.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.kd = ptrtoaddr ptr %i.y to i64               ; 5 uses
  %.not9.i121 = icmp eq ptr %i.y, %1
  br i1 %.not9.i121, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit128, label %iter.check257

iter.check257:                                    ; preds = %bb.q
  %i.ke = sub i64 %i.h, %i.kd                     ; 7 uses
  %min.iters.check241 = icmp ult i64 %i.ke, 8
  %i.kf = sub i64 %i.kd, %i.as
  %diff.check = icmp ugt i64 %i.kf, -32
  %or.cond = or i1 %min.iters.check241, %diff.check
  br i1 %or.cond, label %.lr.ph.i122.preheader, label %vector.main.loop.iter.check242

vector.main.loop.iter.check242:                   ; preds = %iter.check257
  %min.iters.check243 = icmp ult i64 %i.ke, 32
  br i1 %min.iters.check243, label %vec.epilog.ph261, label %vector.ph244

vector.ph244:                                     ; preds = %vector.main.loop.iter.check242
  %i.kg = and i64 %i.ke, 24
  %n.vec245 = and i64 %i.ke, -32                  ; 5 uses
  %i.kh = getelementptr i8, ptr %i.ar, i64 %n.vec245
  %i.ki = getelementptr i8, ptr %i.y, i64 %n.vec245
  br label %vector.body246

vector.body246:                                   ; preds = %vector.ph244, %vector.body246
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next252, %vector.body246 ] ; 3 uses
  %next.gep248 = getelementptr i8, ptr %i.ar, i64 %index247 ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.y, i64 %index247 ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep249, i64 16
  %wide.load250 = load <16 x i8>, ptr %next.gep249, align 1, !tbaa !51
  %wide.load251 = load <16 x i8>, ptr %i.kj, align 1, !tbaa !51
  %i.kk = getelementptr i8, ptr %next.gep248, i64 16
  store <16 x i8> %wide.load250, ptr %next.gep248, align 1, !tbaa !51
  store <16 x i8> %wide.load251, ptr %i.kk, align 1, !tbaa !51
  %index.next252 = add nuw i64 %index247, 32      ; 2 uses
  %i.kl = icmp eq i64 %index.next252, %n.vec245
  br i1 %i.kl, label %middle.block253, label %vector.body246, !llvm.loop !841

middle.block253:                                  ; preds = %vector.body246
  %cmp.n254 = icmp eq i64 %i.ke, %n.vec245
  br i1 %cmp.n254, label %._crit_edge.loopexit.i126, label %vec.epilog.iter.check259

vec.epilog.iter.check259:                         ; preds = %middle.block253
  %min.epilog.iters.check260 = icmp eq i64 %i.kg, 0
  br i1 %min.epilog.iters.check260, label %.lr.ph.i122.preheader, label %vec.epilog.ph261, !prof !78

vec.epilog.ph261:                                 ; preds = %vector.main.loop.iter.check242, %vec.epilog.iter.check259
  %vec.epilog.resume.val255 = phi i64 [ %n.vec245, %vec.epilog.iter.check259 ], [ 0, %vector.main.loop.iter.check242 ]
  %n.vec262 = and i64 %i.ke, -8                   ; 4 uses
  %i.km = getelementptr i8, ptr %i.ar, i64 %n.vec262
  %i.kn = getelementptr i8, ptr %i.y, i64 %n.vec262
  br label %vec.epilog.vector.body263

vec.epilog.vector.body263:                        ; preds = %vec.epilog.vector.body263, %vec.epilog.ph261
  %index264 = phi i64 [ %vec.epilog.resume.val255, %vec.epilog.ph261 ], [ %index.next268, %vec.epilog.vector.body263 ] ; 3 uses
  %next.gep265 = getelementptr i8, ptr %i.ar, i64 %index264
  %next.gep266 = getelementptr i8, ptr %i.y, i64 %index264
  %wide.load267 = load <8 x i8>, ptr %next.gep266, align 1, !tbaa !51
  store <8 x i8> %wide.load267, ptr %next.gep265, align 1, !tbaa !51
  %index.next268 = add nuw i64 %index264, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next268, %n.vec262
  br i1 %i.ko, label %vec.epilog.middle.block269, label %vec.epilog.vector.body263, !llvm.loop !842

vec.epilog.middle.block269:                       ; preds = %vec.epilog.vector.body263
  %cmp.n270 = icmp eq i64 %i.ke, %n.vec262
  br i1 %cmp.n270, label %._crit_edge.loopexit.i126, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %iter.check257, %vec.epilog.iter.check259, %vec.epilog.middle.block269
  %.0711.i123.ph = phi ptr [ %i.ar, %iter.check257 ], [ %i.kh, %vec.epilog.iter.check259 ], [ %i.km, %vec.epilog.middle.block269 ] ; 2 uses
  %.0810.i124.ph = phi ptr [ %i.y, %iter.check257 ], [ %i.ki, %vec.epilog.iter.check259 ], [ %i.kn, %vec.epilog.middle.block269 ] ; 3 uses
  %.0810.i124.ph551 = ptrtoaddr ptr %.0810.i124.ph to i64 ; 2 uses
  %i.kp = sub i64 %i.h, %.0810.i124.ph551
  %xtraiter552 = and i64 %i.kp, 7                 ; 2 uses
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.i122.prol.loopexit, label %.lr.ph.i122.prol

.lr.ph.i122.prol:                                 ; preds = %.lr.ph.i122.preheader, %.lr.ph.i122.prol
  %.0711.i123.prol = phi ptr [ %i.kr, %.lr.ph.i122.prol ], [ %.0711.i123.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %.0810.i124.prol = phi ptr [ %i.ks, %.lr.ph.i122.prol ], [ %.0810.i124.ph, %.lr.ph.i122.preheader ] ; 2 uses
  %prol.iter554 = phi i64 [ %prol.iter554.next, %.lr.ph.i122.prol ], [ 0, %.lr.ph.i122.preheader ]
  %i.kq = load i8, ptr %.0810.i124.prol, align 1, !tbaa !51
  store i8 %i.kq, ptr %.0711.i123.prol, align 1, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6insertINS_7movelib16reverse_iteratorIPcEEEES8_PKcT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %.not9.i136 = icmp eq ptr %1, %i.ny
  br i1 %.not9.i136, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit143, label %iter.check335

iter.check335:                                    ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit135
  %i.oa = getelementptr inbounds i8, ptr %i.ar, i64 %i.nx ; 6 uses
  %i.ob = add i64 %i.r, %i.kd
  %i.oc = sub i64 %i.ob, %i.h                     ; 7 uses
  %min.iters.check319 = icmp ult i64 %i.oc, 8
  br i1 %min.iters.check319, label %.lr.ph.i137.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %iter.check335
  %i.od = add i64 %.0.lcssa.i134, %.0.lcssa.i127
  %i.oe = add i64 %i.od, %i.as
  %i.of = sub i64 %i.h, %i.oe
  %diff.check318 = icmp ugt i64 %i.of, -32
  br i1 %diff.check318, label %.lr.ph.i137.preheader, label %vector.main.loop.iter.check320

vector.main.loop.iter.check320:                   ; preds = %vector.memcheck317
  %min.iters.check321 = icmp ult i64 %i.oc, 32
  br i1 %min.iters.check321, label %vec.epilog.ph339, label %vector.ph322

vector.ph322:                                     ; preds = %vector.main.loop.iter.check320
  %i.og = and i64 %i.oc, 24
  %n.vec323 = and i64 %i.oc, -32                  ; 5 uses
  %i.oh = getelementptr i8, ptr %i.oa, i64 %n.vec323
  %i.oi = getelementptr i8, ptr %1, i64 %n.vec323
  br label %vector.body324

vector.body324:                                   ; preds = %vector.ph322, %vector.body324
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 3 uses
  %next.gep326 = getelementptr i8, ptr %i.oa, i64 %index325 ; 2 uses
  %next.gep327 = getelementptr i8, ptr %1, i64 %index325 ; 2 uses
  %i.oj = getelementptr i8, ptr %next.gep327, i64 16
  %wide.load328 = load <16 x i8>, ptr %next.gep327, align 1, !tbaa !51
  %wide.load329 = load <16 x i8>, ptr %i.oj, align 1, !tbaa !51
  %i.ok = getelementptr i8, ptr %next.gep326, i64 16
  store <16 x i8> %wide.load328, ptr %next.gep326, align 1, !tbaa !51
  store <16 x i8> %wide.load329, ptr %i.ok, align 1, !tbaa !51
  %index.next330 = add nuw i64 %index325, 32      ; 2 uses
  %i.ol = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.ol, label %middle.block331, label %vector.body324, !llvm.loop !852

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %i.oc, %n.vec323
  br i1 %cmp.n332, label %._crit_edge.loopexit.i141, label %vec.epilog.iter.check337

vec.epilog.iter.check337:                         ; preds = %middle.block331
  %min.epilog.iters.check338 = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check338, label %.lr.ph.i137.preheader, label %vec.epilog.ph339, !prof !78

vec.epilog.ph339:                                 ; preds = %vector.main.loop.iter.check320, %vec.epilog.iter.check337
  %vec.epilog.resume.val333 = phi i64 [ %n.vec323, %vec.epilog.iter.check337 ], [ 0, %vector.main.loop.iter.check320 ]
  %n.vec340 = and i64 %i.oc, -8                   ; 4 uses
  %i.om = getelementptr i8, ptr %i.oa, i64 %n.vec340
  %i.on = getelementptr i8, ptr %1, i64 %n.vec340
  br label %vec.epilog.vector.body341

vec.epilog.vector.body341:                        ; preds = %vec.epilog.vector.body341, %vec.epilog.ph339
  %index342 = phi i64 [ %vec.epilog.resume.val333, %vec.epilog.ph339 ], [ %index.next346, %vec.epilog.vector.body341 ] ; 3 uses
  %next.gep343 = getelementptr i8, ptr %i.oa, i64 %index342
  %next.gep344 = getelementptr i8, ptr %1, i64 %index342
  %wide.load345 = load <8 x i8>, ptr %next.gep344, align 1, !tbaa !51
  store <8 x i8> %wide.load345, ptr %next.gep343, align 1, !tbaa !51
  %index.next346 = add nuw i64 %index342, 8       ; 2 uses
  %i.oo = icmp eq i64 %index.next346, %n.vec340
  br i1 %i.oo, label %vec.epilog.middle.block347, label %vec.epilog.vector.body341, !llvm.loop !853

vec.epilog.middle.block347:                       ; preds = %vec.epilog.vector.body341
  %cmp.n348 = icmp eq i64 %i.oc, %n.vec340
  br i1 %cmp.n348, label %._crit_edge.loopexit.i141, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %iter.check335, %vector.memcheck317, %vec.epilog.iter.check337, %vec.epilog.middle.block347
  %.0711.i138.ph = phi ptr [ %i.oa, %iter.check335 ], [ %i.oa, %vector.memcheck317 ], [ %i.oh, %vec.epilog.iter.check337 ], [ %i.om, %vec.epilog.middle.block347 ] ; 2 uses
  %.0810.i139.ph = phi ptr [ %1, %iter.check335 ], [ %1, %vector.memcheck317 ], [ %i.oi, %vec.epilog.iter.check337 ], [ %i.on, %vec.epilog.middle.block347 ] ; 3 uses
  %i.op = add i64 %i.r, %i.kd                     ; 2 uses
  %.0810.i139.ph559 = ptrtoaddr ptr %.0810.i139.ph to i64 ; 2 uses
  %i.oq = sub i64 %i.op, %.0810.i139.ph559
  %xtraiter560 = and i64 %i.oq, 7                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137.prol
  %.0711.i138.prol = phi ptr [ %i.os, %.lr.ph.i137.prol ], [ %.0711.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.0810.i139.prol = phi ptr [ %i.ot, %.lr.ph.i137.prol ], [ %.0810.i139.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %prol.iter562 = phi i64 [ %prol.iter562.next, %.lr.ph.i137.prol ], [ 0, %.lr.ph.i137.preheader ]
  %i.or = load i8, ptr %.0810.i139.prol, align 1, !tbaa !51
  store i8 %i.or, ptr %.0711.i138.prol, align 1, !tbaa !51
  %i.os = getelementptr inbounds nuw i8, ptr %.0711.i138.prol, i64 1 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.0810.i139.prol, i64 1 ; 2 uses
  %prol.iter562.next = add i64 %prol.iter562, 1   ; 2 uses
  %prol.iter562.cmp.not = icmp eq i64 %prol.iter562.next, %xtraiter560
  br i1 %prol.iter562.cmp.not, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol, !llvm.loop !854

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.0711.i138.unr = phi ptr [ %.0711.i138.ph, %.lr.ph.i137.preheader ], [ %i.os, %.lr.ph.i137.prol ]
  %.0810.i139.unr = phi ptr [ %.0810.i139.ph, %.lr.ph.i137.preheader ], [ %i.ot, %.lr.ph.i137.prol ]
  %i.ou = sub i64 %.0810.i139.ph559, %i.op
  %i.ov = icmp ugt i64 %i.ou, -8
  br i1 %i.ov, label %._crit_edge.loopexit.i141, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.0711.i138 = phi ptr [ %i.ps, %.lr.ph.i137 ], [ %.0711.i138.unr, %.lr.ph.i137.prol.loopexit ] ; 9 uses
  %.0810.i139 = phi ptr [ %i.pt, %.lr.ph.i137 ], [ %.0810.i139.unr, %.lr.ph.i137.prol.loopexit ] ; 9 uses
  %i.ow = load i8, ptr %.0810.i139, align 1, !tbaa !51
  store i8 %i.ow, ptr %.0711.i138, align 1, !tbaa !51
  %i.ox = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 1
  %i.oy = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !51
  store i8 %i.oz, ptr %i.ox, align 1, !tbaa !51
  %i.pa = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 2
  %i.pb = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !51
  store i8 %i.pc, ptr %i.pa, align 1, !tbaa !51
  %i.pd = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 3
  %i.pe = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 3
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !51
  store i8 %i.pf, ptr %i.pd, align 1, !tbaa !51
  %i.pg = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 4
  %i.ph = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 4
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !51
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !51
  %i.pj = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 5
  %i.pk = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 5
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !51
  store i8 %i.pl, ptr %i.pj, align 1, !tbaa !51
  %i.pm = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 6
  %i.pn = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 6
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !51
  store i8 %i.po, ptr %i.pm, align 1, !tbaa !51
  %i.pp = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 7
  %i.pq = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 7
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !51
  store i8 %i.pr, ptr %i.pp, align 1, !tbaa !51
  %i.ps = getelementptr inbounds nuw i8, ptr %.0711.i138, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %.0810.i139, i64 8 ; 2 uses
  %.not.i140.7 = icmp eq ptr %i.pt, %i.ny
  br i1 %.not.i140.7, label %._crit_edge.loopexit.i141, label %.lr.ph.i137, !llvm.loop !855

._crit_edge.loopexit.i141:                        ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %vec.epilog.middle.block347, %middle.block331
  %i.pu = sub i64 %i.nz, %i.h
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit143

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit143: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit135, %._crit_edge.loopexit.i141
  %.0.lcssa.i142 = phi i64 [ 0, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit135 ], [ %i.pu, %._crit_edge.loopexit.i141 ]
  %i.pv = add i64 %.0.lcssa.i142, %i.nx           ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %i.ar, i64 %i.pv
  store i8 0, ptr %i.pw, align 1, !tbaa !51
  %i.px = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.py = trunc i8 %i.px to i1                    ; 2 uses
  %i.pz = load ptr, ptr %i.f, align 8
  %i.qa = select i1 %i.py, ptr %i.e, ptr %i.pz    ; 2 uses
  %i.qb = load i64, ptr %i.t, align 8
  %i.qc = select i1 %i.py, i64 23, i64 %i.qb      ; 2 uses
  %i.qd = icmp ne ptr %i.qa, null
  %i.qe = icmp ugt i64 %i.qc, 23
  %or.cond.i.i = and i1 %i.qd, %i.qe
  br i1 %or.cond.i.i, label %bb.r, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE16deallocate_blockEv.exit

bb.r:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit143
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef %i.qc) #27
  %.pre185 = load i8, ptr %0, align 8, !tbaa !51
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE16deallocate_blockEv.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE16deallocate_blockEv.exit: ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit143, %bb.r
  %i.qf = phi i8 [ %i.px, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPKcPcEEmT_S9_T0_.exit143 ], [ %.pre185, %bb.r ]
  %i.qg = trunc i8 %i.qf to i1
  %.pre186 = load i64, ptr %0, align 8
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !61
  %i.qh = shl i64 %i.pv, 1
  %i.qi = and i64 %.pre186, 1
  %i.qj = select i1 %i.qg, i64 0, i64 %i.qi
  %i.qk = or disjoint i64 %i.qj, %i.qh            ; 2 uses
  store i64 %i.qk, ptr %0, align 8
  %i.ql = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.ql, ptr %i.t, align 8, !tbaa !62
  %i.qm = trunc i64 %i.qk to i8
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.qn = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.qo = sub i64 %i.h, %i.qn                     ; 4 uses
  %i.qp = icmp eq ptr %1, %i.y
  br i1 %i.qp, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit144, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.y, i64 %i.qo, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit144

_ZNSt11char_traitsIcE4moveEPcPKcm.exit144:        ; preds = %bb.s, %bb.t
  %i.qq = getelementptr i8, ptr %i.ar, i64 %i.qo  ; 8 uses
  %i.qr = icmp eq i64 %i.r, %i.qo
  br i1 %i.qr, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit145, label %bb.u

bb.u:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit144
  %i.qs = sub i64 %i.r, %i.qo
  %i.qt = getelementptr i8, ptr %i.qq, i64 %i.m
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.qt, ptr align 1 %1, i64 %i.qs, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit145

_ZNSt11char_traitsIcE4moveEPcPKcm.exit145:        ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit144, %bb.u
  %i.qu = load ptr, ptr %2, align 8, !tbaa !69    ; 9 uses
  %9 = ptrtoaddr ptr %i.qu to i64                 ; 2 uses
  %i.qv = load ptr, ptr %3, align 8, !tbaa !69    ; 4 uses
  %10 = ptrtoaddr ptr %i.qv to i64                ; 4 uses
  %.not4.i146 = icmp eq ptr %i.qu, %i.qv
  br i1 %.not4.i146, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152, label %iter.check

iter.check:                                       ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit145
  %i.qw = sub i64 %9, %10                         ; 7 uses
  %min.iters.check = icmp ult i64 %i.qw, 8
  br i1 %min.iters.check, label %.lr.ph.i147.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.qx = add i64 %9, %i.h
  %i.qy = add i64 %i.qn, %10
  %i.qz = sub i64 %i.qx, %i.qy
  %i.ra = getelementptr i8, ptr %i.ar, i64 %i.qz
  %bound0 = icmp ult ptr %i.qq, %i.qu
  %bound1 = icmp ult ptr %i.qv, %i.ra
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i147.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check225 = icmp ult i64 %i.qw, 32
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.rb = and i64 %i.qw, 24
  %n.vec = and i64 %i.qw, -32                     ; 5 uses
  %i.rc = sub i64 0, %n.vec
  %i.rd = getelementptr i8, ptr %i.qu, i64 %i.rc
  %i.re = getelementptr i8, ptr %i.qq, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.rf = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.qu, i64 %i.rf ; 2 uses
  %next.gep226 = getelementptr i8, ptr %i.qq, i64 %index ; 2 uses
  %i.rg = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.rh = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <16 x i8>, ptr %i.rg, align 1, !tbaa !51, !alias.scope !871
  %wide.load227 = load <16 x i8>, ptr %i.rh, align 1, !tbaa !51, !alias.scope !871
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse228 = shufflevector <16 x i8> %wide.load227, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ri = getelementptr i8, ptr %next.gep226, i64 16
  store <16 x i8> %reverse, ptr %next.gep226, align 1, !tbaa !51, !alias.scope !872, !noalias !871
  store <16 x i8> %reverse228, ptr %i.ri, align 1, !tbaa !51, !alias.scope !872, !noalias !871
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.rj = icmp eq i64 %index.next, %n.vec
  br i1 %i.rj, label %middle.block, label %vector.body, !llvm.loop !859

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.qw, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.rb, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i147.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %i.qw, -8                   ; 4 uses
  %i.rk = sub i64 0, %n.vec230
  %i.rl = getelementptr i8, ptr %i.qu, i64 %i.rk
  %i.rm = getelementptr i8, ptr %i.qq, i64 %n.vec230
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 3 uses
  %i.rn = sub i64 0, %index231
  %next.gep232 = getelementptr i8, ptr %i.qu, i64 %i.rn
  %next.gep233 = getelementptr i8, ptr %i.qq, i64 %index231
  %i.ro = getelementptr inbounds i8, ptr %next.gep232, i64 -8
  %wide.load234 = load <8 x i8>, ptr %i.ro, align 1, !tbaa !51, !alias.scope !871
  %reverse235 = shufflevector <8 x i8> %wide.load234, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse235, ptr %next.gep233, align 1, !tbaa !51, !alias.scope !872, !noalias !871
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.rp = icmp eq i64 %index.next236, %n.vec230
  br i1 %i.rp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !860

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %i.qw, %n.vec230
  br i1 %cmp.n237, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152, label %.lr.ph.i147.preheader

.lr.ph.i147.preheader:                            ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0155.0.ph = phi ptr [ %i.qu, %iter.check ], [ %i.qu, %vector.memcheck ], [ %i.rd, %vec.epilog.iter.check ], [ %i.rl, %vec.epilog.middle.block ] ; 3 uses
  %.035.i149.ph = phi ptr [ %i.qq, %iter.check ], [ %i.qq, %vector.memcheck ], [ %i.re, %vec.epilog.iter.check ], [ %i.rm, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0155.0.ph550 = ptrtoaddr ptr %.sroa.0155.0.ph to i64 ; 2 uses
  %i.rq = sub i64 %.sroa.0155.0.ph550, %10
  %xtraiter = and i64 %i.rq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i147.prol.loopexit, label %.lr.ph.i147.prol

.lr.ph.i147.prol:                                 ; preds = %.lr.ph.i147.preheader, %.lr.ph.i147.prol
  %.sroa.0155.0.prol = phi ptr [ %i.rr, %.lr.ph.i147.prol ], [ %.sroa.0155.0.ph, %.lr.ph.i147.preheader ]
  %.035.i149.prol = phi ptr [ %i.rt, %.lr.ph.i147.prol ], [ %.035.i149.ph, %.lr.ph.i147.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i147.prol ], [ 0, %.lr.ph.i147.preheader ]
  %i.rr = getelementptr inbounds i8, ptr %.sroa.0155.0.prol, i64 -1 ; 3 uses
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !51
  store i8 %i.rs, ptr %.035.i149.prol, align 1, !tbaa !51
  %i.rt = getelementptr inbounds nuw i8, ptr %.035.i149.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i147.prol.loopexit, label %.lr.ph.i147.prol, !llvm.loop !861

.lr.ph.i147.prol.loopexit:                        ; preds = %.lr.ph.i147.prol, %.lr.ph.i147.preheader
  %.sroa.0155.0.unr = phi ptr [ %.sroa.0155.0.ph, %.lr.ph.i147.preheader ], [ %i.rr, %.lr.ph.i147.prol ]
  %.035.i149.unr = phi ptr [ %.035.i149.ph, %.lr.ph.i147.preheader ], [ %i.rt, %.lr.ph.i147.prol ]
  %i.ru = sub i64 %10, %.sroa.0155.0.ph550
  %i.rv = icmp ugt i64 %i.ru, -8
  br i1 %i.rv, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147.prol.loopexit, %.lr.ph.i147
  %.sroa.0155.0 = phi ptr [ %i.sr, %.lr.ph.i147 ], [ %.sroa.0155.0.unr, %.lr.ph.i147.prol.loopexit ] ; 8 uses
  %.035.i149 = phi ptr [ %i.st, %.lr.ph.i147 ], [ %.035.i149.unr, %.lr.ph.i147.prol.loopexit ] ; 9 uses
  %i.rw = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -1
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !51
  store i8 %i.rx, ptr %.035.i149, align 1, !tbaa !51
  %i.ry = getelementptr inbounds nuw i8, ptr %.035.i149, i64 1
  %i.rz = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -2
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !51
  store i8 %i.sa, ptr %i.ry, align 1, !tbaa !51
  %i.sb = getelementptr inbounds nuw i8, ptr %.035.i149, i64 2
  %i.sc = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -3
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !51
  store i8 %i.sd, ptr %i.sb, align 1, !tbaa !51
  %i.se = getelementptr inbounds nuw i8, ptr %.035.i149, i64 3
  %i.sf = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -4
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !51
  store i8 %i.sg, ptr %i.se, align 1, !tbaa !51
  %i.sh = getelementptr inbounds nuw i8, ptr %.035.i149, i64 4
  %i.si = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -5
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !51
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !51
  %i.sk = getelementptr inbounds nuw i8, ptr %.035.i149, i64 5
  %i.sl = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -6
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !51
  store i8 %i.sm, ptr %i.sk, align 1, !tbaa !51
  %i.sn = getelementptr inbounds nuw i8, ptr %.035.i149, i64 6
  %i.so = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -7
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !51
  store i8 %i.sp, ptr %i.sn, align 1, !tbaa !51
  %i.sq = getelementptr inbounds nuw i8, ptr %.035.i149, i64 7
  %i.sr = getelementptr inbounds i8, ptr %.sroa.0155.0, i64 -8 ; 3 uses
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !51
  store i8 %i.ss, ptr %i.sq, align 1, !tbaa !51
  %i.st = getelementptr inbounds nuw i8, ptr %.035.i149, i64 8
  %.not.i150.7 = icmp eq ptr %i.sr, %i.qv
  br i1 %.not.i150.7, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152, label %.lr.ph.i147, !llvm.loop !862

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152: ; preds = %.lr.ph.i147.prol.loopexit, %.lr.ph.i147, %middle.block, %vec.epilog.middle.block, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit145
  %i.su = getelementptr inbounds i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.su, align 1, !tbaa !51
  %i.sv = load i8, ptr %0, align 8, !tbaa !51
  %i.sw = trunc i8 %i.sv to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !61
  %i.sx = shl i64 %i.ap, 1
  %i.sy = and i64 %.pre, 1
  %i.sz = select i1 %i.sw, i64 0, i64 %i.sy
  %i.ta = or disjoint i64 %i.sz, %i.sx            ; 2 uses
  store i64 %i.ta, ptr %0, align 8
  %i.tb = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.tb, ptr %i.t, align 8, !tbaa !62
  %i.tc = trunc i64 %i.ta to i8
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit120
  %.pre188 = phi ptr [ %i.ar, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE16deallocate_blockEv.exit ], [ %i.ar, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152 ], [ %.pre188.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit120 ]
  %.pre187 = phi i8 [ %i.qm, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE16deallocate_blockEv.exit ], [ %i.tc, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyINS_7movelib16reverse_iteratorIPcEES8_EEmT_SA_T0_.exit152 ], [ %.pre187.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE9priv_sizeEm.exit120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre191 = trunc i8 %.pre187 to i1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  %.pre-phi = phi i1 [ %.pre191, %bb.v ], [ %i.d, %bb.a ]
  %i.td = phi ptr [ %.pre188, %bb.v ], [ %i.g, %bb.a ]
  %i.te = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = sub i64 %i.h, %i.tf
  %i.th = select i1 %.pre-phi, ptr %i.e, ptr %i.td
  %i.ti = getelementptr inbounds i8, ptr %i.th, i64 %i.tg
  ret ptr %i.ti
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 9223372036854775806
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.457) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !51      ; 2 uses
  %i.c = trunc i8 %i.b to i1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = select i1 %i.c, i64 22, i64 %i.f         ; 3 uses
  %i.h = icmp ult i64 %i.g, %1                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw nsw i64 %1, 1
  %i.j = select i1 %i.c, i64 23, i64 %i.e         ; 5 uses
  %i.k = lshr i8 %i.b, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = load i64, ptr %0, align 8
  %i.n = lshr i64 %i.m, 1
  %i.o = select i1 %i.c, i64 %i.l, i64 %i.n
  %.neg.i = sub nsw i64 %i.o, %i.g
  %i.p = sub nuw nsw i64 9223372036854775806, %i.g
  %i.q = add i64 %i.i, %.neg.i                    ; 2 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.423) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = icmp ult i64 %i.j, 2305843009213693952
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = shl nuw i64 %i.j, 3
  %i.u = udiv i64 %i.t, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %i.j, -6917529027641081857
  %i.w = shl i64 %i.j, 3
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.w, i64 9223372036854775807)
  %i.y = select i1 %i.v, i64 9223372036854775807, i64 %i.x
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.u, %bb.g ], [ %i.y, %bb.h ]
  %i.z = add i64 %i.q, %i.j
  %i.aa = tail call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %.0.i.i) ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_ZN5boost9container3dtl25operator_new_raw_allocateEmm.exit.i.i, !prof !72

bb.i:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  invoke void @_ZN5boost9container15throw_bad_allocEv() #26
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.i
  unreachable

_ZN5boost9container3dtl25operator_new_raw_allocateEmm.exit.i.i: ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvE12next_storageEmm.exit
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #31
          to label %_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIcEELj1EE18allocation_commandERS4_jmRmRPc.exit unwind label %bb.j ; 6 uses

bb.j:                                             ; preds = %_ZN5boost9container3dtl25operator_new_raw_allocateEmm.exit.i.i, %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #27 ; 0 uses
  invoke void @__cxa_rethrow() #26
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ag

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #30
  unreachable

bb.n:                                             ; preds = %bb.j
  unreachable

_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIcEELj1EE18allocation_commandERS4_jmRmRPc.exit: ; preds = %_ZN5boost9container3dtl25operator_new_raw_allocateEmm.exit.i.i
  %i.aj = load i8, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.ak = trunc i8 %i.aj to i1                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = select i1 %i.ak, ptr %i.al, ptr %i.an   ; 6 uses
  %i.ap = lshr i8 %i.aj, 1
  %i.aq = zext nneg i8 %i.ap to i64
  %i.ar = load i64, ptr %0, align 8               ; 4 uses
  %i.as = lshr i64 %i.ar, 1
  %i.at = select i1 %i.ak, i64 %i.aq, i64 %i.as   ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.at
  %.not9.i = icmp samesign eq i64 %i.at, 0
  %i.av = trunc i64 %i.ar to i8
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE23priv_uninitialized_copyIPcS6_EEmT_S7_T0_.exit, label %iter.check

iter.check:                                       ; preds = %_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIcEELj1EE18allocation_commandERS4_jmRmRPc.exit
  %min.iters.check = icmp samesign ult i64 %i.at, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
end_hunk_1
