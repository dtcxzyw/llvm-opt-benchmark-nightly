Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/string_test?download=true
inline.NumInlined: 7799
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 102
begin_hunk_0_@_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertINS0_17constant_iteratorIwEEEEPwPKwT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEESK_E4typeE:bb.a
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.hg = ptrtoint ptr %i.u to i64
  %i.hh = sub i64 %i.h, %i.hg                     ; 2 uses
  %i.hi = ashr exact i64 %i.hh, 2                 ; 3 uses
  %i.hj = icmp eq ptr %1, %i.u
  br i1 %i.hj, label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hk = call ptr @wmemmove(ptr noundef %i.an, ptr noundef %i.u, i64 noundef %i.hi) #27 ; 0 uses
  br label %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176

_ZNSt11char_traitsIwE4moveEPwPKwm.exit176:        ; preds = %bb.t, %bb.u
  %i.hl = getelementptr i8, ptr %i.an, i64 %i.hh  ; 4 uses
  %i.hm = icmp eq i64 %i.n, %i.hi
  br i1 %i.hm, label %.lr.ph.preheader.i180, label %bb.v

bb.v:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176
  %i.hn = sub i64 %i.n, %i.hi
  %i.ho = getelementptr [4 x i8], ptr %i.hl, i64 %i.i
  %i.hp = call ptr @wmemmove(ptr noundef %i.ho, ptr noundef %1, i64 noundef %i.hn) #27 ; 0 uses
  br label %.lr.ph.preheader.i180

.lr.ph.preheader.i180:                            ; preds = %bb.v, %_ZNSt11char_traitsIwE4moveEPwPKwm.exit176
  %.pre.i181 = load i32, ptr %2, align 4, !tbaa !322 ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i182.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i180
  %n.vec = and i64 %i.i, -8                       ; 4 uses
  %i.hq = shl i64 %n.vec, 2
  %i.hr = getelementptr i8, ptr %i.hl, i64 %i.hq
  %i.hs = sub i64 %3, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i181, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ht = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.hl, i64 %i.ht ; 2 uses
  %i.hu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !322
  store <4 x i32> %broadcast.splat, ptr %i.hu, align 4, !tbaa !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !1255

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %.lr.ph.preheader.i180, %middle.block
  %.038.i183.ph = phi ptr [ %i.hl, %.lr.ph.preheader.i180 ], [ %i.hr, %middle.block ]
  %.sroa.2.07.i184.ph = phi i64 [ %3, %.lr.ph.preheader.i180 ], [ %i.hs, %middle.block ]
  br label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.preheader, %.lr.ph.i182
  %.038.i183 = phi ptr [ %i.hw, %.lr.ph.i182 ], [ %.038.i183.ph, %.lr.ph.i182.preheader ] ; 2 uses
  %.sroa.2.07.i184 = phi i64 [ %i.hx, %.lr.ph.i182 ], [ %.sroa.2.07.i184.ph, %.lr.ph.i182.preheader ]
  store i32 %.pre.i181, ptr %.038.i183, align 4, !tbaa !322
  %i.hw = getelementptr inbounds nuw i8, ptr %.038.i183, i64 4
  %i.hx = add i64 %.sroa.2.07.i184, -1            ; 2 uses
  %.not.i185 = icmp eq i64 %i.hx, %5
  br i1 %.not.i185, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188, label %.lr.ph.i182, !llvm.loop !1256

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188: ; preds = %.lr.ph.i182, %middle.block
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.al
  store i32 0, ptr %i.hy, align 4, !tbaa !322
  %i.hz = load i8, ptr %0, align 8, !tbaa !35
  %i.ia = trunc i8 %i.hz to i1
  %.pre = load i64, ptr %0, align 8
  store ptr %i.an, ptr %i.f, align 8, !tbaa !324
  %i.ib = shl i64 %i.al, 1
  %i.ic = and i64 %.pre, 1
  %i.id = select i1 %i.ia, i64 0, i64 %i.ic
  %i.ie = or disjoint i64 %i.id, %i.ib            ; 2 uses
  store i64 %i.ie, ptr %0, align 8
  %i.if = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.if, ptr %i.p, align 8, !tbaa !327
  %i.ig = trunc i64 %i.ie to i8
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148
  %.pre219 = phi ptr [ %i.an, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.an, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188 ], [ %.pre219.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148 ]
  %.pre218 = phi i8 [ %i.hf, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE16deallocate_blockEv.exit ], [ %i.ig, %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE23priv_uninitialized_copyINS0_17constant_iteratorIwEEPwEEmT_S9_T0_.exit188 ], [ %.pre218.pre, %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIwEEvE9priv_sizeEm.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre222 = trunc i8 %.pre218 to i1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.a
  %.pre-phi = phi i1 [ %.pre222, %bb.w ], [ %i.d, %bb.a ]
  %i.ih = phi ptr [ %.pre219, %bb.w ], [ %i.g, %bb.a ]
  %i.ii = select i1 %i.d, ptr %i.e, ptr %i.g
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.h, %i.ij
  %i.il = select i1 %.pre-phi, ptr %i.e, ptr %i.ih
  %i.im = getelementptr inbounds i8, ptr %i.il, i64 %i.ik
  ret ptr %i.im
}

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6assignIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEERS4_T_SF_PNS_11move_detail22disable_if_convertibleISF_mvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !35      ; 2 uses
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
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.x = sub i64 %i.b, %i.a
  %i.y = and i64 %i.x, 3
  %ident.check.not = icmp ne i64 %i.y, 0
  %i.z = sub i64 %i.a, %i.i
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %ident.check.not, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader33, label %vector.ph

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
  %next.gep29 = getelementptr i8, ptr %1, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep29, align 4, !tbaa !322
  %wide.load30 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !322
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !322
  store <4 x i32> %wide.load30, ptr %i.af, align 4, !tbaa !322
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01119.ph = phi ptr [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.sroa.013.018.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.020 = phi i64 [ %i.aj, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader33 ]
  %.01119 = phi ptr [ %i.ak, %.lr.ph ], [ %.01119.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.sroa.013.018 = phi ptr [ %i.ai, %.lr.ph ], [ %.sroa.013.018.ph, %.lr.ph.preheader33 ] ; 2 uses
  %i.ah = load i32, ptr %.sroa.013.018, align 4, !tbaa !322
  store i32 %i.ah, ptr %.01119, align 4, !tbaa !322
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.018, i64 4 ; 3 uses
  %i.aj = add nuw nsw i64 %.020, 1                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01119, i64 4
  %i.al = icmp ne ptr %i.ai, %2
  %i.am = icmp ne i64 %i.aj, %.fr
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !1258

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.sroa.013.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.ac, %middle.block ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.ao = icmp eq ptr %.sroa.013.0.lcssa, %2
  br i1 %i.ao, label %bb.b, label %bb.g

bb.b:                                             ; preds = %._crit_edge
  %.idx17 = shl nsw i64 %.0.lcssa, 2              ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.h, i64 %.idx17
  %.idx = shl nuw nsw i64 %.fr, 2                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 2 uses
  %.not.i = icmp eq i64 %.0.lcssa, %.fr
  br i1 %.not.i, label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = ptrtoint ptr %i.aq to i64
  %gepdiff = sub nsw i64 %.idx, %.idx17
  %i.as = ashr exact i64 %gepdiff, 2
  %i.at = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
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
  %i.bk = tail call ptr @wmemmove(ptr noundef %i.ap, ptr noundef %i.aq, i64 noundef %i.bj) #27 ; 0 uses
  %.pre.i = load i8, ptr %0, align 8, !tbaa !35
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
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIwE4moveEPwPKwm.exit.i
  %i.br = load i64, ptr %0, align 8
  %i.bs = shl i64 %i.bm, 1
  %i.bt = and i64 %i.br, 1
  %i.bu = or disjoint i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %0, align 8
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.bv = load i8, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.bw = trunc i8 %i.bv to i1
  %i.bx = lshr i8 %i.bv, 1
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.by
  %i.ca = load ptr, ptr %i.f, align 8
  %i.cb = load i64, ptr %0, align 8
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = select i1 %i.bw, ptr %i.bz, ptr %i.cd
  %i.cf = tail call noundef ptr @_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE6insertIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwS3_SaIwEEEEEEES8_PKwT_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESP_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ce, ptr %.sroa.013.0.lcssa, ptr %2, ptr noundef null) ; 0 uses
  br label %_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit

_ZN5boost9container12basic_stringIwSt11char_traitsIwEvvE5eraseEPKwS6_.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.g
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
end_hunk_0
