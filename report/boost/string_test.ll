Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7796
inline.NumDeleted: 1797
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6appendEPKw:bb.a
bb.a:
  %i.a = tail call noundef i64 @wcslen(ptr noundef %1) #28
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  %i.c = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = lshr i8 %i.c, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %0, align 8
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.l
  %i.n = select i1 %i.d, ptr %i.h, ptr %i.m
  %i.o = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIPKwEEPwS7_T_S9_PNS_11move_detail13disable_if_orIvNSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEESI_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %1, ptr noundef %i.b, ptr noundef null) ; 0 uses
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
  store ptr null, ptr %i.b, align 8, !tbaa !658
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
  br i1 %i.bm, label %middle.block293, label %vector.body286, !llvm.loop !1083

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
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1084

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
  %i.bx = add i64 %i.av, %i.i
  %6 = add i64 %i.bx, -8
  %i.by = add i64 %5, %i.j
  %i.bz = sub i64 %6, %i.by                       ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.bz, 60
  br i1 %min.iters.check300, label %.lr.ph.i121.preheader334, label %vector.memcheck297

vector.memcheck297:                               ; preds = %.lr.ph.i121.preheader
  %i.cc = add i64 %i.av, %i.y
  %i.cd = sub i64 %i.j, %i.cc
  %diff.check298 = icmp ugt i64 %i.cd, -32
  br i1 %diff.check298, label %.lr.ph.i121.preheader334, label %vector.ph301

vector.ph301:                                     ; preds = %vector.memcheck297
  %n.vec302 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.ce = shl i64 %n.vec302, 2                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bu, i64 %i.ce
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.ch = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.bu, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep306, i64 16
  %wide.load307 = load <4 x i32>, ptr %next.gep306, align 4, !tbaa !322
  %wide.load308 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !322
  %i.cj = getelementptr i8, ptr %next.gep305, i64 16
  store <4 x i32> %wide.load307, ptr %next.gep305, align 4, !tbaa !322
  store <4 x i32> %wide.load308, ptr %i.cj, align 4, !tbaa !322
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.ck, label %middle.block310, label %vector.body303, !llvm.loop !1085

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.cb, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader334

.lr.ph.i121.preheader334:                         ; preds = %vector.memcheck297, %.lr.ph.i121.preheader, %middle.block310
  %.0711.i123.ph = phi ptr [ %i.bw, %vector.memcheck297 ], [ %i.bw, %.lr.ph.i121.preheader ], [ %i.cf, %middle.block310 ]
  %.0810.i124.ph = phi ptr [ %i.bu, %vector.memcheck297 ], [ %i.bu, %.lr.ph.i121.preheader ], [ %i.cg, %middle.block310 ]
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.preheader334, %.lr.ph.i121
  %.0711.i123 = phi ptr [ %i.cm, %.lr.ph.i121 ], [ %.0711.i123.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %.0810.i124 = phi ptr [ %i.cn, %.lr.ph.i121 ], [ %.0810.i124.ph, %.lr.ph.i121.preheader334 ] ; 2 uses
  %i.cl = load i32, ptr %.0810.i124, align 4, !tbaa !322
  store i32 %i.cl, ptr %.0711.i123, align 4, !tbaa !322
  %i.cm = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4 ; 2 uses
  %.not.i125 = icmp eq ptr %i.cn, %3
  br i1 %.not.i125, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121, !llvm.loop !1086

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i121, %middle.block310, %bb.l
  %i.co = sub i64 %i.l, %i.ax
  %i.cp = add i64 %i.co, %i.q                     ; 4 uses
  %i.cq = load i8, ptr %0, align 8, !tbaa !35
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %i.cs = trunc i64 %i.cp to i8
  %i.ct = shl i8 %i.cs, 1
  %i.cu = or disjoint i8 %i.ct, 1
  store i8 %i.cu, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %i.cv = load i64, ptr %0, align 8
  %i.cw = shl i64 %i.cp, 1
  %i.cx = and i64 %i.cv, 1
  %i.cy = or disjoint i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i127 = icmp eq ptr %1, %i.bw
  br i1 %.not9.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.cp ; 4 uses
  %i.da = shl i64 %i.q, 2
  %i.db = add i64 %i.da, %i.y
  %i.dc = sub i64 %i.db, %i.h                     ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.dc, 76
  br i1 %min.iters.check317, label %.lr.ph.i128.preheader333, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.i128.preheader
  %i.df = shl i64 %i.cp, 2
  %i.dg = add i64 %i.df, %i.y
  %i.dh = sub i64 %i.h, %i.dg
  %diff.check315 = icmp ugt i64 %i.dh, -32
  br i1 %diff.check315, label %.lr.ph.i128.preheader333, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck314
  %n.vec319 = and i64 %i.de, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec319, 2                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cz, i64 %i.di
  %i.dk = getelementptr i8, ptr %1, i64 %i.di
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 2 uses
  %i.dl = shl i64 %index321, 2                    ; 2 uses
  %next.gep322 = getelementptr i8, ptr %i.cz, i64 %i.dl ; 2 uses
  %next.gep323 = getelementptr i8, ptr %1, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load324 = load <4 x i32>, ptr %next.gep323, align 4, !tbaa !322
  %wide.load325 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !322
  %i.dn = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %wide.load324, ptr %next.gep322, align 4, !tbaa !322
  store <4 x i32> %wide.load325, ptr %i.dn, align 4, !tbaa !322
  %index.next326 = add nuw i64 %index321, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.do, label %middle.block327, label %vector.body320, !llvm.loop !1087

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.de, %n.vec319
  br i1 %cmp.n328, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134, label %.lr.ph.i128.preheader333

.lr.ph.i128.preheader333:                         ; preds = %vector.memcheck314, %.lr.ph.i128.preheader, %middle.block327
  %.0711.i130.ph = phi ptr [ %i.cz, %vector.memcheck314 ], [ %i.cz, %.lr.ph.i128.preheader ], [ %i.dj, %middle.block327 ]
  %.0810.i131.ph = phi ptr [ %1, %vector.memcheck314 ], [ %1, %.lr.ph.i128.preheader ], [ %i.dk, %middle.block327 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader333, %.lr.ph.i128
  %.0711.i130 = phi ptr [ %i.dq, %.lr.ph.i128 ], [ %.0711.i130.ph, %.lr.ph.i128.preheader333 ] ; 2 uses
  %.0810.i131 = phi ptr [ %i.dr, %.lr.ph.i128 ], [ %.0810.i131.ph, %.lr.ph.i128.preheader333 ] ; 3 uses
  %i.dp = load i32, ptr %.0810.i131, align 4, !tbaa !322
  store i32 %i.dp, ptr %.0711.i130, align 4, !tbaa !322
  %i.dq = getelementptr inbounds nuw i8, ptr %.0711.i130, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.0810.i131, i64 4
  %.not.i132 = icmp eq ptr %.0810.i131, %i.bv
  br i1 %.not.i132, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134, label %.lr.ph.i128, !llvm.loop !1088

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134: ; preds = %.lr.ph.i128, %middle.block327, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.ds = icmp eq i64 %i.bt, 0
  br i1 %i.ds, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134
  %i.dt = ashr exact i64 %i.bt, 2
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split: ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, %bb.o
  %.sink = phi i64 [ %i.dt, %bb.o ], [ %i.l, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit ], [ %i.l, %bb.k ]
  %i.du = call ptr @wmemcpy(ptr noundef %1, ptr noundef %2, i64 noundef %.sink) #27 ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135: ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135.sink.split, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit134
  %.0108 = add i64 %i.q, %i.l                     ; 3 uses
  %i.dv = load i8, ptr %0, align 8, !tbaa !35
  %i.dw = trunc i8 %i.dv to i1
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135
  %i.dx = trunc i64 %.0108 to i8
  %i.dy = shl i8 %i.dx, 1
  %i.dz = or disjoint i8 %i.dy, 1
  store i8 %i.dz, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136

bb.q:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyEPKwS6_Pw.exit135
  %i.ea = load i64, ptr %0, align 8
  %i.eb = shl i64 %.0108, 1
  %i.ec = and i64 %i.ea, 1
  %i.ed = or disjoint i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit136: ; preds = %bb.p, %bb.q
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.x, i64 %.0108
  store i32 0, ptr %i.ee, align 4, !tbaa !322
  %.pre188.pre = load i8, ptr %0, align 8, !tbaa !35
  %.pre189.pre = load ptr, ptr %i.f, align 8
  br label %bb.x

bb.r:                                             ; preds = %_ZNK5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE12next_storageEmm.exit
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !658
  %.not117 = icmp eq ptr %i.ef, null
  br i1 %.not117, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %.not9.i137 = icmp eq ptr %i.x, %1
  br i1 %.not9.i137, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit144, label %.lr.ph.i138.preheader

.lr.ph.i138.preheader:                            ; preds = %bb.s
  %i.eg = add i64 %i.h, -4
  %i.eh = sub i64 %i.eg, %i.y                     ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.eh, 28
  %i.ek = sub i64 %i.y, %i.ar
  %diff.check223 = icmp ugt i64 %i.ek, -16
  %or.cond = or i1 %min.iters.check225, %diff.check223
  br i1 %or.cond, label %.lr.ph.i138.preheader338, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i138.preheader
  %n.vec227 = and i64 %i.ej, 9223372036854775804  ; 3 uses
  %i.el = shl i64 %n.vec227, 2                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN5boost9container12vec_iteratorIPNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEELb0EEEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_:bb.a
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
define linkonce_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvEC2ENS4_9reserve_tEmRKNS0_13new_allocatorIwEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1                            ; 2 uses
  store i8 1, ptr %0, align 8
  %.not.i.i = icmp ugt i64 %i.a, 2305843009213693950
  br i1 %.not.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %i.a, 6            ; 2 uses
  br i1 %i.b, label %._crit_edge, label %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i.i.i

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre4 = load i64, ptr %0, align 8
  %i.c = lshr i64 %.pre4, 1
  br label %bb.i

_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i.i.i: ; preds = %bb.b
  %i.d = add nuw nsw i64 %1, 2                    ; 2 uses
  %i.e = shl nuw nsw i64 %i.d, 2
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #31
          to label %_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw.exit.i.i unwind label %bb.c ; 2 uses

bb.c:                                             ; preds = %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #27 ; 0 uses
  invoke void @__cxa_rethrow() #26
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #30
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw.exit.i.i: ; preds = %_ZN5boost9container3dtl21operator_new_allocateIwEEPT_m.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.m, align 8, !tbaa !324
  store i64 0, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.n, align 8, !tbaa !327
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.453) #26
  unreachable

bb.i:                                             ; preds = %._crit_edge, %_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw.exit.i.i
  %i.o = phi i64 [ 0, %_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw.exit.i.i ], [ %i.c, %._crit_edge ]
  %i.p = phi ptr [ %i.f, %_ZN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorIwEELj1EE18allocation_commandERS4_jmRmRPw.exit.i.i ], [ %.pre, %._crit_edge ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  %i.s = select i1 %i.b, ptr %i.q, ptr %i.r
  store i32 0, ptr %i.s, align 4, !tbaa !322
  ret void
}

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
  store ptr null, ptr %i.b, align 8, !tbaa !658
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
  %i.ay = shl i64 %3, 2
  %7 = shl i64 %5, 2
  %8 = add i64 %i.ay, -4
  %i.az = sub i64 %8, %7                          ; 2 uses
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check300 = icmp ult i64 %i.az, 28
  br i1 %min.iters.check300, label %.lr.ph.i.preheader376, label %vector.ph301

vector.ph301:                                     ; preds = %.lr.ph.i.preheader
  %n.vec302 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.bc = shl i64 %n.vec302, 2                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bc
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %i.bf = shl i64 %index304, 2                    ; 2 uses
  %next.gep305 = getelementptr i8, ptr %i.av, i64 %i.bf ; 2 uses
  %next.gep306 = getelementptr i8, ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep305, i64 4
  %i.bh = getelementptr i8, ptr %next.gep306, i64 4
  %i.bi = getelementptr i8, ptr %next.gep306, i64 20
  %wide.load307 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !322
  %wide.load308 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !322
  %i.bj = getelementptr i8, ptr %next.gep305, i64 20
  store <4 x i32> %wide.load307, ptr %i.bg, align 4, !tbaa !322
  store <4 x i32> %wide.load308, ptr %i.bj, align 4, !tbaa !322
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.bk, label %middle.block310, label %vector.body303, !llvm.loop !1239

middle.block310:                                  ; preds = %vector.body303
  %cmp.n311 = icmp eq i64 %i.bb, %n.vec302
  br i1 %cmp.n311, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i.preheader376

.lr.ph.i.preheader376:                            ; preds = %.lr.ph.i.preheader, %middle.block310
  %.0711.i.pn.ph = phi ptr [ %i.av, %.lr.ph.i.preheader ], [ %i.bd, %middle.block310 ]
  %.0810.i.pn.ph = phi ptr [ %i.ax, %.lr.ph.i.preheader ], [ %i.be, %middle.block310 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader376, %.lr.ph.i
  %.0711.i.pn = phi ptr [ %.0711.i, %.lr.ph.i ], [ %.0711.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0810.i.pn = phi ptr [ %.0810.i, %.lr.ph.i ], [ %.0810.i.pn.ph, %.lr.ph.i.preheader376 ]
  %.0711.i = getelementptr i8, ptr %.0711.i.pn, i64 4 ; 2 uses
  %.0810.i = getelementptr i8, ptr %.0810.i.pn, i64 4 ; 3 uses
  %i.bl = load i32, ptr %.0810.i, align 4, !tbaa !322
  store i32 %i.bl, ptr %.0711.i, align 4, !tbaa !322
  %.not.i = icmp eq ptr %.0810.i, %i.av
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1240

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block310, %bb.j
  %i.bm = sub nuw i64 %i.au, %i.i
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %i.bp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.bq = call ptr @wmemmove(ptr noundef nonnull %i.bp, ptr noundef %1, i64 noundef %i.bn) #27 ; 0 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit
  %.pre.i = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.i, 8
  br i1 %min.iters.check315, label %.lr.ph.i126.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.preheader.i
  %n.vec317 = and i64 %i.i, -8                    ; 4 uses
  %i.br = shl i64 %n.vec317, 2
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = sub i64 %3, %n.vec317
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %.pre.i, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next323, %vector.body320 ] ; 2 uses
  %i.bu = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %1, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep322, i64 16
  store <4 x i32> %broadcast.splat319, ptr %next.gep322, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat319, ptr %i.bv, align 4, !tbaa !322
  %index.next323 = add nuw i64 %index321, 8       ; 2 uses
  %i.bw = icmp eq i64 %index.next323, %n.vec317
  br i1 %i.bw, label %middle.block324, label %vector.body320, !llvm.loop !1241

middle.block324:                                  ; preds = %vector.body320
  %cmp.n325 = icmp eq i64 %i.i, %n.vec317
  br i1 %cmp.n325, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block324
  %.06.i.ph = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.bs, %middle.block324 ]
  %.sroa.2.05.i.ph = phi i64 [ %3, %.lr.ph.preheader.i ], [ %i.bt, %middle.block324 ]
  br label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126
  %.06.i = phi ptr [ %i.by, %.lr.ph.i126 ], [ %.06.i.ph, %.lr.ph.i126.preheader ] ; 2 uses
  %.sroa.2.05.i = phi i64 [ %i.bx, %.lr.ph.i126 ], [ %.sroa.2.05.i.ph, %.lr.ph.i126.preheader ]
  store i32 %.pre.i, ptr %.06.i, align 4, !tbaa !322
  %i.bx = add i64 %.sroa.2.05.i, -1               ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %.not.i127 = icmp eq i64 %i.bx, %5
  br i1 %.not.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyINS0_17constant_iteratorIwEEPwEEvT_S9_T0_.exit, label %.lr.ph.i126, !llvm.loop !1242

bb.l:                                             ; preds = %bb.i
  %.neg = xor i64 %i.au, -1
  %i.bz = add i64 %3, %.neg                       ; 4 uses
  %i.ca = getelementptr [4 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 4      ; 4 uses
  %.not6.i = icmp eq i64 %i.bz, %5
  br i1 %.not6.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit, label %.lr.ph.preheader.i128

.lr.ph.preheader.i128:                            ; preds = %bb.l
  %.pre.i129 = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %i.cc = add i64 %i.at, %3
  %i.cd = xor i64 %i.n, -1
  %i.ce = add i64 %i.cc, %i.cd
  %i.cf = sub i64 %i.ce, %5                       ; 3 uses
  %min.iters.check329 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check329, label %.lr.ph.i130.preheader, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph.preheader.i128
  %n.vec331 = and i64 %i.cf, -8                   ; 4 uses
  %i.cg = shl i64 %n.vec331, 2
  %i.ch = getelementptr i8, ptr %i.cb, i64 %i.cg
  %i.ci = sub i64 %i.bz, %n.vec331
  %broadcast.splatinsert332 = insertelement <4 x i32> poison, i32 %.pre.i129, i64 0
  %broadcast.splat333 = shufflevector <4 x i32> %broadcast.splatinsert332, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph330
  %index335 = phi i64 [ 0, %vector.ph330 ], [ %index.next337, %vector.body334 ] ; 2 uses
  %i.cj = shl i64 %index335, 2
  %next.gep336 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep336, i64 16
  store <4 x i32> %broadcast.splat333, ptr %next.gep336, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat333, ptr %i.ck, align 4, !tbaa !322
  %index.next337 = add nuw i64 %index335, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next337, %n.vec331
  br i1 %i.cl, label %middle.block338, label %vector.body334, !llvm.loop !1243

middle.block338:                                  ; preds = %vector.body334
  %cmp.n339 = icmp eq i64 %i.cf, %n.vec331
  br i1 %cmp.n339, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit, label %.lr.ph.i130.preheader

.lr.ph.i130.preheader:                            ; preds = %.lr.ph.preheader.i128, %middle.block338
  %.038.i.ph = phi ptr [ %i.cb, %.lr.ph.preheader.i128 ], [ %i.ch, %middle.block338 ]
  %.sroa.2.07.i.ph = phi i64 [ %i.bz, %.lr.ph.preheader.i128 ], [ %i.ci, %middle.block338 ]
  br label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.preheader, %.lr.ph.i130
  %.038.i = phi ptr [ %i.cm, %.lr.ph.i130 ], [ %.038.i.ph, %.lr.ph.i130.preheader ] ; 2 uses
  %.sroa.2.07.i = phi i64 [ %i.cn, %.lr.ph.i130 ], [ %.sroa.2.07.i.ph, %.lr.ph.i130.preheader ]
  store i32 %.pre.i129, ptr %.038.i, align 4, !tbaa !322
  %i.cm = getelementptr inbounds nuw i8, ptr %.038.i, i64 4
  %i.cn = add i64 %.sroa.2.07.i, -1               ; 2 uses
  %.not.i131 = icmp eq i64 %i.cn, %5
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit, label %.lr.ph.i130, !llvm.loop !1244

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i130, %middle.block338, %bb.l
  %i.co = sub i64 %i.i, %i.au
  %i.cp = add i64 %i.co, %i.n                     ; 4 uses
  %i.cq = load i8, ptr %0, align 8, !tbaa !35
  %i.cr = trunc i8 %i.cq to i1
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit
  %i.cs = trunc i64 %i.cp to i8
  %i.ct = shl i8 %i.cs, 1
  %i.cu = or disjoint i8 %i.ct, 1
  store i8 %i.cu, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit
  %i.cv = load i64, ptr %0, align 8
  %i.cw = shl i64 %i.cp, 1
  %i.cx = and i64 %i.cv, 1
  %i.cy = or disjoint i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i133 = icmp eq ptr %1, %i.cb
  br i1 %.not9.i133, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i134.preheader

.lr.ph.i134.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cp ; 4 uses
  %i.da = shl i64 %i.n, 2
  %i.db = add i64 %i.da, %i.v
  %i.dc = sub i64 %i.db, %i.h                     ; 2 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check345 = icmp ult i64 %i.dc, 76
  br i1 %min.iters.check345, label %.lr.ph.i134.preheader374, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i134.preheader
  %i.df = shl i64 %i.cp, 2
  %i.dg = add i64 %i.df, %i.v
  %i.dh = sub i64 %i.h, %i.dg
  %diff.check343 = icmp ugt i64 %i.dh, -32
  br i1 %diff.check343, label %.lr.ph.i134.preheader374, label %vector.ph346

end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEES8_PKwT_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESP_E4typeE:bb.a
  %i.x = select i1 %i.r, ptr %i.e, ptr %i.g       ; 16 uses
  %i.y = ptrtoaddr ptr %i.x to i64                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 0, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !658
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
  br i1 %i.bm, label %middle.block294, label %vector.body287, !llvm.loop !1259

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
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPwS6_EEmT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !1260

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
  %i.bt = add i64 %i.i, -4
  %i.bu = sub i64 %i.bt, %i.j                     ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check301 = icmp ult i64 %i.bu, 44
  %i.bx = sub i64 %i.j, %i.h
  %diff.check299 = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check301, %diff.check299
  br i1 %or.cond, label %.lr.ph.i115.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit
  %n.vec303 = and i64 %i.bw, 9223372036854775800  ; 3 uses
  %i.by = shl i64 %n.vec303, 2                    ; 2 uses
  %i.bz = getelementptr i8, ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %2, i64 %i.by
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 2 uses
  %i.cb = shl i64 %index305, 2                    ; 2 uses
  %next.gep306 = getelementptr i8, ptr %1, i64 %i.cb ; 2 uses
  %next.gep307 = getelementptr i8, ptr %2, i64 %i.cb ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load308 = load <4 x i32>, ptr %next.gep307, align 4, !tbaa !322
  %wide.load309 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !322
  %i.cd = getelementptr i8, ptr %next.gep306, i64 16
  store <4 x i32> %wide.load308, ptr %next.gep306, align 4, !tbaa !322
  store <4 x i32> %wide.load309, ptr %i.cd, align 4, !tbaa !322
  %index.next310 = add nuw i64 %index305, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.ce, label %middle.block311, label %vector.body304, !llvm.loop !1261

middle.block311:                                  ; preds = %vector.body304
  %cmp.n312 = icmp eq i64 %i.bw, %n.vec303
  br i1 %cmp.n312, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i115.preheader

.lr.ph.i115.preheader:                            ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit, %middle.block311
  %.07.i.ph = phi ptr [ %1, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.bz, %middle.block311 ]
  %.sroa.02.06.i.ph = phi ptr [ %2, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit ], [ %i.ca, %middle.block311 ]
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.lr.ph.i115.preheader, %.lr.ph.i115
  %.07.i = phi ptr [ %i.ch, %.lr.ph.i115 ], [ %.07.i.ph, %.lr.ph.i115.preheader ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %i.cg, %.lr.ph.i115 ], [ %.sroa.02.06.i.ph, %.lr.ph.i115.preheader ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.02.06.i, align 4, !tbaa !322
  store i32 %i.cf, ptr %.07.i, align 4, !tbaa !322
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.07.i, i64 4
  %.not.i116 = icmp eq ptr %i.cg, %3
  br i1 %.not.i116, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i115, !llvm.loop !1262

bb.l:                                             ; preds = %bb.i
  %.idx178 = shl i64 %i.ax, 2
  %i.ci = add i64 %.idx178, 4                     ; 2 uses
  %i.cj = getelementptr i8, ptr %2, i64 %i.ci     ; 6 uses
  %i.ck = getelementptr [4 x i8], ptr %i.x, i64 %i.q ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 4      ; 5 uses
  %.not7.i = icmp eq ptr %i.cj, %3
  br i1 %.not7.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i117.preheader

.lr.ph.i117.preheader:                            ; preds = %bb.l
  %5 = shl i64 %i.q, 2
  %i.cm = add i64 %i.av, %i.i
  %6 = add i64 %i.cm, -8
  %i.cn = add i64 %5, %i.j
  %i.co = sub i64 %6, %i.cn                       ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %min.iters.check318 = icmp ult i64 %i.co, 60
  br i1 %min.iters.check318, label %.lr.ph.i117.preheader372, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i117.preheader
  %i.cr = add i64 %i.av, %i.y
  %i.cs = sub i64 %i.j, %i.cr
  %diff.check316 = icmp ugt i64 %i.cs, -32
  br i1 %diff.check316, label %.lr.ph.i117.preheader372, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck315
  %n.vec320 = and i64 %i.cq, 9223372036854775800  ; 3 uses
  %i.ct = shl i64 %n.vec320, 2                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cl, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cj, i64 %i.ct
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.cw = shl i64 %index322, 2                    ; 2 uses
  %next.gep323 = getelementptr i8, ptr %i.cl, i64 %i.cw ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.cj, i64 %i.cw ; 2 uses
  %i.cx = getelementptr i8, ptr %next.gep324, i64 16
  %wide.load325 = load <4 x i32>, ptr %next.gep324, align 4, !tbaa !322
  %wide.load326 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !322
  %i.cy = getelementptr i8, ptr %next.gep323, i64 16
  store <4 x i32> %wide.load325, ptr %next.gep323, align 4, !tbaa !322
  store <4 x i32> %wide.load326, ptr %i.cy, align 4, !tbaa !322
  %index.next327 = add nuw i64 %index322, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.cz, label %middle.block328, label %vector.body321, !llvm.loop !1263

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.cq, %n.vec320
  br i1 %cmp.n329, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i117.preheader372

.lr.ph.i117.preheader372:                         ; preds = %vector.memcheck315, %.lr.ph.i117.preheader, %middle.block328
  %.039.i.ph = phi ptr [ %i.cl, %vector.memcheck315 ], [ %i.cl, %.lr.ph.i117.preheader ], [ %i.cu, %middle.block328 ]
  %.sroa.04.08.i.ph = phi ptr [ %i.cj, %vector.memcheck315 ], [ %i.cj, %.lr.ph.i117.preheader ], [ %i.cv, %middle.block328 ]
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117.preheader372, %.lr.ph.i117
  %.039.i = phi ptr [ %i.db, %.lr.ph.i117 ], [ %.039.i.ph, %.lr.ph.i117.preheader372 ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %i.dc, %.lr.ph.i117 ], [ %.sroa.04.08.i.ph, %.lr.ph.i117.preheader372 ] ; 2 uses
  %i.da = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !322
  store i32 %i.da, ptr %.039.i, align 4, !tbaa !322
  %i.db = getelementptr inbounds nuw i8, ptr %.039.i, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 4 ; 2 uses
  %.not.i118 = icmp eq ptr %i.dc, %3
  br i1 %.not.i118, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit, label %.lr.ph.i117, !llvm.loop !1264

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit: ; preds = %.lr.ph.i117, %middle.block328, %bb.l
  %i.dd = sub i64 %i.l, %i.ax
  %i.de = add i64 %i.dd, %i.q                     ; 4 uses
  %i.df = load i8, ptr %0, align 8, !tbaa !35
  %i.dg = trunc i8 %i.df to i1
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit
  %i.dh = trunc i64 %i.de to i8
  %i.di = shl i8 %i.dh, 1
  %i.dj = or disjoint i8 %i.di, 1
  store i8 %i.dj, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEmT_SE_T0_.exit
  %i.dk = load i64, ptr %0, align 8
  %i.dl = shl i64 %i.de, 1
  %i.dm = and i64 %i.dk, 1
  %i.dn = or disjoint i64 %i.dm, %i.dl
  store i64 %i.dn, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.m, %bb.n
  %.not9.i120 = icmp eq ptr %1, %i.cl
  br i1 %.not9.i120, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader

.lr.ph.i121.preheader:                            ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %i.do = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.de ; 4 uses
  %i.dp = shl i64 %i.q, 2
  %i.dq = add i64 %i.dp, %i.y
  %i.dr = sub i64 %i.dq, %i.h                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check335 = icmp ult i64 %i.dr, 76
  br i1 %min.iters.check335, label %.lr.ph.i121.preheader371, label %vector.memcheck332

vector.memcheck332:                               ; preds = %.lr.ph.i121.preheader
  %i.du = shl i64 %i.de, 2
  %i.dv = add i64 %i.du, %i.y
  %i.dw = sub i64 %i.h, %i.dv
  %diff.check333 = icmp ugt i64 %i.dw, -32
  br i1 %diff.check333, label %.lr.ph.i121.preheader371, label %vector.ph336

vector.ph336:                                     ; preds = %vector.memcheck332
  %n.vec337 = and i64 %i.dt, 9223372036854775800  ; 3 uses
  %i.dx = shl i64 %n.vec337, 2                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dx
  %i.dz = getelementptr i8, ptr %1, i64 %i.dx
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph336
  %index339 = phi i64 [ 0, %vector.ph336 ], [ %index.next344, %vector.body338 ] ; 2 uses
  %i.ea = shl i64 %index339, 2                    ; 2 uses
  %next.gep340 = getelementptr i8, ptr %i.do, i64 %i.ea ; 2 uses
  %next.gep341 = getelementptr i8, ptr %1, i64 %i.ea ; 2 uses
  %i.eb = getelementptr i8, ptr %next.gep341, i64 16
  %wide.load342 = load <4 x i32>, ptr %next.gep341, align 4, !tbaa !322
  %wide.load343 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !322
  %i.ec = getelementptr i8, ptr %next.gep340, i64 16
  store <4 x i32> %wide.load342, ptr %next.gep340, align 4, !tbaa !322
  store <4 x i32> %wide.load343, ptr %i.ec, align 4, !tbaa !322
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.ed, label %middle.block345, label %vector.body338, !llvm.loop !1265

middle.block345:                                  ; preds = %vector.body338
  %cmp.n346 = icmp eq i64 %i.dt, %n.vec337
  br i1 %cmp.n346, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121.preheader371

.lr.ph.i121.preheader371:                         ; preds = %vector.memcheck332, %.lr.ph.i121.preheader, %middle.block345
  %.0711.i123.ph = phi ptr [ %i.do, %vector.memcheck332 ], [ %i.do, %.lr.ph.i121.preheader ], [ %i.dy, %middle.block345 ]
  %.0810.i124.ph = phi ptr [ %1, %vector.memcheck332 ], [ %1, %.lr.ph.i121.preheader ], [ %i.dz, %middle.block345 ]
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121.preheader371, %.lr.ph.i121
  %.0711.i123 = phi ptr [ %i.ef, %.lr.ph.i121 ], [ %.0711.i123.ph, %.lr.ph.i121.preheader371 ] ; 2 uses
  %.0810.i124 = phi ptr [ %i.eg, %.lr.ph.i121 ], [ %.0810.i124.ph, %.lr.ph.i121.preheader371 ] ; 3 uses
  %i.ee = load i32, ptr %.0810.i124, align 4, !tbaa !322
  store i32 %i.ee, ptr %.0711.i123, align 4, !tbaa !322
  %i.ef = getelementptr inbounds nuw i8, ptr %.0711.i123, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.0810.i124, i64 4
  %.not.i125 = icmp eq ptr %.0810.i124, %i.ck
  br i1 %.not.i125, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit, label %.lr.ph.i121, !llvm.loop !1266

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit: ; preds = %.lr.ph.i121, %middle.block345, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit
  %.not5.i127 = icmp eq i64 %i.ci, 0
  br i1 %.not5.i127, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %i.eh = and i64 %i.ax, 4611686018427387903      ; 2 uses
  %i.ei = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %min.iters.check352 = icmp samesign ult i64 %i.eh, 11
  %i.ej = sub i64 %i.j, %i.h
  %diff.check350 = icmp ugt i64 %i.ej, -32
  %or.cond368 = or i1 %min.iters.check352, %diff.check350
  br i1 %or.cond368, label %.lr.ph.i128.preheader370, label %vector.ph353

vector.ph353:                                     ; preds = %.lr.ph.i128.preheader
  %n.vec354 = and i64 %i.ei, 9223372036854775800  ; 3 uses
  %i.ek = shl i64 %n.vec354, 2                    ; 2 uses
  %i.el = getelementptr i8, ptr %1, i64 %i.ek
  %i.em = getelementptr i8, ptr %2, i64 %i.ek
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next361, %vector.body355 ] ; 2 uses
  %i.en = shl i64 %index356, 2                    ; 2 uses
  %next.gep357 = getelementptr i8, ptr %1, i64 %i.en ; 2 uses
  %next.gep358 = getelementptr i8, ptr %2, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep358, i64 16
  %wide.load359 = load <4 x i32>, ptr %next.gep358, align 4, !tbaa !322
  %wide.load360 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !322
  %i.ep = getelementptr i8, ptr %next.gep357, i64 16
  store <4 x i32> %wide.load359, ptr %next.gep357, align 4, !tbaa !322
  store <4 x i32> %wide.load360, ptr %i.ep, align 4, !tbaa !322
  %index.next361 = add nuw i64 %index356, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.eq, label %middle.block362, label %vector.body355, !llvm.loop !1267

middle.block362:                                  ; preds = %vector.body355
  %cmp.n363 = icmp eq i64 %i.ei, %n.vec354
  br i1 %cmp.n363, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128.preheader370

.lr.ph.i128.preheader370:                         ; preds = %.lr.ph.i128.preheader, %middle.block362
  %.07.i129.ph = phi ptr [ %1, %.lr.ph.i128.preheader ], [ %i.el, %middle.block362 ]
  %.sroa.02.06.i130.ph = phi ptr [ %2, %.lr.ph.i128.preheader ], [ %i.em, %middle.block362 ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader370, %.lr.ph.i128
  %.07.i129 = phi ptr [ %i.et, %.lr.ph.i128 ], [ %.07.i129.ph, %.lr.ph.i128.preheader370 ] ; 2 uses
  %.sroa.02.06.i130 = phi ptr [ %i.es, %.lr.ph.i128 ], [ %.sroa.02.06.i130.ph, %.lr.ph.i128.preheader370 ] ; 2 uses
  %i.er = load i32, ptr %.sroa.02.06.i130, align 4, !tbaa !322
  store i32 %i.er, ptr %.07.i129, align 4, !tbaa !322
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i130, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.07.i129, i64 4
  %.not.i131 = icmp eq ptr %i.es, %i.cj
  br i1 %.not.i131, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit, label %.lr.ph.i128, !llvm.loop !1268

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit: ; preds = %.lr.ph.i115, %.lr.ph.i128, %middle.block311, %middle.block362, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyIPKwPwEEmT_S9_T0_.exit
  %.0107 = add i64 %i.q, %i.l                     ; 3 uses
  %i.eu = load i8, ptr %0, align 8, !tbaa !35
  %i.ev = trunc i8 %i.eu to i1
  br i1 %i.ev, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE9priv_copyIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEES8_EEvT_SE_T0_.exit
  %i.ew = trunc i64 %.0107 to i8
  %i.ex = shl i8 %i.ew, 1
  %i.ey = or disjoint i8 %i.ex, 1
end_hunk_2
