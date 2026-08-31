Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_string_test?download=true
inline.NumInlined: 5601
inline.NumDeleted: 957
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_:bb.a
  br i1 %i.x, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit
  %i.y = tail call ptr @wmemcpy(ptr noundef %i.w, ptr noundef %1, i64 noundef %i.d) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit, %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.c
  store i32 0, ptr %i.z, align 4, !tbaa !272
  %i.aa = load i8, ptr %0, align 8, !tbaa !15
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit
  %i.ac = trunc i64 %i.d to i8
  %i.ad = shl i8 %i.ac, 1
  %i.ae = or disjoint i8 %i.ad, 1
  store i8 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit
  %i.af = load i64, ptr %0, align 8
  %i.ag = ashr exact i64 %i.c, 1
  %i.ah = and i64 %i.af, 1
  %i.ai = or disjoint i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9priv_sizeEm.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EOS7_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  store i8 1, ptr %0, align 8
  %i.a = load i8, ptr %1, align 8, !tbaa !15
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !278
  %i.c = load i64, ptr %0, align 8
  %i.d = and i64 %i.c, -2
  store i64 %i.d, ptr %0, align 8
  %i.e = load i64, ptr %1, align 8
  %i.f = and i64 %i.e, -2
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !277
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !277
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !278
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit

_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvE9swap_dataERS6_.exit: ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignIPwEERS7_T_SB_PNS_11move_detail22disable_if_convertibleISB_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m
  %.fr = freeze i64 %i.n                          ; 5 uses
  %i.o = icmp ne ptr %1, %2
  %i.p = icmp ne i64 %.fr, 0
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.r = add i64 %.fr, -1
  %i.s = add i64 %i.b, -4
  %i.t = sub i64 %i.s, %i.a
  %i.u = lshr i64 %i.t, 2
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.u) ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 11
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.x = sub i64 %i.b, %i.a
  %i.y = and i64 %i.x, 3
  %ident.check.not = icmp ne i64 %i.y, 0
  %i.z = sub i64 %i.a, %i.i
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 5 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ad ; 2 uses
  %next.gep33 = getelementptr i8, ptr %1, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep33, align 4, !tbaa !272
  %wide.load34 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !272
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !272
  store <4 x i32> %wide.load34, ptr %i.af, align 4, !tbaa !272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.01823.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01922.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.024 = phi ptr [ %i.ak, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader37 ] ; 2 uses
  %.01823 = phi i64 [ %i.aj, %.lr.ph ], [ %.01823.ph, %.lr.ph.preheader37 ]
  %.01922 = phi ptr [ %i.ai, %.lr.ph ], [ %.01922.ph, %.lr.ph.preheader37 ] ; 2 uses
  %i.ah = load i32, ptr %.01922, align 4, !tbaa !272
  store i32 %i.ah, ptr %.024, align 4, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %.01922, i64 4 ; 3 uses
  %i.aj = add nuw nsw i64 %.01823, 1              ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.al = icmp ne ptr %i.ai, %2
  %i.am = icmp ne i64 %i.aj, %.fr
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !280

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.019.lcssa = phi ptr [ %1, %bb.a ], [ %i.ac, %middle.block ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.ao = icmp eq ptr %.019.lcssa, %2
  br i1 %i.ao, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %.idx21 = shl nuw nsw i64 %.018.lcssa, 2        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx21
  %.idx = shl nuw nsw i64 %.fr, 2                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %.not.i = icmp eq i64 %.018.lcssa, %.fr
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = ptrtoint ptr %i.aq to i64
  %gepdiff = sub nsw i64 %.idx, %.idx21
  %i.as = ashr exact i64 %gepdiff, 2
  %i.at = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.au = trunc i8 %i.at to i1
  %i.av = lshr i8 %i.at, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = load i64, ptr %0, align 8               ; 3 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = select i1 %i.au, i64 %i.aw, i64 %i.ay   ; 2 uses
  %i.ba = trunc i64 %i.ax to i8
  %i.bb = trunc i64 %i.ax to i1
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = select i1 %i.bb, ptr %i.e, ptr %i.bc
  %i.be = add nuw i64 %i.az, 1                    ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.ar, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %i.bi = icmp eq i64 %i.be, %i.bh
  br i1 %i.bi, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = sub i64 %i.be, %i.bh
  %i.bk = tail call ptr @wmemmove(ptr noundef %i.ap, ptr noundef %i.aq, i64 noundef %i.bj) #26 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !15
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i:         ; preds = %bb.d, %bb.c
  %i.bl = phi i8 [ %i.ba, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bm = sub i64 %i.az, %i.as                    ; 2 uses
  %i.bn = trunc i8 %i.bl to i1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.bo = trunc i64 %i.bm to i8
  %i.bp = shl i8 %i.bo, 1
  %i.bq = or disjoint i8 %i.bp, 1
  store i8 %i.bq, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.br = load i64, ptr %0, align 8
  %i.bs = shl i64 %i.bm, 1
  %i.bt = and i64 %i.br, 1
  %i.bu = or disjoint i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bv = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.bw = trunc i8 %i.bv to i1
  %i.bx = lshr i8 %i.bv, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.by
  %i.ca = load ptr, ptr %i.f, align 8
  %i.cb = load i64, ptr %0, align 8
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = select i1 %i.bw, ptr %i.bz, ptr %i.cd
  %i.cf = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertIPwEES9_PKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ce, ptr noundef %.019.lcssa, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2ERKS7_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5ERKS7_RKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !272
  %i.c = load i8, ptr %1, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 3 uses
  %i.i = lshr i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = select i1 %i.d, ptr %i.k, ptr %i.n       ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.t, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.u = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.v = trunc i8 %i.u to i1
  %i.w = lshr i8 %i.u, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i64, ptr %0, align 8
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = select i1 %i.v, ptr %i.y, ptr %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.ae = load i8, ptr %0, align 8, !tbaa !15
  %i.af = trunc i8 %i.ae to i1
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = select i1 %i.af, ptr %i.a, ptr %i.ag    ; 2 uses
  %i.ai = icmp eq ptr %i.o, %i.h
  br i1 %i.ai, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.aj = tail call ptr @wmemcpy(ptr noundef %i.ah, ptr noundef %i.h, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.r
  store i32 0, ptr %i.ak, align 4, !tbaa !272
  %i.al = load i8, ptr %0, align 8, !tbaa !15
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.an = trunc i64 %i.s to i8
  %i.ao = shl i8 %i.an, 1
  %i.ap = or disjoint i8 %i.ao, 1
  store i8 %i.ap, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aq = load i64, ptr %0, align 8
  %i.ar = ashr exact i64 %i.r, 1
  %i.as = and i64 %i.aq, 1
  %i.at = or disjoint i64 %i.as, %i.ar
  store i64 %i.at, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseINS0_4test16simple_allocatorIwEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC2EOS7_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEC5EOS7_RKS6_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<boost::container::test::simple_allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !272
  %i.b = load i8, ptr %1, align 8, !tbaa !15
  %i.c = trunc i8 %i.b to i1
end_hunk_0
begin_hunk_1_@_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignERKS7_:bb.a
  %i.at = ashr exact i64 %i.p, 1
  %i.au = and i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSERKS7_.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSEOS7_.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE16priv_move_assignEOS7_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSEOS7_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvEaSEOS7_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignERKS7_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r) ; 6 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.s = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.speculated)
  br i1 %i.s, label %bb.d, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.u = trunc i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = lshr i8 %i.t, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %0, align 8
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = select i1 %i.u, ptr %i.y, ptr %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.d, %bb.c
  %i.af = load i8, ptr %0, align 8, !tbaa !15
  %i.ag = trunc i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.ag, ptr %i.ah, ptr %i.aj   ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.al, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.am = tail call ptr @wmemcpy(ptr noundef %i.ak, ptr noundef %i.n, i64 noundef %.sroa.speculated) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.e, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  store i32 0, ptr %i.an, align 4, !tbaa !272
  %i.ao = load i8, ptr %0, align 8, !tbaa !15
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aq = trunc i64 %.sroa.speculated to i8
  %i.ar = shl i8 %i.aq, 1
  %i.as = or disjoint i8 %i.ar, 1
  store i8 %i.as, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.at = load i64, ptr %0, align 8
  %i.au = shl nuw nsw i64 %.sroa.speculated, 1
  %i.av = and i64 %i.at, 1
  %i.aw = or disjoint i64 %i.av, %i.au
  store i64 %i.aw, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignINS0_17constant_iteratorIwEEEERS7_T_SC_PNS_11move_detail22disable_if_convertibleISC_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 5 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j
  %.fr = freeze i64 %i.k                          ; 5 uses
  %i.l = icmp ne i64 %2, %4
  %i.m = icmp ne i64 %.fr, 0
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4, !tbaa !272   ; 2 uses
  %i.o = add i64 %.fr, -1
  %i.p = xor i64 %4, -1
  %i.q = add i64 %2, %i.p
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.q)
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.s, -8                       ; 6 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.f, i64 %i.t
  %i.v = sub i64 %2, %n.vec                       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !272
  store <4 x i32> %broadcast.splat, ptr %i.x, align 4, !tbaa !272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader, %middle.block
  %.022.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01221.ph = phi ptr [ %i.f, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.sroa.3.020.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.022 = phi i64 [ %i.aa, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader33 ]
  %.01221 = phi ptr [ %i.ab, %.lr.ph ], [ %.01221.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.sroa.3.020 = phi i64 [ %i.z, %.lr.ph ], [ %.sroa.3.020.ph, %.lr.ph.preheader33 ]
  store i32 %.pre, ptr %.01221, align 4, !tbaa !272
  %i.z = add i64 %.sroa.3.020, -1                 ; 3 uses
  %i.aa = add nuw nsw i64 %.022, 1                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01221, i64 4
  %i.ac = icmp ne i64 %i.z, %4
  %i.ad = icmp ne i64 %i.aa, %.fr
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !294

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.v, %middle.block ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.af = icmp eq i64 %.sroa.3.0.lcssa, %4
  br i1 %i.af, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %.idx19 = shl nuw nsw i64 %.0.lcssa, 2          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx19
  %.idx = shl nuw nsw i64 %.fr, 2                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  %.not.i = icmp eq i64 %.0.lcssa, %.fr
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.ah to i64
  %gepdiff = sub nsw i64 %.idx, %.idx19
  %i.aj = ashr exact i64 %gepdiff, 2
  %i.ak = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.al = trunc i8 %i.ak to i1
  %i.am = lshr i8 %i.ak, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = load i64, ptr %0, align 8               ; 3 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap   ; 2 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = trunc i64 %i.ao to i1
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = select i1 %i.as, ptr %i.c, ptr %i.at
  %i.av = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.ai, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp eq i64 %i.av, %i.ay
  br i1 %i.az, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = sub i64 %i.av, %i.ay
  %i.bb = tail call ptr @wmemmove(ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %i.ba) #26 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !15
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i:         ; preds = %bb.d, %bb.c
  %i.bc = phi i8 [ %i.ar, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bd = sub i64 %i.aq, %i.aj                    ; 2 uses
  %i.be = trunc i8 %i.bc to i1
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = shl i8 %i.bf, 1
  %i.bh = or disjoint i8 %i.bg, 1
  store i8 %i.bh, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.bi = load i64, ptr %0, align 8
  %i.bj = shl i64 %i.bd, 1
  %i.bk = and i64 %i.bi, 1
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bm = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.bn = trunc i8 %i.bm to i1
  %i.bo = lshr i8 %i.bm, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bp
  %i.br = load ptr, ptr %i.d, align 8
  %i.bs = load i64, ptr %0, align 8
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bt
  %i.bv = select i1 %i.bn, ptr %i.bq, ptr %i.bu
  %i.bw = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bv, ptr %1, i64 %.sroa.3.0.lcssa, ptr %3, i64 %4, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE5eraseEPKwS9_.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.n = load i8, ptr %0, align 8, !tbaa !15
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.o, ptr %i.p, ptr %i.r       ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.u = tail call ptr @wmemcpy(ptr noundef %i.s, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE7reserveEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  store i32 0, ptr %i.v, align 4, !tbaa !272
  %i.w = load i8, ptr %0, align 8, !tbaa !15
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.y = trunc i64 %2 to i8
  %i.z = shl i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 1
  store i8 %i.aa, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ab = load i64, ptr %0, align 8
  %i.ac = shl nuw nsw i64 %2, 1
  %i.ad = and i64 %i.ab, 1
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6assignEPKwS9_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwENS0_4test16simple_allocatorIwEEvE6insertEmRKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %2, align 8, !tbaa !15      ; 2 uses
  %i.j = trunc i8 %i.i to i1
  %i.k = lshr i8 %i.i, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = load i64, ptr %2, align 8                ; 3 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = select i1 %i.j, i64 %i.l, i64 %i.n
  %i.p = sub nsw i64 4611686018427387902, %i.o
  %i.q = icmp ugt i64 %i.g, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

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
end_hunk_1
begin_hunk_2_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_:bb.a
  br i1 %i.x, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit
  %i.y = tail call ptr @wmemcpy(ptr noundef %i.w, ptr noundef %1, i64 noundef %i.d) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit

_ZNSt11char_traitsIwE4copyEPwPKwm.exit:           ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit, %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.c
  store i32 0, ptr %i.z, align 4, !tbaa !272
  %i.aa = load i8, ptr %0, align 8, !tbaa !15
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit
  %i.ac = trunc i64 %i.d to i8
  %i.ad = shl i8 %i.ac, 1
  %i.ae = or disjoint i8 %i.ad, 1
  store i8 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit
  %i.af = load i64, ptr %0, align 8
  %i.ag = ashr exact i64 %i.c, 1
  %i.ah = and i64 %i.af, 1
  %i.ai = or disjoint i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %0, align 8
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9priv_sizeEm.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EOS5_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %2 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  store i8 1, ptr %0, align 8
  %i.a = load i8, ptr %1, align 8, !tbaa !15
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i, i64 24, i1 false), !tbaa.struct !16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !278
  %i.c = load i64, ptr %0, align 8
  %i.d = and i64 %i.c, -2
  store i64 %i.d, ptr %0, align 8
  %i.e = load i64, ptr %1, align 8
  %i.f = and i64 %i.e, -2
  store i64 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !503
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !503
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !501
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !278
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit

_ZN5boost9container3dtl17basic_string_baseISaIwEvE9swap_dataERS4_.exit: ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignIPwEERS5_T_S9_PNS_11move_detail22disable_if_convertibleIS9_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = lshr i8 %i.c, 1
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = select i1 %i.d, i64 %i.k, i64 %i.m
  %.fr = freeze i64 %i.n                          ; 5 uses
  %i.o = icmp ne ptr %1, %2
  %i.p = icmp ne i64 %.fr, 0
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.r = add i64 %.fr, -1
  %i.s = add i64 %i.b, -4
  %i.t = sub i64 %i.s, %i.a
  %i.u = lshr i64 %i.t, 2
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.u) ; 2 uses
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 11
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.x = sub i64 %i.b, %i.a
  %i.y = and i64 %i.x, 3
  %ident.check.not = icmp ne i64 %i.y, 0
  %i.z = sub i64 %i.a, %i.i
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 5 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = getelementptr i8, ptr %1, i64 %i.aa     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ad ; 2 uses
  %next.gep33 = getelementptr i8, ptr %1, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep33, align 4, !tbaa !272
  %wide.load34 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !272
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !272
  store <4 x i32> %wide.load34, ptr %i.af, align 4, !tbaa !272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.01823.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01922.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.024 = phi ptr [ %i.ak, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader37 ] ; 2 uses
  %.01823 = phi i64 [ %i.aj, %.lr.ph ], [ %.01823.ph, %.lr.ph.preheader37 ]
  %.01922 = phi ptr [ %i.ai, %.lr.ph ], [ %.01922.ph, %.lr.ph.preheader37 ] ; 2 uses
  %i.ah = load i32, ptr %.01922, align 4, !tbaa !272
  store i32 %i.ah, ptr %.024, align 4, !tbaa !272
  %i.ai = getelementptr inbounds nuw i8, ptr %.01922, i64 4 ; 3 uses
  %i.aj = add nuw nsw i64 %.01823, 1              ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.al = icmp ne ptr %i.ai, %2
  %i.am = icmp ne i64 %i.aj, %.fr
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !505

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.019.lcssa = phi ptr [ %1, %bb.a ], [ %i.ac, %middle.block ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.ao = icmp eq ptr %.019.lcssa, %2
  br i1 %i.ao, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %.idx21 = shl nuw nsw i64 %.018.lcssa, 2        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx21
  %.idx = shl nuw nsw i64 %.fr, 2                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %.not.i = icmp eq i64 %.018.lcssa, %.fr
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = ptrtoint ptr %i.aq to i64
  %gepdiff = sub nsw i64 %.idx, %.idx21
  %i.as = ashr exact i64 %gepdiff, 2
  %i.at = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.au = trunc i8 %i.at to i1
  %i.av = lshr i8 %i.at, 1
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = load i64, ptr %0, align 8               ; 3 uses
  %i.ay = lshr i64 %i.ax, 1
  %i.az = select i1 %i.au, i64 %i.aw, i64 %i.ay   ; 2 uses
  %i.ba = trunc i64 %i.ax to i8
  %i.bb = trunc i64 %i.ax to i1
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = select i1 %i.bb, ptr %i.e, ptr %i.bc
  %i.be = add nuw i64 %i.az, 1                    ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.ar, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %i.bi = icmp eq i64 %i.be, %i.bh
  br i1 %i.bi, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = sub i64 %i.be, %i.bh
  %i.bk = tail call ptr @wmemmove(ptr noundef %i.ap, ptr noundef %i.aq, i64 noundef %i.bj) #26 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !15
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i:         ; preds = %bb.d, %bb.c
  %i.bl = phi i8 [ %i.ba, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bm = sub i64 %i.az, %i.as                    ; 2 uses
  %i.bn = trunc i8 %i.bl to i1
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.bo = trunc i64 %i.bm to i8
  %i.bp = shl i8 %i.bo, 1
  %i.bq = or disjoint i8 %i.bp, 1
  store i8 %i.bq, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.br = load i64, ptr %0, align 8
  %i.bs = shl i64 %i.bm, 1
  %i.bt = and i64 %i.br, 1
  %i.bu = or disjoint i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bv = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.bw = trunc i8 %i.bv to i1
  %i.bx = lshr i8 %i.bv, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.by
  %i.ca = load ptr, ptr %i.f, align 8
  %i.cb = load i64, ptr %0, align 8
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = select i1 %i.bw, ptr %i.bz, ptr %i.cd
  %i.cf = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertIPwEES7_PKwT_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ce, ptr noundef %.019.lcssa, ptr noundef %2, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = lshr i8 %i.a, 1
  %i.e = zext nneg i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j
  %i.l = select i1 %i.b, ptr %i.f, ptr %i.k
  ret ptr %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2ERKS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5ERKS5_RKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !272
  %i.c = load i8, ptr %1, align 8, !tbaa !15      ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = select i1 %i.d, ptr %i.e, ptr %i.g       ; 3 uses
  %i.i = lshr i8 %i.c, 1
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.j
  %i.l = load i64, ptr %1, align 8
  %i.m = lshr i64 %i.l, 1
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = select i1 %i.d, ptr %i.k, ptr %i.n       ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 3 uses
  %i.t = invoke noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.t, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %.noexc
  %i.u = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.v = trunc i8 %i.u to i1
  %i.w = lshr i8 %i.u, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = load i64, ptr %0, align 8
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = select i1 %i.v, ptr %i.y, ptr %i.ac
  store i32 0, ptr %i.ad, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %.noexc
  %i.ae = load i8, ptr %0, align 8, !tbaa !15
  %i.af = trunc i8 %i.ae to i1
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = select i1 %i.af, ptr %i.a, ptr %i.ag    ; 2 uses
  %i.ai = icmp eq ptr %i.o, %i.h
  br i1 %i.ai, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.aj = tail call ptr @wmemcpy(ptr noundef %i.ah, ptr noundef %i.h, i64 noundef %i.s) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.r
  store i32 0, ptr %i.ak, align 4, !tbaa !272
  %i.al = load i8, ptr %0, align 8, !tbaa !15
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.an = trunc i64 %i.s to i8
  %i.ao = shl i8 %i.an, 1
  %i.ap = or disjoint i8 %i.ao, 1
  store i8 %i.ap, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aq = load i64, ptr %0, align 8
  %i.ar = ashr exact i64 %i.r, 1
  %i.as = and i64 %i.aq, 1
  %i.at = or disjoint i64 %i.as, %i.ar
  store i64 %i.at, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.e, %bb.d
  ret void

bb.f:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5boost9container3dtl17basic_string_baseISaIwEvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC2EOS5_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat($_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEC5EOS5_RKS4_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 8 ; 4 uses
  %3 = alloca %"struct.boost::container::dtl::basic_string_base<std::allocator<wchar_t>, void>::short_t", align 4 ; 4 uses
  store i8 1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !272
  %i.b = load i8, ptr %1, align 8, !tbaa !15
  %i.c = trunc i8 %i.b to i1
end_hunk_2
begin_hunk_3_@_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignERKS5_:bb.a
  %i.at = ashr exact i64 %i.p, 1
  %i.au = and i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, %i.at
  store i64 %i.av, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSERKS5_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSERKS5_.exit: ; preds = %bb.a, %bb.e, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSEOS5_.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE16priv_move_assignEOS5_NS_11move_detail5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSEOS5_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #28
  unreachable

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvEaSEOS5_.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignERKS5_mm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %1, align 8                ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f
  %i.h = icmp ugt i64 %2, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.e to i1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %i.i, ptr %i.j, ptr %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %2
  %i.o = lshr i64 %i.e, 1
  %i.p = and i64 %i.o, 127
  %i.q = select i1 %i.i, i64 %i.p, i64 %i.f
  %i.r = sub nsw i64 %i.q, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.r) ; 6 uses
  %.idx = shl nuw nsw i64 %.sroa.speculated, 2
  %i.s = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.speculated)
  br i1 %i.s, label %bb.d, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.u = trunc i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = lshr i8 %i.t, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %0, align 8
  %i.ac = lshr i64 %i.ab, 1
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = select i1 %i.u, ptr %i.y, ptr %i.ad
  store i32 0, ptr %i.ae, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.d, %bb.c
  %i.af = load i8, ptr %0, align 8, !tbaa !15
  %i.ag = trunc i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = select i1 %i.ag, ptr %i.ah, ptr %i.aj   ; 2 uses
  %i.al = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.al, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.am = tail call ptr @wmemcpy(ptr noundef %i.ak, ptr noundef %i.n, i64 noundef %.sroa.speculated) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.e, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  store i32 0, ptr %i.an, align 4, !tbaa !272
  %i.ao = load i8, ptr %0, align 8, !tbaa !15
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.aq = trunc i64 %.sroa.speculated to i8
  %i.ar = shl i8 %i.aq, 1
  %i.as = or disjoint i8 %i.ar, 1
  store i8 %i.as, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.g:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.at = load i64, ptr %0, align 8
  %i.au = shl nuw nsw i64 %.sroa.speculated, 1
  %i.av = and i64 %i.at, 1
  %i.aw = or disjoint i64 %i.av, %i.au
  store i64 %i.aw, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.f, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignINS0_17constant_iteratorIwEEEERS5_T_SA_PNS_11move_detail22disable_if_convertibleISA_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = select i1 %i.b, ptr %i.c, ptr %i.e       ; 5 uses
  %i.g = lshr i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = load i64, ptr %0, align 8
  %i.j = lshr i64 %i.i, 1
  %i.k = select i1 %i.b, i64 %i.h, i64 %i.j
  %.fr = freeze i64 %i.k                          ; 5 uses
  %i.l = icmp ne i64 %2, %4
  %i.m = icmp ne i64 %.fr, 0
  %i.n = and i1 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4, !tbaa !272   ; 2 uses
  %i.o = add i64 %.fr, -1
  %i.p = xor i64 %4, -1
  %i.q = add i64 %2, %i.p
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.q)
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.s, -8                       ; 6 uses
  %i.t = shl i64 %n.vec, 2
  %i.u = getelementptr i8, ptr %i.f, i64 %i.t
  %i.v = sub i64 %2, %n.vec                       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !272
  store <4 x i32> %broadcast.splat, ptr %i.x, align 4, !tbaa !272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader, %middle.block
  %.022.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01221.ph = phi ptr [ %i.f, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  %.sroa.3.020.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.022 = phi i64 [ %i.aa, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader33 ]
  %.01221 = phi ptr [ %i.ab, %.lr.ph ], [ %.01221.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.sroa.3.020 = phi i64 [ %i.z, %.lr.ph ], [ %.sroa.3.020.ph, %.lr.ph.preheader33 ]
  store i32 %.pre, ptr %.01221, align 4, !tbaa !272
  %i.z = add i64 %.sroa.3.020, -1                 ; 3 uses
  %i.aa = add nuw nsw i64 %.022, 1                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01221, i64 4
  %i.ac = icmp ne i64 %i.z, %4
  %i.ad = icmp ne i64 %i.aa, %.fr
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !515

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.sroa.3.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.v, %middle.block ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ], [ %i.aa, %.lr.ph ] ; 2 uses
  %i.af = icmp eq i64 %.sroa.3.0.lcssa, %4
  br i1 %i.af, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %.idx19 = shl nuw nsw i64 %.0.lcssa, 2          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx19
  %.idx = shl nuw nsw i64 %.fr, 2                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx ; 2 uses
  %.not.i = icmp eq i64 %.0.lcssa, %.fr
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = ptrtoint ptr %i.ah to i64
  %gepdiff = sub nsw i64 %.idx, %.idx19
  %i.aj = ashr exact i64 %gepdiff, 2
  %i.ak = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.al = trunc i8 %i.ak to i1
  %i.am = lshr i8 %i.ak, 1
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = load i64, ptr %0, align 8               ; 3 uses
  %i.ap = lshr i64 %i.ao, 1
  %i.aq = select i1 %i.al, i64 %i.an, i64 %i.ap   ; 2 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = trunc i64 %i.ao to i1
  %i.at = load ptr, ptr %i.d, align 8
  %i.au = select i1 %i.as, ptr %i.c, ptr %i.at
  %i.av = add nuw i64 %i.aq, 1                    ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.ai, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2                 ; 2 uses
  %i.az = icmp eq i64 %i.av, %i.ay
  br i1 %i.az, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = sub i64 %i.av, %i.ay
  %i.bb = tail call ptr @wmemmove(ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %i.ba) #26 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !15
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i

_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i:         ; preds = %bb.d, %bb.c
  %i.bc = phi i8 [ %i.ar, %bb.c ], [ %.pre.i, %bb.d ]
  %i.bd = sub i64 %i.aq, %i.aj                    ; 2 uses
  %i.be = trunc i8 %i.bc to i1
  br i1 %i.be, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = shl i8 %i.bf, 1
  %i.bh = or disjoint i8 %i.bg, 1
  store i8 %i.bh, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.bi = load i64, ptr %0, align 8
  %i.bj = shl i64 %i.bd, 1
  %i.bk = and i64 %i.bi, 1
  %i.bl = or disjoint i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bm = load i8, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.bn = trunc i8 %i.bm to i1
  %i.bo = lshr i8 %i.bm, 1
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bp
  %i.br = load ptr, ptr %i.d, align 8
  %i.bs = load i64, ptr %0, align 8
  %i.bt = lshr i64 %i.bs, 1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bt
  %i.bv = select i1 %i.bn, ptr %i.bq, ptr %i.bu
  %i.bw = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bv, ptr %1, i64 %.sroa.3.0.lcssa, ptr %3, i64 %4, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE5eraseEPKwS7_.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignESt16initializer_listIwE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = tail call noundef zeroext i1 @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE24priv_reserve_no_null_endEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  br i1 %i.a, label %bb.b, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.c = trunc i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = lshr i8 %i.b, 1
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.k
  %i.m = select i1 %i.c, ptr %i.g, ptr %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !272
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i: ; preds = %bb.b, %bb.a
  %i.n = load i8, ptr %0, align 8, !tbaa !15
  %i.o = trunc i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %i.o, ptr %i.p, ptr %i.r       ; 2 uses
  %i.t = icmp eq i64 %2, 0
  br i1 %i.t, label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.u = tail call ptr @wmemcpy(ptr noundef %i.s, ptr noundef %1, i64 noundef %2) #26 ; 0 uses
  br label %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i

_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i:         ; preds = %bb.c, %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE7reserveEm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  store i32 0, ptr %i.v, align 4, !tbaa !272
  %i.w = load i8, ptr %0, align 8, !tbaa !15
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.y = trunc i64 %2 to i8
  %i.z = shl i8 %i.y, 1
  %i.aa = or disjoint i8 %i.z, 1
  store i8 %i.aa, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIwE4copyEPwPKwm.exit.i
  %i.ab = load i64, ptr %0, align 8
  %i.ac = shl nuw nsw i64 %2, 1
  %i.ad = and i64 %i.ab, 1
  %i.ae = or disjoint i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6assignEPKwS7_.exit: ; preds = %bb.d, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwESaIwEvE6insertEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !15      ; 2 uses
  %i.b = trunc i8 %i.a to i1
  %i.c = lshr i8 %i.a, 1
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load i64, ptr %0, align 8                ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.d, i64 %i.f       ; 2 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_out_of_rangeEPKc(ptr noundef nonnull @.str.4) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load i8, ptr %2, align 8, !tbaa !15      ; 2 uses
  %i.j = trunc i8 %i.i to i1
  %i.k = lshr i8 %i.i, 1
  %i.l = zext nneg i8 %i.k to i64
  %i.m = load i64, ptr %2, align 8                ; 3 uses
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = select i1 %i.j, i64 %i.l, i64 %i.n
  %i.p = sub nsw i64 4611686018427387902, %i.o
  %i.q = icmp ugt i64 %i.g, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.5) #27
  unreachable

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
end_hunk_3
