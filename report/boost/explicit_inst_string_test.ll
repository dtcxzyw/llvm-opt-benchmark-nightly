Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmRKS7_:bb.a

bb.e:                                             ; preds = %bb.c
  %i.r = trunc i64 %i.e to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.r, ptr %i.s, ptr %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %1
  %i.x = trunc i64 %i.m to i1                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = select i1 %i.x, ptr %i.y, ptr %i.aa
  %i.ac = lshr i64 %i.m, 1
  %i.ad = and i64 %i.ac, 127
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.n
  %i.ag = select i1 %i.x, ptr %i.ae, ptr %i.af
  %i.ah = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.w, ptr noundef %i.ab, ptr noundef %i.ag, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 9 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.j = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 10 uses
  %i.m = lshr i8 %i.c, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = load i64, ptr %0, align 8                ; 3 uses
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = select i1 %i.d, i64 %i.n, i64 %i.p       ; 14 uses
  %i.r = trunc i64 %i.o to i1                     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, -1
  %i.v = select i1 %i.r, i64 4, i64 %i.u          ; 4 uses
  %i.w = sub i64 %i.v, %i.q
  %i.x = select i1 %i.r, ptr %i.e, ptr %i.g       ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !295
  %.not178 = icmp ult i64 %i.w, %i.l
  br i1 %.not178, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 4611686018427387902, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %i.z, 2305843009213693952
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = shl nuw i64 %i.z, 3
  %i.ai = udiv i64 %i.ah, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 4611686018427387903)
  %i.am = select i1 %i.aj, i64 4611686018427387903, i64 %i.al
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.am, %bb.g ]
  %i.an = add i64 %i.ae, %i.z
  %i.ao = tail call noundef i64 @llvm.umax.i64(i64 %i.an, i64 %.0.i.i)
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !49
  %i.ap = add i64 %i.q, %i.l                      ; 3 uses
  %i.aq = add i64 %i.ap, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.ar = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_4test16simple_allocatorIwEELj1EE18allocation_commandERS5_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 4 uses
  %i.at = icmp eq ptr %i.x, %i.ar
  br i1 %i.at, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit
  %i.au = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.au, ptr %i.s, align 8, !tbaa !277
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.h, %i.av                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub i64 %i.q, %i.ax                     ; 4 uses
  %.not118 = icmp ult i64 %i.ay, %i.l
  br i1 %.not118, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx179 = shl i64 %i.q, 2                      ; 2 uses
  %i.az = getelementptr i8, ptr %i.x, i64 %.idx179 ; 4 uses
  %i.ba = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.ba, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx179
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bc = add i64 %i.k, -4                        ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check283 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check283, label %.lr.ph.i.preheader335, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph.i.preheader
  %n.vec285 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec285, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bf
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 2 uses
  %i.bi = shl i64 %index287, 2                    ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep288, i64 4
  %i.bk = getelementptr i8, ptr %next.gep289, i64 4
  %i.bl = getelementptr i8, ptr %next.gep289, i64 20
  %wide.load290 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !272
  %wide.load291 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !272
  %i.bm = getelementptr i8, ptr %next.gep288, i64 20
  store <4 x i32> %wide.load290, ptr %i.bj, align 4, !tbaa !272
  store <4 x i32> %wide.load291, ptr %i.bm, align 4, !tbaa !272
  %index.next292 = add nuw i64 %index287, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.bn, label %middle.block293, label %vector.body286, !llvm.loop !296

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.be, %n.vec285
  br i1 %cmp.n294, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader335

.lr.ph.i.preheader335:                            ; preds = %.lr.ph.i.preheader, %middle.block293
  %.0711.i.pn.ph = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.bg, %middle.block293 ]
  %.0810.i.pn.ph = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.bh, %middle.block293 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader335, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader335 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader335 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bo = load i32, ptr %.0810.i, align 4, !tbaa !272
  store i32 %i.bo, ptr %.0711.i, align 4, !tbaa !272
  %.not.i = icmp eq ptr %.0810.i, %i.az
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !297

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i, %middle.block293, %bb.j
  %i.bp = sub nuw i64 %i.ay, %i.l
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bt = call ptr @wmemmove(ptr noundef nonnull %i.bs, ptr noundef %1, i64 noundef %i.bq) #26 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135.sink.split

bb.l:                                             ; preds = %bb.i
  %.idx180 = shl i64 %i.ay, 2
  %i.bu = add i64 %.idx180, 4                     ; 3 uses
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu     ; 5 uses
  %i.bw = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 5 uses
  %.not9.i120 = icmp eq ptr %i.bv, %3
  br i1 %.not9.i120, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %bb.l
  %5 = add i64 %i.aw, %i.i
  %i.by = add i64 %5, -8
  %6 = shl i64 %i.q, 2
  %i.bz = add i64 %6, %i.j
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.ca, 60
  br i1 %min.iters.check300, label %.lr.ph.i121.preheader334, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph.i121.preheader
  %i.cd = add i64 %i.aw, %i.y
  %i.ce = sub i64 %i.j, %i.cd
  %diff.check298 = icmp ugt i64 %i.ce, -32
  br i1 %diff.check298, label %.lr.ph.i121.preheader334, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck297
  %n.vec302 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec302, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cf
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.ci = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.bv, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load307 = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !272
  %wide.load308 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !272
  %i.ck = getelementptr i8, ptr %next.gep305, i64 16
  store <4 x i32> %wide.load307, ptr %next.gep305, align 4, !tbaa !272
  store <4 x i32> %wide.load308, ptr %i.ck, align 4, !tbaa !272
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.cl, label %middle.block310, label %vector.body303, !llvm.loop !298

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.cc, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i121.preheader334

.lr.ph.i121.preheader334:                         ; preds = %vector.memcheck297, %.lr.ph.i121.preheader, %middle.block310
  %.0711.i123.ph = phi ptr [ %i.bx, %vector.memcheck297 ], [ %i.bx, %.lr.ph.i121.preheader ], [ %i.cg, %middle.block310 ]
  %.0810.i124.ph = phi ptr [ %i.bv, %vector.memcheck297 ], [ %i.bv, %.lr.ph.i121.preheader ], [ %i.ch, %middle.block310 ]
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.preheader334, %.lr.ph.i121
  %.0711.i123 = phi ptr [ %i.cn, %.lr.ph.i121 ], [ %.0711.i123.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %.0810.i124 = phi ptr [ %i.co, %.lr.ph.i121 ], [ %.0810.i124.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %i.cm = load i32, ptr %.0810.i124, align 4, !tbaa !272
  store i32 %i.cm, ptr %.0711.i123, align 4, !tbaa !272
  %i.cn = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4 ; 2 uses
  %.not.i125 = icmp eq ptr %i.co, %3
  br i1 %.not.i125, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i121, !llvm.loop !299

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit: ; preds = %.lr.ph.i121, %middle.block310, %bb.l
  %i.cp = sub i64 %i.l, %i.ay
  %i.cq = add i64 %i.cp, %i.q                     ; 4 uses
  %i.cr = load i8, ptr %0, align 8, !tbaa !15
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit
  %i.ct = trunc i64 %i.cq to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = or disjoint i8 %i.cu, 1
  store i8 %i.cv, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit
  %i.cw = load i64, ptr %0, align 8
  %i.cx = shl i64 %i.cq, 1
  %i.cy = and i64 %i.cw, 1
  %i.cz = or disjoint i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i127 = icmp eq ptr %1, %i.bx
  br i1 %.not9.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit134, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit
  %i.da = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cq ; 4 uses
  %i.db = shl i64 %i.q, 2
  %i.dc = add i64 %i.db, %i.y
  %i.dd = sub i64 %i.dc, %i.h                     ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.dd, 76
  br i1 %min.iters.check317, label %.lr.ph.i128.preheader333, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i128.preheader
  %i.dg = shl i64 %i.cq, 2
  %i.dh = add i64 %i.dg, %i.y
  %i.di = sub i64 %i.h, %i.dh
  %diff.check315 = icmp ugt i64 %i.di, -32
  br i1 %diff.check315, label %.lr.ph.i128.preheader333, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck314
  %n.vec319 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.dj = shl i64 %n.vec319, 2                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.da, i64 %i.dj
  %i.dl = getelementptr i8, ptr %1, i64 %i.dj
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %i.dm = shl i64 %index321, 2                    ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.da, i64 %i.dm ; 2 uses
  %next.gep323 = getelementptr i8, ptr %1, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load324 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !272
  %wide.load325 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !272
  %i.do = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %wide.load324, ptr %next.gep322, align 4, !tbaa !272
  store <4 x i32> %wide.load325, ptr %i.do, align 4, !tbaa !272
  %index.next326 = add nuw i64 %index321, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.dp, label %middle.block327, label %vector.body320, !llvm.loop !300

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.df, %n.vec319
  br i1 %cmp.n328, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit134, label %.lr.ph.i128.preheader333

.lr.ph.i128.preheader333:                         ; preds = %vector.memcheck314, %.lr.ph.i128.preheader, %middle.block327
  %.0711.i130.ph = phi ptr [ %i.da, %vector.memcheck314 ], [ %i.da, %.lr.ph.i128.preheader ], [ %i.dk, %middle.block327 ]
  %.0810.i131.ph = phi ptr [ %1, %vector.memcheck314 ], [ %1, %.lr.ph.i128.preheader ], [ %i.dl, %middle.block327 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader333, %.lr.ph.i128
  %.0711.i130 = phi ptr [ %i.dr, %.lr.ph.i128 ], [ %.0711.i130.ph, %.lr.ph.i128.preheader333 ] ; 2 uses
  %.0810.i131 = phi ptr [ %i.ds, %.lr.ph.i128 ], [ %.0810.i131.ph, %.lr.ph.i128.preheader333 ] ; 3 uses
  %i.dq = load i32, ptr %.0810.i131, align 4, !tbaa !272
  store i32 %i.dq, ptr %.0711.i130, align 4, !tbaa !272
  %i.dr = getelementptr inbounds nuw i8, ptr %.0711.i130, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i131, i64 4
  %.not.i132 = icmp eq ptr %.0810.i131, %i.bw
  br i1 %.not.i132, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit134, label %.lr.ph.i128, !llvm.loop !301

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit134: ; preds = %.lr.ph.i128, %middle.block327, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit
  %i.dt = icmp eq i64 %i.bu, 0
  br i1 %i.dt, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit134
  %i.du = ashr exact i64 %i.bu, 2
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135.sink.split

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135.sink.split: ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, %bb.o
  %.sink = phi i64 [ %i.du, %bb.o ], [ %i.l, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit ], [ %i.l, %bb.k ]
  %i.dv = call ptr @wmemcpy(ptr noundef %1, ptr noundef %2, i64 noundef %.sink) #26 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135.sink.split, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit134
  %.0108 = add i64 %i.q, %i.l                     ; 3 uses
  %i.dw = load i8, ptr %0, align 8, !tbaa !15
  %i.dx = trunc i8 %i.dw to i1
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135
  %i.dy = trunc i64 %.0108 to i8
  %i.dz = shl i8 %i.dy, 1
  %i.ea = or disjoint i8 %i.dz, 1
  store i8 %i.ea, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit136

bb.q:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyEPKwS9_Pw.exit135
  %i.eb = load i64, ptr %0, align 8
  %i.ec = shl i64 %.0108, 1
  %i.ed = and i64 %i.eb, 1
  %i.ee = or disjoint i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit136

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit136: ; preds = %bb.p, %bb.q
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0108
  store i32 0, ptr %i.ef, align 4, !tbaa !272
  %.pre188.pre = load i8, ptr %0, align 8, !tbaa !15
  %.pre189.pre = load ptr, ptr %i.f, align 8
  br label %bb.x

bb.r:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !295
  %.not117 = icmp eq ptr %i.eg, null
  br i1 %.not117, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not9.i137 = icmp eq ptr %i.x, %1
  br i1 %.not9.i137, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit144, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %bb.s
  %i.eh = add i64 %i.h, -4
  %i.ei = sub i64 %i.eh, %i.y                     ; 2 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.ei, 28
  %i.el = sub i64 %i.y, %i.as
  %diff.check223 = icmp ugt i64 %i.el, -16
  %or.cond = or i1 %min.iters.check225, %diff.check223
  br i1 %or.cond, label %.lr.ph.i138.preheader338, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i138.preheader
  %n.vec227 = and i64 %i.ek, 9223372036854775804  ; 3 uses
  %i.em = shl i64 %n.vec227, 2                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmPKw:bb.a
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.v = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPKwEEPwSA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr noundef %2, ptr noundef %i.u, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = lshr i64 %i.f, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.g
  %i.n = sub i64 4611686018427387902, %2
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !272
  %i.u = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEPKwmw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !272
  %i.b = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEPKww(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !272
  %i.b = load i8, ptr %0, align 8, !tbaa !15
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.c, ptr %i.d, ptr %i.f
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !15
  %i.m = trunc i8 %i.l to i1
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = select i1 %i.m, ptr %i.d, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 8 uses
  %.not208 = icmp eq i64 %3, %5
  br i1 %.not208, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %3, %5                           ; 20 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8                ; 3 uses
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 15 uses
  %i.o = trunc i64 %i.l to i1                     ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1
  %i.s = select i1 %i.o, i64 4, i64 %i.r          ; 4 uses
  %i.t = sub i64 %i.s, %i.n
  %i.u = select i1 %i.o, ptr %i.e, ptr %i.g       ; 16 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !295
  %.not209 = icmp ult i64 %i.t, %i.i
  br i1 %.not209, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, 1                          ; 5 uses
  %i.x = lshr i64 %i.l, 1
  %i.y = and i64 %i.x, 127
  %i.z = select i1 %i.o, i64 %i.y, i64 %i.m
  %.neg.i = sub i64 %i.z, %i.s
  %i.aa = sub i64 4611686018427387902, %i.s
  %i.ab = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, 2305843009213693952
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i64 %i.w, 3
  %i.af = udiv i64 %i.ae, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.w, -6917529027641081857
  %i.ah = shl i64 %i.w, 3
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 4611686018427387903)
  %i.aj = select i1 %i.ag, i64 4611686018427387903, i64 %i.ai
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = add i64 %i.ab, %i.w
  %i.al = tail call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 %.0.i.i)
  store i64 %i.al, ptr %i.a, align 8, !tbaa !49
  %i.am = add i64 %i.n, %i.i                      ; 3 uses
  %i.an = add i64 %i.am, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.ao = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_4test16simple_allocatorIwEELj1EE18allocation_commandERS5_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = icmp eq ptr %i.u, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !277
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.as = ptrtoint ptr %i.u to i64
  %i.at = sub i64 %i.h, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 3 uses
  %i.av = sub i64 %i.n, %i.au                     ; 5 uses
  %.not124 = icmp ult i64 %i.av, %i.i
  br i1 %.not124, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx210 = shl i64 %i.n, 2                      ; 2 uses
  %i.aw = getelementptr i8, ptr %i.u, i64 %.idx210 ; 4 uses
  %i.ax = sub i64 %i.n, %i.i
  %.idx = shl i64 %i.ax, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx210
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  %i.az = shl i64 %3, 2
  %7 = add i64 %i.az, -4
  %8 = shl i64 %5, 2
  %i.ba = sub i64 %7, %8                          ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check300, label %.lr.ph.i.preheader376, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.i.preheader
  %n.vec302 = and i64 %i.bc, 9223372036854775800  ; 3 uses
  %i.bd = shl i64 %n.vec302, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ay, i64 %i.bd
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.bg = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.aw, i64 %i.bg ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ay, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep305, i64 4
  %i.bi = getelementptr i8, ptr %next.gep306, i64 4
  %i.bj = getelementptr i8, ptr %next.gep306, i64 20
  %wide.load307 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !272
  %wide.load308 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !272
  %i.bk = getelementptr i8, ptr %next.gep305, i64 20
  store <4 x i32> %wide.load307, ptr %i.bh, align 4, !tbaa !272
  store <4 x i32> %wide.load308, ptr %i.bk, align 4, !tbaa !272
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.bl, label %middle.block310, label %vector.body303, !llvm.loop !310

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.bc, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader376

.lr.ph.i.preheader376:                            ; preds = %.lr.ph.i.preheader, %middle.block310
  %.0711.i.pn.ph = phi ptr [ %i.aw, %.lr.ph.i.preheader ], [ %i.be, %middle.block310 ]
  %.0810.i.pn.ph = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.bf, %middle.block310 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader376, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bm = load i32, ptr %.0810.i, align 4, !tbaa !272
  store i32 %i.bm, ptr %.0711.i, align 4, !tbaa !272
  %.not.i = icmp eq ptr %.0810.i, %i.aw
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !311

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i, %middle.block310, %bb.j
  %i.bn = sub nuw i64 %i.av, %i.i
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit
  %i.bq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.br = call ptr @wmemmove(ptr noundef nonnull %i.bq, ptr noundef %1, i64 noundef %i.bo) #26 ; 0 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit
  %.pre.i = load i32, ptr %2, align 4, !tbaa !272 ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check315, label %.lr.ph.i126.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.preheader.i
  %n.vec317 = and i64 %i.i, -8                    ; 4 uses
  %i.bs = shl i64 %n.vec317, 2
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %i.bu = sub i64 %3, %n.vec317
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next323, %vector.body320 ] ; 2 uses
  %i.bv = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %broadcast.splat319, ptr %next.gep322, align 4, !tbaa !272
  store <4 x i32> %broadcast.splat319, ptr %i.bw, align 4, !tbaa !272
  %index.next323 = add nuw i64 %index321, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next323, %n.vec317
  br i1 %i.bx, label %middle.block324, label %vector.body320, !llvm.loop !312

middle.block324:                                  ; preds = %vector.body320
  %cmp.n325 = icmp eq i64 %i.i, %n.vec317
  br i1 %cmp.n325, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_SC_T0_.exit, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block324
  %.06.i.ph = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.bt, %middle.block324 ]
  %.sroa.2.05.i.ph = phi i64 [ %3, %.lr.ph.preheader.i ], [ %i.bu, %middle.block324 ]
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126
  %.06.i = phi ptr [ %i.bz, %.lr.ph.i126 ], [ %.06.i.ph, %.lr.ph.i126.preheader ] ; 2 uses
  %.sroa.2.05.i = phi i64 [ %i.by, %.lr.ph.i126 ], [ %.sroa.2.05.i.ph, %.lr.ph.i126.preheader ]
  store i32 %.pre.i, ptr %.06.i, align 4, !tbaa !272
  %i.by = add i64 %.sroa.2.05.i, -1               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %.not.i127 = icmp eq i64 %i.by, %5
  br i1 %.not.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_SC_T0_.exit, label %.lr.ph.i126, !llvm.loop !313

bb.l:                                             ; preds = %bb.i
  %.neg = xor i64 %i.av, -1
  %i.ca = add i64 %3, %.neg                       ; 4 uses
  %i.cb = getelementptr [4 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4      ; 4 uses
  %.not6.i = icmp eq i64 %i.ca, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SC_T0_.exit, label %.lr.ph.preheader.i128

.lr.ph.preheader.i128:                            ; preds = %bb.l
  %.pre.i129 = load i32, ptr %2, align 4, !tbaa !272 ; 2 uses
  %i.cd = add i64 %i.au, %3
  %i.ce = xor i64 %i.n, -1
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = sub i64 %i.cf, %5                       ; 3 uses
  %min.iters.check329 = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check329, label %.lr.ph.i130.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph.preheader.i128
  %n.vec331 = and i64 %i.cg, -8                   ; 4 uses
  %i.ch = shl i64 %n.vec331, 2
  %i.ci = getelementptr i8, ptr %i.cc, i64 %i.ch
  %i.cj = sub i64 %i.ca, %n.vec331
  %broadcast.splatinsert332 = insertelement <4 x i32> poison, i32 %.pre.i129, i64 0
  %broadcast.splat333 = shufflevector <4 x i32> %broadcast.splatinsert332, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph330
  %index335 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body334 ] ; 2 uses
  %i.ck = shl i64 %index335, 2
  %next.gep336 = getelementptr i8, ptr %i.cc, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep336, i64 16
  store <4 x i32> %broadcast.splat333, ptr %next.gep336, align 4, !tbaa !272
  store <4 x i32> %broadcast.splat333, ptr %i.cl, align 4, !tbaa !272
  %index.next337 = add nuw i64 %index335, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next337, %n.vec331
  br i1 %i.cm, label %middle.block338, label %vector.body334, !llvm.loop !314

middle.block338:                                  ; preds = %vector.body334
  %cmp.n339 = icmp eq i64 %i.cg, %n.vec331
  br i1 %cmp.n339, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SC_T0_.exit, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %.lr.ph.preheader.i128, %middle.block338
  %.038.i.ph = phi ptr [ %i.cc, %.lr.ph.preheader.i128 ], [ %i.ci, %middle.block338 ]
  %.sroa.2.07.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i128 ], [ %i.cj, %middle.block338 ]
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130
  %.038.i = phi ptr [ %i.cn, %.lr.ph.i130 ], [ %.038.i.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.sroa.2.07.i = phi i64 [ %i.co, %.lr.ph.i130 ], [ %.sroa.2.07.i.ph, %.lr.ph.i130.preheader ]
  store i32 %.pre.i129, ptr %.038.i, align 4, !tbaa !272
  %i.cn = getelementptr inbounds nuw i8, ptr %.038.i, i64 4
  %i.co = add i64 %.sroa.2.07.i, -1               ; 2 uses
  %.not.i131 = icmp eq i64 %i.co, %5
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SC_T0_.exit, label %.lr.ph.i130, !llvm.loop !315

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SC_T0_.exit: ; preds = %.lr.ph.i130, %middle.block338, %bb.l
  %i.cp = sub i64 %i.i, %i.av
  %i.cq = add i64 %i.cp, %i.n                     ; 4 uses
  %i.cr = load i8, ptr %0, align 8, !tbaa !15
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SC_T0_.exit
  %i.ct = trunc i64 %i.cq to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = or disjoint i8 %i.cu, 1
  store i8 %i.cv, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SC_T0_.exit
  %i.cw = load i64, ptr %0, align 8
  %i.cx = shl i64 %i.cq, 1
  %i.cy = and i64 %i.cw, 1
  %i.cz = or disjoint i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i133 = icmp eq ptr %1, %i.cc
  br i1 %.not9.i133, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit
  %i.da = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cq ; 4 uses
  %i.db = shl i64 %i.n, 2
  %i.dc = add i64 %i.db, %i.v
  %i.dd = sub i64 %i.dc, %i.h                     ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check345 = icmp ult i64 %i.dd, 76
  br i1 %min.iters.check345, label %.lr.ph.i134.preheader374, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i134.preheader
  %i.dg = shl i64 %i.cq, 2
  %i.dh = add i64 %i.dg, %i.v
  %i.di = sub i64 %i.h, %i.dh
  %diff.check343 = icmp ugt i64 %i.di, -32
  br i1 %diff.check343, label %.lr.ph.i134.preheader374, label %vector.ph346

end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmRKS5_:bb.a

bb.e:                                             ; preds = %bb.c
  %i.r = trunc i64 %i.e to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = select i1 %i.r, ptr %i.s, ptr %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %1
  %i.x = trunc i64 %i.m to i1                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = select i1 %i.x, ptr %i.y, ptr %i.aa
  %i.ac = lshr i64 %i.m, 1
  %i.ad = and i64 %i.ac, 127
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.n
  %i.ag = select i1 %i.x, ptr %i.ae, ptr %i.af
  %i.ah = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.w, ptr noundef %i.ab, ptr noundef %i.ag, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 9 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.j = ptrtoint ptr %2 to i64                   ; 7 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 10 uses
  %i.m = lshr i8 %i.c, 1
  %i.n = zext nneg i8 %i.m to i64
  %i.o = load i64, ptr %0, align 8                ; 3 uses
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = select i1 %i.d, i64 %i.n, i64 %i.p       ; 14 uses
  %i.r = trunc i64 %i.o to i1                     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, -1
  %i.v = select i1 %i.r, i64 4, i64 %i.u          ; 4 uses
  %i.w = sub i64 %i.v, %i.q
  %i.x = select i1 %i.r, ptr %i.e, ptr %i.g       ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !295
  %.not178 = icmp ult i64 %i.w, %i.l
  br i1 %.not178, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 4611686018427387902, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %i.z, 2305843009213693952
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = shl nuw i64 %i.z, 3
  %i.ai = udiv i64 %i.ah, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 4611686018427387903)
  %i.am = select i1 %i.aj, i64 4611686018427387903, i64 %i.al
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.am, %bb.g ]
  %i.an = add i64 %i.ae, %i.z
  %i.ao = tail call noundef i64 @llvm.umax.i64(i64 %i.an, i64 %.0.i.i)
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !49
  %i.ap = add i64 %i.q, %i.l                      ; 3 uses
  %i.aq = add i64 %i.ap, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.ar = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsISaIwELj1EE18allocation_commandERS3_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 4 uses
  %i.at = icmp eq ptr %i.x, %i.ar
  br i1 %i.at, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit
  %i.au = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.au, ptr %i.s, align 8, !tbaa !503
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.h, %i.av                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub i64 %i.q, %i.ax                     ; 4 uses
  %.not118 = icmp ult i64 %i.ay, %i.l
  br i1 %.not118, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx179 = shl i64 %i.q, 2                      ; 2 uses
  %i.az = getelementptr i8, ptr %i.x, i64 %.idx179 ; 4 uses
  %i.ba = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.ba, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx179
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bc = add i64 %i.k, -4                        ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check283 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check283, label %.lr.ph.i.preheader335, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph.i.preheader
  %n.vec285 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec285, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bf
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 2 uses
  %i.bi = shl i64 %index287, 2                    ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep288, i64 4
  %i.bk = getelementptr i8, ptr %next.gep289, i64 4
  %i.bl = getelementptr i8, ptr %next.gep289, i64 20
  %wide.load290 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !272
  %wide.load291 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !272
  %i.bm = getelementptr i8, ptr %next.gep288, i64 20
  store <4 x i32> %wide.load290, ptr %i.bj, align 4, !tbaa !272
  store <4 x i32> %wide.load291, ptr %i.bm, align 4, !tbaa !272
  %index.next292 = add nuw i64 %index287, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.bn, label %middle.block293, label %vector.body286, !llvm.loop !516

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.be, %n.vec285
  br i1 %cmp.n294, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader335

.lr.ph.i.preheader335:                            ; preds = %.lr.ph.i.preheader, %middle.block293
  %.0711.i.pn.ph = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.bg, %middle.block293 ]
  %.0810.i.pn.ph = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.bh, %middle.block293 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader335, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader335 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader335 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bo = load i32, ptr %.0810.i, align 4, !tbaa !272
  store i32 %i.bo, ptr %.0711.i, align 4, !tbaa !272
  %.not.i = icmp eq ptr %.0810.i, %i.az
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i, !llvm.loop !517

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit: ; preds = %.lr.ph.i, %middle.block293, %bb.j
  %i.bp = sub nuw i64 %i.ay, %i.l
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bt = call ptr @wmemmove(ptr noundef nonnull %i.bs, ptr noundef %1, i64 noundef %i.bq) #26 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135.sink.split

bb.l:                                             ; preds = %bb.i
  %.idx180 = shl i64 %i.ay, 2
  %i.bu = add i64 %.idx180, 4                     ; 3 uses
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu     ; 5 uses
  %i.bw = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 5 uses
  %.not9.i120 = icmp eq ptr %i.bv, %3
  br i1 %.not9.i120, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %bb.l
  %5 = add i64 %i.aw, %i.i
  %i.by = add i64 %5, -8
  %6 = shl i64 %i.q, 2
  %i.bz = add i64 %6, %i.j
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.ca, 60
  br i1 %min.iters.check300, label %.lr.ph.i121.preheader334, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph.i121.preheader
  %i.cd = add i64 %i.aw, %i.y
  %i.ce = sub i64 %i.j, %i.cd
  %diff.check298 = icmp ugt i64 %i.ce, -32
  br i1 %diff.check298, label %.lr.ph.i121.preheader334, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck297
  %n.vec302 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec302, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cf
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.ci = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.bx, i64 %i.ci ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.bv, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load307 = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !272
  %wide.load308 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !272
  %i.ck = getelementptr i8, ptr %next.gep305, i64 16
  store <4 x i32> %wide.load307, ptr %next.gep305, align 4, !tbaa !272
  store <4 x i32> %wide.load308, ptr %i.ck, align 4, !tbaa !272
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.cl, label %middle.block310, label %vector.body303, !llvm.loop !518

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.cc, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i121.preheader334

.lr.ph.i121.preheader334:                         ; preds = %vector.memcheck297, %.lr.ph.i121.preheader, %middle.block310
  %.0711.i123.ph = phi ptr [ %i.bx, %vector.memcheck297 ], [ %i.bx, %.lr.ph.i121.preheader ], [ %i.cg, %middle.block310 ]
  %.0810.i124.ph = phi ptr [ %i.bv, %vector.memcheck297 ], [ %i.bv, %.lr.ph.i121.preheader ], [ %i.ch, %middle.block310 ]
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.preheader334, %.lr.ph.i121
  %.0711.i123 = phi ptr [ %i.cn, %.lr.ph.i121 ], [ %.0711.i123.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %.0810.i124 = phi ptr [ %i.co, %.lr.ph.i121 ], [ %.0810.i124.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %i.cm = load i32, ptr %.0810.i124, align 4, !tbaa !272
  store i32 %i.cm, ptr %.0711.i123, align 4, !tbaa !272
  %i.cn = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4 ; 2 uses
  %.not.i125 = icmp eq ptr %i.co, %3
  br i1 %.not.i125, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i121, !llvm.loop !519

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit: ; preds = %.lr.ph.i121, %middle.block310, %bb.l
  %i.cp = sub i64 %i.l, %i.ay
  %i.cq = add i64 %i.cp, %i.q                     ; 4 uses
  %i.cr = load i8, ptr %0, align 8, !tbaa !15
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit
  %i.ct = trunc i64 %i.cq to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = or disjoint i8 %i.cu, 1
  store i8 %i.cv, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit
  %i.cw = load i64, ptr %0, align 8
  %i.cx = shl i64 %i.cq, 1
  %i.cy = and i64 %i.cw, 1
  %i.cz = or disjoint i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i127 = icmp eq ptr %1, %i.bx
  br i1 %.not9.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit134, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit
  %i.da = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cq ; 4 uses
  %i.db = shl i64 %i.q, 2
  %i.dc = add i64 %i.db, %i.y
  %i.dd = sub i64 %i.dc, %i.h                     ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.dd, 76
  br i1 %min.iters.check317, label %.lr.ph.i128.preheader333, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i128.preheader
  %i.dg = shl i64 %i.cq, 2
  %i.dh = add i64 %i.dg, %i.y
  %i.di = sub i64 %i.h, %i.dh
  %diff.check315 = icmp ugt i64 %i.di, -32
  br i1 %diff.check315, label %.lr.ph.i128.preheader333, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck314
  %n.vec319 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.dj = shl i64 %n.vec319, 2                    ; 2 uses
  %i.dk = getelementptr i8, ptr %i.da, i64 %i.dj
  %i.dl = getelementptr i8, ptr %1, i64 %i.dj
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %i.dm = shl i64 %index321, 2                    ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.da, i64 %i.dm ; 2 uses
  %next.gep323 = getelementptr i8, ptr %1, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load324 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !272
  %wide.load325 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !272
  %i.do = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %wide.load324, ptr %next.gep322, align 4, !tbaa !272
  store <4 x i32> %wide.load325, ptr %i.do, align 4, !tbaa !272
  %index.next326 = add nuw i64 %index321, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.dp, label %middle.block327, label %vector.body320, !llvm.loop !520

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.df, %n.vec319
  br i1 %cmp.n328, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit134, label %.lr.ph.i128.preheader333

.lr.ph.i128.preheader333:                         ; preds = %vector.memcheck314, %.lr.ph.i128.preheader, %middle.block327
  %.0711.i130.ph = phi ptr [ %i.da, %vector.memcheck314 ], [ %i.da, %.lr.ph.i128.preheader ], [ %i.dk, %middle.block327 ]
  %.0810.i131.ph = phi ptr [ %1, %vector.memcheck314 ], [ %1, %.lr.ph.i128.preheader ], [ %i.dl, %middle.block327 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader333, %.lr.ph.i128
  %.0711.i130 = phi ptr [ %i.dr, %.lr.ph.i128 ], [ %.0711.i130.ph, %.lr.ph.i128.preheader333 ] ; 2 uses
  %.0810.i131 = phi ptr [ %i.ds, %.lr.ph.i128 ], [ %.0810.i131.ph, %.lr.ph.i128.preheader333 ] ; 3 uses
  %i.dq = load i32, ptr %.0810.i131, align 4, !tbaa !272
  store i32 %i.dq, ptr %.0711.i130, align 4, !tbaa !272
  %i.dr = getelementptr inbounds nuw i8, ptr %.0711.i130, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i131, i64 4
  %.not.i132 = icmp eq ptr %.0810.i131, %i.bw
  br i1 %.not.i132, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit134, label %.lr.ph.i128, !llvm.loop !521

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit134: ; preds = %.lr.ph.i128, %middle.block327, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit
  %i.dt = icmp eq i64 %i.bu, 0
  br i1 %i.dt, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit134
  %i.du = ashr exact i64 %i.bu, 2
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135.sink.split

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135.sink.split: ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, %bb.o
  %.sink = phi i64 [ %i.du, %bb.o ], [ %i.l, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit ], [ %i.l, %bb.k ]
  %i.dv = call ptr @wmemcpy(ptr noundef %1, ptr noundef %2, i64 noundef %.sink) #26 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135.sink.split, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit134
  %.0108 = add i64 %i.q, %i.l                     ; 3 uses
  %i.dw = load i8, ptr %0, align 8, !tbaa !15
  %i.dx = trunc i8 %i.dw to i1
  br i1 %i.dx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135
  %i.dy = trunc i64 %.0108 to i8
  %i.dz = shl i8 %i.dy, 1
  %i.ea = or disjoint i8 %i.dz, 1
  store i8 %i.ea, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit136

bb.q:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyEPKwS7_Pw.exit135
  %i.eb = load i64, ptr %0, align 8
  %i.ec = shl i64 %.0108, 1
  %i.ed = and i64 %i.eb, 1
  %i.ee = or disjoint i64 %i.ed, %i.ec
  store i64 %i.ee, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit136

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit136: ; preds = %bb.p, %bb.q
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0108
  store i32 0, ptr %i.ef, align 4, !tbaa !272
  %.pre188.pre = load i8, ptr %0, align 8, !tbaa !15
  %.pre189.pre = load ptr, ptr %i.f, align 8
  br label %bb.x

bb.r:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !295
  %.not117 = icmp eq ptr %i.eg, null
  br i1 %.not117, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not9.i137 = icmp eq ptr %i.x, %1
  br i1 %.not9.i137, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit144, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %bb.s
  %i.eh = add i64 %i.h, -4
  %i.ei = sub i64 %i.eh, %i.y                     ; 2 uses
  %i.ej = lshr i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.ei, 28
  %i.el = sub i64 %i.y, %i.as
  %diff.check223 = icmp ugt i64 %i.el, -16
  %or.cond = or i1 %min.iters.check225, %diff.check223
  br i1 %or.cond, label %.lr.ph.i138.preheader338, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i138.preheader
  %n.vec227 = and i64 %i.ek, 9223372036854775804  ; 3 uses
  %i.em = shl i64 %n.vec227, 2                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmPKw:bb.a
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i
  %i.v = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPKwEEPwS8_T_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr noundef %2, ptr noundef %i.u, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmmw(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = lshr i8 %i.b, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = load i64, ptr %0, align 8                ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = select i1 %i.c, i64 %i.e, i64 %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = trunc i64 %i.f to i1                     ; 2 uses
  %i.k = lshr i64 %i.f, 1
  %i.l = and i64 %i.k, 127
  %i.m = select i1 %i.j, i64 %i.l, i64 %i.g
  %i.n = sub i64 4611686018427387902, %2
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.j, ptr %i.p, ptr %i.r
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !272
  %i.u = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.t, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEPKwmw(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2, i32 noundef signext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !272
  %i.b = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 %2, ptr null, i64 0, ptr noundef null)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEPKww(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef signext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !272
  %i.b = load i8, ptr %0, align 8, !tbaa !15
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = select i1 %i.c, ptr %i.d, ptr %i.f
  %i.h = ptrtoint ptr %1 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nonnull %i.a, i64 1, ptr null, i64 0, ptr noundef null) ; 0 uses
  %i.l = load i8, ptr %0, align 8, !tbaa !15
  %i.m = trunc i8 %i.l to i1
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = select i1 %i.m, ptr %i.d, ptr %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 8 uses
  %.not208 = icmp eq i64 %3, %5
  br i1 %.not208, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %3, %5                           ; 20 uses
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8                ; 3 uses
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m       ; 15 uses
  %i.o = trunc i64 %i.l to i1                     ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1
  %i.s = select i1 %i.o, i64 4, i64 %i.r          ; 4 uses
  %i.t = sub i64 %i.s, %i.n
  %i.u = select i1 %i.o, ptr %i.e, ptr %i.g       ; 16 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !295
  %.not209 = icmp ult i64 %i.t, %i.i
  br i1 %.not209, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, 1                          ; 5 uses
  %i.x = lshr i64 %i.l, 1
  %i.y = and i64 %i.x, 127
  %i.z = select i1 %i.o, i64 %i.y, i64 %i.m
  %.neg.i = sub i64 %i.z, %i.s
  %i.aa = sub i64 4611686018427387902, %i.s
  %i.ab = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, 2305843009213693952
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i64 %i.w, 3
  %i.af = udiv i64 %i.ae, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.w, -6917529027641081857
  %i.ah = shl i64 %i.w, 3
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 4611686018427387903)
  %i.aj = select i1 %i.ag, i64 4611686018427387903, i64 %i.ai
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.af, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = add i64 %i.ab, %i.w
  %i.al = tail call noundef i64 @llvm.umax.i64(i64 %i.ak, i64 %.0.i.i)
  store i64 %i.al, ptr %i.a, align 8, !tbaa !49
  %i.am = add i64 %i.n, %i.i                      ; 3 uses
  %i.an = add i64 %i.am, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.ao = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsISaIwELj1EE18allocation_commandERS3_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64              ; 2 uses
  %i.aq = icmp eq ptr %i.u, %i.ao
  br i1 %i.aq, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !503
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.as = ptrtoint ptr %i.u to i64
  %i.at = sub i64 %i.h, %i.as
  %i.au = ashr exact i64 %i.at, 2                 ; 3 uses
  %i.av = sub i64 %i.n, %i.au                     ; 5 uses
  %.not124 = icmp ult i64 %i.av, %i.i
  br i1 %.not124, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx210 = shl i64 %i.n, 2                      ; 2 uses
  %i.aw = getelementptr i8, ptr %i.u, i64 %.idx210 ; 4 uses
  %i.ax = sub i64 %i.n, %i.i
  %.idx = shl i64 %i.ax, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx210
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  %i.az = shl i64 %3, 2
  %7 = add i64 %i.az, -4
  %8 = shl i64 %5, 2
  %i.ba = sub i64 %7, %8                          ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check300, label %.lr.ph.i.preheader376, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.i.preheader
  %n.vec302 = and i64 %i.bc, 9223372036854775800  ; 3 uses
  %i.bd = shl i64 %n.vec302, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.ay, i64 %i.bd
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.bg = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.aw, i64 %i.bg ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ay, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep305, i64 4
  %i.bi = getelementptr i8, ptr %next.gep306, i64 4
  %i.bj = getelementptr i8, ptr %next.gep306, i64 20
  %wide.load307 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !272
  %wide.load308 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !272
  %i.bk = getelementptr i8, ptr %next.gep305, i64 20
  store <4 x i32> %wide.load307, ptr %i.bh, align 4, !tbaa !272
  store <4 x i32> %wide.load308, ptr %i.bk, align 4, !tbaa !272
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.bl, label %middle.block310, label %vector.body303, !llvm.loop !530

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.bc, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader376

.lr.ph.i.preheader376:                            ; preds = %.lr.ph.i.preheader, %middle.block310
  %.0711.i.pn.ph = phi ptr [ %i.aw, %.lr.ph.i.preheader ], [ %i.be, %middle.block310 ]
  %.0810.i.pn.ph = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.bf, %middle.block310 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader376, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bm = load i32, ptr %.0810.i, align 4, !tbaa !272
  store i32 %i.bm, ptr %.0711.i, align 4, !tbaa !272
  %.not.i = icmp eq ptr %.0810.i, %i.aw
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i, !llvm.loop !531

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit: ; preds = %.lr.ph.i, %middle.block310, %bb.j
  %i.bn = sub nuw i64 %i.av, %i.i
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit
  %i.bq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.br = call ptr @wmemmove(ptr noundef nonnull %i.bq, ptr noundef %1, i64 noundef %i.bo) #26 ; 0 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit
  %.pre.i = load i32, ptr %2, align 4, !tbaa !272 ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check315, label %.lr.ph.i126.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.preheader.i
  %n.vec317 = and i64 %i.i, -8                    ; 4 uses
  %i.bs = shl i64 %n.vec317, 2
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %i.bu = sub i64 %3, %n.vec317
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next323, %vector.body320 ] ; 2 uses
  %i.bv = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %broadcast.splat319, ptr %next.gep322, align 4, !tbaa !272
  store <4 x i32> %broadcast.splat319, ptr %i.bw, align 4, !tbaa !272
  %index.next323 = add nuw i64 %index321, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next323, %n.vec317
  br i1 %i.bx, label %middle.block324, label %vector.body320, !llvm.loop !532

middle.block324:                                  ; preds = %vector.body320
  %cmp.n325 = icmp eq i64 %i.i, %n.vec317
  br i1 %cmp.n325, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_SA_T0_.exit, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block324
  %.06.i.ph = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.bt, %middle.block324 ]
  %.sroa.2.05.i.ph = phi i64 [ %3, %.lr.ph.preheader.i ], [ %i.bu, %middle.block324 ]
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126
  %.06.i = phi ptr [ %i.bz, %.lr.ph.i126 ], [ %.06.i.ph, %.lr.ph.i126.preheader ] ; 2 uses
  %.sroa.2.05.i = phi i64 [ %i.by, %.lr.ph.i126 ], [ %.sroa.2.05.i.ph, %.lr.ph.i126.preheader ]
  store i32 %.pre.i, ptr %.06.i, align 4, !tbaa !272
  %i.by = add i64 %.sroa.2.05.i, -1               ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %.not.i127 = icmp eq i64 %i.by, %5
  br i1 %.not.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_SA_T0_.exit, label %.lr.ph.i126, !llvm.loop !533

bb.l:                                             ; preds = %bb.i
  %.neg = xor i64 %i.av, -1
  %i.ca = add i64 %3, %.neg                       ; 4 uses
  %i.cb = getelementptr [4 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4      ; 4 uses
  %.not6.i = icmp eq i64 %i.ca, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SA_T0_.exit, label %.lr.ph.preheader.i128

.lr.ph.preheader.i128:                            ; preds = %bb.l
  %.pre.i129 = load i32, ptr %2, align 4, !tbaa !272 ; 2 uses
  %i.cd = add i64 %i.au, %3
  %i.ce = xor i64 %i.n, -1
  %i.cf = add i64 %i.cd, %i.ce
  %i.cg = sub i64 %i.cf, %5                       ; 3 uses
  %min.iters.check329 = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check329, label %.lr.ph.i130.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph.preheader.i128
  %n.vec331 = and i64 %i.cg, -8                   ; 4 uses
  %i.ch = shl i64 %n.vec331, 2
  %i.ci = getelementptr i8, ptr %i.cc, i64 %i.ch
  %i.cj = sub i64 %i.ca, %n.vec331
  %broadcast.splatinsert332 = insertelement <4 x i32> poison, i32 %.pre.i129, i64 0
  %broadcast.splat333 = shufflevector <4 x i32> %broadcast.splatinsert332, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph330
  %index335 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body334 ] ; 2 uses
  %i.ck = shl i64 %index335, 2
  %next.gep336 = getelementptr i8, ptr %i.cc, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep336, i64 16
  store <4 x i32> %broadcast.splat333, ptr %next.gep336, align 4, !tbaa !272
  store <4 x i32> %broadcast.splat333, ptr %i.cl, align 4, !tbaa !272
  %index.next337 = add nuw i64 %index335, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next337, %n.vec331
  br i1 %i.cm, label %middle.block338, label %vector.body334, !llvm.loop !534

middle.block338:                                  ; preds = %vector.body334
  %cmp.n339 = icmp eq i64 %i.cg, %n.vec331
  br i1 %cmp.n339, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SA_T0_.exit, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %.lr.ph.preheader.i128, %middle.block338
  %.038.i.ph = phi ptr [ %i.cc, %.lr.ph.preheader.i128 ], [ %i.ci, %middle.block338 ]
  %.sroa.2.07.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i128 ], [ %i.cj, %middle.block338 ]
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130
  %.038.i = phi ptr [ %i.cn, %.lr.ph.i130 ], [ %.038.i.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.sroa.2.07.i = phi i64 [ %i.co, %.lr.ph.i130 ], [ %.sroa.2.07.i.ph, %.lr.ph.i130.preheader ]
  store i32 %.pre.i129, ptr %.038.i, align 4, !tbaa !272
  %i.cn = getelementptr inbounds nuw i8, ptr %.038.i, i64 4
  %i.co = add i64 %.sroa.2.07.i, -1               ; 2 uses
  %.not.i131 = icmp eq i64 %i.co, %5
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SA_T0_.exit, label %.lr.ph.i130, !llvm.loop !535

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SA_T0_.exit: ; preds = %.lr.ph.i130, %middle.block338, %bb.l
  %i.cp = sub i64 %i.i, %i.av
  %i.cq = add i64 %i.cp, %i.n                     ; 4 uses
  %i.cr = load i8, ptr %0, align 8, !tbaa !15
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SA_T0_.exit
  %i.ct = trunc i64 %i.cq to i8
  %i.cu = shl i8 %i.ct, 1
  %i.cv = or disjoint i8 %i.cu, 1
  store i8 %i.cv, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_SA_T0_.exit
  %i.cw = load i64, ptr %0, align 8
  %i.cx = shl i64 %i.cq, 1
  %i.cy = and i64 %i.cw, 1
  %i.cz = or disjoint i64 %i.cy, %i.cx
  store i64 %i.cz, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i133 = icmp eq ptr %1, %i.cc
  br i1 %.not9.i133, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit
  %i.da = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cq ; 4 uses
  %i.db = shl i64 %i.n, 2
  %i.dc = add i64 %i.db, %i.v
  %i.dd = sub i64 %i.dc, %i.h                     ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check345 = icmp ult i64 %i.dd, 76
  br i1 %min.iters.check345, label %.lr.ph.i134.preheader374, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i134.preheader
  %i.dg = shl i64 %i.cq, 2
  %i.dh = add i64 %i.dg, %i.v
  %i.di = sub i64 %i.h, %i.dh
  %diff.check343 = icmp ugt i64 %i.di, -32
  br i1 %diff.check343, label %.lr.ph.i134.preheader374, label %vector.ph346

end_hunk_3
begin_hunk_4_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPwEES9_PKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE:bb.a
  %i.x = select i1 %i.r, ptr %i.e, ptr %i.g       ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !295
  %.not185 = icmp ult i64 %i.w, %i.l
  br i1 %.not185, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 4611686018427387902, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %i.z, 2305843009213693952
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = shl nuw i64 %i.z, 3
  %i.ai = udiv i64 %i.ah, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 4611686018427387903)
  %i.am = select i1 %i.aj, i64 4611686018427387903, i64 %i.al
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.am, %bb.g ]
  %i.an = add i64 %i.ae, %i.z
  %i.ao = tail call noundef i64 @llvm.umax.i64(i64 %i.an, i64 %.0.i.i)
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !49
  %i.ap = add i64 %i.q, %i.l                      ; 3 uses
  %i.aq = add i64 %i.ap, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.ar = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_4test16simple_allocatorIwEELj1EE18allocation_commandERS5_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 4 uses
  %i.at = icmp eq ptr %i.x, %i.ar
  br i1 %i.at, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE12next_storageEmm.exit
  %i.au = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.au, ptr %i.s, align 8, !tbaa !277
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.h, %i.av                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub i64 %i.q, %i.ax                     ; 5 uses
  %.not118 = icmp ult i64 %i.ay, %i.l
  br i1 %.not118, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx186 = shl i64 %i.q, 2                      ; 2 uses
  %i.az = getelementptr i8, ptr %i.x, i64 %.idx186 ; 4 uses
  %i.ba = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.ba, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx186
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bc = add i64 %i.k, -4                        ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check293 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check293, label %.lr.ph.i.preheader383, label %vector.ph294

vector.ph294:                                     ; preds = %.lr.ph.i.preheader
  %n.vec295 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec295, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bf
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next302, %vector.body296 ] ; 2 uses
  %i.bi = shl i64 %index297, 2                    ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %next.gep299 = getelementptr i8, ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep298, i64 4
  %i.bk = getelementptr i8, ptr %next.gep299, i64 4
  %i.bl = getelementptr i8, ptr %next.gep299, i64 20
  %wide.load300 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !272
  %wide.load301 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !272
  %i.bm = getelementptr i8, ptr %next.gep298, i64 20
  store <4 x i32> %wide.load300, ptr %i.bj, align 4, !tbaa !272
  store <4 x i32> %wide.load301, ptr %i.bm, align 4, !tbaa !272
  %index.next302 = add nuw i64 %index297, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next302, %n.vec295
  br i1 %i.bn, label %middle.block303, label %vector.body296, !llvm.loop !848

middle.block303:                                  ; preds = %vector.body296
  %cmp.n304 = icmp eq i64 %i.be, %n.vec295
  br i1 %cmp.n304, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i.preheader383

.lr.ph.i.preheader383:                            ; preds = %.lr.ph.i.preheader, %middle.block303
  %.0711.i.pn.ph = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.bg, %middle.block303 ]
  %.0810.i.pn.ph = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.bh, %middle.block303 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader383, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader383 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader383 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bo = load i32, ptr %.0810.i, align 4, !tbaa !272
  store i32 %i.bo, ptr %.0711.i, align 4, !tbaa !272
  %.not.i = icmp eq ptr %.0810.i, %i.az
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, label %.lr.ph.i, !llvm.loop !849

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit: ; preds = %.lr.ph.i, %middle.block303, %bb.j
  %i.bp = sub nuw i64 %i.ay, %i.l
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bt = call ptr @wmemmove(ptr noundef nonnull %i.bs, ptr noundef %1, i64 noundef %i.bq) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit

_ZNSt11char_traitsIwE4moveEPwPKwm.exit:           ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit, %bb.k
  %i.bu = add i64 %i.i, -4
  %i.bv = sub i64 %i.bu, %i.j                     ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check310 = icmp ult i64 %i.bv, 44
  %i.by = sub i64 %i.j, %i.h
  %diff.check308 = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check310, %diff.check308
  br i1 %or.cond, label %.lr.ph.i120.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit
  %n.vec312 = and i64 %i.bx, 9223372036854775800  ; 3 uses
  %i.bz = shl i64 %n.vec312, 2                    ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %i.cb = getelementptr i8, ptr %2, i64 %i.bz
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %i.cc = shl i64 %index314, 2                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %1, i64 %i.cc ; 2 uses
  %next.gep316 = getelementptr i8, ptr %2, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load317 = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !272
  %wide.load318 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !272
  %i.ce = getelementptr i8, ptr %next.gep315, i64 16
  store <4 x i32> %wide.load317, ptr %next.gep315, align 4, !tbaa !272
  store <4 x i32> %wide.load318, ptr %i.ce, align 4, !tbaa !272
  %index.next319 = add nuw i64 %index314, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.cf, label %middle.block320, label %vector.body313, !llvm.loop !850

middle.block320:                                  ; preds = %vector.body313
  %cmp.n321 = icmp eq i64 %i.bx, %n.vec312
  br i1 %cmp.n321, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, %middle.block320
  %.09.i.ph = phi ptr [ %1, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.ca, %middle.block320 ]
  %.068.i.ph = phi ptr [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.cb, %middle.block320 ]
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120
  %.09.i = phi ptr [ %i.ci, %.lr.ph.i120 ], [ %.09.i.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %.068.i = phi ptr [ %i.ch, %.lr.ph.i120 ], [ %.068.i.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %i.cg = load i32, ptr %.068.i, align 4, !tbaa !272
  store i32 %i.cg, ptr %.09.i, align 4, !tbaa !272
  %i.ch = getelementptr inbounds nuw i8, ptr %.068.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %.not.i121 = icmp eq ptr %i.ch, %3
  br i1 %.not.i121, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit, label %.lr.ph.i120, !llvm.loop !851

bb.l:                                             ; preds = %bb.i
  %.idx187 = shl i64 %i.ay, 2
  %i.cj = add i64 %.idx187, 4                     ; 2 uses
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj     ; 6 uses
  %i.cl = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4      ; 5 uses
  %.not9.i122 = icmp eq ptr %i.ck, %3
  br i1 %.not9.i122, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit129, label %.lr.ph.i123.preheader

.lr.ph.i123.preheader:                            ; preds = %bb.l
  %5 = add i64 %i.aw, %i.i
  %i.cn = add i64 %5, -8
  %6 = shl i64 %i.q, 2
  %i.co = add i64 %6, %i.j
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.cp, 60
  br i1 %min.iters.check327, label %.lr.ph.i123.preheader381, label %vector.memcheck324

vector.memcheck324:                               ; preds = %.lr.ph.i123.preheader
  %i.cs = add i64 %i.aw, %i.y
  %i.ct = sub i64 %i.j, %i.cs
  %diff.check325 = icmp ugt i64 %i.ct, -32
  br i1 %diff.check325, label %.lr.ph.i123.preheader381, label %vector.ph328

vector.ph328:                                     ; preds = %vector.memcheck324
  %n.vec329 = and i64 %i.cr, 9223372036854775800  ; 3 uses
  %i.cu = shl i64 %n.vec329, 2                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cm, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cu
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next336, %vector.body330 ] ; 2 uses
  %i.cx = shl i64 %index331, 2                    ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.cm, i64 %i.cx ; 2 uses
  %next.gep333 = getelementptr i8, ptr %i.ck, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep333, i64 16
  %wide.load334 = load <4 x i32>, ptr %next.gep333, align 4, !tbaa !272
  %wide.load335 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !272
  %i.cz = getelementptr i8, ptr %next.gep332, i64 16
  store <4 x i32> %wide.load334, ptr %next.gep332, align 4, !tbaa !272
  store <4 x i32> %wide.load335, ptr %i.cz, align 4, !tbaa !272
  %index.next336 = add nuw i64 %index331, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next336, %n.vec329
  br i1 %i.da, label %middle.block337, label %vector.body330, !llvm.loop !852

middle.block337:                                  ; preds = %vector.body330
  %cmp.n338 = icmp eq i64 %i.cr, %n.vec329
  br i1 %cmp.n338, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit129, label %.lr.ph.i123.preheader381

.lr.ph.i123.preheader381:                         ; preds = %vector.memcheck324, %.lr.ph.i123.preheader, %middle.block337
  %.0711.i125.ph = phi ptr [ %i.cm, %vector.memcheck324 ], [ %i.cm, %.lr.ph.i123.preheader ], [ %i.cv, %middle.block337 ]
  %.0810.i126.ph = phi ptr [ %i.ck, %vector.memcheck324 ], [ %i.ck, %.lr.ph.i123.preheader ], [ %i.cw, %middle.block337 ]
  br label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %.lr.ph.i123.preheader381, %.lr.ph.i123
  %.0711.i125 = phi ptr [ %i.dc, %.lr.ph.i123 ], [ %.0711.i125.ph, %.lr.ph.i123.preheader381 ] ; 2 uses
  %.0810.i126 = phi ptr [ %i.dd, %.lr.ph.i123 ], [ %.0810.i126.ph, %.lr.ph.i123.preheader381 ] ; 2 uses
  %i.db = load i32, ptr %.0810.i126, align 4, !tbaa !272
  store i32 %i.db, ptr %.0711.i125, align 4, !tbaa !272
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i125, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i126, i64 4 ; 2 uses
  %.not.i127 = icmp eq ptr %i.dd, %3
  br i1 %.not.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit129, label %.lr.ph.i123, !llvm.loop !853

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit129: ; preds = %.lr.ph.i123, %middle.block337, %bb.l
  %i.de = sub i64 %i.l, %i.ay
  %i.df = add i64 %i.de, %i.q                     ; 4 uses
  %i.dg = load i8, ptr %0, align 8, !tbaa !15
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit129
  %i.di = trunc i64 %i.df to i8
  %i.dj = shl i8 %i.di, 1
  %i.dk = or disjoint i8 %i.dj, 1
  store i8 %i.dk, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPwS9_EEmT_SA_T0_.exit129
  %i.dl = load i64, ptr %0, align 8
  %i.dm = shl i64 %i.df, 1
  %i.dn = and i64 %i.dl, 1
  %i.do = or disjoint i64 %i.dn, %i.dm
  store i64 %i.do, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i130 = icmp eq ptr %1, %i.cm
  br i1 %.not9.i130, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i131.preheader

.lr.ph.i131.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.df ; 4 uses
  %i.dq = shl i64 %i.q, 2
  %i.dr = add i64 %i.dq, %i.y
  %i.ds = sub i64 %i.dr, %i.h                     ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %i.ds, 76
  br i1 %min.iters.check344, label %.lr.ph.i131.preheader380, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i131.preheader
  %i.dv = shl i64 %i.df, 2
  %i.dw = add i64 %i.dv, %i.y
  %i.dx = sub i64 %i.h, %i.dw
  %diff.check342 = icmp ugt i64 %i.dx, -32
  br i1 %diff.check342, label %.lr.ph.i131.preheader380, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.du, 9223372036854775800  ; 3 uses
  %i.dy = shl i64 %n.vec346, 2                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dp, i64 %i.dy
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.eb = shl i64 %index348, 2                    ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.dp, i64 %i.eb ; 2 uses
  %next.gep350 = getelementptr i8, ptr %1, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep350, i64 16
  %wide.load351 = load <4 x i32>, ptr %next.gep350, align 4, !tbaa !272
  %wide.load352 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !272
  %i.ed = getelementptr i8, ptr %next.gep349, i64 16
  store <4 x i32> %wide.load351, ptr %next.gep349, align 4, !tbaa !272
  store <4 x i32> %wide.load352, ptr %i.ed, align 4, !tbaa !272
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.ee, label %middle.block354, label %vector.body347, !llvm.loop !854

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.du, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i131.preheader380

.lr.ph.i131.preheader380:                         ; preds = %vector.memcheck341, %.lr.ph.i131.preheader, %middle.block354
  %.0711.i133.ph = phi ptr [ %i.dp, %vector.memcheck341 ], [ %i.dp, %.lr.ph.i131.preheader ], [ %i.dz, %middle.block354 ]
  %.0810.i134.ph = phi ptr [ %1, %vector.memcheck341 ], [ %1, %.lr.ph.i131.preheader ], [ %i.ea, %middle.block354 ]
  br label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader380, %.lr.ph.i131
  %.0711.i133 = phi ptr [ %i.eg, %.lr.ph.i131 ], [ %.0711.i133.ph, %.lr.ph.i131.preheader380 ] ; 2 uses
  %.0810.i134 = phi ptr [ %i.eh, %.lr.ph.i131 ], [ %.0810.i134.ph, %.lr.ph.i131.preheader380 ] ; 3 uses
  %i.ef = load i32, ptr %.0810.i134, align 4, !tbaa !272
  store i32 %i.ef, ptr %.0711.i133, align 4, !tbaa !272
  %i.eg = getelementptr inbounds nuw i8, ptr %.0711.i133, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i134, i64 4
  %.not.i135 = icmp eq ptr %.0810.i134, %i.cl
  br i1 %.not.i135, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit, label %.lr.ph.i131, !llvm.loop !855

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit: ; preds = %.lr.ph.i131, %middle.block354, %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit
  %.not7.i137 = icmp eq i64 %i.cj, 0
  br i1 %.not7.i137, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit
  %i.ei = and i64 %i.ay, 4611686018427387903      ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check361 = icmp samesign ult i64 %i.ei, 11
  %i.ek = sub i64 %i.j, %i.h
  %diff.check359 = icmp ugt i64 %i.ek, -32
  %or.cond377 = or i1 %min.iters.check361, %diff.check359
  br i1 %or.cond377, label %.lr.ph.i138.preheader379, label %vector.ph362

vector.ph362:                                     ; preds = %.lr.ph.i138.preheader
  %n.vec363 = and i64 %i.ej, 9223372036854775800  ; 3 uses
  %i.el = shl i64 %n.vec363, 2                    ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  %i.en = getelementptr i8, ptr %2, i64 %i.el
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next370, %vector.body364 ] ; 2 uses
  %i.eo = shl i64 %index365, 2                    ; 2 uses
  %next.gep366 = getelementptr i8, ptr %1, i64 %i.eo ; 2 uses
  %next.gep367 = getelementptr i8, ptr %2, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep367, i64 16
  %wide.load368 = load <4 x i32>, ptr %next.gep367, align 4, !tbaa !272
  %wide.load369 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !272
  %i.eq = getelementptr i8, ptr %next.gep366, i64 16
  store <4 x i32> %wide.load368, ptr %next.gep366, align 4, !tbaa !272
  store <4 x i32> %wide.load369, ptr %i.eq, align 4, !tbaa !272
  %index.next370 = add nuw i64 %index365, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next370, %n.vec363
  br i1 %i.er, label %middle.block371, label %vector.body364, !llvm.loop !856

middle.block371:                                  ; preds = %vector.body364
  %cmp.n372 = icmp eq i64 %i.ej, %n.vec363
  br i1 %cmp.n372, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit, label %.lr.ph.i138.preheader379

.lr.ph.i138.preheader379:                         ; preds = %.lr.ph.i138.preheader, %middle.block371
  %.09.i139.ph = phi ptr [ %1, %.lr.ph.i138.preheader ], [ %i.em, %middle.block371 ]
  %.068.i140.ph = phi ptr [ %2, %.lr.ph.i138.preheader ], [ %i.en, %middle.block371 ]
  br label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.preheader379, %.lr.ph.i138
  %.09.i139 = phi ptr [ %i.eu, %.lr.ph.i138 ], [ %.09.i139.ph, %.lr.ph.i138.preheader379 ] ; 2 uses
  %.068.i140 = phi ptr [ %i.et, %.lr.ph.i138 ], [ %.068.i140.ph, %.lr.ph.i138.preheader379 ] ; 2 uses
  %i.es = load i32, ptr %.068.i140, align 4, !tbaa !272
  store i32 %i.es, ptr %.09.i139, align 4, !tbaa !272
  %i.et = getelementptr inbounds nuw i8, ptr %.068.i140, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i139, i64 4
  %.not.i141 = icmp eq ptr %i.et, %i.ck
  br i1 %.not.i141, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit, label %.lr.ph.i138, !llvm.loop !857

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit: ; preds = %.lr.ph.i120, %.lr.ph.i138, %middle.block320, %middle.block371, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE23priv_uninitialized_copyIPKwPwEEmT_SC_T0_.exit
  %.0108 = add i64 %i.q, %i.l                     ; 3 uses
  %i.ev = load i8, ptr %0, align 8, !tbaa !15
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE9priv_copyIPwS9_EEvT_SA_T0_.exit
  %i.ex = trunc i64 %.0108 to i8
  %i.ey = shl i8 %i.ex, 1
  %i.ez = or disjoint i8 %i.ey, 1
end_hunk_4
begin_hunk_5_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPwEES7_PKwT_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE:bb.a
  %i.x = select i1 %i.r, ptr %i.e, ptr %i.g       ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr null, ptr %i.b, align 8, !tbaa !295
  %.not185 = icmp ult i64 %i.w, %i.l
  br i1 %.not185, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 4611686018427387902, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.16) #27
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ag = icmp ult i64 %i.z, 2305843009213693952
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = shl nuw i64 %i.z, 3
  %i.ai = udiv i64 %i.ah, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 4611686018427387903)
  %i.am = select i1 %i.aj, i64 4611686018427387903, i64 %i.al
  br label %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.am, %bb.g ]
  %i.an = add i64 %i.ae, %i.z
  %i.ao = tail call noundef i64 @llvm.umax.i64(i64 %i.an, i64 %.0.i.i)
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !49
  %i.ap = add i64 %i.q, %i.l                      ; 3 uses
  %i.aq = add i64 %i.ap, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.ar = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsISaIwELj1EE18allocation_commandERS3_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 4 uses
  %i.at = icmp eq ptr %i.x, %i.ar
  br i1 %i.at, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseISaIwEvE12next_storageEmm.exit
  %i.au = load i64, ptr %i.a, align 8, !tbaa !49
  store i64 %i.au, ptr %i.s, align 8, !tbaa !503
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.av = ptrtoint ptr %i.x to i64
  %i.aw = sub i64 %i.h, %i.av                     ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 2
  %i.ay = sub i64 %i.q, %i.ax                     ; 5 uses
  %.not118 = icmp ult i64 %i.ay, %i.l
  br i1 %.not118, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx186 = shl i64 %i.q, 2                      ; 2 uses
  %i.az = getelementptr i8, ptr %i.x, i64 %.idx186 ; 4 uses
  %i.ba = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.ba, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx186
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bc = add i64 %i.k, -4                        ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check293 = icmp ult i64 %i.bc, 28
  br i1 %min.iters.check293, label %.lr.ph.i.preheader383, label %vector.ph294

vector.ph294:                                     ; preds = %.lr.ph.i.preheader
  %n.vec295 = and i64 %i.be, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec295, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.az, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.bf
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph294
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next302, %vector.body296 ] ; 2 uses
  %i.bi = shl i64 %index297, 2                    ; 2 uses
  %next.gep298 = getelementptr i8, ptr %i.az, i64 %i.bi ; 2 uses
  %next.gep299 = getelementptr i8, ptr %i.bb, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep298, i64 4
  %i.bk = getelementptr i8, ptr %next.gep299, i64 4
  %i.bl = getelementptr i8, ptr %next.gep299, i64 20
  %wide.load300 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !272
  %wide.load301 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !272
  %i.bm = getelementptr i8, ptr %next.gep298, i64 20
  store <4 x i32> %wide.load300, ptr %i.bj, align 4, !tbaa !272
  store <4 x i32> %wide.load301, ptr %i.bm, align 4, !tbaa !272
  %index.next302 = add nuw i64 %index297, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next302, %n.vec295
  br i1 %i.bn, label %middle.block303, label %vector.body296, !llvm.loop !900

middle.block303:                                  ; preds = %vector.body296
  %cmp.n304 = icmp eq i64 %i.be, %n.vec295
  br i1 %cmp.n304, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i.preheader383

.lr.ph.i.preheader383:                            ; preds = %.lr.ph.i.preheader, %middle.block303
  %.0711.i.pn.ph = phi ptr [ %i.az, %.lr.ph.i.preheader ], [ %i.bg, %middle.block303 ]
  %.0810.i.pn.ph = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.bh, %middle.block303 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader383, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader383 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader383 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bo = load i32, ptr %.0810.i, align 4, !tbaa !272
  store i32 %i.bo, ptr %.0711.i, align 4, !tbaa !272
  %.not.i = icmp eq ptr %.0810.i, %i.az
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, label %.lr.ph.i, !llvm.loop !901

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit: ; preds = %.lr.ph.i, %middle.block303, %bb.j
  %i.bp = sub nuw i64 %i.ay, %i.l
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit
  %i.bs = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bt = call ptr @wmemmove(ptr noundef nonnull %i.bs, ptr noundef %1, i64 noundef %i.bq) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit

_ZNSt11char_traitsIwE4moveEPwPKwm.exit:           ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit, %bb.k
  %i.bu = add i64 %i.i, -4
  %i.bv = sub i64 %i.bu, %i.j                     ; 2 uses
  %i.bw = lshr i64 %i.bv, 2
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check310 = icmp ult i64 %i.bv, 44
  %i.by = sub i64 %i.j, %i.h
  %diff.check308 = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check310, %diff.check308
  br i1 %or.cond, label %.lr.ph.i120.preheader, label %vector.ph311

vector.ph311:                                     ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit
  %n.vec312 = and i64 %i.bx, 9223372036854775800  ; 3 uses
  %i.bz = shl i64 %n.vec312, 2                    ; 2 uses
  %i.ca = getelementptr i8, ptr %1, i64 %i.bz
  %i.cb = getelementptr i8, ptr %2, i64 %i.bz
  br label %vector.body313

vector.body313:                                   ; preds = %vector.body313, %vector.ph311
  %index314 = phi i64 [ 0, %vector.ph311 ], [ %index.next319, %vector.body313 ] ; 2 uses
  %i.cc = shl i64 %index314, 2                    ; 2 uses
  %next.gep315 = getelementptr i8, ptr %1, i64 %i.cc ; 2 uses
  %next.gep316 = getelementptr i8, ptr %2, i64 %i.cc ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep316, i64 16
  %wide.load317 = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !272
  %wide.load318 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !272
  %i.ce = getelementptr i8, ptr %next.gep315, i64 16
  store <4 x i32> %wide.load317, ptr %next.gep315, align 4, !tbaa !272
  store <4 x i32> %wide.load318, ptr %i.ce, align 4, !tbaa !272
  %index.next319 = add nuw i64 %index314, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next319, %n.vec312
  br i1 %i.cf, label %middle.block320, label %vector.body313, !llvm.loop !902

middle.block320:                                  ; preds = %vector.body313
  %cmp.n321 = icmp eq i64 %i.bx, %n.vec312
  br i1 %cmp.n321, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit, label %.lr.ph.i120.preheader

.lr.ph.i120.preheader:                            ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, %middle.block320
  %.09.i.ph = phi ptr [ %1, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.ca, %middle.block320 ]
  %.068.i.ph = phi ptr [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.cb, %middle.block320 ]
  br label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %.lr.ph.i120.preheader, %.lr.ph.i120
  %.09.i = phi ptr [ %i.ci, %.lr.ph.i120 ], [ %.09.i.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %.068.i = phi ptr [ %i.ch, %.lr.ph.i120 ], [ %.068.i.ph, %.lr.ph.i120.preheader ] ; 2 uses
  %i.cg = load i32, ptr %.068.i, align 4, !tbaa !272
  store i32 %i.cg, ptr %.09.i, align 4, !tbaa !272
  %i.ch = getelementptr inbounds nuw i8, ptr %.068.i, i64 4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %.not.i121 = icmp eq ptr %i.ch, %3
  br i1 %.not.i121, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit, label %.lr.ph.i120, !llvm.loop !903

bb.l:                                             ; preds = %bb.i
  %.idx187 = shl i64 %i.ay, 2
  %i.cj = add i64 %.idx187, 4                     ; 2 uses
  %i.ck = getelementptr i8, ptr %2, i64 %i.cj     ; 6 uses
  %i.cl = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 4      ; 5 uses
  %.not9.i122 = icmp eq ptr %i.ck, %3
  br i1 %.not9.i122, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit129, label %.lr.ph.i123.preheader

.lr.ph.i123.preheader:                            ; preds = %bb.l
  %5 = add i64 %i.aw, %i.i
  %i.cn = add i64 %5, -8
  %6 = shl i64 %i.q, 2
  %i.co = add i64 %6, %i.j
  %i.cp = sub i64 %i.cn, %i.co                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.cp, 60
  br i1 %min.iters.check327, label %.lr.ph.i123.preheader381, label %vector.memcheck324

vector.memcheck324:                               ; preds = %.lr.ph.i123.preheader
  %i.cs = add i64 %i.aw, %i.y
  %i.ct = sub i64 %i.j, %i.cs
  %diff.check325 = icmp ugt i64 %i.ct, -32
  br i1 %diff.check325, label %.lr.ph.i123.preheader381, label %vector.ph328

vector.ph328:                                     ; preds = %vector.memcheck324
  %n.vec329 = and i64 %i.cr, 9223372036854775800  ; 3 uses
  %i.cu = shl i64 %n.vec329, 2                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cm, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.ck, i64 %i.cu
  br label %vector.body330

vector.body330:                                   ; preds = %vector.body330, %vector.ph328
  %index331 = phi i64 [ 0, %vector.ph328 ], [ %index.next336, %vector.body330 ] ; 2 uses
  %i.cx = shl i64 %index331, 2                    ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.cm, i64 %i.cx ; 2 uses
  %next.gep333 = getelementptr i8, ptr %i.ck, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep333, i64 16
  %wide.load334 = load <4 x i32>, ptr %next.gep333, align 4, !tbaa !272
  %wide.load335 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !272
  %i.cz = getelementptr i8, ptr %next.gep332, i64 16
  store <4 x i32> %wide.load334, ptr %next.gep332, align 4, !tbaa !272
  store <4 x i32> %wide.load335, ptr %i.cz, align 4, !tbaa !272
  %index.next336 = add nuw i64 %index331, 8       ; 2 uses
  %i.da = icmp eq i64 %index.next336, %n.vec329
  br i1 %i.da, label %middle.block337, label %vector.body330, !llvm.loop !904

middle.block337:                                  ; preds = %vector.body330
  %cmp.n338 = icmp eq i64 %i.cr, %n.vec329
  br i1 %cmp.n338, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit129, label %.lr.ph.i123.preheader381

.lr.ph.i123.preheader381:                         ; preds = %vector.memcheck324, %.lr.ph.i123.preheader, %middle.block337
  %.0711.i125.ph = phi ptr [ %i.cm, %vector.memcheck324 ], [ %i.cm, %.lr.ph.i123.preheader ], [ %i.cv, %middle.block337 ]
  %.0810.i126.ph = phi ptr [ %i.ck, %vector.memcheck324 ], [ %i.ck, %.lr.ph.i123.preheader ], [ %i.cw, %middle.block337 ]
  br label %.lr.ph.i123

.lr.ph.i123:                                      ; preds = %.lr.ph.i123.preheader381, %.lr.ph.i123
  %.0711.i125 = phi ptr [ %i.dc, %.lr.ph.i123 ], [ %.0711.i125.ph, %.lr.ph.i123.preheader381 ] ; 2 uses
  %.0810.i126 = phi ptr [ %i.dd, %.lr.ph.i123 ], [ %.0810.i126.ph, %.lr.ph.i123.preheader381 ] ; 2 uses
  %i.db = load i32, ptr %.0810.i126, align 4, !tbaa !272
  store i32 %i.db, ptr %.0711.i125, align 4, !tbaa !272
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i125, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.0810.i126, i64 4 ; 2 uses
  %.not.i127 = icmp eq ptr %i.dd, %3
  br i1 %.not.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit129, label %.lr.ph.i123, !llvm.loop !905

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit129: ; preds = %.lr.ph.i123, %middle.block337, %bb.l
  %i.de = sub i64 %i.l, %i.ay
  %i.df = add i64 %i.de, %i.q                     ; 4 uses
  %i.dg = load i8, ptr %0, align 8, !tbaa !15
  %i.dh = trunc i8 %i.dg to i1
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit129
  %i.di = trunc i64 %i.df to i8
  %i.dj = shl i8 %i.di, 1
  %i.dk = or disjoint i8 %i.dj, 1
  store i8 %i.dk, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPwS7_EEmT_S8_T0_.exit129
  %i.dl = load i64, ptr %0, align 8
  %i.dm = shl i64 %i.df, 1
  %i.dn = and i64 %i.dl, 1
  %i.do = or disjoint i64 %i.dn, %i.dm
  store i64 %i.do, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i130 = icmp eq ptr %1, %i.cm
  br i1 %.not9.i130, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i131.preheader

.lr.ph.i131.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.df ; 4 uses
  %i.dq = shl i64 %i.q, 2
  %i.dr = add i64 %i.dq, %i.y
  %i.ds = sub i64 %i.dr, %i.h                     ; 2 uses
  %i.dt = lshr i64 %i.ds, 2
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %i.ds, 76
  br i1 %min.iters.check344, label %.lr.ph.i131.preheader380, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i131.preheader
  %i.dv = shl i64 %i.df, 2
  %i.dw = add i64 %i.dv, %i.y
  %i.dx = sub i64 %i.h, %i.dw
  %diff.check342 = icmp ugt i64 %i.dx, -32
  br i1 %diff.check342, label %.lr.ph.i131.preheader380, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.du, 9223372036854775800  ; 3 uses
  %i.dy = shl i64 %n.vec346, 2                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dp, i64 %i.dy
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.eb = shl i64 %index348, 2                    ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.dp, i64 %i.eb ; 2 uses
  %next.gep350 = getelementptr i8, ptr %1, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep350, i64 16
  %wide.load351 = load <4 x i32>, ptr %next.gep350, align 4, !tbaa !272
  %wide.load352 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !272
  %i.ed = getelementptr i8, ptr %next.gep349, i64 16
  store <4 x i32> %wide.load351, ptr %next.gep349, align 4, !tbaa !272
  store <4 x i32> %wide.load352, ptr %i.ed, align 4, !tbaa !272
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.ee, label %middle.block354, label %vector.body347, !llvm.loop !906

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.du, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i131.preheader380

.lr.ph.i131.preheader380:                         ; preds = %vector.memcheck341, %.lr.ph.i131.preheader, %middle.block354
  %.0711.i133.ph = phi ptr [ %i.dp, %vector.memcheck341 ], [ %i.dp, %.lr.ph.i131.preheader ], [ %i.dz, %middle.block354 ]
  %.0810.i134.ph = phi ptr [ %1, %vector.memcheck341 ], [ %1, %.lr.ph.i131.preheader ], [ %i.ea, %middle.block354 ]
  br label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.lr.ph.i131.preheader380, %.lr.ph.i131
  %.0711.i133 = phi ptr [ %i.eg, %.lr.ph.i131 ], [ %.0711.i133.ph, %.lr.ph.i131.preheader380 ] ; 2 uses
  %.0810.i134 = phi ptr [ %i.eh, %.lr.ph.i131 ], [ %.0810.i134.ph, %.lr.ph.i131.preheader380 ] ; 3 uses
  %i.ef = load i32, ptr %.0810.i134, align 4, !tbaa !272
  store i32 %i.ef, ptr %.0711.i133, align 4, !tbaa !272
  %i.eg = getelementptr inbounds nuw i8, ptr %.0711.i133, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i134, i64 4
  %.not.i135 = icmp eq ptr %.0810.i134, %i.cl
  br i1 %.not.i135, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit, label %.lr.ph.i131, !llvm.loop !907

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit: ; preds = %.lr.ph.i131, %middle.block354, %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit
  %.not7.i137 = icmp eq i64 %i.cj, 0
  br i1 %.not7.i137, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit
  %i.ei = and i64 %i.ay, 4611686018427387903      ; 2 uses
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check361 = icmp samesign ult i64 %i.ei, 11
  %i.ek = sub i64 %i.j, %i.h
  %diff.check359 = icmp ugt i64 %i.ek, -32
  %or.cond377 = or i1 %min.iters.check361, %diff.check359
  br i1 %or.cond377, label %.lr.ph.i138.preheader379, label %vector.ph362

vector.ph362:                                     ; preds = %.lr.ph.i138.preheader
  %n.vec363 = and i64 %i.ej, 9223372036854775800  ; 3 uses
  %i.el = shl i64 %n.vec363, 2                    ; 2 uses
  %i.em = getelementptr i8, ptr %1, i64 %i.el
  %i.en = getelementptr i8, ptr %2, i64 %i.el
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next370, %vector.body364 ] ; 2 uses
  %i.eo = shl i64 %index365, 2                    ; 2 uses
  %next.gep366 = getelementptr i8, ptr %1, i64 %i.eo ; 2 uses
  %next.gep367 = getelementptr i8, ptr %2, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep367, i64 16
  %wide.load368 = load <4 x i32>, ptr %next.gep367, align 4, !tbaa !272
  %wide.load369 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !272
  %i.eq = getelementptr i8, ptr %next.gep366, i64 16
  store <4 x i32> %wide.load368, ptr %next.gep366, align 4, !tbaa !272
  store <4 x i32> %wide.load369, ptr %i.eq, align 4, !tbaa !272
  %index.next370 = add nuw i64 %index365, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next370, %n.vec363
  br i1 %i.er, label %middle.block371, label %vector.body364, !llvm.loop !908

middle.block371:                                  ; preds = %vector.body364
  %cmp.n372 = icmp eq i64 %i.ej, %n.vec363
  br i1 %cmp.n372, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit, label %.lr.ph.i138.preheader379

.lr.ph.i138.preheader379:                         ; preds = %.lr.ph.i138.preheader, %middle.block371
  %.09.i139.ph = phi ptr [ %1, %.lr.ph.i138.preheader ], [ %i.em, %middle.block371 ]
  %.068.i140.ph = phi ptr [ %2, %.lr.ph.i138.preheader ], [ %i.en, %middle.block371 ]
  br label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.preheader379, %.lr.ph.i138
  %.09.i139 = phi ptr [ %i.eu, %.lr.ph.i138 ], [ %.09.i139.ph, %.lr.ph.i138.preheader379 ] ; 2 uses
  %.068.i140 = phi ptr [ %i.et, %.lr.ph.i138 ], [ %.068.i140.ph, %.lr.ph.i138.preheader379 ] ; 2 uses
  %i.es = load i32, ptr %.068.i140, align 4, !tbaa !272
  store i32 %i.es, ptr %.09.i139, align 4, !tbaa !272
  %i.et = getelementptr inbounds nuw i8, ptr %.068.i140, i64 4 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i139, i64 4
  %.not.i141 = icmp eq ptr %i.et, %i.ck
  br i1 %.not.i141, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit, label %.lr.ph.i138, !llvm.loop !909

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit: ; preds = %.lr.ph.i120, %.lr.ph.i138, %middle.block320, %middle.block371, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE23priv_uninitialized_copyIPKwPwEEmT_SA_T0_.exit
  %.0108 = add i64 %i.q, %i.l                     ; 3 uses
  %i.ev = load i8, ptr %0, align 8, !tbaa !15
  %i.ew = trunc i8 %i.ev to i1
  br i1 %i.ew, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE9priv_copyIPwS7_EEvT_S8_T0_.exit
  %i.ex = trunc i64 %.0108 to i8
  %i.ey = shl i8 %i.ex, 1
  %i.ez = or disjoint i8 %i.ey, 1
end_hunk_5
