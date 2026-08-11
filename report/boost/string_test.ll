inline.NumInlined: 7794
inline.NumDeleted: 1795
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendEPKw:bb.a
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIPKwEERS4_T_S9_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !324
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIPKwEERS4_T_S9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIPKwEERS4_T_S9_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.m, ptr noundef %1, ptr noundef %i.n, ptr noundef null) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6appendEPKw(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !652
  %.not178 = icmp ult i64 %i.w, %i.l
  br i1 %.not178, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 2305843009213693950, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
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
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %spec.select.i.i = select i1 %i.aj, i64 -1, i64 %i.ak
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %spec.select.i.i, %bb.g ]
  %i.al = add i64 %i.ae, %i.z
  %i.am = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.an = tail call noundef i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  store i64 %i.an, ptr %i.a, align 8, !tbaa !41
  %i.ao = add i64 %i.q, %i.l                      ; 3 uses
  %i.ap = add i64 %i.ao, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.aq = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 4 uses
  %i.as = icmp eq ptr %i.x, %i.aq
  br i1 %i.as, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.at, ptr %i.s, align 8, !tbaa !327
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.au = ptrtoint ptr %i.x to i64
  %i.av = sub i64 %i.h, %i.au                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = sub i64 %i.q, %i.aw                     ; 4 uses
  %.not118 = icmp ult i64 %i.ax, %i.l
  br i1 %.not118, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx179 = shl i64 %i.q, 2                      ; 2 uses
  %i.ay = getelementptr i8, ptr %i.x, i64 %.idx179 ; 4 uses
  %i.az = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx179
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bb = add i64 %i.k, -4                        ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check283 = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check283, label %.lr.ph.i.preheader335, label %vector.ph284

vector.ph284:                                     ; preds = %.lr.ph.i.preheader
  %n.vec285 = and i64 %i.bd, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec285, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.be
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 2 uses
  %i.bh = shl i64 %index287, 2                    ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.ba, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep288, i64 4
  %i.bj = getelementptr i8, ptr %next.gep289, i64 4
  %i.bk = getelementptr i8, ptr %next.gep289, i64 20
  %wide.load290 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !322
  %wide.load291 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !322
  %i.bl = getelementptr i8, ptr %next.gep288, i64 20
  store <4 x i32> %wide.load290, ptr %i.bi, align 4, !tbaa !322
  store <4 x i32> %wide.load291, ptr %i.bl, align 4, !tbaa !322
  %index.next292 = add nuw i64 %index287, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.bm, label %middle.block293, label %vector.body286, !llvm.loop !1047

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.bd, %n.vec285
  br i1 %cmp.n294, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader335

.lr.ph.i.preheader335:                            ; preds = %.lr.ph.i.preheader, %middle.block293
  %.0711.i.pn.ph = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.bf, %middle.block293 ]
  %.0810.i.pn.ph = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.bg, %middle.block293 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader335, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader335 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader335 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bn = load i32, ptr %.0810.i, align 4, !tbaa !322
  store i32 %i.bn, ptr %.0711.i, align 4, !tbaa !322
  %.not.i = icmp eq ptr %.0810.i, %i.ay
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1048

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block293, %bb.j
  %i.bo = sub nuw i64 %i.ax, %i.l
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %i.br = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bs = call ptr @wmemmove(ptr noundef nonnull %i.br, ptr noundef %1, i64 noundef %i.bp) #27 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split

bb.l:                                             ; preds = %bb.i
  %.idx180 = shl i64 %i.ax, 2
  %i.bt = add i64 %.idx180, 4                     ; 3 uses
  %i.bu = getelementptr i8, ptr %2, i64 %i.bt     ; 5 uses
  %i.bv = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 5 uses
  %.not9.i120 = icmp eq ptr %i.bu, %3
  br i1 %.not9.i120, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %bb.l
  %5 = shl i64 %i.q, 2
  %i.bx = add i64 %5, %i.j
  %6 = sub i64 %i.i, %i.bx
  %i.by = add i64 %6, %i.av
  %7 = add i64 %i.by, -8                          ; 2 uses
  %i.bz = lshr i64 %7, 2
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %7, 60
  br i1 %min.iters.check300, label %.lr.ph.i121.preheader334, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph.i121.preheader
  %i.cb = add i64 %i.av, %i.y
  %i.cc = sub i64 %i.j, %i.cb
  %diff.check298 = icmp ugt i64 %i.cc, -32
  br i1 %diff.check298, label %.lr.ph.i121.preheader334, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck297
  %n.vec302 = and i64 %i.ca, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec302, 2                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bu, i64 %i.cd
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.cg = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.bw, i64 %i.cg ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.bu, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load307 = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !322
  %wide.load308 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !322
  %i.ci = getelementptr i8, ptr %next.gep305, i64 16
  store <4 x i32> %wide.load307, ptr %next.gep305, align 4, !tbaa !322
  store <4 x i32> %wide.load308, ptr %i.ci, align 4, !tbaa !322
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.cj, label %middle.block310, label %vector.body303, !llvm.loop !1049

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.ca, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader334

.lr.ph.i121.preheader334:                         ; preds = %vector.memcheck297, %.lr.ph.i121.preheader, %middle.block310
  %.0711.i123.ph = phi ptr [ %i.bw, %vector.memcheck297 ], [ %i.bw, %.lr.ph.i121.preheader ], [ %i.ce, %middle.block310 ]
  %.0810.i124.ph = phi ptr [ %i.bu, %vector.memcheck297 ], [ %i.bu, %.lr.ph.i121.preheader ], [ %i.cf, %middle.block310 ]
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.preheader334, %.lr.ph.i121
  %.0711.i123 = phi ptr [ %i.cl, %.lr.ph.i121 ], [ %.0711.i123.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %.0810.i124 = phi ptr [ %i.cm, %.lr.ph.i121 ], [ %.0810.i124.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %i.ck = load i32, ptr %.0810.i124, align 4, !tbaa !322
  store i32 %i.ck, ptr %.0711.i123, align 4, !tbaa !322
  %i.cl = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4 ; 2 uses
  %.not.i125 = icmp eq ptr %i.cm, %3
  br i1 %.not.i125, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121, !llvm.loop !1050

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i121, %middle.block310, %bb.l
  %i.cn = sub i64 %i.l, %i.ax
  %i.co = add i64 %i.cn, %i.q                     ; 4 uses
  %i.cp = load i8, ptr %0, align 8, !tbaa !35
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %i.cr = trunc i64 %i.co to i8
  %i.cs = shl i8 %i.cr, 1
  %i.ct = or disjoint i8 %i.cs, 1
  store i8 %i.ct, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %i.cu = load i64, ptr %0, align 8
  %i.cv = shl i64 %i.co, 1
  %i.cw = and i64 %i.cu, 1
  %i.cx = or disjoint i64 %i.cw, %i.cv
  store i64 %i.cx, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i127 = icmp eq ptr %1, %i.bw
  br i1 %.not9.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.co ; 4 uses
  %8 = sub i64 %i.y, %i.h
  %9 = lshr i64 %8, 2
  %10 = add nuw i64 %9, %i.q
  %11 = and i64 %10, 4611686018427387903          ; 2 uses
  %i.cz = add nuw nsw i64 %11, 1                  ; 2 uses
  %min.iters.check317 = icmp samesign ult i64 %11, 19
  br i1 %min.iters.check317, label %.lr.ph.i128.preheader333, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i128.preheader
  %i.da = shl i64 %i.co, 2
  %i.db = add i64 %i.da, %i.y
  %i.dc = sub i64 %i.h, %i.db
  %diff.check315 = icmp ugt i64 %i.dc, -32
  br i1 %diff.check315, label %.lr.ph.i128.preheader333, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck314
  %n.vec319 = and i64 %i.cz, 9223372036854775800  ; 3 uses
  %i.dd = shl i64 %n.vec319, 2                    ; 2 uses
  %i.de = getelementptr i8, ptr %i.cy, i64 %i.dd
  %i.df = getelementptr i8, ptr %1, i64 %i.dd
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %i.dg = shl i64 %index321, 2                    ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.cy, i64 %i.dg ; 2 uses
  %next.gep323 = getelementptr i8, ptr %1, i64 %i.dg ; 2 uses
  %i.dh = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load324 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !322
  %wide.load325 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !322
  %i.di = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %wide.load324, ptr %next.gep322, align 4, !tbaa !322
  store <4 x i32> %wide.load325, ptr %i.di, align 4, !tbaa !322
  %index.next326 = add nuw i64 %index321, 8       ; 2 uses
  %i.dj = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.dj, label %middle.block327, label %vector.body320, !llvm.loop !1051

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.cz, %n.vec319
  br i1 %cmp.n328, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134, label %.lr.ph.i128.preheader333

.lr.ph.i128.preheader333:                         ; preds = %vector.memcheck314, %.lr.ph.i128.preheader, %middle.block327
  %.0711.i130.ph = phi ptr [ %i.cy, %vector.memcheck314 ], [ %i.cy, %.lr.ph.i128.preheader ], [ %i.de, %middle.block327 ]
  %.0810.i131.ph = phi ptr [ %1, %vector.memcheck314 ], [ %1, %.lr.ph.i128.preheader ], [ %i.df, %middle.block327 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader333, %.lr.ph.i128
  %.0711.i130 = phi ptr [ %i.dl, %.lr.ph.i128 ], [ %.0711.i130.ph, %.lr.ph.i128.preheader333 ] ; 2 uses
  %.0810.i131 = phi ptr [ %i.dm, %.lr.ph.i128 ], [ %.0810.i131.ph, %.lr.ph.i128.preheader333 ] ; 3 uses
  %i.dk = load i32, ptr %.0810.i131, align 4, !tbaa !322
  store i32 %i.dk, ptr %.0711.i130, align 4, !tbaa !322
  %i.dl = getelementptr inbounds nuw i8, ptr %.0711.i130, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i131, i64 4
  %.not.i132 = icmp eq ptr %.0810.i131, %i.bv
  br i1 %.not.i132, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134, label %.lr.ph.i128, !llvm.loop !1052

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134: ; preds = %.lr.ph.i128, %middle.block327, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.dn = icmp eq i64 %i.bt, 0
  br i1 %i.dn, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134
  %i.do = ashr exact i64 %i.bt, 2
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split: ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, %bb.o
  %.sink = phi i64 [ %i.do, %bb.o ], [ %i.l, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit ], [ %i.l, %bb.k ]
  %i.dp = call ptr @wmemcpy(ptr noundef %1, ptr noundef %2, i64 noundef %.sink) #27 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134
  %.0109 = add i64 %i.q, %i.l                     ; 3 uses
  %i.dq = load i8, ptr %0, align 8, !tbaa !35
  %i.dr = trunc i8 %i.dq to i1
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135
  %i.ds = trunc i64 %.0109 to i8
  %i.dt = shl i8 %i.ds, 1
  %i.du = or disjoint i8 %i.dt, 1
  store i8 %i.du, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136

bb.q:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135
  %i.dv = load i64, ptr %0, align 8
  %i.dw = shl i64 %.0109, 1
  %i.dx = and i64 %i.dv, 1
  %i.dy = or disjoint i64 %i.dx, %i.dw
  store i64 %i.dy, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136: ; preds = %bb.p, %bb.q
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0109
  store i32 0, ptr %i.dz, align 4, !tbaa !322
  %.pre188.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre189.pre = load ptr, ptr %i.f, align 8
  br label %bb.x

bb.r:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !652
  %.not117 = icmp eq ptr %i.ea, null
  br i1 %.not117, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not9.i137 = icmp eq ptr %i.x, %1
  br i1 %.not9.i137, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %bb.s
  %12 = sub i64 %i.h, %i.y
  %13 = add i64 %12, -4                           ; 2 uses
  %i.eb = lshr i64 %13, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %13, 28
  %i.ed = sub i64 %i.y, %i.ar
  %diff.check223 = icmp ugt i64 %i.ed, -16
  %or.cond = select i1 %min.iters.check225, i1 true, i1 %diff.check223
  br i1 %or.cond, label %.lr.ph.i138.preheader338, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i138.preheader
  %n.vec227 = and i64 %i.ec, 9223372036854775804  ; 3 uses
  %i.ee = shl i64 %n.vec227, 2                    ; 2 uses
  %i.ef = getelementptr i8, ptr %i.aq, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.x, i64 %i.ee
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next235, %vector.body228 ] ; 2 uses
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph226 ], [ %bin.rdx, %vector.body228 ]
  %i.eh = shl i64 %index229, 2                    ; 2 uses
  %next.gep231 = getelementptr i8, ptr %i.aq, i64 %i.eh ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.x, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep232, i64 8
  %wide.load233 = load <2 x i32>, ptr %next.gep232, align 4, !tbaa !322
  %wide.load234 = load <2 x i32>, ptr %i.ei, align 4, !tbaa !322
  %i.ej = getelementptr i8, ptr %next.gep231, i64 8
  store <2 x i32> %wide.load233, ptr %next.gep231, align 4, !tbaa !322
  store <2 x i32> %wide.load234, ptr %i.ej, align 4, !tbaa !322
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next235 = add nuw i64 %index229, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next235, %n.vec227
  br i1 %i.ek, label %middle.block236, label %vector.body228, !llvm.loop !1053

middle.block236:                                  ; preds = %vector.body228
  %i.el = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n237 = icmp eq i64 %i.ec, %n.vec227
  br i1 %cmp.n237, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144, label %.lr.ph.i138.preheader338

.lr.ph.i138.preheader338:                         ; preds = %.lr.ph.i138.preheader, %middle.block236
  %.012.i139.ph = phi i64 [ 0, %.lr.ph.i138.preheader ], [ %i.el, %middle.block236 ]
  %.0711.i140.ph = phi ptr [ %i.aq, %.lr.ph.i138.preheader ], [ %i.ef, %middle.block236 ]
  %.0810.i141.ph = phi ptr [ %i.x, %.lr.ph.i138.preheader ], [ %i.eg, %middle.block236 ]
  br label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %.lr.ph.i138.preheader338, %.lr.ph.i138
  %.012.i139 = phi i64 [ %i.ep, %.lr.ph.i138 ], [ %.012.i139.ph, %.lr.ph.i138.preheader338 ]
  %.0711.i140 = phi ptr [ %i.en, %.lr.ph.i138 ], [ %.0711.i140.ph, %.lr.ph.i138.preheader338 ] ; 2 uses
  %.0810.i141 = phi ptr [ %i.eo, %.lr.ph.i138 ], [ %.0810.i141.ph, %.lr.ph.i138.preheader338 ] ; 2 uses
  %i.em = load i32, ptr %.0810.i141, align 4, !tbaa !322
  store i32 %i.em, ptr %.0711.i140, align 4, !tbaa !322
  %i.en = getelementptr inbounds nuw i8, ptr %.0711.i140, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.0810.i141, i64 4 ; 2 uses
  %i.ep = add nuw nsw i64 %.012.i139, 1           ; 2 uses
  %.not.i142 = icmp eq ptr %i.eo, %1
  br i1 %.not.i142, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144, label %.lr.ph.i138, !llvm.loop !1054

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144: ; preds = %.lr.ph.i138, %middle.block236, %bb.s
  %.0.lcssa.i143 = phi i64 [ 0, %bb.s ], [ %i.el, %middle.block236 ], [ %i.ep, %.lr.ph.i138 ] ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.0.lcssa.i143 ; 4 uses
  %14 = sub i64 %i.i, %i.j
  %15 = add i64 %14, -4                           ; 2 uses
  %i.er = lshr i64 %15, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check243 = icmp ult i64 %15, 52
  br i1 %min.iters.check243, label %.lr.ph.i146.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144
  %i.et = shl i64 %.0.lcssa.i143, 2
  %i.eu = add i64 %i.et, %i.ar
  %i.ev = sub i64 %i.j, %i.eu
  %diff.check241 = icmp ugt i64 %i.ev, -16
  br i1 %diff.check241, label %.lr.ph.i146.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck240
  %n.vec245 = and i64 %i.es, 9223372036854775804  ; 3 uses
  %i.ew = shl i64 %n.vec245, 2                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.eq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %2, i64 %i.ew
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next254, %vector.body246 ] ; 2 uses
  %reduced.phi331 = phi <2 x i64> [ zeroinitializer, %vector.ph244 ], [ %bin.rdx256, %vector.body246 ]
  %i.ez = shl i64 %index247, 2                    ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.eq, i64 %i.ez ; 2 uses
  %next.gep251 = getelementptr i8, ptr %2, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep251, i64 8
  %wide.load252 = load <2 x i32>, ptr %next.gep251, align 4, !tbaa !322
  %wide.load253 = load <2 x i32>, ptr %i.fa, align 4, !tbaa !322
  %i.fb = getelementptr i8, ptr %next.gep250, i64 8
  store <2 x i32> %wide.load252, ptr %next.gep250, align 4, !tbaa !322
  store <2 x i32> %wide.load253, ptr %i.fb, align 4, !tbaa !322
  %bin.rdx256 = add <2 x i64> %reduced.phi331, splat (i64 2) ; 2 uses
  %index.next254 = add nuw i64 %index247, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next254, %n.vec245
  br i1 %i.fc, label %middle.block255, label %vector.body246, !llvm.loop !1055

middle.block255:                                  ; preds = %vector.body246
  %i.fd = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx256) ; 2 uses
  %cmp.n257 = icmp eq i64 %i.es, %n.vec245
  br i1 %cmp.n257, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152, label %.lr.ph.i146.preheader

.lr.ph.i146.preheader:                            ; preds = %vector.memcheck240, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144, %middle.block255
  %.012.i147.ph = phi i64 [ 0, %vector.memcheck240 ], [ 0, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144 ], [ %i.fd, %middle.block255 ]
  %.0711.i148.ph = phi ptr [ %i.eq, %vector.memcheck240 ], [ %i.eq, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144 ], [ %i.ex, %middle.block255 ]
  %.0810.i149.ph = phi ptr [ %2, %vector.memcheck240 ], [ %2, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144 ], [ %i.ey, %middle.block255 ]
  br label %.lr.ph.i146

.lr.ph.i146:                                      ; preds = %.lr.ph.i146.preheader, %.lr.ph.i146
  %.012.i147 = phi i64 [ %i.fh, %.lr.ph.i146 ], [ %.012.i147.ph, %.lr.ph.i146.preheader ]
  %.0711.i148 = phi ptr [ %i.ff, %.lr.ph.i146 ], [ %.0711.i148.ph, %.lr.ph.i146.preheader ] ; 2 uses
  %.0810.i149 = phi ptr [ %i.fg, %.lr.ph.i146 ], [ %.0810.i149.ph, %.lr.ph.i146.preheader ] ; 2 uses
  %i.fe = load i32, ptr %.0810.i149, align 4, !tbaa !322
  store i32 %i.fe, ptr %.0711.i148, align 4, !tbaa !322
  %i.ff = getelementptr inbounds nuw i8, ptr %.0711.i148, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i149, i64 4 ; 2 uses
  %i.fh = add nuw nsw i64 %.012.i147, 1           ; 2 uses
  %.not.i150 = icmp eq ptr %i.fg, %3
  br i1 %.not.i150, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152, label %.lr.ph.i146, !llvm.loop !1056

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152: ; preds = %.lr.ph.i146, %middle.block255
  %.lcssa217 = phi i64 [ %i.fd, %middle.block255 ], [ %i.fh, %.lr.ph.i146 ]
  %i.fi = add i64 %.lcssa217, %.0.lcssa.i143      ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %.not9.i153 = icmp eq ptr %1, %i.fj
  br i1 %.not9.i153, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160, label %.lr.ph.i154.preheader

.lr.ph.i154.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.fi ; 4 uses
  %i.fl = shl i64 %i.q, 2
  %16 = sub i64 %i.y, %i.h
  %i.fm = add i64 %16, %i.fl
  %17 = add i64 %i.fm, -4                         ; 2 uses
  %i.fn = lshr i64 %17, 2
  %i.fo = add nuw nsw i64 %i.fn, 1                ; 2 uses
  %min.iters.check264 = icmp ult i64 %17, 52
  br i1 %min.iters.check264, label %.lr.ph.i154.preheader336, label %vector.memcheck261

vector.memcheck261:                               ; preds = %.lr.ph.i154.preheader
  %i.fp = shl i64 %i.fi, 2
  %i.fq = add i64 %i.fp, %i.ar
  %i.fr = sub i64 %i.h, %i.fq
  %diff.check262 = icmp ugt i64 %i.fr, -16
  br i1 %diff.check262, label %.lr.ph.i154.preheader336, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck261
  %n.vec266 = and i64 %i.fo, 9223372036854775804  ; 3 uses
  %i.fs = shl i64 %n.vec266, 2                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fk, i64 %i.fs
  %i.fu = getelementptr i8, ptr %1, i64 %i.fs
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next275, %vector.body267 ] ; 2 uses
  %reduced.phi332 = phi <2 x i64> [ zeroinitializer, %vector.ph265 ], [ %bin.rdx277, %vector.body267 ]
  %i.fv = shl i64 %index268, 2                    ; 2 uses
  %next.gep271 = getelementptr i8, ptr %i.fk, i64 %i.fv ; 2 uses
  %next.gep272 = getelementptr i8, ptr %1, i64 %i.fv ; 2 uses
  %i.fw = getelementptr i8, ptr %next.gep272, i64 8
  %wide.load273 = load <2 x i32>, ptr %next.gep272, align 4, !tbaa !322
  %wide.load274 = load <2 x i32>, ptr %i.fw, align 4, !tbaa !322
  %i.fx = getelementptr i8, ptr %next.gep271, i64 8
  store <2 x i32> %wide.load273, ptr %next.gep271, align 4, !tbaa !322
  store <2 x i32> %wide.load274, ptr %i.fx, align 4, !tbaa !322
  %bin.rdx277 = add <2 x i64> %reduced.phi332, splat (i64 2) ; 2 uses
  %index.next275 = add nuw i64 %index268, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next275, %n.vec266
  br i1 %i.fy, label %middle.block276, label %vector.body267, !llvm.loop !1057

middle.block276:                                  ; preds = %vector.body267
  %i.fz = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx277) ; 2 uses
  %cmp.n278 = icmp eq i64 %i.fo, %n.vec266
  br i1 %cmp.n278, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160, label %.lr.ph.i154.preheader336

.lr.ph.i154.preheader336:                         ; preds = %vector.memcheck261, %.lr.ph.i154.preheader, %middle.block276
  %.012.i155.ph = phi i64 [ 0, %vector.memcheck261 ], [ 0, %.lr.ph.i154.preheader ], [ %i.fz, %middle.block276 ]
  %.0711.i156.ph = phi ptr [ %i.fk, %vector.memcheck261 ], [ %i.fk, %.lr.ph.i154.preheader ], [ %i.ft, %middle.block276 ]
  %.0810.i157.ph = phi ptr [ %1, %vector.memcheck261 ], [ %1, %.lr.ph.i154.preheader ], [ %i.fu, %middle.block276 ]
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %.lr.ph.i154.preheader336, %.lr.ph.i154
  %.012.i155 = phi i64 [ %i.gd, %.lr.ph.i154 ], [ %.012.i155.ph, %.lr.ph.i154.preheader336 ]
  %.0711.i156 = phi ptr [ %i.gb, %.lr.ph.i154 ], [ %.0711.i156.ph, %.lr.ph.i154.preheader336 ] ; 2 uses
  %.0810.i157 = phi ptr [ %i.gc, %.lr.ph.i154 ], [ %.0810.i157.ph, %.lr.ph.i154.preheader336 ] ; 2 uses
  %i.ga = load i32, ptr %.0810.i157, align 4, !tbaa !322
  store i32 %i.ga, ptr %.0711.i156, align 4, !tbaa !322
  %i.gb = getelementptr inbounds nuw i8, ptr %.0711.i156, i64 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.0810.i157, i64 4 ; 2 uses
  %i.gd = add nuw nsw i64 %.012.i155, 1           ; 2 uses
  %.not.i158 = icmp eq ptr %i.gc, %i.fj
  br i1 %.not.i158, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160, label %.lr.ph.i154, !llvm.loop !1058

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160: ; preds = %.lr.ph.i154, %middle.block276, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152
  %.0.lcssa.i159 = phi i64 [ 0, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit152 ], [ %i.fz, %middle.block276 ], [ %i.gd, %.lr.ph.i154 ]
  %i.ge = add i64 %.0.lcssa.i159, %i.fi           ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ge
  store i32 0, ptr %i.gf, align 4, !tbaa !322
  %i.gg = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.gh = trunc i8 %i.gg to i1                    ; 2 uses
  %i.gi = load ptr, ptr %i.f, align 8
  %i.gj = select i1 %i.gh, ptr %i.e, ptr %i.gi    ; 2 uses
  %i.gk = load i64, ptr %i.s, align 8
  %i.gl = select i1 %i.gh, i64 5, i64 %i.gk       ; 2 uses
  %i.gm = icmp ne ptr %i.gj, null
  %i.gn = icmp ugt i64 %i.gl, 5
  %or.cond.i.i = and i1 %i.gm, %i.gn
  br i1 %or.cond.i.i, label %bb.t, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

bb.t:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160
  %i.go = shl i64 %i.gl, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.go) #27
  %.pre186 = load i8, ptr %0, align 8, !tbaa !35
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160, %bb.t
  %i.gp = phi i8 [ %i.gg, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit160 ], [ %.pre186, %bb.t ]
  %i.gq = trunc i8 %i.gp to i1
  %.pre187 = load i64, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !324
  %i.gr = shl i64 %i.ge, 1
  %i.gs = and i64 %.pre187, 1
  %i.gt = select i1 %i.gq, i64 0, i64 %i.gs
  %i.gu = or disjoint i64 %i.gt, %i.gr            ; 2 uses
  store i64 %i.gu, ptr %0, align 8
  %i.gv = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.gv, ptr %i.s, align 8, !tbaa !327
  %i.gw = trunc i64 %i.gu to i8
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.gx = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.gy = sub i64 %i.h, %i.gx                     ; 2 uses
  %i.gz = ashr exact i64 %i.gy, 2                 ; 3 uses
  %i.ha = icmp eq ptr %1, %i.x
  br i1 %i.ha, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hb = call ptr @wmemmove(ptr noundef %i.aq, ptr noundef %i.x, i64 noundef %i.gz) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162

_ZNSt11char_traitsIwE4moveEPwPKwm.exit162:        ; preds = %bb.u, %bb.v
  %i.hc = getelementptr i8, ptr %i.aq, i64 %i.gy  ; 5 uses
  %i.hd = icmp eq i64 %i.q, %i.gz
  br i1 %i.hd, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164, label %bb.w

bb.w:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162
  %i.he = sub i64 %i.q, %i.gz
  %i.hf = getelementptr i8, ptr %i.hc, i64 %i.k
  %i.hg = call ptr @wmemmove(ptr noundef %i.hf, ptr noundef %1, i64 noundef %i.he) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164

_ZNSt11char_traitsIwE4moveEPwPKwm.exit164:        ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit162, %bb.w
  %18 = sub i64 %i.i, %i.j
  %19 = add i64 %18, -4                           ; 2 uses
  %i.hh = lshr i64 %19, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %19, 76
  br i1 %min.iters.check, label %.lr.ph.i166.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164
  %i.hj = add i64 %i.ar, %i.h
  %i.hk = add i64 %i.gx, %i.j
  %i.hl = sub i64 %i.hk, %i.hj
  %diff.check = icmp ugt i64 %i.hl, -32
  br i1 %diff.check, label %.lr.ph.i166.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hi, 9223372036854775800     ; 3 uses
  %i.hm = shl i64 %n.vec, 2                       ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hc, i64 %i.hm
  %i.ho = getelementptr i8, ptr %2, i64 %i.hm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hp = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hc, i64 %i.hp ; 2 uses
  %next.gep219 = getelementptr i8, ptr %2, i64 %i.hp ; 2 uses
  %i.hq = getelementptr i8, ptr %next.gep219, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep219, align 4, !tbaa !322
  %wide.load220 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !322
  %i.hr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !322
  store <4 x i32> %wide.load220, ptr %i.hr, align 4, !tbaa !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !1059

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172, label %.lr.ph.i166.preheader

.lr.ph.i166.preheader:                            ; preds = %vector.memcheck, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164, %middle.block
  %.0711.i168.ph = phi ptr [ %i.hc, %vector.memcheck ], [ %i.hc, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.hn, %middle.block ]
  %.0810.i169.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit164 ], [ %i.ho, %middle.block ]
  br label %.lr.ph.i166

.lr.ph.i166:                                      ; preds = %.lr.ph.i166.preheader, %.lr.ph.i166
  %.0711.i168 = phi ptr [ %i.hu, %.lr.ph.i166 ], [ %.0711.i168.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %.0810.i169 = phi ptr [ %i.hv, %.lr.ph.i166 ], [ %.0810.i169.ph, %.lr.ph.i166.preheader ] ; 2 uses
  %i.ht = load i32, ptr %.0810.i169, align 4, !tbaa !322
  store i32 %i.ht, ptr %.0711.i168, align 4, !tbaa !322
  %i.hu = getelementptr inbounds nuw i8, ptr %.0711.i168, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.0810.i169, i64 4 ; 2 uses
  %.not.i170 = icmp eq ptr %i.hv, %3
  br i1 %.not.i170, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172, label %.lr.ph.i166, !llvm.loop !1060

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172: ; preds = %.lr.ph.i166, %middle.block
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ao
  store i32 0, ptr %i.hw, align 4, !tbaa !322
  %i.hx = load i8, ptr %0, align 8, !tbaa !35
  %i.hy = trunc i8 %i.hx to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !324
  %i.hz = shl i64 %i.ao, 1
  %i.ia = and i64 %.pre, 1
  %i.ib = select i1 %i.hy, i64 0, i64 %i.ia
  %i.ic = or disjoint i64 %i.ib, %i.hz            ; 2 uses
  store i64 %i.ic, ptr %0, align 8
  %i.id = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.id, ptr %i.s, align 8, !tbaa !327
  %i.ie = trunc i64 %i.ic to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136
  %.pre189 = phi ptr [ %i.aq, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.aq, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172 ], [ %.pre189.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136 ]
  %.pre188 = phi i8 [ %i.gw, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.ie, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit172 ], [ %.pre188.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre192 = trunc i8 %.pre188 to i1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  %.pre-phi = phi i1 [ %.pre192, %bb.x ], [ %i.d, %bb.a ]
  %i.if = phi ptr [ %.pre189, %bb.x ], [ %i.g, %bb.a ]
  %i.ig = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = sub i64 %i.h, %i.ih
  %i.ij = select i1 %.pre-phi, ptr %i.e, ptr %i.if
  %i.ik = getelementptr inbounds i8, ptr %i.ij, i64 %i.ii
  ret ptr %i.ik
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6insertIPKwvEEN9__gnu_cxx17__normal_iteratorIPwS4_EENS9_IS7_S4_EET_SD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !491
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !477  ; 2 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPKwS4_EES9_S8_S8_.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.440, ptr noundef nonnull @.str.467, i64 noundef %i.e, i64 noundef %i.g) #26
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPKwS4_EES9_S8_S8_.exit: ; preds = %bb.a
  %i.i = ptrtoint ptr %3 to i64
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e, i64 noundef 0, ptr noundef %2, i64 noundef %i.l) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !491
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.d
  ret ptr %i.o
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceEPKwS6_S6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = tail call noundef i64 @wcslen(ptr noundef %3) #28 ; 2 uses
  %.idx = shl i64 %i.d, 2                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 3 uses
  %i.f = icmp ne ptr %1, %2
  %i.g = icmp ne i64 %i.d, 0
  %i.h = and i1 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.a
  %4 = sub i64 %i.c, %i.b
  %5 = add i64 %4, -4
  %i.i = lshr i64 %5, 2
  %i.j = add i64 %.idx, -4
  %i.k = lshr exact i64 %i.j, 2
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.k) ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.l, 11
  br i1 %min.iters.check, label %.lr.ph.i.preheader17, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.preheader
  %i.n = sub i64 %i.c, %i.b
  %i.o = and i64 %i.n, 3
  %ident.check.not = icmp ne i64 %i.o, 0
  %i.p = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.p, -32
  %or.cond = or i1 %ident.check.not, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.m, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2                        ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q       ; 2 uses
  %i.s = getelementptr i8, ptr %3, i64 %i.q       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.t  ; 2 uses
  %next.gep14 = getelementptr i8, ptr %3, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep14, align 4, !tbaa !322
  %wide.load15 = load <4 x i32>, ptr %i.u, align 4, !tbaa !322
  %i.v = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !322
  store <4 x i32> %wide.load15, ptr %i.v, align 4, !tbaa !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !1061

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader17

.lr.ph.i.preheader17:                             ; preds = %vector.scevcheck, %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.r, %middle.block ]
  %.01618.i.ph = phi ptr [ %3, %vector.scevcheck ], [ %3, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
  %.019.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %.01618.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.01618.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %i.x = load i32, ptr %.01618.i, align 4, !tbaa !322
  store i32 %i.x, ptr %.019.i, align 4, !tbaa !322
  %i.y = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4 ; 3 uses
  %i.aa = icmp ne ptr %i.y, %2
  %i.ab = icmp ne ptr %i.z, %i.e
  %i.ac = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1062

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.016.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.s, %middle.block ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.r, %middle.block ], [ %i.y, %.lr.ph.i ] ; 3 uses
  %i.ad = icmp eq ptr %.016.lcssa.i, %i.e
  br i1 %i.ad, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.0.lcssa.i, %2
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.af = ptrtoint ptr %.0.lcssa.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2
  %i.ai = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.aj = trunc i8 %i.ai to i1
  %i.ak = lshr i8 %i.ai, 1
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = load i64, ptr %0, align 8               ; 3 uses
  %i.an = lshr i64 %i.am, 1
  %i.ao = select i1 %i.aj, i64 %i.al, i64 %i.an   ; 2 uses
  %i.ap = trunc i64 %i.am to i8
  %i.aq = trunc i64 %i.am to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = select i1 %i.aq, ptr %i.ar, ptr %i.at
  %i.av = add nuw i64 %i.ao, 1                    ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.ae, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp eq i64 %i.av, %i.ay
  br i1 %i.az, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = sub i64 %i.av, %i.ay
  %i.bb = tail call ptr @wmemmove(ptr noundef %.0.lcssa.i, ptr noundef %2, i64 noundef %i.ba) #27 ; 0 uses
  %.pre.i.i = load i8, ptr %0, align 8, !tbaa !35
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i:       ; preds = %bb.d, %bb.c
  %i.bc = phi i8 [ %i.ap, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.bd = sub i64 %i.ao, %i.ah                    ; 2 uses
  %i.be = trunc i8 %i.bc to i1
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = shl i8 %i.bf, 1
  %i.bh = or disjoint i8 %i.bg, 1
  store i8 %i.bh, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i.i
  %i.bi = load i64, ptr %0, align 8
  %i.bj = shl i64 %i.bd, 1
  %i.bk = and i64 %i.bi, 1
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.bm = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, ptr noundef %.016.lcssa.i, ptr noundef %i.e, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE7replaceIPKwEERS4_S7_S7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPKwS4_EES9_S8_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_12basic_stringIwSt11char_traitsIwEvvEEvvE5eraseENS0_12vec_iteratorIPS5_Lb1EEES9_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.43") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !608    ; 5 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !608    ; 4 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !484
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e ; 3 uses
  %.not9.i = icmp eq ptr %i.b, %i.f
  br i1 %.not9.i, label %.lr.ph.i10.preheader, label %.lr.ph.i

.lr.ph.i10.preheader:                             ; preds = %bb.b
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24                  ; 2 uses
  br label %.lr.ph.i10

.lr.ph.i:                                         ; preds = %bb.b, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i
  %.011.i = phi ptr [ %i.n, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.a, %bb.b ] ; 3 uses
  %.0710.i = phi ptr [ %i.m, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i = icmp eq ptr %.011.i, %.0710.i
  br i1 %.not.i.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i, label %bb.c, !prof !67

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE16priv_move_assignEOS4_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %.011.i, ptr noundef nonnull align 8 dereferenceable(24) %.0710.i)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0710.i, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i, label %_ZN5boost9container4moveIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !1063

_ZN5boost9container4moveIPNS0_12basic_stringIwSt11char_traitsIwEvvEES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_S9_SA_.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEaSEOS4_.exit.i
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit

.lr.ph.i10:                                       ; preds = %.lr.ph.i10.preheader, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i
  %.05.i = phi i64 [ %i.s, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i ], [ %i.j, %.lr.ph.i10.preheader ]
  %storemerge4.i = phi ptr [ %i.ac, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i ], [ %i.a, %.lr.ph.i10.preheader ] ; 4 uses
  %i.s = add i64 %.05.i, -1                       ; 2 uses
  %i.t = load i8, ptr %storemerge4.i, align 1, !tbaa !35
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorINS0_12basic_stringIwSt11char_traitsIwEvvEEEEE7destroyIS6_EEvRS7_PT_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i10
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !324  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !327  ; 2 uses
  %i.z = icmp ne ptr %i.w, null
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_:bb.a
bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEN5boost9container12vec_iteratorIPS8_Lb0EEEEEbRT_T0_.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !491   ; 8 uses
  %i.at = icmp eq ptr %i.as, %i.b                 ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i11, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i2

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i11: ; preds = %bb.j
  br i1 %i.at, label %bb.k, label %.thread.i12

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i2: ; preds = %bb.j
  br i1 %i.at, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i3

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i2, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i11
  %i.au = icmp ult i64 %i.p, 4
  call void @llvm.assume(i1 %i.au)
  %.not21.i5 = icmp eq ptr %1, %i.q
  br i1 %.not21.i5, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit13, label %bb.l, !prof !67

bb.l:                                             ; preds = %bb.k
  switch i64 %i.p, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i6
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = load i32, ptr %i.as, align 4, !tbaa !322
  store i32 %i.av, ptr %i.z, align 4, !tbaa !322
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i6

bb.n:                                             ; preds = %bb.l
  %i.aw = call ptr @wmemcpy(ptr noundef %i.z, ptr noundef %i.as, i64 noundef %i.p) #27 ; 0 uses
  %.pre.i8 = load i64, ptr %i.o, align 8, !tbaa !477
  %.pre30.i9 = load ptr, ptr %i.q, align 8, !tbaa !491
  %.pre31.pre.i10 = load ptr, ptr %1, align 8, !tbaa !491
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i6

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i6: ; preds = %bb.n, %bb.m, %bb.l
  %.pre31.i7 = phi ptr [ %i.as, %bb.l ], [ %.pre31.pre.i10, %bb.n ], [ %i.as, %bb.m ]
  %i.ax = phi ptr [ %i.z, %bb.l ], [ %.pre30.i9, %bb.n ], [ %i.z, %bb.m ]
  %i.ay = phi i64 [ %i.p, %bb.l ], [ %.pre.i8, %bb.n ], [ 1, %bb.m ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !477
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  store i32 0, ptr %i.ba, align 4, !tbaa !322
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit13

.thread.i12:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.as, ptr %i.q, align 8, !tbaa !491
  store i64 %i.p, ptr %i.bb, align 8, !tbaa !477
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !35
  store i64 %i.bc, ptr %i.aa, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.thread.i2
  %i.bd = load i64, ptr %i.aa, align 8, !tbaa !35
  store ptr %i.as, ptr %i.q, align 8, !tbaa !491
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %i.be, align 8, !tbaa !477
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !35
  store i64 %i.bf, ptr %i.aa, align 8, !tbaa !35
  %.not.i4 = icmp eq ptr %i.z, null
  br i1 %.not.i4, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i3
  store ptr %i.z, ptr %1, align 8, !tbaa !491
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit13

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit13: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i6, %bb.o
  %i.bg = phi ptr [ %.pre31.i7, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE7_S_copyEPwPKwm.exit.i6 ], [ %i.z, %bb.o ], [ %i.as, %bb.k ] ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !477
  store i32 0, ptr %i.bg, align 4, !tbaa !322
  %i.bh = icmp eq ptr %i.bg, %i.b
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit13
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !35
  %i.bj = shl i64 %i.bi, 2
  %i.bk = add i64 %i.bj, 4
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #29
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit23.thread25.i3, %.thread.i12, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEaSEOS4_.exit13, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_appendEPKwm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @wmemmove(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !652
  %.not209 = icmp ult i64 %i.t, %i.i
  br i1 %.not209, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = add i64 %i.s, 1                          ; 5 uses
  %i.x = lshr i64 %i.l, 1
  %i.y = and i64 %i.x, 127
  %i.z = select i1 %i.o, i64 %i.y, i64 %i.m
  %.neg.i = sub i64 %i.z, %i.s
  %i.aa = sub i64 2305843009213693950, %i.s
  %i.ab = add i64 %.neg.i, %i.i                   ; 2 uses
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.423) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.w, 2305843009213693952
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i64 %i.w, 3
  %i.af = udiv i64 %i.ae, 5
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp ugt i64 %i.w, -6917529027641081857
  %i.ah = shl i64 %i.w, 3
  %spec.select.i.i = select i1 %i.ag, i64 -1, i64 %i.ah
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.af, %bb.f ], [ %spec.select.i.i, %bb.g ]
  %i.ai = add i64 %i.ab, %i.w
  %i.aj = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ak = tail call noundef i64 @llvm.umax.i64(i64 %i.ai, i64 %i.aj)
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !41
  %i.al = add i64 %i.n, %i.i                      ; 3 uses
  %i.am = add i64 %i.al, 1
  %spec.store.select = select i1 %i.o, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.o, i32 1, i32 7
  %i.an = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ao = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ap = icmp eq ptr %i.u, %i.an
  br i1 %i.ap, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !327
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.ar = ptrtoint ptr %i.u to i64
  %i.as = sub i64 %i.h, %i.ar
  %i.at = ashr exact i64 %i.as, 2                 ; 3 uses
  %i.au = sub i64 %i.n, %i.at                     ; 5 uses
  %.not124 = icmp ult i64 %i.au, %i.i
  br i1 %.not124, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx210 = shl i64 %i.n, 2                      ; 2 uses
  %i.av = getelementptr i8, ptr %i.u, i64 %.idx210 ; 4 uses
  %i.aw = sub i64 %i.n, %i.i
  %.idx = shl i64 %i.aw, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx210
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.u, i64 %.idx   ; 3 uses
  %7 = sub i64 %3, %5
  %i.ay = add i64 %7, 4611686018427387903
  %8 = and i64 %i.ay, 4611686018427387903         ; 2 uses
  %i.az = add nuw nsw i64 %8, 1                   ; 2 uses
  %min.iters.check300 = icmp samesign ult i64 %8, 7
  br i1 %min.iters.check300, label %.lr.ph.i.preheader376, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.i.preheader
  %n.vec302 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.ba = shl i64 %n.vec302, 2                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.av, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.ax, i64 %i.ba
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.bd = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.av, i64 %i.bd ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ax, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep305, i64 4
  %i.bf = getelementptr i8, ptr %next.gep306, i64 4
  %i.bg = getelementptr i8, ptr %next.gep306, i64 20
  %wide.load307 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !322
  %wide.load308 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !322
  %i.bh = getelementptr i8, ptr %next.gep305, i64 20
  store <4 x i32> %wide.load307, ptr %i.be, align 4, !tbaa !322
  store <4 x i32> %wide.load308, ptr %i.bh, align 4, !tbaa !322
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.bi, label %middle.block310, label %vector.body303, !llvm.loop !1203

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.az, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader376

.lr.ph.i.preheader376:                            ; preds = %.lr.ph.i.preheader, %middle.block310
  %.0711.i.pn.ph = phi ptr [ %i.av, %.lr.ph.i.preheader ], [ %i.bb, %middle.block310 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %.lr.ph.i.preheader ], [ %i.bc, %middle.block310 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader376, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bj = load i32, ptr %.0810.i, align 4, !tbaa !322
  store i32 %i.bj, ptr %.0711.i, align 4, !tbaa !322
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1204

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block310, %bb.j
  %i.bk = sub nuw i64 %i.au, %i.i
  %i.bl = add i64 %i.bk, 1                        ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.preheader.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.bo = call ptr @wmemmove(ptr noundef nonnull %i.bn, ptr noundef %1, i64 noundef %i.bl) #27 ; 0 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %.pre.i = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check315, label %.lr.ph.i126.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.preheader.i
  %n.vec317 = and i64 %i.i, -8                    ; 4 uses
  %i.bp = shl i64 %n.vec317, 2
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %i.br = sub i64 %3, %n.vec317
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next323, %vector.body320 ] ; 2 uses
  %i.bs = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %1, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %broadcast.splat319, ptr %next.gep322, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat319, ptr %i.bt, align 4, !tbaa !322
  %index.next323 = add nuw i64 %index321, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next323, %n.vec317
  br i1 %i.bu, label %middle.block324, label %vector.body320, !llvm.loop !1205

middle.block324:                                  ; preds = %vector.body320
  %cmp.n325 = icmp eq i64 %i.i, %n.vec317
  br i1 %cmp.n325, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block324
  %.06.i.ph = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.bq, %middle.block324 ]
  %.sroa.2.05.i.ph = phi i64 [ %3, %.lr.ph.preheader.i ], [ %i.br, %middle.block324 ]
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126
  %.06.i = phi ptr [ %i.bw, %.lr.ph.i126 ], [ %.06.i.ph, %.lr.ph.i126.preheader ] ; 2 uses
  %.sroa.2.05.i = phi i64 [ %i.bv, %.lr.ph.i126 ], [ %.sroa.2.05.i.ph, %.lr.ph.i126.preheader ]
  store i32 %.pre.i, ptr %.06.i, align 4, !tbaa !322
  %i.bv = add i64 %.sroa.2.05.i, -1               ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %.not.i127 = icmp eq i64 %i.bv, %5
  br i1 %.not.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.i126, !llvm.loop !1206

bb.l:                                             ; preds = %bb.i
  %.neg = xor i64 %i.au, -1
  %i.bx = add i64 %3, %.neg                       ; 4 uses
  %i.by = getelementptr [4 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 4 uses
  %.not6.i = icmp eq i64 %i.bx, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit, label %.lr.ph.preheader.i128

.lr.ph.preheader.i128:                            ; preds = %bb.l
  %.pre.i129 = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %i.ca = add i64 %i.at, %3
  %9 = add i64 %i.n, %5
  %10 = xor i64 %9, -1
  %11 = add i64 %i.ca, %10                        ; 3 uses
  %min.iters.check329 = icmp ult i64 %11, 8
  br i1 %min.iters.check329, label %.lr.ph.i130.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph.preheader.i128
  %n.vec331 = and i64 %11, -8                     ; 4 uses
  %i.cb = shl i64 %n.vec331, 2
  %i.cc = getelementptr i8, ptr %i.bz, i64 %i.cb
  %i.cd = sub i64 %i.bx, %n.vec331
  %broadcast.splatinsert332 = insertelement <4 x i32> poison, i32 %.pre.i129, i64 0
  %broadcast.splat333 = shufflevector <4 x i32> %broadcast.splatinsert332, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph330
  %index335 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body334 ] ; 2 uses
  %i.ce = shl i64 %index335, 2
  %next.gep336 = getelementptr i8, ptr %i.bz, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep336, i64 16
  store <4 x i32> %broadcast.splat333, ptr %next.gep336, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat333, ptr %i.cf, align 4, !tbaa !322
  %index.next337 = add nuw i64 %index335, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next337, %n.vec331
  br i1 %i.cg, label %middle.block338, label %vector.body334, !llvm.loop !1207

middle.block338:                                  ; preds = %vector.body334
  %cmp.n339 = icmp eq i64 %11, %n.vec331
  br i1 %cmp.n339, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %.lr.ph.preheader.i128, %middle.block338
  %.038.i.ph = phi ptr [ %i.bz, %.lr.ph.preheader.i128 ], [ %i.cc, %middle.block338 ]
  %.sroa.2.07.i.ph = phi i64 [ %i.bx, %.lr.ph.preheader.i128 ], [ %i.cd, %middle.block338 ]
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130
  %.038.i = phi ptr [ %i.ch, %.lr.ph.i130 ], [ %.038.i.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.sroa.2.07.i = phi i64 [ %i.ci, %.lr.ph.i130 ], [ %.sroa.2.07.i.ph, %.lr.ph.i130.preheader ]
  store i32 %.pre.i129, ptr %.038.i, align 4, !tbaa !322
  %i.ch = getelementptr inbounds nuw i8, ptr %.038.i, i64 4
  %i.ci = add i64 %.sroa.2.07.i, -1               ; 2 uses
  %.not.i131 = icmp eq i64 %i.ci, %5
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit, label %.lr.ph.i130, !llvm.loop !1208

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i130, %middle.block338, %bb.l
  %i.cj = sub i64 %i.i, %i.au
  %i.ck = add i64 %i.cj, %i.n                     ; 4 uses
  %i.cl = load i8, ptr %0, align 8, !tbaa !35
  %i.cm = trunc i8 %i.cl to i1
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit
  %i.cn = trunc i64 %i.ck to i8
  %i.co = shl i8 %i.cn, 1
  %i.cp = or disjoint i8 %i.co, 1
  store i8 %i.cp, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit
  %i.cq = load i64, ptr %0, align 8
  %i.cr = shl i64 %i.ck, 1
  %i.cs = and i64 %i.cq, 1
  %i.ct = or disjoint i64 %i.cs, %i.cr
  store i64 %i.ct, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i133 = icmp eq ptr %1, %i.bz
  br i1 %.not9.i133, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ck ; 4 uses
  %12 = sub i64 %i.v, %i.h
  %13 = lshr i64 %12, 2
  %14 = add nuw i64 %13, %i.n
  %15 = and i64 %14, 4611686018427387903          ; 2 uses
  %i.cv = add nuw nsw i64 %15, 1                  ; 2 uses
  %min.iters.check345 = icmp samesign ult i64 %15, 19
  br i1 %min.iters.check345, label %.lr.ph.i134.preheader374, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i134.preheader
  %i.cw = shl i64 %i.ck, 2
  %i.cx = add i64 %i.cw, %i.v
  %i.cy = sub i64 %i.h, %i.cx
  %diff.check343 = icmp ugt i64 %i.cy, -32
  br i1 %diff.check343, label %.lr.ph.i134.preheader374, label %vector.ph346

vector.ph346:                                     ; preds = %vector.memcheck342
  %n.vec347 = and i64 %i.cv, 9223372036854775800  ; 3 uses
  %i.cz = shl i64 %n.vec347, 2                    ; 2 uses
  %i.da = getelementptr i8, ptr %i.cu, i64 %i.cz
  %i.db = getelementptr i8, ptr %1, i64 %i.cz
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %i.dc = shl i64 %index349, 2                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.cu, i64 %i.dc ; 2 uses
  %next.gep351 = getelementptr i8, ptr %1, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load352 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !322
  %wide.load353 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !322
  %i.de = getelementptr i8, ptr %next.gep350, i64 16
  store <4 x i32> %wide.load352, ptr %next.gep350, align 4, !tbaa !322
  store <4 x i32> %wide.load353, ptr %i.de, align 4, !tbaa !322
  %index.next354 = add nuw i64 %index349, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.df, label %middle.block355, label %vector.body348, !llvm.loop !1209

middle.block355:                                  ; preds = %vector.body348
  %cmp.n356 = icmp eq i64 %i.cv, %n.vec347
  br i1 %cmp.n356, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i134.preheader374

.lr.ph.i134.preheader374:                         ; preds = %vector.memcheck342, %.lr.ph.i134.preheader, %middle.block355
  %.0711.i136.ph = phi ptr [ %i.cu, %vector.memcheck342 ], [ %i.cu, %.lr.ph.i134.preheader ], [ %i.da, %middle.block355 ]
  %.0810.i137.ph = phi ptr [ %1, %vector.memcheck342 ], [ %1, %.lr.ph.i134.preheader ], [ %i.db, %middle.block355 ]
  br label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %.lr.ph.i134.preheader374, %.lr.ph.i134
  %.0711.i136 = phi ptr [ %i.dh, %.lr.ph.i134 ], [ %.0711.i136.ph, %.lr.ph.i134.preheader374 ] ; 2 uses
  %.0810.i137 = phi ptr [ %i.di, %.lr.ph.i134 ], [ %.0810.i137.ph, %.lr.ph.i134.preheader374 ] ; 3 uses
  %i.dg = load i32, ptr %.0810.i137, align 4, !tbaa !322
  store i32 %i.dg, ptr %.0711.i136, align 4, !tbaa !322
  %i.dh = getelementptr inbounds nuw i8, ptr %.0711.i136, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.0810.i137, i64 4
  %.not.i138 = icmp eq ptr %.0810.i137, %i.by
  br i1 %.not.i138, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i134, !llvm.loop !1210

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i134, %middle.block355, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %.not4.i140 = icmp eq i64 %i.au, -1
  br i1 %.not4.i140, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.preheader.i141

.lr.ph.preheader.i141:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %.pre.i142 = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %16 = sub i64 %i.n, %i.at
  %17 = add i64 %16, 1                            ; 3 uses
  %min.iters.check360 = icmp ult i64 %17, 8
  br i1 %min.iters.check360, label %.lr.ph.i143.preheader, label %vector.ph361

vector.ph361:                                     ; preds = %.lr.ph.preheader.i141
  %n.vec362 = and i64 %17, -8                     ; 4 uses
  %i.dj = shl i64 %n.vec362, 2
  %i.dk = getelementptr i8, ptr %1, i64 %i.dj
  %i.dl = sub i64 %3, %n.vec362
  %broadcast.splatinsert363 = insertelement <4 x i32> poison, i32 %.pre.i142, i64 0
  %broadcast.splat364 = shufflevector <4 x i32> %broadcast.splatinsert363, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph361
  %index366 = phi i64 [ 0, %vector.ph361 ], [ %index.next368, %vector.body365 ] ; 2 uses
  %i.dm = shl i64 %index366, 2
  %next.gep367 = getelementptr i8, ptr %1, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep367, i64 16
  store <4 x i32> %broadcast.splat364, ptr %next.gep367, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat364, ptr %i.dn, align 4, !tbaa !322
  %index.next368 = add nuw i64 %index366, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next368, %n.vec362
  br i1 %i.do, label %middle.block369, label %vector.body365, !llvm.loop !1211

middle.block369:                                  ; preds = %vector.body365
  %cmp.n370 = icmp eq i64 %17, %n.vec362
  br i1 %cmp.n370, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.i143.preheader

.lr.ph.i143.preheader:                            ; preds = %.lr.ph.preheader.i141, %middle.block369
  %.06.i144.ph = phi ptr [ %1, %.lr.ph.preheader.i141 ], [ %i.dk, %middle.block369 ]
  %.sroa.2.05.i145.ph = phi i64 [ %3, %.lr.ph.preheader.i141 ], [ %i.dl, %middle.block369 ]
  br label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %.lr.ph.i143.preheader, %.lr.ph.i143
  %.06.i144 = phi ptr [ %i.dq, %.lr.ph.i143 ], [ %.06.i144.ph, %.lr.ph.i143.preheader ] ; 2 uses
  %.sroa.2.05.i145 = phi i64 [ %i.dp, %.lr.ph.i143 ], [ %.sroa.2.05.i145.ph, %.lr.ph.i143.preheader ]
  store i32 %.pre.i142, ptr %.06.i144, align 4, !tbaa !322
  %i.dp = add i64 %.sroa.2.05.i145, -1            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.06.i144, i64 4
  %.not.i146 = icmp eq i64 %i.dp, %i.bx
  br i1 %.not.i146, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.i143, !llvm.loop !1212

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit: ; preds = %.lr.ph.i126, %.lr.ph.i143, %middle.block324, %middle.block369, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %.0118 = add i64 %i.n, %i.i                     ; 3 uses
  %i.dr = load i8, ptr %0, align 8, !tbaa !35
  %i.ds = trunc i8 %i.dr to i1
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit
  %i.dt = trunc i64 %.0118 to i8
  %i.du = shl i8 %i.dt, 1
  %i.dv = or disjoint i8 %i.du, 1
  store i8 %i.dv, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148

bb.p:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit
  %i.dw = load i64, ptr %0, align 8
  %i.dx = shl i64 %.0118, 1
  %i.dy = and i64 %i.dw, 1
  %i.dz = or disjoint i64 %i.dy, %i.dx
  store i64 %i.dz, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148: ; preds = %bb.o, %bb.p
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.0118
  store i32 0, ptr %i.ea, align 4, !tbaa !322
  %.pre218.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre219.pre = load ptr, ptr %i.f, align 8
  br label %bb.w

bb.q:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !652
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not9.i149 = icmp eq ptr %i.u, %1
  br i1 %.not9.i149, label %.lr.ph.preheader.i158, label %.lr.ph.i150.preheader

.lr.ph.i150.preheader:                            ; preds = %bb.r
  %18 = sub i64 %i.h, %i.v
  %19 = add i64 %18, -4                           ; 2 uses
  %i.ec = lshr i64 %19, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check250 = icmp ult i64 %19, 28
  %i.ee = sub i64 %i.v, %i.ao
  %diff.check = icmp ugt i64 %i.ee, -16
  %or.cond = select i1 %min.iters.check250, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i150.preheader378, label %vector.ph251

vector.ph251:                                     ; preds = %.lr.ph.i150.preheader
  %n.vec252 = and i64 %i.ed, 9223372036854775804  ; 3 uses
  %i.ef = shl i64 %n.vec252, 2                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.an, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.u, i64 %i.ef
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next259, %vector.body253 ] ; 2 uses
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph251 ], [ %bin.rdx, %vector.body253 ]
  %i.ei = shl i64 %index254, 2                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %i.an, i64 %i.ei ; 2 uses
  %next.gep257 = getelementptr i8, ptr %i.u, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep257, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep257, align 4, !tbaa !322
  %wide.load258 = load <2 x i32>, ptr %i.ej, align 4, !tbaa !322
  %i.ek = getelementptr i8, ptr %next.gep256, i64 8
  store <2 x i32> %wide.load, ptr %next.gep256, align 4, !tbaa !322
  store <2 x i32> %wide.load258, ptr %i.ek, align 4, !tbaa !322
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next259 = add nuw i64 %index254, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next259, %n.vec252
  br i1 %i.el, label %middle.block260, label %vector.body253, !llvm.loop !1213

middle.block260:                                  ; preds = %vector.body253
  %i.em = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n261 = icmp eq i64 %i.ed, %n.vec252
  br i1 %cmp.n261, label %.lr.ph.preheader.i158, label %.lr.ph.i150.preheader378

.lr.ph.i150.preheader378:                         ; preds = %.lr.ph.i150.preheader, %middle.block260
  %.012.i151.ph = phi i64 [ 0, %.lr.ph.i150.preheader ], [ %i.em, %middle.block260 ]
  %.0711.i152.ph = phi ptr [ %i.an, %.lr.ph.i150.preheader ], [ %i.eg, %middle.block260 ]
  %.0810.i153.ph = phi ptr [ %i.u, %.lr.ph.i150.preheader ], [ %i.eh, %middle.block260 ]
  br label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %.lr.ph.i150.preheader378, %.lr.ph.i150
  %.012.i151 = phi i64 [ %i.eq, %.lr.ph.i150 ], [ %.012.i151.ph, %.lr.ph.i150.preheader378 ]
  %.0711.i152 = phi ptr [ %i.eo, %.lr.ph.i150 ], [ %.0711.i152.ph, %.lr.ph.i150.preheader378 ] ; 2 uses
  %.0810.i153 = phi ptr [ %i.ep, %.lr.ph.i150 ], [ %.0810.i153.ph, %.lr.ph.i150.preheader378 ] ; 2 uses
  %i.en = load i32, ptr %.0810.i153, align 4, !tbaa !322
  store i32 %i.en, ptr %.0711.i152, align 4, !tbaa !322
  %i.eo = getelementptr inbounds nuw i8, ptr %.0711.i152, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i153, i64 4 ; 2 uses
  %i.eq = add nuw nsw i64 %.012.i151, 1           ; 2 uses
  %.not.i154 = icmp eq ptr %i.ep, %1
  br i1 %.not.i154, label %.lr.ph.preheader.i158, label %.lr.ph.i150, !llvm.loop !1214

.lr.ph.preheader.i158:                            ; preds = %.lr.ph.i150, %middle.block260, %bb.r
  %.0.lcssa.i155 = phi i64 [ 0, %bb.r ], [ %i.em, %middle.block260 ], [ %i.eq, %.lr.ph.i150 ] ; 2 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.0.lcssa.i155 ; 3 uses
  %.pre.i159 = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %min.iters.check265 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check265, label %.lr.ph.i160.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph.preheader.i158
  %n.vec267 = and i64 %i.i, -8                    ; 4 uses
  %i.es = shl i64 %n.vec267, 2
  %i.et = getelementptr i8, ptr %i.er, i64 %i.es
  %i.eu = sub i64 %3, %n.vec267
  %broadcast.splatinsert268 = insertelement <4 x i32> poison, i32 %.pre.i159, i64 0
  %broadcast.splat269 = shufflevector <4 x i32> %broadcast.splatinsert268, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph266
  %index271 = phi i64 [ 0, %vector.ph266 ], [ %index.next273, %vector.body270 ] ; 2 uses
  %i.ev = shl i64 %index271, 2
  %next.gep272 = getelementptr i8, ptr %i.er, i64 %i.ev ; 2 uses
  %i.ew = getelementptr i8, ptr %next.gep272, i64 16
  store <4 x i32> %broadcast.splat269, ptr %next.gep272, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat269, ptr %i.ew, align 4, !tbaa !322
  %index.next273 = add nuw i64 %index271, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next273, %n.vec267
  br i1 %i.ex, label %middle.block274, label %vector.body270, !llvm.loop !1215

middle.block274:                                  ; preds = %vector.body270
  %cmp.n275 = icmp eq i64 %i.i, %n.vec267
  br i1 %cmp.n275, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit166, label %.lr.ph.i160.preheader

.lr.ph.i160.preheader:                            ; preds = %.lr.ph.preheader.i158, %middle.block274
  %.038.i161.ph = phi ptr [ %i.er, %.lr.ph.preheader.i158 ], [ %i.et, %middle.block274 ]
  %.sroa.2.07.i162.ph = phi i64 [ %3, %.lr.ph.preheader.i158 ], [ %i.eu, %middle.block274 ]
  br label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %.lr.ph.i160.preheader, %.lr.ph.i160
  %.038.i161 = phi ptr [ %i.ey, %.lr.ph.i160 ], [ %.038.i161.ph, %.lr.ph.i160.preheader ] ; 2 uses
  %.sroa.2.07.i162 = phi i64 [ %i.ez, %.lr.ph.i160 ], [ %.sroa.2.07.i162.ph, %.lr.ph.i160.preheader ]
  store i32 %.pre.i159, ptr %.038.i161, align 4, !tbaa !322
  %i.ey = getelementptr inbounds nuw i8, ptr %.038.i161, i64 4
  %i.ez = add i64 %.sroa.2.07.i162, -1            ; 2 uses
  %.not.i163 = icmp eq i64 %i.ez, %5
  br i1 %.not.i163, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit166, label %.lr.ph.i160, !llvm.loop !1216

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit166: ; preds = %.lr.ph.i160, %middle.block274
  %i.fa = add i64 %.0.lcssa.i155, %i.i            ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %.not9.i167 = icmp eq ptr %1, %i.fb
  br i1 %.not9.i167, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174, label %.lr.ph.i168.preheader

.lr.ph.i168.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit166
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.fa ; 4 uses
  %i.fd = shl i64 %i.n, 2
  %20 = sub i64 %i.v, %i.h
  %i.fe = add i64 %20, %i.fd
  %21 = add i64 %i.fe, -4                         ; 2 uses
  %i.ff = lshr i64 %21, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check281 = icmp ult i64 %21, 52
  br i1 %min.iters.check281, label %.lr.ph.i168.preheader377, label %vector.memcheck278

vector.memcheck278:                               ; preds = %.lr.ph.i168.preheader
  %i.fh = shl i64 %i.fa, 2
  %i.fi = add i64 %i.fh, %i.ao
  %i.fj = sub i64 %i.h, %i.fi
  %diff.check279 = icmp ugt i64 %i.fj, -16
  br i1 %diff.check279, label %.lr.ph.i168.preheader377, label %vector.ph282

vector.ph282:                                     ; preds = %vector.memcheck278
  %n.vec283 = and i64 %i.fg, 9223372036854775804  ; 3 uses
  %i.fk = shl i64 %n.vec283, 2                    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fc, i64 %i.fk
  %i.fm = getelementptr i8, ptr %1, i64 %i.fk
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph282
  %index285 = phi i64 [ 0, %vector.ph282 ], [ %index.next292, %vector.body284 ] ; 2 uses
  %reduced.phi373 = phi <2 x i64> [ zeroinitializer, %vector.ph282 ], [ %bin.rdx294, %vector.body284 ]
  %i.fn = shl i64 %index285, 2                    ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.fc, i64 %i.fn ; 2 uses
  %next.gep289 = getelementptr i8, ptr %1, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep289, i64 8
  %wide.load290 = load <2 x i32>, ptr %next.gep289, align 4, !tbaa !322
  %wide.load291 = load <2 x i32>, ptr %i.fo, align 4, !tbaa !322
  %i.fp = getelementptr i8, ptr %next.gep288, i64 8
  store <2 x i32> %wide.load290, ptr %next.gep288, align 4, !tbaa !322
  store <2 x i32> %wide.load291, ptr %i.fp, align 4, !tbaa !322
  %bin.rdx294 = add <2 x i64> %reduced.phi373, splat (i64 2) ; 2 uses
  %index.next292 = add nuw i64 %index285, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next292, %n.vec283
  br i1 %i.fq, label %middle.block293, label %vector.body284, !llvm.loop !1217

middle.block293:                                  ; preds = %vector.body284
  %i.fr = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx294) ; 2 uses
  %cmp.n295 = icmp eq i64 %i.fg, %n.vec283
  br i1 %cmp.n295, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174, label %.lr.ph.i168.preheader377

.lr.ph.i168.preheader377:                         ; preds = %vector.memcheck278, %.lr.ph.i168.preheader, %middle.block293
  %.012.i169.ph = phi i64 [ 0, %vector.memcheck278 ], [ 0, %.lr.ph.i168.preheader ], [ %i.fr, %middle.block293 ]
  %.0711.i170.ph = phi ptr [ %i.fc, %vector.memcheck278 ], [ %i.fc, %.lr.ph.i168.preheader ], [ %i.fl, %middle.block293 ]
  %.0810.i171.ph = phi ptr [ %1, %vector.memcheck278 ], [ %1, %.lr.ph.i168.preheader ], [ %i.fm, %middle.block293 ]
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %.lr.ph.i168.preheader377, %.lr.ph.i168
  %.012.i169 = phi i64 [ %i.fv, %.lr.ph.i168 ], [ %.012.i169.ph, %.lr.ph.i168.preheader377 ]
  %.0711.i170 = phi ptr [ %i.ft, %.lr.ph.i168 ], [ %.0711.i170.ph, %.lr.ph.i168.preheader377 ] ; 2 uses
  %.0810.i171 = phi ptr [ %i.fu, %.lr.ph.i168 ], [ %.0810.i171.ph, %.lr.ph.i168.preheader377 ] ; 2 uses
  %i.fs = load i32, ptr %.0810.i171, align 4, !tbaa !322
  store i32 %i.fs, ptr %.0711.i170, align 4, !tbaa !322
  %i.ft = getelementptr inbounds nuw i8, ptr %.0711.i170, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %.0810.i171, i64 4 ; 2 uses
  %i.fv = add nuw nsw i64 %.012.i169, 1           ; 2 uses
  %.not.i172 = icmp eq ptr %i.fu, %i.fb
  br i1 %.not.i172, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174, label %.lr.ph.i168, !llvm.loop !1218

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174: ; preds = %.lr.ph.i168, %middle.block293, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit166
  %.0.lcssa.i173 = phi i64 [ 0, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit166 ], [ %i.fr, %middle.block293 ], [ %i.fv, %.lr.ph.i168 ]
  %i.fw = add i64 %.0.lcssa.i173, %i.fa           ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.fw
  store i32 0, ptr %i.fx, align 4, !tbaa !322
  %i.fy = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.fz = trunc i8 %i.fy to i1                    ; 2 uses
  %i.ga = load ptr, ptr %i.f, align 8
  %i.gb = select i1 %i.fz, ptr %i.e, ptr %i.ga    ; 2 uses
  %i.gc = load i64, ptr %i.p, align 8
  %i.gd = select i1 %i.fz, i64 5, i64 %i.gc       ; 2 uses
  %i.ge = icmp ne ptr %i.gb, null
  %i.gf = icmp ugt i64 %i.gd, 5
  %or.cond.i.i = and i1 %i.ge, %i.gf
  br i1 %or.cond.i.i, label %bb.s, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

bb.s:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174
  %i.gg = shl i64 %i.gd, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #27
  %.pre216 = load i8, ptr %0, align 8, !tbaa !35
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174, %bb.s
  %i.gh = phi i8 [ %i.fy, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit174 ], [ %.pre216, %bb.s ]
  %i.gi = trunc i8 %i.gh to i1
  %.pre217 = load i64, ptr %0, align 8
  store ptr %i.an, ptr %i.f, align 8, !tbaa !324
  %i.gj = shl i64 %i.fw, 1
  %i.gk = and i64 %.pre217, 1
  %i.gl = select i1 %i.gi, i64 0, i64 %i.gk
  %i.gm = or disjoint i64 %i.gl, %i.gj            ; 2 uses
  store i64 %i.gm, ptr %0, align 8
  %i.gn = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.gn, ptr %i.p, align 8, !tbaa !327
  %i.go = trunc i64 %i.gm to i8
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.gp = ptrtoint ptr %i.u to i64
  %i.gq = sub i64 %i.h, %i.gp                     ; 2 uses
  %i.gr = ashr exact i64 %i.gq, 2                 ; 3 uses
  %i.gs = icmp eq ptr %1, %i.u
  br i1 %i.gs, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gt = call ptr @wmemmove(ptr noundef %i.an, ptr noundef %i.u, i64 noundef %i.gr) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176

_ZNSt11char_traitsIwE4moveEPwPKwm.exit176:        ; preds = %bb.t, %bb.u
  %i.gu = getelementptr i8, ptr %i.an, i64 %i.gq  ; 4 uses
  %i.gv = icmp eq i64 %i.n, %i.gr
  br i1 %i.gv, label %.lr.ph.preheader.i180, label %bb.v

bb.v:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176
  %i.gw = sub i64 %i.n, %i.gr
  %i.gx = getelementptr [4 x i8], ptr %i.gu, i64 %i.i
  %i.gy = call ptr @wmemmove(ptr noundef %i.gx, ptr noundef %1, i64 noundef %i.gw) #27 ; 0 uses
  br label %.lr.ph.preheader.i180

.lr.ph.preheader.i180:                            ; preds = %bb.v, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176
  %.pre.i181 = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i182.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i180
  %n.vec = and i64 %i.i, -8                       ; 4 uses
  %i.gz = shl i64 %n.vec, 2
  %i.ha = getelementptr i8, ptr %i.gu, i64 %i.gz
  %i.hb = sub i64 %3, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i181, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.gu, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat, ptr %i.hd, align 4, !tbaa !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %.lr.ph.preheader.i180, %middle.block
  %.038.i183.ph = phi ptr [ %i.gu, %.lr.ph.preheader.i180 ], [ %i.ha, %middle.block ]
  %.sroa.2.07.i184.ph = phi i64 [ %3, %.lr.ph.preheader.i180 ], [ %i.hb, %middle.block ]
  br label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.preheader, %.lr.ph.i182
  %.038.i183 = phi ptr [ %i.hf, %.lr.ph.i182 ], [ %.038.i183.ph, %.lr.ph.i182.preheader ] ; 2 uses
  %.sroa.2.07.i184 = phi i64 [ %i.hg, %.lr.ph.i182 ], [ %.sroa.2.07.i184.ph, %.lr.ph.i182.preheader ]
  store i32 %.pre.i181, ptr %.038.i183, align 4, !tbaa !322
  %i.hf = getelementptr inbounds nuw i8, ptr %.038.i183, i64 4
  %i.hg = add i64 %.sroa.2.07.i184, -1            ; 2 uses
  %.not.i185 = icmp eq i64 %i.hg, %5
  br i1 %.not.i185, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188, label %.lr.ph.i182, !llvm.loop !1220

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188: ; preds = %.lr.ph.i182, %middle.block
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.al
  store i32 0, ptr %i.hh, align 4, !tbaa !322
  %i.hi = load i8, ptr %0, align 8, !tbaa !35
  %i.hj = trunc i8 %i.hi to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.an, ptr %i.f, align 8, !tbaa !324
  %i.hk = shl i64 %i.al, 1
  %i.hl = and i64 %.pre, 1
  %i.hm = select i1 %i.hj, i64 0, i64 %i.hl
  %i.hn = or disjoint i64 %i.hm, %i.hk            ; 2 uses
  store i64 %i.hn, ptr %0, align 8
  %i.ho = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.ho, ptr %i.p, align 8, !tbaa !327
  %i.hp = trunc i64 %i.hn to i8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148
  %.pre219 = phi ptr [ %i.an, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.an, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188 ], [ %.pre219.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148 ]
  %.pre218 = phi i8 [ %i.go, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.hp, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188 ], [ %.pre218.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre222 = trunc i8 %.pre218 to i1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.a
  %.pre-phi = phi i1 [ %.pre222, %bb.w ], [ %i.d, %bb.a ]
  %i.hq = phi ptr [ %.pre219, %bb.w ], [ %i.g, %bb.a ]
  %i.hr = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = sub i64 %i.h, %i.hs
  %i.hu = select i1 %.pre-phi, ptr %i.e, ptr %i.hq
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 %i.ht
  ret ptr %i.hv
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_PNS_11move_detail22disable_if_convertibleISF_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_PNS_11move_detail22disable_if_convertibleISF_mvE4typeE:bb.a
  %i.bs = and i64 %i.bq, 1
  %i.bt = or disjoint i64 %i.bs, %i.br
  store i64 %i.bt, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bu = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = lshr i8 %i.bu, 1
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.bx
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_.exit

bb.i:                                             ; preds = %bb.g
  %i.bz = load i64, ptr %0, align 8
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ca
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_.exit: ; preds = %bb.h, %bb.i
  %i.cc = phi ptr [ %i.by, %bb.h ], [ %i.cb, %bb.i ]
  %i.cd = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEES8_PKwT_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESP_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.cc, ptr %.sroa.013.0.lcssa, ptr %2, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit: ; preds = %bb.f, %bb.e, %bb.b, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEES8_PKwT_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESP_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = ptrtoint ptr %1 to i64                   ; 11 uses
  %.not175 = icmp eq ptr %2, %3
  br i1 %.not175, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.j = ptrtoint ptr %2 to i64                   ; 10 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 8 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !652
  %.not176 = icmp ult i64 %i.w, %i.l
  br i1 %.not176, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.z = add i64 %i.v, 1                          ; 5 uses
  %i.aa = lshr i64 %i.o, 1
  %i.ab = and i64 %i.aa, 127
  %i.ac = select i1 %i.r, i64 %i.ab, i64 %i.p
  %.neg.i = sub i64 %i.ac, %i.v
  %i.ad = sub i64 2305843009213693950, %i.v
  %i.ae = add i64 %.neg.i, %i.l                   ; 2 uses
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
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = icmp ugt i64 %i.z, -6917529027641081857
  %i.ak = shl i64 %i.z, 3
  %spec.select.i.i = select i1 %i.aj, i64 -1, i64 %i.ak
  br label %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit

_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %spec.select.i.i, %bb.g ]
  %i.al = add i64 %i.ae, %i.z
  %i.am = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.an = tail call noundef i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  store i64 %i.an, ptr %i.a, align 8, !tbaa !41
  %i.ao = add i64 %i.q, %i.l                      ; 3 uses
  %i.ap = add i64 %i.ao, 1
  %spec.store.select = select i1 %i.r, ptr null, ptr %i.g
  store ptr %spec.store.select, ptr %i.b, align 8
  %spec.select = select i1 %i.r, i32 1, i32 7
  %i.aq = call noundef ptr @_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.select, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 15 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64              ; 4 uses
  %i.as = icmp eq ptr %i.x, %i.aq
  br i1 %i.as, label %bb.h, label %bb.q

bb.h:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.at, ptr %i.s, align 8, !tbaa !327
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.au = ptrtoint ptr %i.x to i64
  %i.av = sub i64 %i.h, %i.au                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = sub i64 %i.q, %i.aw                     ; 5 uses
  %.not113 = icmp ult i64 %i.ax, %i.l
  br i1 %.not113, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx177 = shl i64 %i.q, 2                      ; 2 uses
  %i.ay = getelementptr i8, ptr %i.x, i64 %.idx177 ; 4 uses
  %i.az = sub i64 %i.q, %i.l
  %.idx = shl i64 %i.az, 2                        ; 2 uses
  %.not9.i = icmp eq i64 %.idx, %.idx177
  br i1 %.not9.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %i.x, i64 %.idx   ; 3 uses
  %i.bb = add i64 %i.k, -4                        ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check284 = icmp ult i64 %i.bb, 28
  br i1 %min.iters.check284, label %.lr.ph.i.preheader374, label %vector.ph285

vector.ph285:                                     ; preds = %.lr.ph.i.preheader
  %n.vec286 = and i64 %i.bd, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec286, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.ba, i64 %i.be
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next293, %vector.body287 ] ; 2 uses
  %i.bh = shl i64 %index288, 2                    ; 2 uses
  %next.gep289 = getelementptr i8, ptr %i.ay, i64 %i.bh ; 2 uses
  %next.gep290 = getelementptr i8, ptr %i.ba, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep289, i64 4
  %i.bj = getelementptr i8, ptr %next.gep290, i64 4
  %i.bk = getelementptr i8, ptr %next.gep290, i64 20
  %wide.load291 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !322
  %wide.load292 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !322
  %i.bl = getelementptr i8, ptr %next.gep289, i64 20
  store <4 x i32> %wide.load291, ptr %i.bi, align 4, !tbaa !322
  store <4 x i32> %wide.load292, ptr %i.bl, align 4, !tbaa !322
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.bm, label %middle.block294, label %vector.body287, !llvm.loop !1223

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %i.bd, %n.vec286
  br i1 %cmp.n295, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader374

.lr.ph.i.preheader374:                            ; preds = %.lr.ph.i.preheader, %middle.block294
  %.0711.i.pn.ph = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.bf, %middle.block294 ]
  %.0810.i.pn.ph = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.bg, %middle.block294 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader374, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader374 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader374 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bn = load i32, ptr %.0810.i, align 4, !tbaa !322
  store i32 %i.bn, ptr %.0711.i, align 4, !tbaa !322
  %.not.i = icmp eq ptr %.0810.i, %i.ay
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1224

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block294, %bb.j
  %i.bo = sub nuw i64 %i.ax, %i.l
  %i.bp = add i64 %i.bo, 1                        ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %i.br = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.bs = call ptr @wmemmove(ptr noundef nonnull %i.br, ptr noundef %1, i64 noundef %i.bp) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit

_ZNSt11char_traitsIwE4moveEPwPKwm.exit:           ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, %bb.k
  %5 = sub i64 %i.i, %i.j
  %6 = add i64 %5, -4                             ; 2 uses
  %i.bt = lshr i64 %6, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check301 = icmp ult i64 %6, 44
  %i.bv = sub i64 %i.j, %i.h
  %diff.check299 = icmp ugt i64 %i.bv, -32
  %or.cond = or i1 %min.iters.check301, %diff.check299
  br i1 %or.cond, label %.lr.ph.i115.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit
  %n.vec303 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bw = shl i64 %n.vec303, 2                    ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bw
  %i.by = getelementptr i8, ptr %2, i64 %i.bw
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %i.bz = shl i64 %index305, 2                    ; 2 uses
  %next.gep306 = getelementptr i8, ptr %1, i64 %i.bz ; 2 uses
  %next.gep307 = getelementptr i8, ptr %2, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load308 = load <4 x i32>, ptr %next.gep307, align 4, !tbaa !322
  %wide.load309 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !322
  %i.cb = getelementptr i8, ptr %next.gep306, i64 16
  store <4 x i32> %wide.load308, ptr %next.gep306, align 4, !tbaa !322
  store <4 x i32> %wide.load309, ptr %i.cb, align 4, !tbaa !322
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.cc, label %middle.block311, label %vector.body304, !llvm.loop !1225

middle.block311:                                  ; preds = %vector.body304
  %cmp.n312 = icmp eq i64 %i.bu, %n.vec303
  br i1 %cmp.n312, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i115.preheader

.lr.ph.i115.preheader:                            ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, %middle.block311
  %.07.i.ph = phi ptr [ %1, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.bx, %middle.block311 ]
  %.sroa.02.06.i.ph = phi ptr [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.by, %middle.block311 ]
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.lr.ph.i115.preheader, %.lr.ph.i115
  %.07.i = phi ptr [ %i.cf, %.lr.ph.i115 ], [ %.07.i.ph, %.lr.ph.i115.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.ce, %.lr.ph.i115 ], [ %.sroa.02.06.i.ph, %.lr.ph.i115.preheader ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !322
  store i32 %i.cd, ptr %.07.i, align 4, !tbaa !322
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  %.not.i116 = icmp eq ptr %i.ce, %3
  br i1 %.not.i116, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i115, !llvm.loop !1226

bb.l:                                             ; preds = %bb.i
  %.idx178 = shl i64 %i.ax, 2
  %i.cg = add i64 %.idx178, 4                     ; 2 uses
  %i.ch = getelementptr i8, ptr %2, i64 %i.cg     ; 6 uses
  %i.ci = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 5 uses
  %.not7.i = icmp eq ptr %i.ch, %3
  br i1 %.not7.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i117.preheader

.lr.ph.i117.preheader:                            ; preds = %bb.l
  %7 = shl i64 %i.q, 2
  %i.ck = add i64 %7, %i.j
  %8 = sub i64 %i.i, %i.ck
  %i.cl = add i64 %8, %i.av
  %9 = add i64 %i.cl, -8                          ; 2 uses
  %i.cm = lshr i64 %9, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check318 = icmp ult i64 %9, 60
  br i1 %min.iters.check318, label %.lr.ph.i117.preheader372, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i117.preheader
  %i.co = add i64 %i.av, %i.y
  %i.cp = sub i64 %i.j, %i.co
  %diff.check316 = icmp ugt i64 %i.cp, -32
  br i1 %diff.check316, label %.lr.ph.i117.preheader372, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck315
  %n.vec320 = and i64 %i.cn, 9223372036854775800  ; 3 uses
  %i.cq = shl i64 %n.vec320, 2                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cj, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.ch, i64 %i.cq
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.ct = shl i64 %index322, 2                    ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.cj, i64 %i.ct ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.ch, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep324, i64 16
  %wide.load325 = load <4 x i32>, ptr %next.gep324, align 4, !tbaa !322
  %wide.load326 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !322
  %i.cv = getelementptr i8, ptr %next.gep323, i64 16
  store <4 x i32> %wide.load325, ptr %next.gep323, align 4, !tbaa !322
  store <4 x i32> %wide.load326, ptr %i.cv, align 4, !tbaa !322
  %index.next327 = add nuw i64 %index322, 8       ; 2 uses
  %i.cw = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.cw, label %middle.block328, label %vector.body321, !llvm.loop !1227

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cn, %n.vec320
  br i1 %cmp.n329, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i117.preheader372

.lr.ph.i117.preheader372:                         ; preds = %vector.memcheck315, %.lr.ph.i117.preheader, %middle.block328
  %.039.i.ph = phi ptr [ %i.cj, %vector.memcheck315 ], [ %i.cj, %.lr.ph.i117.preheader ], [ %i.cr, %middle.block328 ]
  %.sroa.04.08.i.ph = phi ptr [ %i.ch, %vector.memcheck315 ], [ %i.ch, %.lr.ph.i117.preheader ], [ %i.cs, %middle.block328 ]
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.preheader372, %.lr.ph.i117
  %.039.i = phi ptr [ %i.cy, %.lr.ph.i117 ], [ %.039.i.ph, %.lr.ph.i117.preheader372 ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %i.cz, %.lr.ph.i117 ], [ %.sroa.04.08.i.ph, %.lr.ph.i117.preheader372 ] ; 2 uses
  %i.cx = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !322
  store i32 %i.cx, ptr %.039.i, align 4, !tbaa !322
  %i.cy = getelementptr inbounds nuw i8, ptr %.039.i, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4 ; 2 uses
  %.not.i118 = icmp eq ptr %i.cz, %3
  br i1 %.not.i118, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i117, !llvm.loop !1228

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit: ; preds = %.lr.ph.i117, %middle.block328, %bb.l
  %i.da = sub i64 %i.l, %i.ax
  %i.db = add i64 %i.da, %i.q                     ; 4 uses
  %i.dc = load i8, ptr %0, align 8, !tbaa !35
  %i.dd = trunc i8 %i.dc to i1
  br i1 %i.dd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit
  %i.de = trunc i64 %i.db to i8
  %i.df = shl i8 %i.de, 1
  %i.dg = or disjoint i8 %i.df, 1
  store i8 %i.dg, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit
  %i.dh = load i64, ptr %0, align 8
  %i.di = shl i64 %i.db, 1
  %i.dj = and i64 %i.dh, 1
  %i.dk = or disjoint i64 %i.dj, %i.di
  store i64 %i.dk, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i120 = icmp eq ptr %1, %i.cj
  br i1 %.not9.i120, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.db ; 4 uses
  %10 = sub i64 %i.y, %i.h
  %11 = lshr i64 %10, 2
  %12 = add nuw i64 %11, %i.q
  %13 = and i64 %12, 4611686018427387903          ; 2 uses
  %i.dm = add nuw nsw i64 %13, 1                  ; 2 uses
  %min.iters.check335 = icmp samesign ult i64 %13, 19
  br i1 %min.iters.check335, label %.lr.ph.i121.preheader371, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph.i121.preheader
  %i.dn = shl i64 %i.db, 2
  %i.do = add i64 %i.dn, %i.y
  %i.dp = sub i64 %i.h, %i.do
  %diff.check333 = icmp ugt i64 %i.dp, -32
  br i1 %diff.check333, label %.lr.ph.i121.preheader371, label %vector.ph336

vector.ph336:                                     ; preds = %vector.memcheck332
  %n.vec337 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dq = shl i64 %n.vec337, 2                    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dl, i64 %i.dq
  %i.ds = getelementptr i8, ptr %1, i64 %i.dq
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %i.dt = shl i64 %index339, 2                    ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.dl, i64 %i.dt ; 2 uses
  %next.gep341 = getelementptr i8, ptr %1, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep341, i64 16
  %wide.load342 = load <4 x i32>, ptr %next.gep341, align 4, !tbaa !322
  %wide.load343 = load <4 x i32>, ptr %i.du, align 4, !tbaa !322
  %i.dv = getelementptr i8, ptr %next.gep340, i64 16
  store <4 x i32> %wide.load342, ptr %next.gep340, align 4, !tbaa !322
  store <4 x i32> %wide.load343, ptr %i.dv, align 4, !tbaa !322
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.dw, label %middle.block345, label %vector.body338, !llvm.loop !1229

middle.block345:                                  ; preds = %vector.body338
  %cmp.n346 = icmp eq i64 %i.dm, %n.vec337
  br i1 %cmp.n346, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader371

.lr.ph.i121.preheader371:                         ; preds = %vector.memcheck332, %.lr.ph.i121.preheader, %middle.block345
  %.0711.i123.ph = phi ptr [ %i.dl, %vector.memcheck332 ], [ %i.dl, %.lr.ph.i121.preheader ], [ %i.dr, %middle.block345 ]
  %.0810.i124.ph = phi ptr [ %1, %vector.memcheck332 ], [ %1, %.lr.ph.i121.preheader ], [ %i.ds, %middle.block345 ]
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.preheader371, %.lr.ph.i121
  %.0711.i123 = phi ptr [ %i.dy, %.lr.ph.i121 ], [ %.0711.i123.ph, %.lr.ph.i121.preheader371 ] ; 2 uses
  %.0810.i124 = phi ptr [ %i.dz, %.lr.ph.i121 ], [ %.0810.i124.ph, %.lr.ph.i121.preheader371 ] ; 3 uses
  %i.dx = load i32, ptr %.0810.i124, align 4, !tbaa !322
  store i32 %i.dx, ptr %.0711.i123, align 4, !tbaa !322
  %i.dy = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %.not.i125 = icmp eq ptr %.0810.i124, %i.ci
  br i1 %.not.i125, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121, !llvm.loop !1230

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i121, %middle.block345, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %.not5.i127 = icmp eq i64 %i.cg, 0
  br i1 %.not5.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %i.ea = and i64 %i.ax, 4611686018427387903      ; 2 uses
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check352 = icmp samesign ult i64 %i.ea, 11
  %i.ec = sub i64 %i.j, %i.h
  %diff.check350 = icmp ugt i64 %i.ec, -32
  %or.cond368 = or i1 %min.iters.check352, %diff.check350
  br i1 %or.cond368, label %.lr.ph.i128.preheader370, label %vector.ph353

vector.ph353:                                     ; preds = %.lr.ph.i128.preheader
  %n.vec354 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ed = shl i64 %n.vec354, 2                    ; 2 uses
  %i.ee = getelementptr i8, ptr %1, i64 %i.ed
  %i.ef = getelementptr i8, ptr %2, i64 %i.ed
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next361, %vector.body355 ] ; 2 uses
  %i.eg = shl i64 %index356, 2                    ; 2 uses
  %next.gep357 = getelementptr i8, ptr %1, i64 %i.eg ; 2 uses
  %next.gep358 = getelementptr i8, ptr %2, i64 %i.eg ; 2 uses
  %i.eh = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load359 = load <4 x i32>, ptr %next.gep358, align 4, !tbaa !322
  %wide.load360 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !322
  %i.ei = getelementptr i8, ptr %next.gep357, i64 16
  store <4 x i32> %wide.load359, ptr %next.gep357, align 4, !tbaa !322
  store <4 x i32> %wide.load360, ptr %i.ei, align 4, !tbaa !322
  %index.next361 = add nuw i64 %index356, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.ej, label %middle.block362, label %vector.body355, !llvm.loop !1231

middle.block362:                                  ; preds = %vector.body355
  %cmp.n363 = icmp eq i64 %i.eb, %n.vec354
  br i1 %cmp.n363, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128.preheader370

.lr.ph.i128.preheader370:                         ; preds = %.lr.ph.i128.preheader, %middle.block362
  %.07.i129.ph = phi ptr [ %1, %.lr.ph.i128.preheader ], [ %i.ee, %middle.block362 ]
  %.sroa.02.06.i130.ph = phi ptr [ %2, %.lr.ph.i128.preheader ], [ %i.ef, %middle.block362 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader370, %.lr.ph.i128
  %.07.i129 = phi ptr [ %i.em, %.lr.ph.i128 ], [ %.07.i129.ph, %.lr.ph.i128.preheader370 ] ; 2 uses
  %.sroa.02.06.i130 = phi ptr [ %i.el, %.lr.ph.i128 ], [ %.sroa.02.06.i130.ph, %.lr.ph.i128.preheader370 ] ; 2 uses
  %i.ek = load i32, ptr %.sroa.02.06.i130, align 4, !tbaa !322
  store i32 %i.ek, ptr %.07.i129, align 4, !tbaa !322
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i130, i64 4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.07.i129, i64 4
  %.not.i131 = icmp eq ptr %i.el, %i.ch
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128, !llvm.loop !1232

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit: ; preds = %.lr.ph.i115, %.lr.ph.i128, %middle.block311, %middle.block362, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %.0107 = add i64 %i.q, %i.l                     ; 3 uses
  %i.en = load i8, ptr %0, align 8, !tbaa !35
  %i.eo = trunc i8 %i.en to i1
  br i1 %i.eo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit
  %i.ep = trunc i64 %.0107 to i8
  %i.eq = shl i8 %i.ep, 1
  %i.er = or disjoint i8 %i.eq, 1
  store i8 %i.er, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit133

bb.p:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit
  %i.es = load i64, ptr %0, align 8
  %i.et = shl i64 %.0107, 1
  %i.eu = and i64 %i.es, 1
  %i.ev = or disjoint i64 %i.eu, %i.et
  store i64 %i.ev, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit133

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit133: ; preds = %bb.o, %bb.p
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0107
  store i32 0, ptr %i.ew, align 4, !tbaa !322
  %.pre188.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre189.pre = load ptr, ptr %i.f, align 8
  br label %bb.w

bb.q:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.ex = load ptr, ptr %i.b, align 8, !tbaa !652
  %.not = icmp eq ptr %i.ex, null
  br i1 %.not, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %.not9.i134 = icmp eq ptr %i.x, %1
  br i1 %.not9.i134, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141, label %.lr.ph.i135.preheader

.lr.ph.i135.preheader:                            ; preds = %bb.r
  %14 = sub i64 %i.h, %i.y
  %15 = add i64 %14, -4                           ; 2 uses
  %i.ey = lshr i64 %15, 2
  %i.ez = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %min.iters.check226 = icmp ult i64 %15, 28
  %i.fa = sub i64 %i.y, %i.ar
  %diff.check224 = icmp ugt i64 %i.fa, -16
  %or.cond369 = select i1 %min.iters.check226, i1 true, i1 %diff.check224
  br i1 %or.cond369, label %.lr.ph.i135.preheader377, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph.i135.preheader
  %n.vec228 = and i64 %i.ez, 9223372036854775804  ; 3 uses
  %i.fb = shl i64 %n.vec228, 2                    ; 2 uses
  %i.fc = getelementptr i8, ptr %i.aq, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.x, i64 %i.fb
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next236, %vector.body229 ] ; 2 uses
  %reduced.phi = phi <2 x i64> [ zeroinitializer, %vector.ph227 ], [ %bin.rdx, %vector.body229 ]
  %i.fe = shl i64 %index230, 2                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.aq, i64 %i.fe ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.x, i64 %i.fe ; 2 uses
  %i.ff = getelementptr i8, ptr %next.gep233, i64 8
  %wide.load234 = load <2 x i32>, ptr %next.gep233, align 4, !tbaa !322
  %wide.load235 = load <2 x i32>, ptr %i.ff, align 4, !tbaa !322
  %i.fg = getelementptr i8, ptr %next.gep232, i64 8
  store <2 x i32> %wide.load234, ptr %next.gep232, align 4, !tbaa !322
  store <2 x i32> %wide.load235, ptr %i.fg, align 4, !tbaa !322
  %bin.rdx = add <2 x i64> %reduced.phi, splat (i64 2) ; 2 uses
  %index.next236 = add nuw i64 %index230, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next236, %n.vec228
  br i1 %i.fh, label %middle.block237, label %vector.body229, !llvm.loop !1233

middle.block237:                                  ; preds = %vector.body229
  %i.fi = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n238 = icmp eq i64 %i.ez, %n.vec228
  br i1 %cmp.n238, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141, label %.lr.ph.i135.preheader377

.lr.ph.i135.preheader377:                         ; preds = %.lr.ph.i135.preheader, %middle.block237
  %.012.i136.ph = phi i64 [ 0, %.lr.ph.i135.preheader ], [ %i.fi, %middle.block237 ]
  %.0711.i137.ph = phi ptr [ %i.aq, %.lr.ph.i135.preheader ], [ %i.fc, %middle.block237 ]
  %.0810.i138.ph = phi ptr [ %i.x, %.lr.ph.i135.preheader ], [ %i.fd, %middle.block237 ]
  br label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %.lr.ph.i135.preheader377, %.lr.ph.i135
  %.012.i136 = phi i64 [ %i.fm, %.lr.ph.i135 ], [ %.012.i136.ph, %.lr.ph.i135.preheader377 ]
  %.0711.i137 = phi ptr [ %i.fk, %.lr.ph.i135 ], [ %.0711.i137.ph, %.lr.ph.i135.preheader377 ] ; 2 uses
  %.0810.i138 = phi ptr [ %i.fl, %.lr.ph.i135 ], [ %.0810.i138.ph, %.lr.ph.i135.preheader377 ] ; 2 uses
  %i.fj = load i32, ptr %.0810.i138, align 4, !tbaa !322
  store i32 %i.fj, ptr %.0711.i137, align 4, !tbaa !322
  %i.fk = getelementptr inbounds nuw i8, ptr %.0711.i137, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %.0810.i138, i64 4 ; 2 uses
  %i.fm = add nuw nsw i64 %.012.i136, 1           ; 2 uses
  %.not.i139 = icmp eq ptr %i.fl, %1
  br i1 %.not.i139, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141, label %.lr.ph.i135, !llvm.loop !1234

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141: ; preds = %.lr.ph.i135, %middle.block237, %bb.r
  %.0.lcssa.i140 = phi i64 [ 0, %bb.r ], [ %i.fi, %middle.block237 ], [ %i.fm, %.lr.ph.i135 ] ; 3 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.0.lcssa.i140 ; 4 uses
  %16 = sub i64 %i.i, %i.j
  %17 = add i64 %16, -4                           ; 2 uses
  %i.fo = lshr i64 %17, 2
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 2 uses
  %min.iters.check244 = icmp ult i64 %17, 52
  br i1 %min.iters.check244, label %.lr.ph.i143.preheader, label %vector.memcheck241

vector.memcheck241:                               ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141
  %i.fq = shl i64 %.0.lcssa.i140, 2
  %i.fr = add i64 %i.fq, %i.ar
  %i.fs = sub i64 %i.j, %i.fr
  %diff.check242 = icmp ugt i64 %i.fs, -16
  br i1 %diff.check242, label %.lr.ph.i143.preheader, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck241
  %n.vec246 = and i64 %i.fp, 9223372036854775804  ; 3 uses
  %i.ft = shl i64 %n.vec246, 2                    ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fn, i64 %i.ft
  %i.fv = getelementptr i8, ptr %2, i64 %i.ft
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next255, %vector.body247 ] ; 2 uses
  %reduced.phi366 = phi <2 x i64> [ zeroinitializer, %vector.ph245 ], [ %bin.rdx257, %vector.body247 ]
  %i.fw = shl i64 %index248, 2                    ; 2 uses
  %next.gep251 = getelementptr i8, ptr %i.fn, i64 %i.fw ; 2 uses
  %next.gep252 = getelementptr i8, ptr %2, i64 %i.fw ; 2 uses
  %i.fx = getelementptr i8, ptr %next.gep252, i64 8
  %wide.load253 = load <2 x i32>, ptr %next.gep252, align 4, !tbaa !322
  %wide.load254 = load <2 x i32>, ptr %i.fx, align 4, !tbaa !322
  %i.fy = getelementptr i8, ptr %next.gep251, i64 8
  store <2 x i32> %wide.load253, ptr %next.gep251, align 4, !tbaa !322
  store <2 x i32> %wide.load254, ptr %i.fy, align 4, !tbaa !322
  %bin.rdx257 = add <2 x i64> %reduced.phi366, splat (i64 2) ; 2 uses
  %index.next255 = add nuw i64 %index248, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next255, %n.vec246
  br i1 %i.fz, label %middle.block256, label %vector.body247, !llvm.loop !1235

middle.block256:                                  ; preds = %vector.body247
  %i.ga = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx257) ; 2 uses
  %cmp.n258 = icmp eq i64 %i.fp, %n.vec246
  br i1 %cmp.n258, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit149, label %.lr.ph.i143.preheader

.lr.ph.i143.preheader:                            ; preds = %vector.memcheck241, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141, %middle.block256
  %.010.i144.ph = phi i64 [ 0, %vector.memcheck241 ], [ 0, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141 ], [ %i.ga, %middle.block256 ]
  %.039.i145.ph = phi ptr [ %i.fn, %vector.memcheck241 ], [ %i.fn, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141 ], [ %i.fu, %middle.block256 ]
  %.sroa.04.08.i146.ph = phi ptr [ %2, %vector.memcheck241 ], [ %2, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit141 ], [ %i.fv, %middle.block256 ]
  br label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %.lr.ph.i143.preheader, %.lr.ph.i143
  %.010.i144 = phi i64 [ %i.ge, %.lr.ph.i143 ], [ %.010.i144.ph, %.lr.ph.i143.preheader ]
  %.039.i145 = phi ptr [ %i.gc, %.lr.ph.i143 ], [ %.039.i145.ph, %.lr.ph.i143.preheader ] ; 2 uses
  %.sroa.04.08.i146 = phi ptr [ %i.gd, %.lr.ph.i143 ], [ %.sroa.04.08.i146.ph, %.lr.ph.i143.preheader ] ; 2 uses
  %i.gb = load i32, ptr %.sroa.04.08.i146, align 4, !tbaa !322
  store i32 %i.gb, ptr %.039.i145, align 4, !tbaa !322
  %i.gc = getelementptr inbounds nuw i8, ptr %.039.i145, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i146, i64 4 ; 2 uses
  %i.ge = add nuw nsw i64 %.010.i144, 1           ; 2 uses
  %.not.i147 = icmp eq ptr %i.gd, %3
  br i1 %.not.i147, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit149, label %.lr.ph.i143, !llvm.loop !1236

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit149: ; preds = %.lr.ph.i143, %middle.block256
  %.lcssa218 = phi i64 [ %i.ga, %middle.block256 ], [ %i.ge, %.lr.ph.i143 ]
  %i.gf = add i64 %.lcssa218, %.0.lcssa.i140      ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %.not9.i150 = icmp eq ptr %1, %i.gg
  br i1 %.not9.i150, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157, label %.lr.ph.i151.preheader

.lr.ph.i151.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit149
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.gf ; 4 uses
  %i.gi = shl i64 %i.q, 2
  %18 = sub i64 %i.y, %i.h
  %i.gj = add i64 %18, %i.gi
  %19 = add i64 %i.gj, -4                         ; 2 uses
  %i.gk = lshr i64 %19, 2
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check265 = icmp ult i64 %19, 52
  br i1 %min.iters.check265, label %.lr.ph.i151.preheader375, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i151.preheader
  %i.gm = shl i64 %i.gf, 2
  %i.gn = add i64 %i.gm, %i.ar
  %i.go = sub i64 %i.h, %i.gn
  %diff.check263 = icmp ugt i64 %i.go, -16
  br i1 %diff.check263, label %.lr.ph.i151.preheader375, label %vector.ph266

vector.ph266:                                     ; preds = %vector.memcheck262
  %n.vec267 = and i64 %i.gl, 9223372036854775804  ; 3 uses
  %i.gp = shl i64 %n.vec267, 2                    ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gh, i64 %i.gp
  %i.gr = getelementptr i8, ptr %1, i64 %i.gp
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next276, %vector.body268 ] ; 2 uses
  %reduced.phi367 = phi <2 x i64> [ zeroinitializer, %vector.ph266 ], [ %bin.rdx278, %vector.body268 ]
  %i.gs = shl i64 %index269, 2                    ; 2 uses
  %next.gep272 = getelementptr i8, ptr %i.gh, i64 %i.gs ; 2 uses
  %next.gep273 = getelementptr i8, ptr %1, i64 %i.gs ; 2 uses
  %i.gt = getelementptr i8, ptr %next.gep273, i64 8
  %wide.load274 = load <2 x i32>, ptr %next.gep273, align 4, !tbaa !322
  %wide.load275 = load <2 x i32>, ptr %i.gt, align 4, !tbaa !322
  %i.gu = getelementptr i8, ptr %next.gep272, i64 8
  store <2 x i32> %wide.load274, ptr %next.gep272, align 4, !tbaa !322
  store <2 x i32> %wide.load275, ptr %i.gu, align 4, !tbaa !322
  %bin.rdx278 = add <2 x i64> %reduced.phi367, splat (i64 2) ; 2 uses
  %index.next276 = add nuw i64 %index269, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next276, %n.vec267
  br i1 %i.gv, label %middle.block277, label %vector.body268, !llvm.loop !1237

middle.block277:                                  ; preds = %vector.body268
  %i.gw = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx278) ; 2 uses
  %cmp.n279 = icmp eq i64 %i.gl, %n.vec267
  br i1 %cmp.n279, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157, label %.lr.ph.i151.preheader375

.lr.ph.i151.preheader375:                         ; preds = %vector.memcheck262, %.lr.ph.i151.preheader, %middle.block277
  %.012.i152.ph = phi i64 [ 0, %vector.memcheck262 ], [ 0, %.lr.ph.i151.preheader ], [ %i.gw, %middle.block277 ]
  %.0711.i153.ph = phi ptr [ %i.gh, %vector.memcheck262 ], [ %i.gh, %.lr.ph.i151.preheader ], [ %i.gq, %middle.block277 ]
  %.0810.i154.ph = phi ptr [ %1, %vector.memcheck262 ], [ %1, %.lr.ph.i151.preheader ], [ %i.gr, %middle.block277 ]
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %.lr.ph.i151.preheader375, %.lr.ph.i151
  %.012.i152 = phi i64 [ %i.ha, %.lr.ph.i151 ], [ %.012.i152.ph, %.lr.ph.i151.preheader375 ]
  %.0711.i153 = phi ptr [ %i.gy, %.lr.ph.i151 ], [ %.0711.i153.ph, %.lr.ph.i151.preheader375 ] ; 2 uses
  %.0810.i154 = phi ptr [ %i.gz, %.lr.ph.i151 ], [ %.0810.i154.ph, %.lr.ph.i151.preheader375 ] ; 2 uses
  %i.gx = load i32, ptr %.0810.i154, align 4, !tbaa !322
  store i32 %i.gx, ptr %.0711.i153, align 4, !tbaa !322
  %i.gy = getelementptr inbounds nuw i8, ptr %.0711.i153, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.0810.i154, i64 4 ; 2 uses
  %i.ha = add nuw nsw i64 %.012.i152, 1           ; 2 uses
  %.not.i155 = icmp eq ptr %i.gz, %i.gg
  br i1 %.not.i155, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157, label %.lr.ph.i151, !llvm.loop !1238

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157: ; preds = %.lr.ph.i151, %middle.block277, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit149
  %.0.lcssa.i156 = phi i64 [ 0, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit149 ], [ %i.gw, %middle.block277 ], [ %i.ha, %.lr.ph.i151 ]
  %i.hb = add i64 %.0.lcssa.i156, %i.gf           ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.hb
  store i32 0, ptr %i.hc, align 4, !tbaa !322
  %i.hd = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.he = trunc i8 %i.hd to i1                    ; 2 uses
  %i.hf = load ptr, ptr %i.f, align 8
  %i.hg = select i1 %i.he, ptr %i.e, ptr %i.hf    ; 2 uses
  %i.hh = load i64, ptr %i.s, align 8
  %i.hi = select i1 %i.he, i64 5, i64 %i.hh       ; 2 uses
  %i.hj = icmp ne ptr %i.hg, null
  %i.hk = icmp ugt i64 %i.hi, 5
  %or.cond.i.i = and i1 %i.hj, %i.hk
  br i1 %or.cond.i.i, label %bb.s, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

bb.s:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157
  %i.hl = shl i64 %i.hi, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #27
  %.pre186 = load i8, ptr %0, align 8, !tbaa !35
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157, %bb.s
  %i.hm = phi i8 [ %i.hd, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit157 ], [ %.pre186, %bb.s ]
  %i.hn = trunc i8 %i.hm to i1
  %.pre187 = load i64, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !324
  %i.ho = shl i64 %i.hb, 1
  %i.hp = and i64 %.pre187, 1
  %i.hq = select i1 %i.hn, i64 0, i64 %i.hp
  %i.hr = or disjoint i64 %i.hq, %i.ho            ; 2 uses
  store i64 %i.hr, ptr %0, align 8
  %i.hs = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.hs, ptr %i.s, align 8, !tbaa !327
  %i.ht = trunc i64 %i.hr to i8
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.hu = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.hv = sub i64 %i.h, %i.hu                     ; 2 uses
  %i.hw = ashr exact i64 %i.hv, 2                 ; 3 uses
  %i.hx = icmp eq ptr %1, %i.x
  br i1 %i.hx, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit159, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hy = call ptr @wmemmove(ptr noundef %i.aq, ptr noundef %i.x, i64 noundef %i.hw) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit159

_ZNSt11char_traitsIwE4moveEPwPKwm.exit159:        ; preds = %bb.t, %bb.u
  %i.hz = getelementptr i8, ptr %i.aq, i64 %i.hv  ; 5 uses
  %i.ia = icmp eq i64 %i.q, %i.hw
  br i1 %i.ia, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit161, label %bb.v

bb.v:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit159
  %i.ib = sub i64 %i.q, %i.hw
  %i.ic = getelementptr i8, ptr %i.hz, i64 %i.k
  %i.id = call ptr @wmemmove(ptr noundef %i.ic, ptr noundef %1, i64 noundef %i.ib) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit161

_ZNSt11char_traitsIwE4moveEPwPKwm.exit161:        ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit159, %bb.v
  %20 = sub i64 %i.i, %i.j
  %21 = add i64 %20, -4                           ; 2 uses
  %i.ie = lshr i64 %21, 2
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %21, 76
  br i1 %min.iters.check, label %.lr.ph.i163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit161
  %i.ig = add i64 %i.ar, %i.h
  %i.ih = add i64 %i.hu, %i.j
  %i.ii = sub i64 %i.ih, %i.ig
  %diff.check = icmp ugt i64 %i.ii, -32
  br i1 %diff.check, label %.lr.ph.i163.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.if, 9223372036854775800     ; 3 uses
  %i.ij = shl i64 %n.vec, 2                       ; 2 uses
  %i.ik = getelementptr i8, ptr %i.hz, i64 %i.ij
  %i.il = getelementptr i8, ptr %2, i64 %i.ij
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.im = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.hz, i64 %i.im ; 2 uses
  %next.gep220 = getelementptr i8, ptr %2, i64 %i.im ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep220, align 4, !tbaa !322
  %wide.load221 = load <4 x i32>, ptr %i.in, align 4, !tbaa !322
  %i.io = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !322
  store <4 x i32> %wide.load221, ptr %i.io, align 4, !tbaa !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !1239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.if, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit169, label %.lr.ph.i163.preheader

.lr.ph.i163.preheader:                            ; preds = %vector.memcheck, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit161, %middle.block
  %.039.i165.ph = phi ptr [ %i.hz, %vector.memcheck ], [ %i.hz, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit161 ], [ %i.ik, %middle.block ]
  %.sroa.04.08.i166.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit161 ], [ %i.il, %middle.block ]
  br label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %.lr.ph.i163.preheader, %.lr.ph.i163
  %.039.i165 = phi ptr [ %i.ir, %.lr.ph.i163 ], [ %.039.i165.ph, %.lr.ph.i163.preheader ] ; 2 uses
  %.sroa.04.08.i166 = phi ptr [ %i.is, %.lr.ph.i163 ], [ %.sroa.04.08.i166.ph, %.lr.ph.i163.preheader ] ; 2 uses
  %i.iq = load i32, ptr %.sroa.04.08.i166, align 4, !tbaa !322
  store i32 %i.iq, ptr %.039.i165, align 4, !tbaa !322
  %i.ir = getelementptr inbounds nuw i8, ptr %.039.i165, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i166, i64 4 ; 2 uses
  %.not.i167 = icmp eq ptr %i.is, %3
  br i1 %.not.i167, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit169, label %.lr.ph.i163, !llvm.loop !1240

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit169: ; preds = %.lr.ph.i163, %middle.block
  %i.it = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ao
  store i32 0, ptr %i.it, align 4, !tbaa !322
  %i.iu = load i8, ptr %0, align 8, !tbaa !35
  %i.iv = trunc i8 %i.iu to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !324
  %i.iw = shl i64 %i.ao, 1
  %i.ix = and i64 %.pre, 1
  %i.iy = select i1 %i.iv, i64 0, i64 %i.ix
  %i.iz = or disjoint i64 %i.iy, %i.iw            ; 2 uses
  store i64 %i.iz, ptr %0, align 8
  %i.ja = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.ja, ptr %i.s, align 8, !tbaa !327
  %i.jb = trunc i64 %i.iz to i8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit169, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit133
  %.pre189 = phi ptr [ %i.aq, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.aq, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit169 ], [ %.pre189.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit133 ]
  %.pre188 = phi i8 [ %i.ht, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.jb, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit169 ], [ %.pre188.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit133 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre192 = trunc i8 %.pre188 to i1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.a
  %.pre-phi = phi i1 [ %.pre192, %bb.w ], [ %i.d, %bb.a ]
  %i.jc = phi ptr [ %.pre189, %bb.w ], [ %i.g, %bb.a ]
  %i.jd = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = sub i64 %i.h, %i.je
  %i.jg = select i1 %.pre-phi, ptr %i.e, ptr %i.jc
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 %i.jf
  ret ptr %i.jh
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE10deallocateEPcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !634  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !636  ; 2 uses
  %i.h = icmp ne ptr %i.e, null
  %i.i = icmp ugt i64 %i.g, 23
  %or.cond.i = and i1 %i.h, %i.i
  br i1 %or.cond.i, label %bb.c, label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE10deallocateEPcm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.g) #27
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE10deallocateEPcm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvE10deallocateEPcm.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv() local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvED2Ev.exit:
  %0 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 12 uses
  %1 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 16 uses
  %2 = alloca %"class.boost::container::test::propagation_test_allocator", align 4 ; 6 uses
  %3 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 11 uses
  %4 = alloca %"class.boost::container::test::alloc_propagate_wrapper", align 8 ; 19 uses
  store i32 112, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EE10unique_id_E, align 4, !tbaa !43
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.480, ptr noundef nonnull @.str.481, i32 noundef 325, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.511, ptr noundef nonnull @.str.481, i32 noundef 326, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.483, ptr noundef nonnull @.str.481, i32 noundef 327, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext true) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.484, ptr noundef nonnull @.str.481, i32 noundef 328, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext true) ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.485, ptr noundef nonnull @.str.481, i32 noundef 329, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext true) ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.486, ptr noundef nonnull @.str.481, i32 noundef 330, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store i32 1000, ptr %0, align 8, !tbaa !628
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i8 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %i.i, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store i32 223, ptr @_ZN5boost9container4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EE10unique_id_E, align 4, !tbaa !43
  store i32 223, ptr %2, align 4, !tbaa !628
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  invoke void @_ZN5boost9container12basic_stringIcSt11char_traitsIcENS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvEC2ERKS7_RKS6_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(24) %2)
          to label %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEC2ERKS6_RKS4_.exit unwind label %bb.x

_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEC2ERKS6_RKS4_.exit: ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.k = load i32, ptr %1, align 8, !tbaa !628
  %i.l = icmp eq i32 %i.k, 223
  %i.m = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.488, ptr noundef nonnull @.str.481, i32 noundef 340, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext %i.l)
          to label %bb.a unwind label %bb.y       ; 0 uses

bb.a:                                             ; preds = %_ZN5boost9container4test23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEC2ERKS6_RKS4_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !630
  %i.p = icmp ne i32 %i.o, 0
  %i.q = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.512, ptr noundef nonnull @.str.481, i32 noundef 341, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext %i.p)
          to label %bb.b unwind label %bb.y       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !637
  %i.t = icmp eq i32 %i.s, 0
  %i.u = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.481, i32 noundef 342, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext %i.t)
          to label %bb.c unwind label %bb.y       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !631
  %i.x = icmp eq i32 %i.w, 0
  %i.y = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.490, ptr noundef nonnull @.str.481, i32 noundef 343, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext %i.x)
          to label %bb.d unwind label %bb.y       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !632
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.491, ptr noundef nonnull @.str.481, i32 noundef 344, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext %i.ab)
          to label %bb.e unwind label %bb.y       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !633
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.492, ptr noundef nonnull @.str.481, i32 noundef 345, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test38test_propagate_allocator_allocator_argINS1_23alloc_propagate_wrapperIcNS1_26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEE22boost_container_stringEEEEvv, i1 noundef zeroext %i.af)
          to label %bb.f unwind label %bb.y       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !35
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %_ZN5boost9container3dtl17basic_string_baseINS0_4test26propagation_test_allocatorIcLb1ELb1ELb1ELb1ELb1EEEvED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !634 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !636 ; 2 uses
end_hunk_2
