Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_vector_test?download=true
inline.NumInlined: 4251
inline.NumDeleted: 964
loop-unroll.NumRuntimeUnrolled: 299
loop-unroll.NumUnrolled: 299
begin_hunk_0_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.en = getelementptr inbounds nuw i8, ptr %.01315.i.i170.prol, i64 4 ; 2 uses
  %prol.iter410.next = add i64 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i64 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %.lr.ph.i.i168.prol.loopexit, label %.lr.ph.i.i168.prol, !llvm.loop !1010

.lr.ph.i.i168.prol.loopexit:                      ; preds = %.lr.ph.i.i168.prol, %.lr.ph.i.i168.preheader
  %.016.i.i169.unr = phi i64 [ %i.dp, %.lr.ph.i.i168.preheader ], [ %i.ek, %.lr.ph.i.i168.prol ]
  %.01315.i.i170.unr = phi ptr [ %i.a, %.lr.ph.i.i168.preheader ], [ %i.en, %.lr.ph.i.i168.prol ]
  %i.eo = sub nsw i64 %i.g, %i.j
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.prol.loopexit, %.lr.ph.i.i168
  %.016.i.i169 = phi i64 [ %i.ex, %.lr.ph.i.i168 ], [ %.016.i.i169.unr, %.lr.ph.i.i168.prol.loopexit ]
  %.01315.i.i170 = phi ptr [ %i.ez, %.lr.ph.i.i168 ], [ %.01315.i.i170.unr, %.lr.ph.i.i168.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i170) ]
  store i32 0, ptr %.01315.i.i170, align 4, !tbaa !65
  %i.eq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 4
  store i32 0, ptr %i.es, align 4, !tbaa !65
  %i.et = add i32 %i.eq, 2
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.eu = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !65
  %i.ev = add i32 %i.eq, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 12
  %i.ex = add i64 %.016.i.i169, -4                ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !65
  %i.ey = add i32 %i.eq, 4
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ez = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 16
  %.not.i.i171.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i171.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168, !llvm.loop !5

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172: ; preds = %.lr.ph.i.i168, %.lr.ph.i.i168.prol.loopexit
  %.not.i173 = icmp eq ptr %3, %i.ds
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172
  %.not8.i.i174 = icmp eq ptr %0, %3
  br i1 %.not8.i.i174, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %bb.g
  %i.fa = ptrtoaddr ptr %0 to i64
  %i.fb = add i64 %i.e, -4
  %i.fc = sub i64 %i.fb, %i.fa                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check364 = icmp ult i64 %i.fc, 124
  br i1 %min.iters.check364, label %.lr.ph.i.i175.preheader382, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph.i.i175.preheader
  %i.ff = and i64 %i.fc, -4                       ; 2 uses
  %i.fg = sub i64 %1, %i.dq
  %i.fh = shl i64 %i.fg, 2
  %i.fi = add i64 %i.fh, -4
  %i.fj = sub i64 %i.fi, %i.ff
  %i.fk = getelementptr i8, ptr %0, i64 %i.fj
  %i.fl = sub nuw nsw i64 -4, %i.ff
  %i.fm = getelementptr i8, ptr %3, i64 %i.fl
  %bound0366 = icmp ult ptr %i.fk, %3
  %bound1367 = icmp ult ptr %i.fm, %i.ds
  %found.conflict368 = and i1 %bound0366, %bound1367
  br i1 %found.conflict368, label %.lr.ph.i.i175.preheader382, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck365
  %n.vec370 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.fn = mul i64 %n.vec370, -4                   ; 2 uses
  %i.fo = getelementptr i8, ptr %i.ds, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %3, i64 %i.fn
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.fq = mul i64 %index372, -4                   ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.ds, i64 %i.fq ; 2 uses
  %next.gep374 = getelementptr i8, ptr %3, i64 %i.fq ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %next.gep374, i64 -16 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %next.gep374, i64 -32 ; 2 uses
  %wide.load375 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !65, !alias.scope !1029
  %wide.load376 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !65, !alias.scope !1029
  %i.ft = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.fu = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  store <4 x i32> %wide.load375, ptr %i.ft, align 4, !tbaa !65, !alias.scope !1030, !noalias !1029
  store <4 x i32> %wide.load376, ptr %i.fu, align 4, !tbaa !65, !alias.scope !1030, !noalias !1029
  store <4 x i32> zeroinitializer, ptr %i.fr, align 4, !tbaa !65, !alias.scope !1029
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !65, !alias.scope !1029
  %index.next377 = add nuw i64 %index372, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.fv, label %middle.block378, label %vector.body371, !llvm.loop !1014

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.fe, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader382

.lr.ph.i.i175.preheader382:                       ; preds = %vector.memcheck365, %.lr.ph.i.i175.preheader, %middle.block378
  %.010.i.i176.ph = phi ptr [ %i.ds, %vector.memcheck365 ], [ %i.ds, %.lr.ph.i.i175.preheader ], [ %i.fo, %middle.block378 ]
  %.079.i.i177.ph = phi ptr [ %3, %vector.memcheck365 ], [ %3, %.lr.ph.i.i175.preheader ], [ %i.fp, %middle.block378 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader382, %.lr.ph.i.i175
  %.010.i.i176 = phi ptr [ %i.fx, %.lr.ph.i.i175 ], [ %.010.i.i176.ph, %.lr.ph.i.i175.preheader382 ]
  %.079.i.i177 = phi ptr [ %i.fw, %.lr.ph.i.i175 ], [ %.079.i.i177.ph, %.lr.ph.i.i175.preheader382 ]
  %i.fw = getelementptr inbounds i8, ptr %.079.i.i177, i64 -4 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %.010.i.i176, i64 -4 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !65
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !65
  store i32 0, ptr %i.fw, align 4, !tbaa !65
  %.not.i.i178 = icmp eq ptr %0, %i.fw
  br i1 %.not.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175, !llvm.loop !1015

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179: ; preds = %.lr.ph.i.i175, %middle.block378, %bb.g
  %i.fz = phi ptr [ %i.ds, %bb.g ], [ %i.fo, %middle.block378 ], [ %i.fx, %.lr.ph.i.i175 ] ; 2 uses
  %.not3.i180 = icmp eq ptr %0, %i.fz
  br i1 %.not3.i180, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, %.lr.ph.i181
  %storemerge4.i182 = phi ptr [ %i.gc, %.lr.ph.i181 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i182, align 4, !tbaa !65
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gb = add i32 %i.ga, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i182, i64 4 ; 2 uses
  %.not.i183 = icmp eq ptr %i.gc, %i.fz
  br i1 %.not.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gd = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i193 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i193, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i194.preheader

.lr.ph.i194.preheader:                            ; preds = %bb.h
  %i.ge = and i64 %i.i, 4
  %lcmp.mod398.not = icmp eq i64 %i.ge, 0
  br i1 %lcmp.mod398.not, label %.lr.ph.i194.prol.loopexit, label %.lr.ph.i194.prol

.lr.ph.i194.prol:                                 ; preds = %.lr.ph.i194.preheader
  %i.gf = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !65
  store i32 %i.gg, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.gd, align 4, !tbaa !65
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i194.prol.loopexit

.lr.ph.i194.prol.loopexit:                        ; preds = %.lr.ph.i194.prol, %.lr.ph.i194.preheader
  %.020.i195.unr = phi i64 [ %i.j, %.lr.ph.i194.preheader ], [ %i.gf, %.lr.ph.i194.prol ]
  %.0819.i196.unr = phi ptr [ %i.gd, %.lr.ph.i194.preheader ], [ %i.gj, %.lr.ph.i194.prol ]
  %.01618.i197.unr = phi ptr [ %i.a, %.lr.ph.i194.preheader ], [ %i.gk, %.lr.ph.i194.prol ]
  %i.gl = icmp eq i64 %i.i, 4
  br i1 %i.gl, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194
  %.020.i195 = phi i64 [ %i.gr, %.lr.ph.i194 ], [ %.020.i195.unr, %.lr.ph.i194.prol.loopexit ]
  %.0819.i196 = phi ptr [ %i.gv, %.lr.ph.i194 ], [ %.0819.i196.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  %.01618.i197 = phi ptr [ %i.gw, %.lr.ph.i194 ], [ %.01618.i197.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i197) ]
  %i.gm = load i32, ptr %.0819.i196, align 4, !tbaa !65
  store i32 %i.gm, ptr %.01618.i197, align 4, !tbaa !65
  store i32 0, ptr %.0819.i196, align 4, !tbaa !65
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 4
  %i.gr = add i64 %.020.i195, -2                  ; 2 uses
  %i.gs = load i32, ptr %i.gp, align 4, !tbaa !65
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !65
  store i32 0, ptr %i.gp, align 4, !tbaa !65
  %i.gt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 8
  %.not.i198.1 = icmp eq i64 %i.gr, 0
  br i1 %.not.i198.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200: ; preds = %.lr.ph.i194, %.lr.ph.i194.prol.loopexit
  %.not8.i.i202 = icmp eq ptr %3, %i.gd
  br i1 %.not8.i.i202, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader

.lr.ph.i.i203.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.gx = shl nsw i64 %1, 2
  %i.gy = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.gz = shl i64 %i.gy, 1
  %i.ha = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hb = shl i64 %4, 2
  %i.hc = add i64 %i.gx, %i.gz
  %i.hd = add i64 %i.hc, -4
  %i.he = add i64 %i.e, %i.ha
  %i.hf = add i64 %i.he, %i.hb
  %i.hg = sub i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.hg, 188
  br i1 %min.iters.check316, label %.lr.ph.i.i203.preheader386, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.i203.preheader
  %i.hj = shl nsw i64 %1, 2                       ; 3 uses
  %i.hk = shl i64 %i.gy, 1
  %i.hl = shl i64 %4, 2                           ; 2 uses
  %i.hm = add i64 %i.hj, %i.hk
  %i.hn = add i64 %i.hm, -4
  %i.ho = add i64 %i.e, %i.ha
  %i.hp = add i64 %i.ho, %i.hl
  %i.hq = sub i64 %i.hn, %i.hp
  %i.hr = and i64 %i.hq, -4                       ; 2 uses
  %i.hs = add i64 %i.hj, -4
  %i.ht = sub i64 %i.hs, %i.hr
  %i.hu = getelementptr i8, ptr %0, i64 %i.ht
  %i.hv = add i64 %i.hj, %i.gy
  %i.hw = add i64 %i.hv, -4
  %i.hx = add i64 %i.hl, %i.ha
  %i.hy = add i64 %i.hx, %i.hr
  %i.hz = sub i64 %i.hw, %i.hy
  %i.ia = getelementptr i8, ptr %0, i64 %i.hz
  %bound0318 = icmp ult ptr %i.hu, %i.gd
  %bound1319 = icmp ult ptr %i.ia, %i.a
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i203.preheader386, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.hi, 9223372036854775800  ; 3 uses
  %i.ib = mul i64 %n.vec322, -4                   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.a, i64 %i.ib   ; 2 uses
  %i.id = getelementptr i8, ptr %i.gd, i64 %i.ib
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.ie = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.a, i64 %i.ie ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.gd, i64 %i.ie ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %next.gep326, i64 -16 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep326, i64 -32 ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.if, align 4, !tbaa !65, !alias.scope !1031
  %wide.load328 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !65, !alias.scope !1031
  %i.ih = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.ih, align 4, !tbaa !65, !alias.scope !1032, !noalias !1031
  store <4 x i32> %wide.load328, ptr %i.ii, align 4, !tbaa !65, !alias.scope !1032, !noalias !1031
  store <4 x i32> zeroinitializer, ptr %i.if, align 4, !tbaa !65, !alias.scope !1031
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !65, !alias.scope !1031
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.ij, label %middle.block330, label %vector.body323, !llvm.loop !1019

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.hi, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader386

.lr.ph.i.i203.preheader386:                       ; preds = %vector.memcheck317, %.lr.ph.i.i203.preheader, %middle.block330
  %.010.i.i204.ph = phi ptr [ %i.a, %vector.memcheck317 ], [ %i.a, %.lr.ph.i.i203.preheader ], [ %i.ic, %middle.block330 ]
  %.079.i.i205.ph = phi ptr [ %i.gd, %vector.memcheck317 ], [ %i.gd, %.lr.ph.i.i203.preheader ], [ %i.id, %middle.block330 ]
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %.lr.ph.i.i203.preheader386, %.lr.ph.i.i203
  %.010.i.i204 = phi ptr [ %i.il, %.lr.ph.i.i203 ], [ %.010.i.i204.ph, %.lr.ph.i.i203.preheader386 ]
  %.079.i.i205 = phi ptr [ %i.ik, %.lr.ph.i.i203 ], [ %.079.i.i205.ph, %.lr.ph.i.i203.preheader386 ]
  %i.ik = getelementptr inbounds i8, ptr %.079.i.i205, i64 -4 ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %.010.i.i204, i64 -4 ; 3 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !65
  store i32 %i.im, ptr %i.il, align 4, !tbaa !65
  store i32 0, ptr %i.ik, align 4, !tbaa !65
  %.not.i.i206 = icmp eq ptr %3, %i.ik
  br i1 %.not.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203, !llvm.loop !1020

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207: ; preds = %.lr.ph.i.i203, %middle.block330, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.in = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200 ], [ %i.ic, %middle.block330 ], [ %i.il, %.lr.ph.i.i203 ] ; 2 uses
  %i.io = sub i64 0, %4
  %i.ip = getelementptr [4 x i8], ptr %i.in, i64 %i.io ; 9 uses
  %.not8.i208 = icmp eq i64 %4, 0
  br i1 %.not8.i208, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.preheader.i209

.lr.ph.preheader.i209:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207
  %.pre.i210 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.iq = add i32 %.pre.i210, 1                   ; 2 uses
  %xtraiter400 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol

.lr.ph.i211.prol:                                 ; preds = %.lr.ph.preheader.i209, %.lr.ph.i211.prol
  %i.ir = phi i32 [ %i.iu, %.lr.ph.i211.prol ], [ %i.iq, %.lr.ph.preheader.i209 ]
  %.010.i212.prol = phi ptr [ %i.it, %.lr.ph.i211.prol ], [ %i.ip, %.lr.ph.preheader.i209 ] ; 2 uses
  %.079.i213.prol = phi i64 [ %i.is, %.lr.ph.i211.prol ], [ %4, %.lr.ph.preheader.i209 ]
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.lr.ph.i211.prol ], [ 0, %.lr.ph.preheader.i209 ]
  %i.is = add i64 %.079.i213.prol, -1             ; 2 uses
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  store i32 0, ptr %.010.i212.prol, align 4, !tbaa !65
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i212.prol, i64 4 ; 2 uses
  %i.iu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %i.iv = add i32 %i.iu, -1
  store i32 %i.iv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol, !llvm.loop !1021

.lr.ph.i211.prol.loopexit:                        ; preds = %.lr.ph.i211.prol, %.lr.ph.preheader.i209
  %.unr403 = phi i32 [ %i.iq, %.lr.ph.preheader.i209 ], [ %i.iu, %.lr.ph.i211.prol ]
  %.010.i212.unr = phi ptr [ %i.ip, %.lr.ph.preheader.i209 ], [ %i.it, %.lr.ph.i211.prol ]
  %.079.i213.unr = phi i64 [ %4, %.lr.ph.preheader.i209 ], [ %i.is, %.lr.ph.i211.prol ]
  %i.iw = icmp ult i64 %4, 4
  br i1 %i.iw, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211
  %i.ix = phi i32 [ %i.jd, %.lr.ph.i211 ], [ %.unr403, %.lr.ph.i211.prol.loopexit ]
  %.010.i212 = phi ptr [ %i.jc, %.lr.ph.i211 ], [ %.010.i212.unr, %.lr.ph.i211.prol.loopexit ] ; 5 uses
  %.079.i213 = phi i64 [ %i.jb, %.lr.ph.i211 ], [ %.079.i213.unr, %.lr.ph.i211.prol.loopexit ]
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  store i32 0, ptr %.010.i212, align 4, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i212, i64 4
  store i32 0, ptr %i.iy, align 4, !tbaa !65
  %i.iz = getelementptr inbounds nuw i8, ptr %.010.i212, i64 8
  store i32 0, ptr %i.iz, align 4, !tbaa !65
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i212, i64 12
  %i.jb = add i64 %.079.i213, -4                  ; 2 uses
  store i32 0, ptr %i.ja, align 4, !tbaa !65
  %i.jc = getelementptr inbounds nuw i8, ptr %.010.i212, i64 16
  %i.jd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 2 uses
  %i.je = add i32 %i.jd, -1
  store i32 %i.je, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %.not.i214.3 = icmp eq i64 %i.jb, 0
  br i1 %.not.i214.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211, !llvm.loop !16

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215: ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207
  %.not.i216 = icmp eq ptr %3, %i.ip
  br i1 %.not.i216, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215
  %.not8.i.i217 = icmp eq ptr %0, %3
  br i1 %.not8.i.i217, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader

.lr.ph.i.i218.preheader:                          ; preds = %bb.i
  %i.jf = ptrtoaddr ptr %0 to i64
  %i.jg = add i64 %i.e, -4
  %i.jh = sub i64 %i.jg, %i.jf                    ; 3 uses
  %i.ji = lshr i64 %i.jh, 2
  %i.jj = add nuw nsw i64 %i.ji, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.jh, 108
  br i1 %min.iters.check340, label %.lr.ph.i.i218.preheader384, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i.i218.preheader
  %i.jk = shl i64 %4, 2
  %i.jl = and i64 %i.jh, -4                       ; 2 uses
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = sub nuw nsw i64 -4, %i.jm
  %i.jo = getelementptr i8, ptr %i.in, i64 %i.jn
  %i.jp = sub nuw nsw i64 -4, %i.jl
  %i.jq = getelementptr i8, ptr %3, i64 %i.jp
  %bound0342 = icmp ult ptr %i.jo, %3
  %bound1343 = icmp ult ptr %i.jq, %i.ip
  %found.conflict344 = and i1 %bound0342, %bound1343
  br i1 %found.conflict344, label %.lr.ph.i.i218.preheader384, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.jj, 9223372036854775800  ; 3 uses
  %i.jr = mul i64 %n.vec346, -4                   ; 2 uses
  %i.js = getelementptr i8, ptr %i.ip, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %3, i64 %i.jr
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.ju = mul i64 %index348, -4                   ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.ip, i64 %i.ju ; 2 uses
  %next.gep350 = getelementptr i8, ptr %3, i64 %i.ju ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %next.gep350, i64 -16 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %next.gep350, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !65, !alias.scope !1033
  %wide.load352 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !65, !alias.scope !1033
  %i.jx = getelementptr inbounds i8, ptr %next.gep349, i64 -16
  %i.jy = getelementptr inbounds i8, ptr %next.gep349, i64 -32
  store <4 x i32> %wide.load351, ptr %i.jx, align 4, !tbaa !65, !alias.scope !1034, !noalias !1033
  store <4 x i32> %wide.load352, ptr %i.jy, align 4, !tbaa !65, !alias.scope !1034, !noalias !1033
  store <4 x i32> zeroinitializer, ptr %i.jv, align 4, !tbaa !65, !alias.scope !1033
  store <4 x i32> zeroinitializer, ptr %i.jw, align 4, !tbaa !65, !alias.scope !1033
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.jz, label %middle.block354, label %vector.body347, !llvm.loop !1025

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.jj, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader384

.lr.ph.i.i218.preheader384:                       ; preds = %vector.memcheck341, %.lr.ph.i.i218.preheader, %middle.block354
  %.010.i.i219.ph = phi ptr [ %i.ip, %vector.memcheck341 ], [ %i.ip, %.lr.ph.i.i218.preheader ], [ %i.js, %middle.block354 ]
  %.079.i.i220.ph = phi ptr [ %3, %vector.memcheck341 ], [ %3, %.lr.ph.i.i218.preheader ], [ %i.jt, %middle.block354 ]
  br label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %.lr.ph.i.i218.preheader384, %.lr.ph.i.i218
  %.010.i.i219 = phi ptr [ %i.kb, %.lr.ph.i.i218 ], [ %.010.i.i219.ph, %.lr.ph.i.i218.preheader384 ]
  %.079.i.i220 = phi ptr [ %i.ka, %.lr.ph.i.i218 ], [ %.079.i.i220.ph, %.lr.ph.i.i218.preheader384 ]
  %i.ka = getelementptr inbounds i8, ptr %.079.i.i220, i64 -4 ; 4 uses
  %i.kb = getelementptr inbounds i8, ptr %.010.i.i219, i64 -4 ; 3 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !65
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !65
  store i32 0, ptr %i.ka, align 4, !tbaa !65
  %.not.i.i221 = icmp eq ptr %0, %i.ka
  br i1 %.not.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218, !llvm.loop !1026

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222: ; preds = %.lr.ph.i.i218, %middle.block354, %bb.i
  %i.kd = phi ptr [ %i.ip, %bb.i ], [ %i.js, %middle.block354 ], [ %i.kb, %.lr.ph.i.i218 ] ; 2 uses
  %.not3.i223 = icmp eq ptr %0, %i.kd
  br i1 %.not3.i223, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i224
end_hunk_0
begin_hunk_1_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl34insert_default_initialized_n_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  store i32 0, ptr %.01315.i.i170.prol, align 4, !tbaa !65
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.en = getelementptr inbounds nuw i8, ptr %.01315.i.i170.prol, i64 4 ; 2 uses
  %prol.iter410.next = add i64 %prol.iter410, 1   ; 2 uses
  %prol.iter410.cmp.not = icmp eq i64 %prol.iter410.next, %xtraiter408
  br i1 %prol.iter410.cmp.not, label %.lr.ph.i.i168.prol.loopexit, label %.lr.ph.i.i168.prol, !llvm.loop !1100

.lr.ph.i.i168.prol.loopexit:                      ; preds = %.lr.ph.i.i168.prol, %.lr.ph.i.i168.preheader
  %.016.i.i169.unr = phi i64 [ %i.dp, %.lr.ph.i.i168.preheader ], [ %i.ek, %.lr.ph.i.i168.prol ]
  %.01315.i.i170.unr = phi ptr [ %i.a, %.lr.ph.i.i168.preheader ], [ %i.en, %.lr.ph.i.i168.prol ]
  %i.eo = sub nsw i64 %i.g, %i.j
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.prol.loopexit, %.lr.ph.i.i168
  %.016.i.i169 = phi i64 [ %i.ex, %.lr.ph.i.i168 ], [ %.016.i.i169.unr, %.lr.ph.i.i168.prol.loopexit ]
  %.01315.i.i170 = phi ptr [ %i.ez, %.lr.ph.i.i168 ], [ %.01315.i.i170.unr, %.lr.ph.i.i168.prol.loopexit ] ; 5 uses
  store i32 0, ptr %.01315.i.i170, align 4, !tbaa !65
  %i.eq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.er = add i32 %i.eq, 1
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.es = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 4
  store i32 0, ptr %i.es, align 4, !tbaa !65
  %i.et = add i32 %i.eq, 2
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.eu = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 8
  store i32 0, ptr %i.eu, align 4, !tbaa !65
  %i.ev = add i32 %i.eq, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 12
  %i.ex = add i64 %.016.i.i169, -4                ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !65
  %i.ey = add i32 %i.eq, 4
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ez = getelementptr inbounds nuw i8, ptr %.01315.i.i170, i64 16
  %.not.i.i171.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i171.3, label %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172, label %.lr.ph.i.i168, !llvm.loop !6

_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172: ; preds = %.lr.ph.i.i168, %.lr.ph.i.i168.prol.loopexit
  %.not.i173 = icmp eq ptr %3, %i.ds
  br i1 %.not.i173, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit172
  %.not8.i.i174 = icmp eq ptr %0, %3
  br i1 %.not8.i.i174, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader

.lr.ph.i.i175.preheader:                          ; preds = %bb.g
  %i.fa = ptrtoaddr ptr %0 to i64
  %i.fb = add i64 %i.e, -4
  %i.fc = sub i64 %i.fb, %i.fa                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 2
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check364 = icmp ult i64 %i.fc, 124
  br i1 %min.iters.check364, label %.lr.ph.i.i175.preheader382, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph.i.i175.preheader
  %i.ff = and i64 %i.fc, -4                       ; 2 uses
  %i.fg = sub i64 %1, %i.dq
  %i.fh = shl i64 %i.fg, 2
  %i.fi = add i64 %i.fh, -4
  %i.fj = sub i64 %i.fi, %i.ff
  %i.fk = getelementptr i8, ptr %0, i64 %i.fj
  %i.fl = sub nuw nsw i64 -4, %i.ff
  %i.fm = getelementptr i8, ptr %3, i64 %i.fl
  %bound0366 = icmp ult ptr %i.fk, %3
  %bound1367 = icmp ult ptr %i.fm, %i.ds
  %found.conflict368 = and i1 %bound0366, %bound1367
  br i1 %found.conflict368, label %.lr.ph.i.i175.preheader382, label %vector.ph369

vector.ph369:                                     ; preds = %vector.memcheck365
  %n.vec370 = and i64 %i.fe, 9223372036854775800  ; 3 uses
  %i.fn = mul i64 %n.vec370, -4                   ; 2 uses
  %i.fo = getelementptr i8, ptr %i.ds, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %3, i64 %i.fn
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next377, %vector.body371 ] ; 2 uses
  %i.fq = mul i64 %index372, -4                   ; 2 uses
  %next.gep373 = getelementptr i8, ptr %i.ds, i64 %i.fq ; 2 uses
  %next.gep374 = getelementptr i8, ptr %3, i64 %i.fq ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %next.gep374, i64 -16 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %next.gep374, i64 -32 ; 2 uses
  %wide.load375 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !65, !alias.scope !1119
  %wide.load376 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !65, !alias.scope !1119
  %i.ft = getelementptr inbounds i8, ptr %next.gep373, i64 -16
  %i.fu = getelementptr inbounds i8, ptr %next.gep373, i64 -32
  store <4 x i32> %wide.load375, ptr %i.ft, align 4, !tbaa !65, !alias.scope !1120, !noalias !1119
  store <4 x i32> %wide.load376, ptr %i.fu, align 4, !tbaa !65, !alias.scope !1120, !noalias !1119
  store <4 x i32> zeroinitializer, ptr %i.fr, align 4, !tbaa !65, !alias.scope !1119
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !65, !alias.scope !1119
  %index.next377 = add nuw i64 %index372, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next377, %n.vec370
  br i1 %i.fv, label %middle.block378, label %vector.body371, !llvm.loop !1104

middle.block378:                                  ; preds = %vector.body371
  %cmp.n379 = icmp eq i64 %i.fe, %n.vec370
  br i1 %cmp.n379, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175.preheader382

.lr.ph.i.i175.preheader382:                       ; preds = %vector.memcheck365, %.lr.ph.i.i175.preheader, %middle.block378
  %.010.i.i176.ph = phi ptr [ %i.ds, %vector.memcheck365 ], [ %i.ds, %.lr.ph.i.i175.preheader ], [ %i.fo, %middle.block378 ]
  %.079.i.i177.ph = phi ptr [ %3, %vector.memcheck365 ], [ %3, %.lr.ph.i.i175.preheader ], [ %i.fp, %middle.block378 ]
  br label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %.lr.ph.i.i175.preheader382, %.lr.ph.i.i175
  %.010.i.i176 = phi ptr [ %i.fx, %.lr.ph.i.i175 ], [ %.010.i.i176.ph, %.lr.ph.i.i175.preheader382 ]
  %.079.i.i177 = phi ptr [ %i.fw, %.lr.ph.i.i175 ], [ %.079.i.i177.ph, %.lr.ph.i.i175.preheader382 ]
  %i.fw = getelementptr inbounds i8, ptr %.079.i.i177, i64 -4 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %.010.i.i176, i64 -4 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !65
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !65
  store i32 0, ptr %i.fw, align 4, !tbaa !65
  %.not.i.i178 = icmp eq ptr %0, %i.fw
  br i1 %.not.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, label %.lr.ph.i.i175, !llvm.loop !1105

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179: ; preds = %.lr.ph.i.i175, %middle.block378, %bb.g
  %i.fz = phi ptr [ %i.ds, %bb.g ], [ %i.fo, %middle.block378 ], [ %i.fx, %.lr.ph.i.i175 ] ; 2 uses
  %.not3.i180 = icmp eq ptr %0, %i.fz
  br i1 %.not3.i180, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179, %.lr.ph.i181
  %storemerge4.i182 = phi ptr [ %i.gc, %.lr.ph.i181 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit179 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i182, align 4, !tbaa !65
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gb = add i32 %i.ga, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %storemerge4.i182, i64 4 ; 2 uses
  %.not.i183 = icmp eq ptr %i.gc, %i.fz
  br i1 %.not.i183, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i181, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gd = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i193 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i193, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i194.preheader

.lr.ph.i194.preheader:                            ; preds = %bb.h
  %i.ge = and i64 %i.i, 4
  %lcmp.mod398.not = icmp eq i64 %i.ge, 0
  br i1 %lcmp.mod398.not, label %.lr.ph.i194.prol.loopexit, label %.lr.ph.i194.prol

.lr.ph.i194.prol:                                 ; preds = %.lr.ph.i194.preheader
  %i.gf = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !65
  store i32 %i.gg, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.gd, align 4, !tbaa !65
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i194.prol.loopexit

.lr.ph.i194.prol.loopexit:                        ; preds = %.lr.ph.i194.prol, %.lr.ph.i194.preheader
  %.020.i195.unr = phi i64 [ %i.j, %.lr.ph.i194.preheader ], [ %i.gf, %.lr.ph.i194.prol ]
  %.0819.i196.unr = phi ptr [ %i.gd, %.lr.ph.i194.preheader ], [ %i.gj, %.lr.ph.i194.prol ]
  %.01618.i197.unr = phi ptr [ %i.a, %.lr.ph.i194.preheader ], [ %i.gk, %.lr.ph.i194.prol ]
  %i.gl = icmp eq i64 %i.i, 4
  br i1 %i.gl, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.lr.ph.i194.prol.loopexit, %.lr.ph.i194
  %.020.i195 = phi i64 [ %i.gr, %.lr.ph.i194 ], [ %.020.i195.unr, %.lr.ph.i194.prol.loopexit ]
  %.0819.i196 = phi ptr [ %i.gv, %.lr.ph.i194 ], [ %.0819.i196.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  %.01618.i197 = phi ptr [ %i.gw, %.lr.ph.i194 ], [ %.01618.i197.unr, %.lr.ph.i194.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i197) ]
  %i.gm = load i32, ptr %.0819.i196, align 4, !tbaa !65
  store i32 %i.gm, ptr %.01618.i197, align 4, !tbaa !65
  store i32 0, ptr %.0819.i196, align 4, !tbaa !65
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 4
  %i.gr = add i64 %.020.i195, -2                  ; 2 uses
  %i.gs = load i32, ptr %i.gp, align 4, !tbaa !65
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !65
  store i32 0, ptr %i.gp, align 4, !tbaa !65
  %i.gt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %.0819.i196, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.01618.i197, i64 8
  %.not.i198.1 = icmp eq i64 %i.gr, 0
  br i1 %.not.i198.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200, label %.lr.ph.i194, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200: ; preds = %.lr.ph.i194, %.lr.ph.i194.prol.loopexit
  %.not8.i.i202 = icmp eq ptr %3, %i.gd
  br i1 %.not8.i.i202, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader

.lr.ph.i.i203.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.gx = shl nsw i64 %1, 2
  %i.gy = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.gz = shl i64 %i.gy, 1
  %i.ha = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hb = shl i64 %4, 2
  %i.hc = add i64 %i.gx, %i.gz
  %i.hd = add i64 %i.hc, -4
  %i.he = add i64 %i.e, %i.ha
  %i.hf = add i64 %i.he, %i.hb
  %i.hg = sub i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.hg, 188
  br i1 %min.iters.check316, label %.lr.ph.i.i203.preheader386, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.i203.preheader
  %i.hj = shl nsw i64 %1, 2                       ; 3 uses
  %i.hk = shl i64 %i.gy, 1
  %i.hl = shl i64 %4, 2                           ; 2 uses
  %i.hm = add i64 %i.hj, %i.hk
  %i.hn = add i64 %i.hm, -4
  %i.ho = add i64 %i.e, %i.ha
  %i.hp = add i64 %i.ho, %i.hl
  %i.hq = sub i64 %i.hn, %i.hp
  %i.hr = and i64 %i.hq, -4                       ; 2 uses
  %i.hs = add i64 %i.hj, -4
  %i.ht = sub i64 %i.hs, %i.hr
  %i.hu = getelementptr i8, ptr %0, i64 %i.ht
  %i.hv = add i64 %i.hj, %i.gy
  %i.hw = add i64 %i.hv, -4
  %i.hx = add i64 %i.hl, %i.ha
  %i.hy = add i64 %i.hx, %i.hr
  %i.hz = sub i64 %i.hw, %i.hy
  %i.ia = getelementptr i8, ptr %0, i64 %i.hz
  %bound0318 = icmp ult ptr %i.hu, %i.gd
  %bound1319 = icmp ult ptr %i.ia, %i.a
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i203.preheader386, label %vector.ph321

vector.ph321:                                     ; preds = %vector.memcheck317
  %n.vec322 = and i64 %i.hi, 9223372036854775800  ; 3 uses
  %i.ib = mul i64 %n.vec322, -4                   ; 2 uses
  %i.ic = getelementptr i8, ptr %i.a, i64 %i.ib   ; 2 uses
  %i.id = getelementptr i8, ptr %i.gd, i64 %i.ib
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.ie = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %i.a, i64 %i.ie ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.gd, i64 %i.ie ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %next.gep326, i64 -16 ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep326, i64 -32 ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.if, align 4, !tbaa !65, !alias.scope !1121
  %wide.load328 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !65, !alias.scope !1121
  %i.ih = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.ih, align 4, !tbaa !65, !alias.scope !1122, !noalias !1121
  store <4 x i32> %wide.load328, ptr %i.ii, align 4, !tbaa !65, !alias.scope !1122, !noalias !1121
  store <4 x i32> zeroinitializer, ptr %i.if, align 4, !tbaa !65, !alias.scope !1121
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !65, !alias.scope !1121
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.ij, label %middle.block330, label %vector.body323, !llvm.loop !1109

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.hi, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203.preheader386

.lr.ph.i.i203.preheader386:                       ; preds = %vector.memcheck317, %.lr.ph.i.i203.preheader, %middle.block330
  %.010.i.i204.ph = phi ptr [ %i.a, %vector.memcheck317 ], [ %i.a, %.lr.ph.i.i203.preheader ], [ %i.ic, %middle.block330 ]
  %.079.i.i205.ph = phi ptr [ %i.gd, %vector.memcheck317 ], [ %i.gd, %.lr.ph.i.i203.preheader ], [ %i.id, %middle.block330 ]
  br label %.lr.ph.i.i203

.lr.ph.i.i203:                                    ; preds = %.lr.ph.i.i203.preheader386, %.lr.ph.i.i203
  %.010.i.i204 = phi ptr [ %i.il, %.lr.ph.i.i203 ], [ %.010.i.i204.ph, %.lr.ph.i.i203.preheader386 ]
  %.079.i.i205 = phi ptr [ %i.ik, %.lr.ph.i.i203 ], [ %.079.i.i205.ph, %.lr.ph.i.i203.preheader386 ]
  %i.ik = getelementptr inbounds i8, ptr %.079.i.i205, i64 -4 ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %.010.i.i204, i64 -4 ; 3 uses
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !65
  store i32 %i.im, ptr %i.il, align 4, !tbaa !65
  store i32 0, ptr %i.ik, align 4, !tbaa !65
  %.not.i.i206 = icmp eq ptr %3, %i.ik
  br i1 %.not.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207, label %.lr.ph.i.i203, !llvm.loop !1110

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207: ; preds = %.lr.ph.i.i203, %middle.block330, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200
  %i.in = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit200 ], [ %i.ic, %middle.block330 ], [ %i.il, %.lr.ph.i.i203 ] ; 2 uses
  %i.io = sub i64 0, %4
  %i.ip = getelementptr [4 x i8], ptr %i.in, i64 %i.io ; 9 uses
  %.not8.i208 = icmp eq i64 %4, 0
  br i1 %.not8.i208, label %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.preheader.i209

.lr.ph.preheader.i209:                            ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207
  %.pre.i210 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.iq = add i32 %.pre.i210, 1                   ; 2 uses
  %xtraiter400 = and i64 %4, 3                    ; 2 uses
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol

.lr.ph.i211.prol:                                 ; preds = %.lr.ph.preheader.i209, %.lr.ph.i211.prol
  %i.ir = phi i32 [ %i.iu, %.lr.ph.i211.prol ], [ %i.iq, %.lr.ph.preheader.i209 ]
  %.010.i212.prol = phi ptr [ %i.it, %.lr.ph.i211.prol ], [ %i.ip, %.lr.ph.preheader.i209 ] ; 2 uses
  %.079.i213.prol = phi i64 [ %i.is, %.lr.ph.i211.prol ], [ %4, %.lr.ph.preheader.i209 ]
  %prol.iter402 = phi i64 [ %prol.iter402.next, %.lr.ph.i211.prol ], [ 0, %.lr.ph.preheader.i209 ]
  %i.is = add i64 %.079.i213.prol, -1             ; 2 uses
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  store i32 0, ptr %.010.i212.prol, align 4, !tbaa !65
  %i.it = getelementptr inbounds nuw i8, ptr %.010.i212.prol, i64 4 ; 2 uses
  %i.iu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 3 uses
  %i.iv = add i32 %i.iu, -1
  store i32 %i.iv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %prol.iter402.next = add i64 %prol.iter402, 1   ; 2 uses
  %prol.iter402.cmp.not = icmp eq i64 %prol.iter402.next, %xtraiter400
  br i1 %prol.iter402.cmp.not, label %.lr.ph.i211.prol.loopexit, label %.lr.ph.i211.prol, !llvm.loop !1111

.lr.ph.i211.prol.loopexit:                        ; preds = %.lr.ph.i211.prol, %.lr.ph.preheader.i209
  %.unr403 = phi i32 [ %i.iq, %.lr.ph.preheader.i209 ], [ %i.iu, %.lr.ph.i211.prol ]
  %.010.i212.unr = phi ptr [ %i.ip, %.lr.ph.preheader.i209 ], [ %i.it, %.lr.ph.i211.prol ]
  %.079.i213.unr = phi i64 [ %4, %.lr.ph.preheader.i209 ], [ %i.is, %.lr.ph.i211.prol ]
  %i.iw = icmp ult i64 %4, 4
  br i1 %i.iw, label %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211
  %i.ix = phi i32 [ %i.jd, %.lr.ph.i211 ], [ %.unr403, %.lr.ph.i211.prol.loopexit ]
  %.010.i212 = phi ptr [ %i.jc, %.lr.ph.i211 ], [ %.010.i212.unr, %.lr.ph.i211.prol.loopexit ] ; 5 uses
  %.079.i213 = phi i64 [ %i.jb, %.lr.ph.i211 ], [ %.079.i213.unr, %.lr.ph.i211.prol.loopexit ]
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  store i32 0, ptr %.010.i212, align 4, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i212, i64 4
  store i32 0, ptr %i.iy, align 4, !tbaa !65
  %i.iz = getelementptr inbounds nuw i8, ptr %.010.i212, i64 8
  store i32 0, ptr %i.iz, align 4, !tbaa !65
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i212, i64 12
  %i.jb = add i64 %.079.i213, -4                  ; 2 uses
  store i32 0, ptr %i.ja, align 4, !tbaa !65
  %i.jc = getelementptr inbounds nuw i8, ptr %.010.i212, i64 16
  %i.jd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 2 uses
  %i.je = add i32 %i.jd, -1
  store i32 %i.je, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %.not.i214.3 = icmp eq i64 %i.jb, 0
  br i1 %.not.i214.3, label %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215, label %.lr.ph.i211, !llvm.loop !19

_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215: ; preds = %.lr.ph.i211.prol.loopexit, %.lr.ph.i211, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit207
  %.not.i216 = icmp eq ptr %3, %i.ip
  br i1 %.not.i216, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl34insert_default_initialized_n_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit215
  %.not8.i.i217 = icmp eq ptr %0, %3
  br i1 %.not8.i.i217, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader

.lr.ph.i.i218.preheader:                          ; preds = %bb.i
  %i.jf = ptrtoaddr ptr %0 to i64
  %i.jg = add i64 %i.e, -4
  %i.jh = sub i64 %i.jg, %i.jf                    ; 3 uses
  %i.ji = lshr i64 %i.jh, 2
  %i.jj = add nuw nsw i64 %i.ji, 1                ; 2 uses
  %min.iters.check340 = icmp ult i64 %i.jh, 108
  br i1 %min.iters.check340, label %.lr.ph.i.i218.preheader384, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph.i.i218.preheader
  %i.jk = shl i64 %4, 2
  %i.jl = and i64 %i.jh, -4                       ; 2 uses
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = sub nuw nsw i64 -4, %i.jm
  %i.jo = getelementptr i8, ptr %i.in, i64 %i.jn
  %i.jp = sub nuw nsw i64 -4, %i.jl
  %i.jq = getelementptr i8, ptr %3, i64 %i.jp
  %bound0342 = icmp ult ptr %i.jo, %3
  %bound1343 = icmp ult ptr %i.jq, %i.ip
  %found.conflict344 = and i1 %bound0342, %bound1343
  br i1 %found.conflict344, label %.lr.ph.i.i218.preheader384, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck341
  %n.vec346 = and i64 %i.jj, 9223372036854775800  ; 3 uses
  %i.jr = mul i64 %n.vec346, -4                   ; 2 uses
  %i.js = getelementptr i8, ptr %i.ip, i64 %i.jr  ; 2 uses
  %i.jt = getelementptr i8, ptr %3, i64 %i.jr
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.ju = mul i64 %index348, -4                   ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.ip, i64 %i.ju ; 2 uses
  %next.gep350 = getelementptr i8, ptr %3, i64 %i.ju ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %next.gep350, i64 -16 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %next.gep350, i64 -32 ; 2 uses
  %wide.load351 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !65, !alias.scope !1123
  %wide.load352 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !65, !alias.scope !1123
  %i.jx = getelementptr inbounds i8, ptr %next.gep349, i64 -16
  %i.jy = getelementptr inbounds i8, ptr %next.gep349, i64 -32
  store <4 x i32> %wide.load351, ptr %i.jx, align 4, !tbaa !65, !alias.scope !1124, !noalias !1123
  store <4 x i32> %wide.load352, ptr %i.jy, align 4, !tbaa !65, !alias.scope !1124, !noalias !1123
  store <4 x i32> zeroinitializer, ptr %i.jv, align 4, !tbaa !65, !alias.scope !1123
  store <4 x i32> zeroinitializer, ptr %i.jw, align 4, !tbaa !65, !alias.scope !1123
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.jz = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.jz, label %middle.block354, label %vector.body347, !llvm.loop !1115

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %i.jj, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218.preheader384

.lr.ph.i.i218.preheader384:                       ; preds = %vector.memcheck341, %.lr.ph.i.i218.preheader, %middle.block354
  %.010.i.i219.ph = phi ptr [ %i.ip, %vector.memcheck341 ], [ %i.ip, %.lr.ph.i.i218.preheader ], [ %i.js, %middle.block354 ]
  %.079.i.i220.ph = phi ptr [ %3, %vector.memcheck341 ], [ %3, %.lr.ph.i.i218.preheader ], [ %i.jt, %middle.block354 ]
  br label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %.lr.ph.i.i218.preheader384, %.lr.ph.i.i218
  %.010.i.i219 = phi ptr [ %i.kb, %.lr.ph.i.i218 ], [ %.010.i.i219.ph, %.lr.ph.i.i218.preheader384 ]
  %.079.i.i220 = phi ptr [ %i.ka, %.lr.ph.i.i218 ], [ %.079.i.i220.ph, %.lr.ph.i.i218.preheader384 ]
  %i.ka = getelementptr inbounds i8, ptr %.079.i.i220, i64 -4 ; 4 uses
  %i.kb = getelementptr inbounds i8, ptr %.010.i.i219, i64 -4 ; 3 uses
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !65
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !65
  store i32 0, ptr %i.ka, align 4, !tbaa !65
  %.not.i.i221 = icmp eq ptr %0, %i.ka
  br i1 %.not.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222, label %.lr.ph.i.i218, !llvm.loop !1116

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit222: ; preds = %.lr.ph.i.i218, %middle.block354, %bb.i
  %i.kd = phi ptr [ %i.ip, %bb.i ], [ %i.js, %middle.block354 ], [ %i.kb, %.lr.ph.i.i218 ] ; 2 uses
  %.not3.i223 = icmp eq ptr %0, %i.kd
  br i1 %.not3.i223, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i224
end_hunk_1
begin_hunk_2_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvT0_mSC_SC_mT1_RT_:bb.a
  br i1 %.not3.i144.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.preheader, !llvm.loop !18

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.l, %i.h
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dd, %.lr.ph.i155 ], [ %i.cy, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cz = load i32, ptr %.018.i156, align 4, !tbaa !65
  store i32 %i.cz, ptr %.01517.i157, align 4, !tbaa !65
  store i32 0, ptr %.018.i156, align 4, !tbaa !65
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !65    ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 %i.df, ptr %i.b, align 4, !tbaa !65
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %.not.i161 = icmp eq ptr %3, %i.de
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.di = ptrtoaddr ptr %0 to i64
  %i.dj = add i64 %i.f, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dk, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dn = shl nsw i64 %1, 2
  %i.do = and i64 %i.dk, -4                       ; 2 uses
  %i.dp = shl i64 %i.m, 2
  %i.dq = add i64 %i.k, %i.dn
  %i.dr = add i64 %i.dq, -4
  %i.ds = add i64 %i.do, %i.dp
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = sub nuw nsw i64 -4, %i.do
  %i.dw = getelementptr i8, ptr %3, i64 %i.dv
  %bound0348 = icmp ult ptr %i.du, %3
  %bound1349 = icmp ult ptr %i.dw, %i.de
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.de, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 %i.dx
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.ea = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.de, i64 %i.ea ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !65, !alias.scope !1186
  %wide.load358 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !65, !alias.scope !1186
  %i.ed = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.ed, align 4, !tbaa !65, !alias.scope !1187, !noalias !1186
  store <4 x i32> %wide.load358, ptr %i.ee, align 4, !tbaa !65, !alias.scope !1187, !noalias !1186
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !65, !alias.scope !1186
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !65, !alias.scope !1186
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ef, label %middle.block360, label %vector.body353, !llvm.loop !1172

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dm, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.de, %vector.memcheck347 ], [ %i.de, %.lr.ph.i.i163.preheader ], [ %i.dy, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dz, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.eh, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.eg, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !65
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !65
  store i32 0, ptr %i.eg, align 4, !tbaa !65
  %.not.i.i166 = icmp eq ptr %0, %i.eg
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !1173

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.ej = phi ptr [ %i.de, %bb.g ], [ %i.dy, %middle.block360 ], [ %i.eh, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.ej
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.em, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !65
  %i.ek = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.em, %i.ej
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.en = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.eo = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.ep = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !65
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %i.en, align 4, !tbaa !65
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.ep, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.en, %.lr.ph.i182.preheader ], [ %i.et, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.eu, %.lr.ph.i182.prol ]
  %i.ev = icmp eq i64 %i.k, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.fb, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.ff, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fg, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.ew = load i32, ptr %.0819.i184, align 4, !tbaa !65
  store i32 %i.ew, ptr %.01618.i185, align 4, !tbaa !65
  store i32 0, ptr %.0819.i184, align 4, !tbaa !65
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.fb = add i64 %.020.i183, -2                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !65
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !65
  store i32 0, ptr %i.ez, align 4, !tbaa !65
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.fb, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.en
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.fh = shl nsw i64 %1, 2
  %i.fi = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fj = shl i64 %i.fi, 1
  %i.fk = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fl = shl i64 %4, 2
  %i.fm = add i64 %i.fh, %i.fj
  %i.fn = add i64 %i.fm, -4
  %i.fo = add i64 %i.f, %i.fk
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = sub i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fq, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.ft = shl nsw i64 %1, 2                       ; 3 uses
  %i.fu = shl i64 %i.fi, 1
  %i.fv = shl i64 %4, 2                           ; 2 uses
  %i.fw = add i64 %i.ft, %i.fu
  %i.fx = add i64 %i.fw, -4
  %i.fy = add i64 %i.f, %i.fk
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = and i64 %i.ga, -4                       ; 2 uses
  %i.gc = add i64 %i.ft, -4
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = add i64 %i.ft, %i.fi
  %i.gg = add i64 %i.gf, -4
  %i.gh = add i64 %i.fv, %i.fk
  %i.gi = add i64 %i.gh, %i.gb
  %i.gj = sub i64 %i.gg, %i.gi
  %i.gk = getelementptr i8, ptr %0, i64 %i.gj
  %bound0300 = icmp ult ptr %i.ge, %i.en
  %bound1301 = icmp ult ptr %i.gk, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fs, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.b, i64 %i.gl   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.go = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.go ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.en, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !65, !alias.scope !1188
  %wide.load310 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !65, !alias.scope !1188
  %i.gr = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gr, align 4, !tbaa !65, !alias.scope !1189, !noalias !1188
  store <4 x i32> %wide.load310, ptr %i.gs, align 4, !tbaa !65, !alias.scope !1189, !noalias !1188
  store <4 x i32> zeroinitializer, ptr %i.gp, align 4, !tbaa !65, !alias.scope !1188
  store <4 x i32> zeroinitializer, ptr %i.gq, align 4, !tbaa !65, !alias.scope !1188
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gt, label %middle.block312, label %vector.body305, !llvm.loop !1177

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fs, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gm, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.en, %vector.memcheck299 ], [ %i.en, %.lr.ph.i.i191.preheader ], [ %i.gn, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gv, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gu, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gu = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !65
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !65
  store i32 0, ptr %i.gu, align 4, !tbaa !65
  %.not.i.i194 = icmp eq ptr %3, %i.gu
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !1178

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gm, %middle.block312 ], [ %i.gv, %.lr.ph.i.i191 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.a ; 8 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !65
  %.not.i196 = icmp eq ptr %3, %i.gy
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.ha = ptrtoaddr ptr %0 to i64
  %i.hb = add i64 %i.f, -4
  %i.hc = sub i64 %i.hb, %i.ha                    ; 3 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hc, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.hf = shl i64 %4, 2
  %i.hg = and i64 %i.hc, -4                       ; 2 uses
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = sub nuw nsw i64 -4, %i.hh
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi
  %i.hk = sub nuw nsw i64 -4, %i.hg
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %bound0324 = icmp ult ptr %i.hj, %3
  %bound1325 = icmp ult ptr %i.hl, %i.gy
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %3, i64 %i.hm
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hp = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gy, i64 %i.hp ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !65, !alias.scope !1190
  %wide.load334 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !65, !alias.scope !1190
  %i.hs = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hs, align 4, !tbaa !65, !alias.scope !1191, !noalias !1190
  store <4 x i32> %wide.load334, ptr %i.ht, align 4, !tbaa !65, !alias.scope !1191, !noalias !1190
  store <4 x i32> zeroinitializer, ptr %i.hq, align 4, !tbaa !65, !alias.scope !1190
  store <4 x i32> zeroinitializer, ptr %i.hr, align 4, !tbaa !65, !alias.scope !1190
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hu, label %middle.block336, label %vector.body329, !llvm.loop !1182

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.he, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gy, %vector.memcheck323 ], [ %i.gy, %.lr.ph.i.i198.preheader ], [ %i.hn, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.ho, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hw, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hv, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !65
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !65
  store i32 0, ptr %i.hv, align 4, !tbaa !65
  %.not.i.i201 = icmp eq ptr %0, %i.hv
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !1183

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hy = phi ptr [ %i.gy, %bb.i ], [ %i.hn, %middle.block336 ], [ %i.hw, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hy
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.ib, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !65
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !17

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82   ; 6 uses
  %i.e = sub i64 2305843009213693951, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %.neg.i = sub i64 %3, %i.d
  %i.h = add i64 %.neg.i, %i.g
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.d, 2305843009213693952
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.d, 3
  %i.l = udiv i64 %i.k, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.d, -6917529027641081857
  %i.n = shl i64 %i.d, 3
  %spec.select.i.i = select i1 %i.m, i64 -1, i64 %i.n
  br label %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = add i64 %i.g, %3                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 2305843009213693951
end_hunk_2
begin_hunk_3_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvT0_mSA_SA_mT1_RT_:bb.a

bb.e:                                             ; preds = %bb.a
  %i.cx = icmp ugt i64 %i.l, %i.h
  br i1 %i.cx, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i154 = icmp eq ptr %3, %i.b
  br i1 %.not16.i154, label %.loopexit, label %.lr.ph.i155.preheader

.lr.ph.i155.preheader:                            ; preds = %bb.f
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %.lr.ph.i155
  %.018.i156 = phi ptr [ %i.dc, %.lr.ph.i155 ], [ %3, %.lr.ph.i155.preheader ] ; 3 uses
  %.01517.i157 = phi ptr [ %i.dd, %.lr.ph.i155 ], [ %i.cy, %.lr.ph.i155.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i157) ]
  %i.cz = load i32, ptr %.018.i156, align 4, !tbaa !65
  store i32 %i.cz, ptr %.01517.i157, align 4, !tbaa !65
  store i32 0, ptr %.018.i156, align 4, !tbaa !65
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i156, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01517.i157, i64 4
  %.not.i158 = icmp eq ptr %i.dc, %i.b
  br i1 %.not.i158, label %.loopexit, label %.lr.ph.i155, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i155, %bb.f
  %.neg244 = sub i64 %i.l, %i.m
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.neg244 ; 8 uses
  %i.df = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.df, ptr %i.de, align 4, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  store i32 0, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %.not.i161 = icmp eq ptr %3, %i.de
  br i1 %.not.i161, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %.not8.i.i162 = icmp eq ptr %0, %3
  br i1 %.not8.i.i162, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.g
  %i.di = ptrtoaddr ptr %0 to i64
  %i.dj = add i64 %i.f, -4
  %i.dk = sub i64 %i.dj, %i.di                    ; 3 uses
  %i.dl = lshr i64 %i.dk, 2
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check346 = icmp ult i64 %i.dk, 140
  br i1 %min.iters.check346, label %.lr.ph.i.i163.preheader364, label %vector.memcheck347

vector.memcheck347:                               ; preds = %.lr.ph.i.i163.preheader
  %i.dn = shl nsw i64 %1, 2
  %i.do = and i64 %i.dk, -4                       ; 2 uses
  %i.dp = shl i64 %i.m, 2
  %i.dq = add i64 %i.k, %i.dn
  %i.dr = add i64 %i.dq, -4
  %i.ds = add i64 %i.do, %i.dp
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr i8, ptr %0, i64 %i.dt
  %i.dv = sub nuw nsw i64 -4, %i.do
  %i.dw = getelementptr i8, ptr %3, i64 %i.dv
  %bound0348 = icmp ult ptr %i.du, %3
  %bound1349 = icmp ult ptr %i.dw, %i.de
  %found.conflict350 = and i1 %bound0348, %bound1349
  br i1 %found.conflict350, label %.lr.ph.i.i163.preheader364, label %vector.ph351

vector.ph351:                                     ; preds = %vector.memcheck347
  %n.vec352 = and i64 %i.dm, 9223372036854775800  ; 3 uses
  %i.dx = mul i64 %n.vec352, -4                   ; 2 uses
  %i.dy = getelementptr i8, ptr %i.de, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 %i.dx
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph351
  %index354 = phi i64 [ 0, %vector.ph351 ], [ %index.next359, %vector.body353 ] ; 2 uses
  %i.ea = mul i64 %index354, -4                   ; 2 uses
  %next.gep355 = getelementptr i8, ptr %i.de, i64 %i.ea ; 2 uses
  %next.gep356 = getelementptr i8, ptr %3, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep356, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep356, i64 -32 ; 2 uses
  %wide.load357 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !65, !alias.scope !1253
  %wide.load358 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !65, !alias.scope !1253
  %i.ed = getelementptr inbounds i8, ptr %next.gep355, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep355, i64 -32
  store <4 x i32> %wide.load357, ptr %i.ed, align 4, !tbaa !65, !alias.scope !1254, !noalias !1253
  store <4 x i32> %wide.load358, ptr %i.ee, align 4, !tbaa !65, !alias.scope !1254, !noalias !1253
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !65, !alias.scope !1253
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !65, !alias.scope !1253
  %index.next359 = add nuw i64 %index354, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next359, %n.vec352
  br i1 %i.ef, label %middle.block360, label %vector.body353, !llvm.loop !1239

middle.block360:                                  ; preds = %vector.body353
  %cmp.n361 = icmp eq i64 %i.dm, %n.vec352
  br i1 %cmp.n361, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163.preheader364

.lr.ph.i.i163.preheader364:                       ; preds = %vector.memcheck347, %.lr.ph.i.i163.preheader, %middle.block360
  %.010.i.i164.ph = phi ptr [ %i.de, %vector.memcheck347 ], [ %i.de, %.lr.ph.i.i163.preheader ], [ %i.dy, %middle.block360 ]
  %.079.i.i165.ph = phi ptr [ %3, %vector.memcheck347 ], [ %3, %.lr.ph.i.i163.preheader ], [ %i.dz, %middle.block360 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader364, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.eh, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader364 ]
  %.079.i.i165 = phi ptr [ %i.eg, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader364 ]
  %i.eg = getelementptr inbounds i8, ptr %.079.i.i165, i64 -4 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %.010.i.i164, i64 -4 ; 3 uses
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !65
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !65
  store i32 0, ptr %i.eg, align 4, !tbaa !65
  %.not.i.i166 = icmp eq ptr %0, %i.eg
  br i1 %.not.i.i166, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, label %.lr.ph.i.i163, !llvm.loop !1240

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167: ; preds = %.lr.ph.i.i163, %middle.block360, %bb.g
  %i.ej = phi ptr [ %i.de, %bb.g ], [ %i.dy, %middle.block360 ], [ %i.eh, %.lr.ph.i.i163 ] ; 2 uses
  %.not3.i168 = icmp eq ptr %0, %i.ej
  br i1 %.not3.i168, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169

.lr.ph.i169:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %.lr.ph.i169
  %storemerge4.i170 = phi ptr [ %i.em, %.lr.ph.i169 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i170, align 4, !tbaa !65
  %i.ek = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge4.i170, i64 4 ; 2 uses
  %.not.i171 = icmp eq ptr %i.em, %i.ej
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i169, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.en = getelementptr i8, ptr %i.b, i64 %.idx   ; 10 uses
  %.not17.i181 = icmp eq ptr %i.d, %i.b
  br i1 %.not17.i181, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %bb.h
  %i.eo = and i64 %i.k, 4
  %lcmp.mod377.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i182.prol.loopexit, label %.lr.ph.i182.prol

.lr.ph.i182.prol:                                 ; preds = %.lr.ph.i182.preheader
  %i.ep = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.eq = load i32, ptr %i.en, align 4, !tbaa !65
  store i32 %i.eq, ptr %i.b, align 4, !tbaa !65
  store i32 0, ptr %i.en, align 4, !tbaa !65
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.lr.ph.i182.prol.loopexit

.lr.ph.i182.prol.loopexit:                        ; preds = %.lr.ph.i182.prol, %.lr.ph.i182.preheader
  %.020.i183.unr = phi i64 [ %i.l, %.lr.ph.i182.preheader ], [ %i.ep, %.lr.ph.i182.prol ]
  %.0819.i184.unr = phi ptr [ %i.en, %.lr.ph.i182.preheader ], [ %i.et, %.lr.ph.i182.prol ]
  %.01618.i185.unr = phi ptr [ %i.b, %.lr.ph.i182.preheader ], [ %i.eu, %.lr.ph.i182.prol ]
  %i.ev = icmp eq i64 %i.k, 4
  br i1 %i.ev, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.prol.loopexit, %.lr.ph.i182
  %.020.i183 = phi i64 [ %i.fb, %.lr.ph.i182 ], [ %.020.i183.unr, %.lr.ph.i182.prol.loopexit ]
  %.0819.i184 = phi ptr [ %i.ff, %.lr.ph.i182 ], [ %.0819.i184.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  %.01618.i185 = phi ptr [ %i.fg, %.lr.ph.i182 ], [ %.01618.i185.unr, %.lr.ph.i182.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i185) ]
  %i.ew = load i32, ptr %.0819.i184, align 4, !tbaa !65
  store i32 %i.ew, ptr %.01618.i185, align 4, !tbaa !65
  store i32 0, ptr %.0819.i184, align 4, !tbaa !65
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ey = add i32 %i.ex, 1
  store i32 %i.ey, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ez = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 4 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 4
  %i.fb = add i64 %.020.i183, -2                  ; 2 uses
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !65
  store i32 %i.fc, ptr %i.fa, align 4, !tbaa !65
  store i32 0, ptr %i.ez, align 4, !tbaa !65
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %.0819.i184, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01618.i185, i64 8
  %.not.i186.1 = icmp eq i64 %i.fb, 0
  br i1 %.not.i186.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188, label %.lr.ph.i182, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188: ; preds = %.lr.ph.i182, %.lr.ph.i182.prol.loopexit
  %.not8.i.i190 = icmp eq ptr %3, %i.en
  br i1 %.not8.i.i190, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader

.lr.ph.i.i191.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.fh = shl nsw i64 %1, 2
  %i.fi = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.fj = shl i64 %i.fi, 1
  %i.fk = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.fl = shl i64 %4, 2
  %i.fm = add i64 %i.fh, %i.fj
  %i.fn = add i64 %i.fm, -4
  %i.fo = add i64 %i.f, %i.fk
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = sub i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 2
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check298 = icmp ult i64 %i.fq, 188
  br i1 %min.iters.check298, label %.lr.ph.i.i191.preheader368, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.i.i191.preheader
  %i.ft = shl nsw i64 %1, 2                       ; 3 uses
  %i.fu = shl i64 %i.fi, 1
  %i.fv = shl i64 %4, 2                           ; 2 uses
  %i.fw = add i64 %i.ft, %i.fu
  %i.fx = add i64 %i.fw, -4
  %i.fy = add i64 %i.f, %i.fk
  %i.fz = add i64 %i.fy, %i.fv
  %i.ga = sub i64 %i.fx, %i.fz
  %i.gb = and i64 %i.ga, -4                       ; 2 uses
  %i.gc = add i64 %i.ft, -4
  %i.gd = sub i64 %i.gc, %i.gb
  %i.ge = getelementptr i8, ptr %0, i64 %i.gd
  %i.gf = add i64 %i.ft, %i.fi
  %i.gg = add i64 %i.gf, -4
  %i.gh = add i64 %i.fv, %i.fk
  %i.gi = add i64 %i.gh, %i.gb
  %i.gj = sub i64 %i.gg, %i.gi
  %i.gk = getelementptr i8, ptr %0, i64 %i.gj
  %bound0300 = icmp ult ptr %i.ge, %i.en
  %bound1301 = icmp ult ptr %i.gk, %i.b
  %found.conflict302 = and i1 %bound0300, %bound1301
  br i1 %found.conflict302, label %.lr.ph.i.i191.preheader368, label %vector.ph303

vector.ph303:                                     ; preds = %vector.memcheck299
  %n.vec304 = and i64 %i.fs, 9223372036854775800  ; 3 uses
  %i.gl = mul i64 %n.vec304, -4                   ; 2 uses
  %i.gm = getelementptr i8, ptr %i.b, i64 %i.gl   ; 2 uses
  %i.gn = getelementptr i8, ptr %i.en, i64 %i.gl
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph303
  %index306 = phi i64 [ 0, %vector.ph303 ], [ %index.next311, %vector.body305 ] ; 2 uses
  %i.go = mul i64 %index306, -4                   ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.b, i64 %i.go ; 2 uses
  %next.gep308 = getelementptr i8, ptr %i.en, i64 %i.go ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %next.gep308, i64 -16 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %next.gep308, i64 -32 ; 2 uses
  %wide.load309 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !65, !alias.scope !1255
  %wide.load310 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !65, !alias.scope !1255
  %i.gr = getelementptr inbounds i8, ptr %next.gep307, i64 -16
  %i.gs = getelementptr inbounds i8, ptr %next.gep307, i64 -32
  store <4 x i32> %wide.load309, ptr %i.gr, align 4, !tbaa !65, !alias.scope !1256, !noalias !1255
  store <4 x i32> %wide.load310, ptr %i.gs, align 4, !tbaa !65, !alias.scope !1256, !noalias !1255
  store <4 x i32> zeroinitializer, ptr %i.gp, align 4, !tbaa !65, !alias.scope !1255
  store <4 x i32> zeroinitializer, ptr %i.gq, align 4, !tbaa !65, !alias.scope !1255
  %index.next311 = add nuw i64 %index306, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next311, %n.vec304
  br i1 %i.gt, label %middle.block312, label %vector.body305, !llvm.loop !1244

middle.block312:                                  ; preds = %vector.body305
  %cmp.n313 = icmp eq i64 %i.fs, %n.vec304
  br i1 %cmp.n313, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191.preheader368

.lr.ph.i.i191.preheader368:                       ; preds = %vector.memcheck299, %.lr.ph.i.i191.preheader, %middle.block312
  %.010.i.i192.ph = phi ptr [ %i.b, %vector.memcheck299 ], [ %i.b, %.lr.ph.i.i191.preheader ], [ %i.gm, %middle.block312 ]
  %.079.i.i193.ph = phi ptr [ %i.en, %vector.memcheck299 ], [ %i.en, %.lr.ph.i.i191.preheader ], [ %i.gn, %middle.block312 ]
  br label %.lr.ph.i.i191

.lr.ph.i.i191:                                    ; preds = %.lr.ph.i.i191.preheader368, %.lr.ph.i.i191
  %.010.i.i192 = phi ptr [ %i.gv, %.lr.ph.i.i191 ], [ %.010.i.i192.ph, %.lr.ph.i.i191.preheader368 ]
  %.079.i.i193 = phi ptr [ %i.gu, %.lr.ph.i.i191 ], [ %.079.i.i193.ph, %.lr.ph.i.i191.preheader368 ]
  %i.gu = getelementptr inbounds i8, ptr %.079.i.i193, i64 -4 ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %.010.i.i192, i64 -4 ; 3 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !65
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !65
  store i32 0, ptr %i.gu, align 4, !tbaa !65
  %.not.i.i194 = icmp eq ptr %3, %i.gu
  br i1 %.not.i.i194, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, label %.lr.ph.i.i191, !llvm.loop !1245

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195: ; preds = %.lr.ph.i.i191, %middle.block312, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188
  %i.gx = phi ptr [ %3, %bb.h ], [ %i.b, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit188 ], [ %i.gm, %middle.block312 ], [ %i.gv, %.lr.ph.i.i191 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.a ; 8 uses
  %i.gz = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !65
  store i32 0, ptr %5, align 4, !tbaa !65
  %.not.i196 = icmp eq ptr %3, %i.gy
  br i1 %.not.i196, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195
  %.not8.i.i197 = icmp eq ptr %0, %3
  br i1 %.not8.i.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader

.lr.ph.i.i198.preheader:                          ; preds = %bb.i
  %i.ha = ptrtoaddr ptr %0 to i64
  %i.hb = add i64 %i.f, -4
  %i.hc = sub i64 %i.hb, %i.ha                    ; 3 uses
  %i.hd = lshr i64 %i.hc, 2
  %i.he = add nuw nsw i64 %i.hd, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.hc, 108
  br i1 %min.iters.check322, label %.lr.ph.i.i198.preheader366, label %vector.memcheck323

vector.memcheck323:                               ; preds = %.lr.ph.i.i198.preheader
  %i.hf = shl i64 %4, 2
  %i.hg = and i64 %i.hc, -4                       ; 2 uses
  %i.hh = add i64 %i.hf, %i.hg
  %i.hi = sub nuw nsw i64 -4, %i.hh
  %i.hj = getelementptr i8, ptr %i.gx, i64 %i.hi
  %i.hk = sub nuw nsw i64 -4, %i.hg
  %i.hl = getelementptr i8, ptr %3, i64 %i.hk
  %bound0324 = icmp ult ptr %i.hj, %3
  %bound1325 = icmp ult ptr %i.hl, %i.gy
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i198.preheader366, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck323
  %n.vec328 = and i64 %i.he, 9223372036854775800  ; 3 uses
  %i.hm = mul i64 %n.vec328, -4                   ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gy, i64 %i.hm  ; 2 uses
  %i.ho = getelementptr i8, ptr %3, i64 %i.hm
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next335, %vector.body329 ] ; 2 uses
  %i.hp = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.gy, i64 %i.hp ; 2 uses
  %next.gep332 = getelementptr i8, ptr %3, i64 %i.hp ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.hr = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.hq, align 4, !tbaa !65, !alias.scope !1257
  %wide.load334 = load <4 x i32>, ptr %i.hr, align 4, !tbaa !65, !alias.scope !1257
  %i.hs = getelementptr inbounds i8, ptr %next.gep331, i64 -16
  %i.ht = getelementptr inbounds i8, ptr %next.gep331, i64 -32
  store <4 x i32> %wide.load333, ptr %i.hs, align 4, !tbaa !65, !alias.scope !1258, !noalias !1257
  store <4 x i32> %wide.load334, ptr %i.ht, align 4, !tbaa !65, !alias.scope !1258, !noalias !1257
  store <4 x i32> zeroinitializer, ptr %i.hq, align 4, !tbaa !65, !alias.scope !1257
  store <4 x i32> zeroinitializer, ptr %i.hr, align 4, !tbaa !65, !alias.scope !1257
  %index.next335 = add nuw i64 %index330, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next335, %n.vec328
  br i1 %i.hu, label %middle.block336, label %vector.body329, !llvm.loop !1249

middle.block336:                                  ; preds = %vector.body329
  %cmp.n337 = icmp eq i64 %i.he, %n.vec328
  br i1 %cmp.n337, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198.preheader366

.lr.ph.i.i198.preheader366:                       ; preds = %vector.memcheck323, %.lr.ph.i.i198.preheader, %middle.block336
  %.010.i.i199.ph = phi ptr [ %i.gy, %vector.memcheck323 ], [ %i.gy, %.lr.ph.i.i198.preheader ], [ %i.hn, %middle.block336 ]
  %.079.i.i200.ph = phi ptr [ %3, %vector.memcheck323 ], [ %3, %.lr.ph.i.i198.preheader ], [ %i.ho, %middle.block336 ]
  br label %.lr.ph.i.i198

.lr.ph.i.i198:                                    ; preds = %.lr.ph.i.i198.preheader366, %.lr.ph.i.i198
  %.010.i.i199 = phi ptr [ %i.hw, %.lr.ph.i.i198 ], [ %.010.i.i199.ph, %.lr.ph.i.i198.preheader366 ]
  %.079.i.i200 = phi ptr [ %i.hv, %.lr.ph.i.i198 ], [ %.079.i.i200.ph, %.lr.ph.i.i198.preheader366 ]
  %i.hv = getelementptr inbounds i8, ptr %.079.i.i200, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.010.i.i199, i64 -4 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !65
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !65
  store i32 0, ptr %i.hv, align 4, !tbaa !65
  %.not.i.i201 = icmp eq ptr %0, %i.hv
  br i1 %.not.i.i201, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, label %.lr.ph.i.i198, !llvm.loop !1250

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202: ; preds = %.lr.ph.i.i198, %middle.block336, %bb.i
  %i.hy = phi ptr [ %i.gy, %bb.i ], [ %i.hn, %middle.block336 ], [ %i.hw, %.lr.ph.i.i198 ] ; 2 uses
  %.not3.i203 = icmp eq ptr %0, %i.hy
  br i1 %.not3.i203, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %.lr.ph.i204
  %storemerge4.i205 = phi ptr [ %i.ib, %.lr.ph.i204 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i205, align 4, !tbaa !65
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i205, i64 4 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ib, %i.hy
  br i1 %.not.i206, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145, label %.lr.ph.i204, !llvm.loop !17

_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit145: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i138, %.lr.ph.i204, %.lr.ph.i169, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit195, %.loopexit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit202, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit167, %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !78     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !82   ; 6 uses
  %i.e = sub i64 2305843009213693951, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %.neg.i = sub i64 %3, %i.d
  %i.h = add i64 %.neg.i, %i.g
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.2) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.d, 2305843009213693952
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.d, 3
  %i.l = udiv i64 %i.k, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.d, -6917529027641081857
  %i.n = shl i64 %i.d, 3
  %spec.select.i.i = select i1 %i.m, i64 -1, i64 %i.n
  br label %_ZNK5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = add i64 %i.g, %3                         ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvT0_mSA_SA_mT1_RT_:bb.a
  %prol.iter429.next = add i64 %prol.iter429, 1   ; 2 uses
  %prol.iter429.cmp.not = icmp eq i64 %prol.iter429.next, %xtraiter427
  br i1 %prol.iter429.cmp.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !1332

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader
  %.017.i.i167.unr = phi i64 [ %i.du, %.lr.ph.i.i166.preheader ], [ %i.eg, %.lr.ph.i.i166.prol ]
  %.01416.i.i168.unr = phi ptr [ %i.a, %.lr.ph.i.i166.preheader ], [ %i.ek, %.lr.ph.i.i166.prol ]
  %i.el = sub nsw i64 %i.g, %i.j
  %i.em = icmp ugt i64 %i.el, -4
  br i1 %i.em, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.017.i.i167 = phi i64 [ %i.ex, %.lr.ph.i.i166 ], [ %.017.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.01416.i.i168 = phi ptr [ %i.fa, %.lr.ph.i.i166 ], [ %.01416.i.i168.unr, %.lr.ph.i.i166.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i168) ]
  %i.en = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.en, ptr %.01416.i.i168, align 4, !tbaa !65
  %i.eo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.eq = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 4
  %i.er = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !65
  %i.es = add i32 %i.eo, 2
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.et = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 8
  %i.eu = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !65
  %i.ev = add i32 %i.eo, 3
  store i32 %i.ev, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ew = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 12
  %i.ex = add i64 %.017.i.i167, -4                ; 2 uses
  %i.ey = load i32, ptr %5, align 4, !tbaa !65
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !65
  %i.ez = add i32 %i.eo, 4
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fa = getelementptr inbounds nuw i8, ptr %.01416.i.i168, i64 16
  %.not.i.i169.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i169.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170, label %.lr.ph.i.i166, !llvm.loop !7

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170: ; preds = %.lr.ph.i.i166, %.lr.ph.i.i166.prol.loopexit
  %.not.i171 = icmp eq ptr %3, %i.dx
  br i1 %.not.i171, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit170
  %.not8.i.i172 = icmp eq ptr %0, %3
  br i1 %.not8.i.i172, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader

.lr.ph.i.i173.preheader:                          ; preds = %bb.g
  %i.fb = ptrtoaddr ptr %0 to i64
  %i.fc = add i64 %i.e, -4
  %i.fd = sub i64 %i.fc, %i.fb                    ; 3 uses
  %i.fe = lshr i64 %i.fd, 2
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check391 = icmp ult i64 %i.fd, 124
  br i1 %min.iters.check391, label %.lr.ph.i.i173.preheader409, label %vector.memcheck392

vector.memcheck392:                               ; preds = %.lr.ph.i.i173.preheader
  %i.fg = and i64 %i.fd, -4                       ; 2 uses
  %i.fh = sub i64 %1, %i.dv
  %i.fi = shl i64 %i.fh, 2
  %i.fj = add i64 %i.fi, -4
  %i.fk = sub i64 %i.fj, %i.fg
  %i.fl = getelementptr i8, ptr %0, i64 %i.fk
  %i.fm = sub nuw nsw i64 -4, %i.fg
  %i.fn = getelementptr i8, ptr %3, i64 %i.fm
  %bound0393 = icmp ult ptr %i.fl, %3
  %bound1394 = icmp ult ptr %i.fn, %i.dx
  %found.conflict395 = and i1 %bound0393, %bound1394
  br i1 %found.conflict395, label %.lr.ph.i.i173.preheader409, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.ff, 9223372036854775800  ; 3 uses
  %i.fo = mul i64 %n.vec397, -4                   ; 2 uses
  %i.fp = getelementptr i8, ptr %i.dx, i64 %i.fo  ; 2 uses
  %i.fq = getelementptr i8, ptr %3, i64 %i.fo
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.fr = mul i64 %index399, -4                   ; 2 uses
  %next.gep400 = getelementptr i8, ptr %i.dx, i64 %i.fr ; 2 uses
  %next.gep401 = getelementptr i8, ptr %3, i64 %i.fr ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %next.gep401, i64 -16 ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %next.gep401, i64 -32 ; 2 uses
  %wide.load402 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !65, !alias.scope !1352
  %wide.load403 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !65, !alias.scope !1352
  %i.fu = getelementptr inbounds i8, ptr %next.gep400, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %next.gep400, i64 -32
  store <4 x i32> %wide.load402, ptr %i.fu, align 4, !tbaa !65, !alias.scope !1353, !noalias !1352
  store <4 x i32> %wide.load403, ptr %i.fv, align 4, !tbaa !65, !alias.scope !1353, !noalias !1352
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !65, !alias.scope !1352
  store <4 x i32> zeroinitializer, ptr %i.ft, align 4, !tbaa !65, !alias.scope !1352
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.fw, label %middle.block405, label %vector.body398, !llvm.loop !1336

middle.block405:                                  ; preds = %vector.body398
  %cmp.n406 = icmp eq i64 %i.ff, %n.vec397
  br i1 %cmp.n406, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173.preheader409

.lr.ph.i.i173.preheader409:                       ; preds = %vector.memcheck392, %.lr.ph.i.i173.preheader, %middle.block405
  %.010.i.i174.ph = phi ptr [ %i.dx, %vector.memcheck392 ], [ %i.dx, %.lr.ph.i.i173.preheader ], [ %i.fp, %middle.block405 ]
  %.079.i.i175.ph = phi ptr [ %3, %vector.memcheck392 ], [ %3, %.lr.ph.i.i173.preheader ], [ %i.fq, %middle.block405 ]
  br label %.lr.ph.i.i173

.lr.ph.i.i173:                                    ; preds = %.lr.ph.i.i173.preheader409, %.lr.ph.i.i173
  %.010.i.i174 = phi ptr [ %i.fy, %.lr.ph.i.i173 ], [ %.010.i.i174.ph, %.lr.ph.i.i173.preheader409 ]
  %.079.i.i175 = phi ptr [ %i.fx, %.lr.ph.i.i173 ], [ %.079.i.i175.ph, %.lr.ph.i.i173.preheader409 ]
  %i.fx = getelementptr inbounds i8, ptr %.079.i.i175, i64 -4 ; 4 uses
  %i.fy = getelementptr inbounds i8, ptr %.010.i.i174, i64 -4 ; 3 uses
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !65
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !65
  store i32 0, ptr %i.fx, align 4, !tbaa !65
  %.not.i.i176 = icmp eq ptr %0, %i.fx
  br i1 %.not.i.i176, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, label %.lr.ph.i.i173, !llvm.loop !1337

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177: ; preds = %.lr.ph.i.i173, %middle.block405, %bb.g
  %i.ga = phi ptr [ %i.dx, %bb.g ], [ %i.fp, %middle.block405 ], [ %i.fy, %.lr.ph.i.i173 ] ; 2 uses
  %.not3.i178 = icmp eq ptr %0, %i.ga
  br i1 %.not3.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177, %.lr.ph.i179
  %storemerge4.i180 = phi ptr [ %i.gd, %.lr.ph.i179 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit177 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i180, align 4, !tbaa !65
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i180, i64 4 ; 2 uses
  %.not.i181 = icmp eq ptr %i.gd, %i.ga
  br i1 %.not.i181, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i179, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.ge = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i191 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i191, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i192.preheader

.lr.ph.i192.preheader:                            ; preds = %bb.h
  %i.gf = and i64 %i.i, 4
  %lcmp.mod425.not = icmp eq i64 %i.gf, 0
  br i1 %lcmp.mod425.not, label %.lr.ph.i192.prol.loopexit, label %.lr.ph.i192.prol

.lr.ph.i192.prol:                                 ; preds = %.lr.ph.i192.preheader
  %i.gg = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gh = load i32, ptr %i.ge, align 4, !tbaa !65
  store i32 %i.gh, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.ge, align 4, !tbaa !65
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i192.prol.loopexit

.lr.ph.i192.prol.loopexit:                        ; preds = %.lr.ph.i192.prol, %.lr.ph.i192.preheader
  %.020.i193.unr = phi i64 [ %i.j, %.lr.ph.i192.preheader ], [ %i.gg, %.lr.ph.i192.prol ]
  %.0819.i194.unr = phi ptr [ %i.ge, %.lr.ph.i192.preheader ], [ %i.gk, %.lr.ph.i192.prol ]
  %.01618.i195.unr = phi ptr [ %i.a, %.lr.ph.i192.preheader ], [ %i.gl, %.lr.ph.i192.prol ]
  %i.gm = icmp eq i64 %i.i, 4
  br i1 %i.gm, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %.lr.ph.i192.prol.loopexit, %.lr.ph.i192
  %.020.i193 = phi i64 [ %i.gs, %.lr.ph.i192 ], [ %.020.i193.unr, %.lr.ph.i192.prol.loopexit ]
  %.0819.i194 = phi ptr [ %i.gw, %.lr.ph.i192 ], [ %.0819.i194.unr, %.lr.ph.i192.prol.loopexit ] ; 4 uses
  %.01618.i195 = phi ptr [ %i.gx, %.lr.ph.i192 ], [ %.01618.i195.unr, %.lr.ph.i192.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i195) ]
  %i.gn = load i32, ptr %.0819.i194, align 4, !tbaa !65
  store i32 %i.gn, ptr %.01618.i195, align 4, !tbaa !65
  store i32 0, ptr %.0819.i194, align 4, !tbaa !65
  %i.go = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gq = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 4
  %i.gs = add i64 %.020.i193, -2                  ; 2 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !65
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !65
  store i32 0, ptr %i.gq, align 4, !tbaa !65
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gw = getelementptr inbounds nuw i8, ptr %.0819.i194, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.01618.i195, i64 8
  %.not.i196.1 = icmp eq i64 %i.gs, 0
  br i1 %.not.i196.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198, label %.lr.ph.i192, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198: ; preds = %.lr.ph.i192, %.lr.ph.i192.prol.loopexit
  %.not8.i.i200 = icmp eq ptr %3, %i.ge
  br i1 %.not8.i.i200, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.gy = shl nsw i64 %1, 2
  %i.gz = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.ha = shl i64 %i.gz, 1
  %i.hb = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hc = shl i64 %4, 2
  %i.hd = add i64 %i.gy, %i.ha
  %i.he = add i64 %i.hd, -4
  %i.hf = add i64 %i.e, %i.hb
  %i.hg = add i64 %i.hf, %i.hc
  %i.hh = sub i64 %i.he, %i.hg                    ; 2 uses
  %i.hi = lshr i64 %i.hh, 2
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %min.iters.check317 = icmp ult i64 %i.hh, 188
  br i1 %min.iters.check317, label %.lr.ph.i.i201.preheader413, label %vector.memcheck318

vector.memcheck318:                               ; preds = %.lr.ph.i.i201.preheader
  %i.hk = shl nsw i64 %1, 2                       ; 3 uses
  %i.hl = shl i64 %i.gz, 1
  %i.hm = shl i64 %4, 2                           ; 2 uses
  %i.hn = add i64 %i.hk, %i.hl
  %i.ho = add i64 %i.hn, -4
  %i.hp = add i64 %i.e, %i.hb
  %i.hq = add i64 %i.hp, %i.hm
  %i.hr = sub i64 %i.ho, %i.hq
  %i.hs = and i64 %i.hr, -4                       ; 2 uses
  %i.ht = add i64 %i.hk, -4
  %i.hu = sub i64 %i.ht, %i.hs
  %i.hv = getelementptr i8, ptr %0, i64 %i.hu
  %i.hw = add i64 %i.hk, %i.gz
  %i.hx = add i64 %i.hw, -4
  %i.hy = add i64 %i.hm, %i.hb
  %i.hz = add i64 %i.hy, %i.hs
  %i.ia = sub i64 %i.hx, %i.hz
  %i.ib = getelementptr i8, ptr %0, i64 %i.ia
  %bound0319 = icmp ult ptr %i.hv, %i.ge
  %bound1320 = icmp ult ptr %i.ib, %i.a
  %found.conflict321 = and i1 %bound0319, %bound1320
  br i1 %found.conflict321, label %.lr.ph.i.i201.preheader413, label %vector.ph322

vector.ph322:                                     ; preds = %vector.memcheck318
  %n.vec323 = and i64 %i.hj, 9223372036854775800  ; 3 uses
  %i.ic = mul i64 %n.vec323, -4                   ; 2 uses
  %i.id = getelementptr i8, ptr %i.a, i64 %i.ic   ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ge, i64 %i.ic
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph322
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 2 uses
  %i.if = mul i64 %index325, -4                   ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.a, i64 %i.if ; 2 uses
  %next.gep327 = getelementptr i8, ptr %i.ge, i64 %i.if ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %next.gep327, i64 -16 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %next.gep327, i64 -32 ; 2 uses
  %wide.load328 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !65, !alias.scope !1354
  %wide.load329 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !65, !alias.scope !1354
  %i.ii = getelementptr inbounds i8, ptr %next.gep326, i64 -16
  %i.ij = getelementptr inbounds i8, ptr %next.gep326, i64 -32
  store <4 x i32> %wide.load328, ptr %i.ii, align 4, !tbaa !65, !alias.scope !1355, !noalias !1354
  store <4 x i32> %wide.load329, ptr %i.ij, align 4, !tbaa !65, !alias.scope !1355, !noalias !1354
  store <4 x i32> zeroinitializer, ptr %i.ig, align 4, !tbaa !65, !alias.scope !1354
  store <4 x i32> zeroinitializer, ptr %i.ih, align 4, !tbaa !65, !alias.scope !1354
  %index.next330 = add nuw i64 %index325, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.ik, label %middle.block331, label %vector.body324, !llvm.loop !1341

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %i.hj, %n.vec323
  br i1 %cmp.n332, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201.preheader413

.lr.ph.i.i201.preheader413:                       ; preds = %vector.memcheck318, %.lr.ph.i.i201.preheader, %middle.block331
  %.010.i.i202.ph = phi ptr [ %i.a, %vector.memcheck318 ], [ %i.a, %.lr.ph.i.i201.preheader ], [ %i.id, %middle.block331 ]
  %.079.i.i203.ph = phi ptr [ %i.ge, %vector.memcheck318 ], [ %i.ge, %.lr.ph.i.i201.preheader ], [ %i.ie, %middle.block331 ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader413, %.lr.ph.i.i201
  %.010.i.i202 = phi ptr [ %i.im, %.lr.ph.i.i201 ], [ %.010.i.i202.ph, %.lr.ph.i.i201.preheader413 ]
  %.079.i.i203 = phi ptr [ %i.il, %.lr.ph.i.i201 ], [ %.079.i.i203.ph, %.lr.ph.i.i201.preheader413 ]
  %i.il = getelementptr inbounds i8, ptr %.079.i.i203, i64 -4 ; 4 uses
  %i.im = getelementptr inbounds i8, ptr %.010.i.i202, i64 -4 ; 3 uses
  %i.in = load i32, ptr %i.il, align 4, !tbaa !65
  store i32 %i.in, ptr %i.im, align 4, !tbaa !65
  store i32 0, ptr %i.il, align 4, !tbaa !65
  %.not.i.i204 = icmp eq ptr %3, %i.il
  br i1 %.not.i.i204, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205, label %.lr.ph.i.i201, !llvm.loop !1342

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205: ; preds = %.lr.ph.i.i201, %middle.block331, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198
  %i.io = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit198 ], [ %i.id, %middle.block331 ], [ %i.im, %.lr.ph.i.i201 ] ; 2 uses
  %i.ip = sub i64 0, %4
  %i.iq = getelementptr [4 x i8], ptr %i.io, i64 %i.ip ; 10 uses
  %.not5.i206 = icmp eq i64 %4, 0
  br i1 %.not5.i206, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205
  %.pre.i208 = load i32, ptr %5, align 4, !tbaa !65 ; 2 uses
  %min.iters.check336 = icmp ult i64 %4, 8
  br i1 %min.iters.check336, label %scalar.ph335.preheader, label %vector.ph337

vector.ph337:                                     ; preds = %.lr.ph.i207
  %n.vec338 = and i64 %4, -8                      ; 3 uses
  %i.ir = and i64 %4, 7
  %i.is = shl i64 %n.vec338, 2
  %i.it = getelementptr i8, ptr %i.iq, i64 %i.is
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i208, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %vector.body339, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next342, %vector.body339 ] ; 2 uses
  %i.iu = shl i64 %index340, 2
  %next.gep341 = getelementptr i8, ptr %i.iq, i64 %i.iu ; 2 uses
  %i.iv = getelementptr i8, ptr %next.gep341, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep341, align 4, !tbaa !65
  store <4 x i32> %broadcast.splat, ptr %i.iv, align 4, !tbaa !65
  %index.next342 = add nuw i64 %index340, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next342, %n.vec338
  br i1 %i.iw, label %middle.block343, label %vector.body339, !llvm.loop !1343

middle.block343:                                  ; preds = %vector.body339
  %cmp.n344 = icmp eq i64 %4, %n.vec338
  br i1 %cmp.n344, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212, label %scalar.ph335.preheader

scalar.ph335.preheader:                           ; preds = %.lr.ph.i207, %middle.block343
  %.07.i209.ph = phi i64 [ %4, %.lr.ph.i207 ], [ %i.ir, %middle.block343 ]
  %.046.i210.ph = phi ptr [ %i.iq, %.lr.ph.i207 ], [ %i.it, %middle.block343 ]
  br label %scalar.ph335

scalar.ph335:                                     ; preds = %scalar.ph335.preheader, %scalar.ph335
  %.07.i209 = phi i64 [ %i.ix, %scalar.ph335 ], [ %.07.i209.ph, %scalar.ph335.preheader ]
  %.046.i210 = phi ptr [ %i.iy, %scalar.ph335 ], [ %.046.i210.ph, %scalar.ph335.preheader ] ; 2 uses
  %i.ix = add i64 %.07.i209, -1                   ; 2 uses
  store i32 %.pre.i208, ptr %.046.i210, align 4, !tbaa !65
  %i.iy = getelementptr inbounds nuw i8, ptr %.046.i210, i64 4
  %.not.i211 = icmp eq i64 %i.ix, 0
  br i1 %.not.i211, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212, label %scalar.ph335, !llvm.loop !1344

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212: ; preds = %scalar.ph335, %middle.block343, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit205
  %.not.i213 = icmp eq ptr %3, %i.iq
  br i1 %.not.i213, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit212
  %.not8.i.i214 = icmp eq ptr %0, %3
  br i1 %.not8.i.i214, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %bb.i
  %i.iz = ptrtoaddr ptr %0 to i64
  %i.ja = add i64 %i.e, -4
  %i.jb = sub i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = lshr i64 %i.jb, 2
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check353 = icmp ult i64 %i.jb, 108
  br i1 %min.iters.check353, label %.lr.ph.i.i215.preheader411, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.i.i215.preheader
  %i.je = shl i64 %4, 2
  %i.jf = and i64 %i.jb, -4                       ; 2 uses
  %i.jg = add i64 %i.je, %i.jf
  %i.jh = sub nuw nsw i64 -4, %i.jg
  %i.ji = getelementptr i8, ptr %i.io, i64 %i.jh
  %i.jj = sub nuw nsw i64 -4, %i.jf
  %i.jk = getelementptr i8, ptr %3, i64 %i.jj
  %bound0355 = icmp ult ptr %i.ji, %3
  %bound1356 = icmp ult ptr %i.jk, %i.iq
  %found.conflict357 = and i1 %bound0355, %bound1356
  br i1 %found.conflict357, label %.lr.ph.i.i215.preheader411, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck354
  %n.vec359 = and i64 %i.jd, 9223372036854775800  ; 3 uses
  %i.jl = mul i64 %n.vec359, -4                   ; 2 uses
  %i.jm = getelementptr i8, ptr %i.iq, i64 %i.jl  ; 2 uses
  %i.jn = getelementptr i8, ptr %3, i64 %i.jl
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next366, %vector.body360 ] ; 2 uses
  %i.jo = mul i64 %index361, -4                   ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.iq, i64 %i.jo ; 2 uses
  %next.gep363 = getelementptr i8, ptr %3, i64 %i.jo ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %next.gep363, i64 -16 ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %next.gep363, i64 -32 ; 2 uses
  %wide.load364 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !65, !alias.scope !1356
  %wide.load365 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !65, !alias.scope !1356
  %i.jr = getelementptr inbounds i8, ptr %next.gep362, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep362, i64 -32
  store <4 x i32> %wide.load364, ptr %i.jr, align 4, !tbaa !65, !alias.scope !1357, !noalias !1356
  store <4 x i32> %wide.load365, ptr %i.js, align 4, !tbaa !65, !alias.scope !1357, !noalias !1356
  store <4 x i32> zeroinitializer, ptr %i.jp, align 4, !tbaa !65, !alias.scope !1356
  store <4 x i32> zeroinitializer, ptr %i.jq, align 4, !tbaa !65, !alias.scope !1356
  %index.next366 = add nuw i64 %index361, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next366, %n.vec359
  br i1 %i.jt, label %middle.block367, label %vector.body360, !llvm.loop !1348

middle.block367:                                  ; preds = %vector.body360
  %cmp.n368 = icmp eq i64 %i.jd, %n.vec359
  br i1 %cmp.n368, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215.preheader411

.lr.ph.i.i215.preheader411:                       ; preds = %vector.memcheck354, %.lr.ph.i.i215.preheader, %middle.block367
  %.010.i.i216.ph = phi ptr [ %i.iq, %vector.memcheck354 ], [ %i.iq, %.lr.ph.i.i215.preheader ], [ %i.jm, %middle.block367 ]
  %.079.i.i217.ph = phi ptr [ %3, %vector.memcheck354 ], [ %3, %.lr.ph.i.i215.preheader ], [ %i.jn, %middle.block367 ]
  br label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.preheader411, %.lr.ph.i.i215
  %.010.i.i216 = phi ptr [ %i.jv, %.lr.ph.i.i215 ], [ %.010.i.i216.ph, %.lr.ph.i.i215.preheader411 ]
  %.079.i.i217 = phi ptr [ %i.ju, %.lr.ph.i.i215 ], [ %.079.i.i217.ph, %.lr.ph.i.i215.preheader411 ]
  %i.ju = getelementptr inbounds i8, ptr %.079.i.i217, i64 -4 ; 4 uses
  %i.jv = getelementptr inbounds i8, ptr %.010.i.i216, i64 -4 ; 3 uses
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !65
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !65
  store i32 0, ptr %i.ju, align 4, !tbaa !65
  %.not.i.i218 = icmp eq ptr %0, %i.ju
  br i1 %.not.i.i218, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, label %.lr.ph.i.i215, !llvm.loop !1349

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219: ; preds = %.lr.ph.i.i215, %middle.block367, %bb.i
  %i.jx = phi ptr [ %i.iq, %bb.i ], [ %i.jm, %middle.block367 ], [ %i.jv, %.lr.ph.i.i215 ] ; 2 uses
  %.not3.i220 = icmp eq ptr %0, %i.jx
  br i1 %.not3.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit147, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219, %.lr.ph.i221
  %storemerge4.i222 = phi ptr [ %i.ka, %.lr.ph.i221 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit219 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i222, align 4, !tbaa !65
  %i.jy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.jz = add i32 %i.jy, -1
  store i32 %i.jz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
end_hunk_4
begin_hunk_5_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_:bb.a
  %.020.i.i171.unr = phi i64 [ %i.eb, %.lr.ph.i.i170.preheader ], [ %i.gb, %.lr.ph.i.i170.prol ]
  %.0919.i.i172.unr = phi ptr [ %.0919.i.i172.ph, %.lr.ph.i.i170.preheader ], [ %i.fz, %.lr.ph.i.i170.prol ]
  %.01618.i.i173.unr = phi ptr [ %i.c, %.lr.ph.i.i170.preheader ], [ %i.ga, %.lr.ph.i.i170.prol ]
  %i.gc = sub nsw i64 %i.i, %i.l
  %i.gd = icmp ugt i64 %i.gc, -4
  br i1 %i.gd, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.prol.loopexit, %.lr.ph.i.i170
  %.020.i.i171 = phi i64 [ %i.gv, %.lr.ph.i.i170 ], [ %.020.i.i171.unr, %.lr.ph.i.i170.prol.loopexit ]
  %.0919.i.i172 = phi ptr [ %i.gt, %.lr.ph.i.i170 ], [ %.0919.i.i172.unr, %.lr.ph.i.i170.prol.loopexit ] ; 5 uses
  %.01618.i.i173 = phi ptr [ %i.gu, %.lr.ph.i.i170 ], [ %.01618.i.i173.unr, %.lr.ph.i.i170.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i173) ]
  %i.ge = load i32, ptr %.0919.i.i172, align 4, !tbaa !65
  store i32 %i.ge, ptr %.01618.i.i173, align 4, !tbaa !65
  %i.gf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 4 uses
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 4
  %i.gi = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 4
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !65
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !65
  %i.gk = add i32 %i.gf, 2
  store i32 %i.gk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 8
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !65
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !65
  %i.go = add i32 %i.gf, 3
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gp = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 12
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !65
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !65
  %i.gs = add i32 %i.gf, 4
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gt = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 16
  %i.gv = add i64 %.020.i.i171, -4                ; 2 uses
  %.not.i.i174.3 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i174.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170, !llvm.loop !9

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176: ; preds = %.lr.ph.i.i170, %.lr.ph.i.i170.prol.loopexit
  %.not.i177 = icmp eq ptr %3, %i.ee
  br i1 %.not.i177, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176
  %.not8.i.i178 = icmp eq ptr %0, %3
  br i1 %.not8.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader

.lr.ph.i.i179.preheader:                          ; preds = %bb.g
  %i.gw = add i64 %i.g, -4
  %i.gx = sub i64 %i.gw, %i.a                     ; 3 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check411 = icmp ult i64 %i.gx, 124
  br i1 %min.iters.check411, label %.lr.ph.i.i179.preheader431, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph.i.i179.preheader
  %i.ha = and i64 %i.gx, -4                       ; 2 uses
  %i.hb = sub i64 %1, %i.ec
  %i.hc = shl i64 %i.hb, 2
  %i.hd = add i64 %i.hc, -4
  %i.he = sub i64 %i.hd, %i.ha
  %i.hf = getelementptr i8, ptr %0, i64 %i.he
  %i.hg = sub nuw nsw i64 -4, %i.ha
  %i.hh = getelementptr i8, ptr %3, i64 %i.hg
  %bound0413 = icmp ult ptr %i.hf, %3
  %bound1414 = icmp ult ptr %i.hh, %i.ee
  %found.conflict415 = and i1 %bound0413, %bound1414
  br i1 %found.conflict415, label %.lr.ph.i.i179.preheader431, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck412
  %n.vec417 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hi = mul i64 %n.vec417, -4                   ; 2 uses
  %i.hj = getelementptr i8, ptr %i.ee, i64 %i.hi  ; 2 uses
  %i.hk = getelementptr i8, ptr %3, i64 %i.hi
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 2 uses
  %i.hl = mul i64 %index419, -4                   ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.ee, i64 %i.hl ; 2 uses
  %next.gep421 = getelementptr i8, ptr %3, i64 %i.hl ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %next.gep421, i64 -16 ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %next.gep421, i64 -32 ; 2 uses
  %wide.load422 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !65, !alias.scope !1474
  %wide.load423 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !65, !alias.scope !1474
  %i.ho = getelementptr inbounds i8, ptr %next.gep420, i64 -16
  %i.hp = getelementptr inbounds i8, ptr %next.gep420, i64 -32
  store <4 x i32> %wide.load422, ptr %i.ho, align 4, !tbaa !65, !alias.scope !1475, !noalias !1474
  store <4 x i32> %wide.load423, ptr %i.hp, align 4, !tbaa !65, !alias.scope !1475, !noalias !1474
  store <4 x i32> zeroinitializer, ptr %i.hm, align 4, !tbaa !65, !alias.scope !1474
  store <4 x i32> zeroinitializer, ptr %i.hn, align 4, !tbaa !65, !alias.scope !1474
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.hq, label %middle.block425, label %vector.body418, !llvm.loop !1457

middle.block425:                                  ; preds = %vector.body418
  %cmp.n426 = icmp eq i64 %i.gz, %n.vec417
  br i1 %cmp.n426, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader431

.lr.ph.i.i179.preheader431:                       ; preds = %vector.memcheck412, %.lr.ph.i.i179.preheader, %middle.block425
  %.010.i.i180.ph = phi ptr [ %i.ee, %vector.memcheck412 ], [ %i.ee, %.lr.ph.i.i179.preheader ], [ %i.hj, %middle.block425 ]
  %.079.i.i181.ph = phi ptr [ %3, %vector.memcheck412 ], [ %3, %.lr.ph.i.i179.preheader ], [ %i.hk, %middle.block425 ]
  br label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %.lr.ph.i.i179.preheader431, %.lr.ph.i.i179
  %.010.i.i180 = phi ptr [ %i.hs, %.lr.ph.i.i179 ], [ %.010.i.i180.ph, %.lr.ph.i.i179.preheader431 ]
  %.079.i.i181 = phi ptr [ %i.hr, %.lr.ph.i.i179 ], [ %.079.i.i181.ph, %.lr.ph.i.i179.preheader431 ]
  %i.hr = getelementptr inbounds i8, ptr %.079.i.i181, i64 -4 ; 4 uses
  %i.hs = getelementptr inbounds i8, ptr %.010.i.i180, i64 -4 ; 3 uses
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !65
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !65
  store i32 0, ptr %i.hr, align 4, !tbaa !65
  %.not.i.i182 = icmp eq ptr %0, %i.hr
  br i1 %.not.i.i182, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179, !llvm.loop !1458

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183: ; preds = %.lr.ph.i.i179, %middle.block425, %bb.g
  %i.hu = phi ptr [ %i.ee, %bb.g ], [ %i.hj, %middle.block425 ], [ %i.hs, %.lr.ph.i.i179 ] ; 2 uses
  %.not3.i184 = icmp eq ptr %0, %i.hu
  br i1 %.not3.i184, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %.lr.ph.i185
  %storemerge4.i186 = phi ptr [ %i.hx, %.lr.ph.i185 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i186, align 4, !tbaa !65
  %i.hv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hw = add i32 %i.hv, -1
  store i32 %i.hw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hx = getelementptr inbounds nuw i8, ptr %storemerge4.i186, i64 4 ; 2 uses
  %.not.i187 = icmp eq ptr %i.hx, %i.hu
  br i1 %.not.i187, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i185, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.k
  %i.hy = getelementptr i8, ptr %i.c, i64 %.idx   ; 10 uses
  %.not17.i197 = icmp eq ptr %i.e, %i.c
  br i1 %.not17.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i198.preheader

.lr.ph.i198.preheader:                            ; preds = %bb.h
  %i.hz = and i64 %i.k, 4
  %lcmp.mod450.not = icmp eq i64 %i.hz, 0
  br i1 %lcmp.mod450.not, label %.lr.ph.i198.prol.loopexit, label %.lr.ph.i198.prol

.lr.ph.i198.prol:                                 ; preds = %.lr.ph.i198.preheader
  %i.ia = add nsw i64 %i.l, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.ib = load i32, ptr %i.hy, align 4, !tbaa !65
  store i32 %i.ib, ptr %i.c, align 4, !tbaa !65
  store i32 0, ptr %i.hy, align 4, !tbaa !65
  %i.ic = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br label %.lr.ph.i198.prol.loopexit

.lr.ph.i198.prol.loopexit:                        ; preds = %.lr.ph.i198.prol, %.lr.ph.i198.preheader
  %.020.i199.unr = phi i64 [ %i.l, %.lr.ph.i198.preheader ], [ %i.ia, %.lr.ph.i198.prol ]
  %.0819.i200.unr = phi ptr [ %i.hy, %.lr.ph.i198.preheader ], [ %i.ie, %.lr.ph.i198.prol ]
  %.01618.i201.unr = phi ptr [ %i.c, %.lr.ph.i198.preheader ], [ %i.if, %.lr.ph.i198.prol ]
  %i.ig = icmp eq i64 %i.k, 4
  br i1 %i.ig, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198.prol.loopexit, %.lr.ph.i198
  %.020.i199 = phi i64 [ %i.im, %.lr.ph.i198 ], [ %.020.i199.unr, %.lr.ph.i198.prol.loopexit ]
  %.0819.i200 = phi ptr [ %i.iq, %.lr.ph.i198 ], [ %.0819.i200.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  %.01618.i201 = phi ptr [ %i.ir, %.lr.ph.i198 ], [ %.01618.i201.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i201) ]
  %i.ih = load i32, ptr %.0819.i200, align 4, !tbaa !65
  store i32 %i.ih, ptr %.01618.i201, align 4, !tbaa !65
  store i32 0, ptr %.0819.i200, align 4, !tbaa !65
  %i.ii = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ik = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 4 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 4
  %i.im = add i64 %.020.i199, -2                  ; 2 uses
  %i.in = load i32, ptr %i.ik, align 4, !tbaa !65
  store i32 %i.in, ptr %i.il, align 4, !tbaa !65
  store i32 0, ptr %i.ik, align 4, !tbaa !65
  %i.io = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.ip = add i32 %i.io, 1
  store i32 %i.ip, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.iq = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 8
  %.not.i202.1 = icmp eq i64 %i.im, 0
  br i1 %.not.i202.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204: ; preds = %.lr.ph.i198, %.lr.ph.i198.prol.loopexit
  %.not8.i.i206 = icmp eq ptr %3, %i.hy
  br i1 %.not8.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader

.lr.ph.i.i207.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.is = shl nsw i64 %1, 2
  %i.it = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.iu = shl i64 %i.it, 1
  %i.iv = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.iw = shl i64 %4, 2
  %i.ix = add i64 %i.is, %i.iu
  %i.iy = add i64 %i.ix, -4
  %i.iz = add i64 %i.g, %i.iv
  %i.ja = add i64 %i.iz, %i.iw
  %i.jb = sub i64 %i.iy, %i.ja                    ; 2 uses
  %i.jc = lshr i64 %i.jb, 2
  %i.jd = add nuw nsw i64 %i.jc, 1                ; 2 uses
  %min.iters.check328 = icmp ult i64 %i.jb, 188
  br i1 %min.iters.check328, label %.lr.ph.i.i207.preheader438, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i.i207.preheader
  %i.je = shl nsw i64 %1, 2                       ; 3 uses
  %i.jf = shl i64 %i.it, 1
  %i.jg = shl i64 %4, 2                           ; 2 uses
  %i.jh = add i64 %i.je, %i.jf
  %i.ji = add i64 %i.jh, -4
  %i.jj = add i64 %i.g, %i.iv
  %i.jk = add i64 %i.jj, %i.jg
  %i.jl = sub i64 %i.ji, %i.jk
  %i.jm = and i64 %i.jl, -4                       ; 2 uses
  %i.jn = add i64 %i.je, -4
  %i.jo = sub i64 %i.jn, %i.jm
  %i.jp = getelementptr i8, ptr %0, i64 %i.jo
  %i.jq = add i64 %i.je, %i.it
  %i.jr = add i64 %i.jq, -4
  %i.js = add i64 %i.jg, %i.iv
  %i.jt = add i64 %i.js, %i.jm
  %i.ju = sub i64 %i.jr, %i.jt
  %i.jv = getelementptr i8, ptr %0, i64 %i.ju
  %bound0330 = icmp ult ptr %i.jp, %i.hy
  %bound1331 = icmp ult ptr %i.jv, %i.c
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %.lr.ph.i.i207.preheader438, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck329
  %n.vec334 = and i64 %i.jd, 9223372036854775800  ; 3 uses
  %i.jw = mul i64 %n.vec334, -4                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.c, i64 %i.jw   ; 2 uses
  %i.jy = getelementptr i8, ptr %i.hy, i64 %i.jw
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.jz = mul i64 %index336, -4                   ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.c, i64 %i.jz ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.hy, i64 %i.jz ; 2 uses
  %i.ka = getelementptr inbounds i8, ptr %next.gep338, i64 -16 ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %next.gep338, i64 -32 ; 2 uses
  %wide.load339 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !65, !alias.scope !1476
  %wide.load340 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !65, !alias.scope !1476
  %i.kc = getelementptr inbounds i8, ptr %next.gep337, i64 -16
  %i.kd = getelementptr inbounds i8, ptr %next.gep337, i64 -32
  store <4 x i32> %wide.load339, ptr %i.kc, align 4, !tbaa !65, !alias.scope !1477, !noalias !1476
  store <4 x i32> %wide.load340, ptr %i.kd, align 4, !tbaa !65, !alias.scope !1477, !noalias !1476
  store <4 x i32> zeroinitializer, ptr %i.ka, align 4, !tbaa !65, !alias.scope !1476
  store <4 x i32> zeroinitializer, ptr %i.kb, align 4, !tbaa !65, !alias.scope !1476
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.ke = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.ke, label %middle.block342, label %vector.body335, !llvm.loop !1462

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.jd, %n.vec334
  br i1 %cmp.n343, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader438

.lr.ph.i.i207.preheader438:                       ; preds = %vector.memcheck329, %.lr.ph.i.i207.preheader, %middle.block342
  %.010.i.i208.ph = phi ptr [ %i.c, %vector.memcheck329 ], [ %i.c, %.lr.ph.i.i207.preheader ], [ %i.jx, %middle.block342 ]
  %.079.i.i209.ph = phi ptr [ %i.hy, %vector.memcheck329 ], [ %i.hy, %.lr.ph.i.i207.preheader ], [ %i.jy, %middle.block342 ]
  br label %.lr.ph.i.i207

.lr.ph.i.i207:                                    ; preds = %.lr.ph.i.i207.preheader438, %.lr.ph.i.i207
  %.010.i.i208 = phi ptr [ %i.kg, %.lr.ph.i.i207 ], [ %.010.i.i208.ph, %.lr.ph.i.i207.preheader438 ]
  %.079.i.i209 = phi ptr [ %i.kf, %.lr.ph.i.i207 ], [ %.079.i.i209.ph, %.lr.ph.i.i207.preheader438 ]
  %i.kf = getelementptr inbounds i8, ptr %.079.i.i209, i64 -4 ; 4 uses
  %i.kg = getelementptr inbounds i8, ptr %.010.i.i208, i64 -4 ; 3 uses
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !65
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !65
  store i32 0, ptr %i.kf, align 4, !tbaa !65
  %.not.i.i210 = icmp eq ptr %3, %i.kf
  br i1 %.not.i.i210, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207, !llvm.loop !1463

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211: ; preds = %.lr.ph.i.i207, %middle.block342, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.ki = phi ptr [ %3, %bb.h ], [ %i.c, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204 ], [ %i.jx, %middle.block342 ], [ %i.kg, %.lr.ph.i.i207 ] ; 3 uses
  %i.kj = ptrtoaddr ptr %i.ki to i64
  %i.kk = sub i64 0, %4
  %i.kl = getelementptr [4 x i8], ptr %i.ki, i64 %i.kk ; 11 uses
  %.not8.i.i212 = icmp eq i64 %4, 0
  br i1 %.not8.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %min.iters.check348 = icmp ult i64 %4, 16
  br i1 %min.iters.check348, label %.lr.ph.i.i213.preheader437, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph.i.i213.preheader
  %i.km = shl i64 %4, 2
  %i.kn = add i64 %i.km, %i.b
  %i.ko = sub i64 %i.kn, %i.kj
  %diff.check = icmp ugt i64 %i.ko, -32
  br i1 %diff.check, label %.lr.ph.i.i213.preheader437, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck346
  %n.vec350 = and i64 %4, -8                      ; 3 uses
  %i.kp = shl i64 %n.vec350, 2                    ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kl, i64 %i.kp
  %i.kr = and i64 %4, 7
  %i.ks = getelementptr i8, ptr %5, i64 %i.kp
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.kt = shl i64 %index352, 2                    ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.kl, i64 %i.kt ; 2 uses
  %next.gep354 = getelementptr i8, ptr %5, i64 %i.kt ; 2 uses
  %i.ku = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load355 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !65
  %wide.load356 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !65
  %i.kv = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load355, ptr %next.gep353, align 4, !tbaa !65
  store <4 x i32> %wide.load356, ptr %i.kv, align 4, !tbaa !65
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.kw = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.kw, label %middle.block358, label %vector.body351, !llvm.loop !1464

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %4, %n.vec350
  br i1 %cmp.n359, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader437

.lr.ph.i.i213.preheader437:                       ; preds = %vector.memcheck346, %.lr.ph.i.i213.preheader, %middle.block358
  %.011.i.i214.ph = phi ptr [ %i.kl, %vector.memcheck346 ], [ %i.kl, %.lr.ph.i.i213.preheader ], [ %i.kq, %middle.block358 ] ; 2 uses
  %.0610.i.i215.ph = phi i64 [ %4, %vector.memcheck346 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.kr, %middle.block358 ] ; 4 uses
  %.079.i.i216.ph = phi ptr [ %5, %vector.memcheck346 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.ks, %middle.block358 ] ; 2 uses
  %i.kx = add i64 %.0610.i.i215.ph, -1
  %xtraiter452 = and i64 %.0610.i.i215.ph, 7      ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader437, %.lr.ph.i.i213.prol
  %.011.i.i214.prol = phi ptr [ %i.lb, %.lr.ph.i.i213.prol ], [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %.0610.i.i215.prol = phi i64 [ %i.ky, %.lr.ph.i.i213.prol ], [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ]
  %.079.i.i216.prol = phi ptr [ %i.la, %.lr.ph.i.i213.prol ], [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader437 ]
  %i.ky = add i64 %.0610.i.i215.prol, -1          ; 2 uses
  %i.kz = load i32, ptr %.079.i.i216.prol, align 4, !tbaa !65
  store i32 %i.kz, ptr %.011.i.i214.prol, align 4, !tbaa !65
  %i.la = getelementptr inbounds nuw i8, ptr %.079.i.i216.prol, i64 4 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.011.i.i214.prol, i64 4 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !1465

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader437
  %.011.i.i214.unr = phi ptr [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ], [ %i.lb, %.lr.ph.i.i213.prol ]
  %.0610.i.i215.unr = phi i64 [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ], [ %i.ky, %.lr.ph.i.i213.prol ]
  %.079.i.i216.unr = phi ptr [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ], [ %i.la, %.lr.ph.i.i213.prol ]
  %i.lc = icmp ult i64 %i.kx, 7
  br i1 %i.lc, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.011.i.i214 = phi ptr [ %i.mb, %.lr.ph.i.i213 ], [ %.011.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.0610.i.i215 = phi i64 [ %i.ly, %.lr.ph.i.i213 ], [ %.0610.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.079.i.i216 = phi ptr [ %i.ma, %.lr.ph.i.i213 ], [ %.079.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.ld = load i32, ptr %.079.i.i216, align 4, !tbaa !65
  store i32 %i.ld, ptr %.011.i.i214, align 4, !tbaa !65
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 4
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !65
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !65
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 8
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !65
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 12
  %i.ll = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 12
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !65
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !65
  %i.ln = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 16
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !65
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !65
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 20
  %i.lr = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 20
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !65
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !65
  %i.lt = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 24
  %i.lu = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 24
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !65
  store i32 %i.lv, ptr %i.lu, align 4, !tbaa !65
  %i.lw = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 28
  %i.lx = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 28
  %i.ly = add i64 %.0610.i.i215, -8               ; 2 uses
  %i.lz = load i32, ptr %i.lw, align 4, !tbaa !65
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !65
  %i.ma = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !1466

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block358, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %.not.i220 = icmp eq ptr %3, %i.kl
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.mc = ptrtoaddr ptr %0 to i64
  %i.md = add i64 %i.g, -4
  %i.me = sub i64 %i.md, %i.mc                    ; 3 uses
  %i.mf = lshr i64 %i.me, 2
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.me, 108
  br i1 %min.iters.check369, label %.lr.ph.i.i222.preheader435, label %vector.memcheck370

vector.memcheck370:                               ; preds = %.lr.ph.i.i222.preheader
  %i.mh = shl i64 %4, 2
  %i.mi = and i64 %i.me, -4                       ; 2 uses
  %i.mj = add i64 %i.mh, %i.mi
end_hunk_5
begin_hunk_6_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvT0_mSC_SC_mT1_RT_:bb.a
  store i32 0, ptr %.sroa.0.016.i.i174.ph, align 4, !tbaa !65
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174.ph, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fe = add nsw i64 %i.dr, -1
  br label %.lr.ph.i.i171.prol.loopexit

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.dr, %.lr.ph.i.i171.preheader ], [ %i.fe, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.a, %.lr.ph.i.i171.preheader ], [ %i.fd, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fc, %.lr.ph.i.i171.prol ]
  %i.ff = icmp eq i64 %i.j, %.neg470
  br i1 %i.ff, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.fp, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.fo, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.fn, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.fg = load i32, ptr %.sroa.0.016.i.i174, align 4, !tbaa !65
  store i32 %i.fg, ptr %.01417.i.i173, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.016.i.i174, align 4, !tbaa !65
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !65
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !65
  store i32 0, ptr %i.fj, align 4, !tbaa !65
  %i.fm = add i32 %i.fh, 2
  store i32 %i.fm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.fp = add i64 %.018.i.i172, -2                ; 2 uses
  %.not.i.i175.1 = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i175.1, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !20

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.du
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.fq = ptrtoaddr ptr %0 to i64
  %i.fr = add i64 %i.e, -4
  %i.fs = sub i64 %i.fr, %i.fq                    ; 3 uses
  %i.ft = lshr i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check423 = icmp ult i64 %i.fs, 124
  br i1 %min.iters.check423, label %.lr.ph.i.i180.preheader441, label %vector.memcheck424

vector.memcheck424:                               ; preds = %.lr.ph.i.i180.preheader
  %i.fv = and i64 %i.fs, -4                       ; 2 uses
  %i.fw = sub i64 %1, %i.ds
  %i.fx = shl i64 %i.fw, 2
  %i.fy = add i64 %i.fx, -4
  %i.fz = sub i64 %i.fy, %i.fv
  %i.ga = getelementptr i8, ptr %0, i64 %i.fz
  %i.gb = sub nuw nsw i64 -4, %i.fv
  %i.gc = getelementptr i8, ptr %3, i64 %i.gb
  %bound0425 = icmp ult ptr %i.ga, %3
  %bound1426 = icmp ult ptr %i.gc, %i.du
  %found.conflict427 = and i1 %bound0425, %bound1426
  br i1 %found.conflict427, label %.lr.ph.i.i180.preheader441, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck424
  %n.vec429 = and i64 %i.fu, 9223372036854775800  ; 3 uses
  %i.gd = mul i64 %n.vec429, -4                   ; 2 uses
  %i.ge = getelementptr i8, ptr %i.du, i64 %i.gd  ; 2 uses
  %i.gf = getelementptr i8, ptr %3, i64 %i.gd
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.gg = mul i64 %index431, -4                   ; 2 uses
  %next.gep432 = getelementptr i8, ptr %i.du, i64 %i.gg ; 2 uses
  %next.gep433 = getelementptr i8, ptr %3, i64 %i.gg ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %next.gep433, i64 -16 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %next.gep433, i64 -32 ; 2 uses
  %wide.load434 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !65, !alias.scope !1593
  %wide.load435 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !65, !alias.scope !1593
  %i.gj = getelementptr inbounds i8, ptr %next.gep432, i64 -16
  %i.gk = getelementptr inbounds i8, ptr %next.gep432, i64 -32
  store <4 x i32> %wide.load434, ptr %i.gj, align 4, !tbaa !65, !alias.scope !1594, !noalias !1593
  store <4 x i32> %wide.load435, ptr %i.gk, align 4, !tbaa !65, !alias.scope !1594, !noalias !1593
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !65, !alias.scope !1593
  store <4 x i32> zeroinitializer, ptr %i.gi, align 4, !tbaa !65, !alias.scope !1593
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.gl, label %middle.block437, label %vector.body430, !llvm.loop !1571

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.fu, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader441

.lr.ph.i.i180.preheader441:                       ; preds = %vector.memcheck424, %.lr.ph.i.i180.preheader, %middle.block437
  %.010.i.i181.ph = phi ptr [ %i.du, %vector.memcheck424 ], [ %i.du, %.lr.ph.i.i180.preheader ], [ %i.ge, %middle.block437 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck424 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.gf, %middle.block437 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader441, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.gn, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader441 ]
  %.079.i.i182 = phi ptr [ %i.gm, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader441 ]
  %i.gm = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !65
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !65
  store i32 0, ptr %i.gm, align 4, !tbaa !65
  %.not.i.i183 = icmp eq ptr %0, %i.gm
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !1572

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block437, %bb.g
  %i.gp = phi ptr [ %i.du, %bb.g ], [ %i.ge, %middle.block437 ], [ %i.gn, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.gp
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.gs, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !65
  %i.gq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gr = add i32 %i.gq, -1
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.gs, %i.gp
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !17

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.gt = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.gu = and i64 %i.i, 4
  %lcmp.mod459.not = icmp eq i64 %i.gu, 0
  br i1 %lcmp.mod459.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.gv = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !65
  store i32 %i.gw, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.gt, align 4, !tbaa !65
  %i.gx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.j, %.lr.ph.i199.preheader ], [ %i.gv, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.gt, %.lr.ph.i199.preheader ], [ %i.gz, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.a, %.lr.ph.i199.preheader ], [ %i.ha, %.lr.ph.i199.prol ]
  %i.hb = icmp eq i64 %i.i, 4
  br i1 %i.hb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.hh, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.hl, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.hm, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.hc = load i32, ptr %.0819.i201, align 4, !tbaa !65
  store i32 %i.hc, ptr %.01618.i202, align 4, !tbaa !65
  store i32 0, ptr %.0819.i201, align 4, !tbaa !65
  %i.hd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hf = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.hh = add i64 %.020.i200, -2                  ; 2 uses
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !65
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !65
  store i32 0, ptr %i.hf, align 4, !tbaa !65
  %i.hj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !63
  %i.hl = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.hh, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !12

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.gt
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.hn = shl nsw i64 %1, 2
  %i.ho = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.hp = shl i64 %i.ho, 1
  %i.hq = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.hr = shl i64 %4, 2
  %i.hs = add i64 %i.hn, %i.hp
  %i.ht = add i64 %i.hs, -4
  %i.hu = add i64 %i.e, %i.hq
  %i.hv = add i64 %i.hu, %i.hr
  %i.hw = sub i64 %i.ht, %i.hv                    ; 2 uses
  %i.hx = lshr i64 %i.hw, 2
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check327 = icmp ult i64 %i.hw, 188
  br i1 %min.iters.check327, label %.lr.ph.i.i208.preheader448, label %vector.memcheck328

vector.memcheck328:                               ; preds = %.lr.ph.i.i208.preheader
  %i.hz = shl nsw i64 %1, 2                       ; 3 uses
  %i.ia = shl i64 %i.ho, 1
  %i.ib = shl i64 %4, 2                           ; 2 uses
  %i.ic = add i64 %i.hz, %i.ia
  %i.id = add i64 %i.ic, -4
  %i.ie = add i64 %i.e, %i.hq
  %i.if = add i64 %i.ie, %i.ib
  %i.ig = sub i64 %i.id, %i.if
  %i.ih = and i64 %i.ig, -4                       ; 2 uses
  %i.ii = add i64 %i.hz, -4
  %i.ij = sub i64 %i.ii, %i.ih
  %i.ik = getelementptr i8, ptr %0, i64 %i.ij
  %i.il = add i64 %i.hz, %i.ho
  %i.im = add i64 %i.il, -4
  %i.in = add i64 %i.ib, %i.hq
  %i.io = add i64 %i.in, %i.ih
  %i.ip = sub i64 %i.im, %i.io
  %i.iq = getelementptr i8, ptr %0, i64 %i.ip
  %bound0329 = icmp ult ptr %i.ik, %i.gt
  %bound1330 = icmp ult ptr %i.iq, %i.a
  %found.conflict331 = and i1 %bound0329, %bound1330
  br i1 %found.conflict331, label %.lr.ph.i.i208.preheader448, label %vector.ph332

vector.ph332:                                     ; preds = %vector.memcheck328
  %n.vec333 = and i64 %i.hy, 9223372036854775800  ; 3 uses
  %i.ir = mul i64 %n.vec333, -4                   ; 2 uses
  %i.is = getelementptr i8, ptr %i.a, i64 %i.ir   ; 2 uses
  %i.it = getelementptr i8, ptr %i.gt, i64 %i.ir
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph332
  %index335 = phi i64 [ 0, %vector.ph332 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.iu = mul i64 %index335, -4                   ; 2 uses
  %next.gep336 = getelementptr i8, ptr %i.a, i64 %i.iu ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.gt, i64 %i.iu ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %next.gep337, i64 -16 ; 2 uses
  %i.iw = getelementptr inbounds i8, ptr %next.gep337, i64 -32 ; 2 uses
  %wide.load338 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !65, !alias.scope !1595
  %wide.load339 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !65, !alias.scope !1595
  %i.ix = getelementptr inbounds i8, ptr %next.gep336, i64 -16
  %i.iy = getelementptr inbounds i8, ptr %next.gep336, i64 -32
  store <4 x i32> %wide.load338, ptr %i.ix, align 4, !tbaa !65, !alias.scope !1596, !noalias !1595
  store <4 x i32> %wide.load339, ptr %i.iy, align 4, !tbaa !65, !alias.scope !1596, !noalias !1595
  store <4 x i32> zeroinitializer, ptr %i.iv, align 4, !tbaa !65, !alias.scope !1595
  store <4 x i32> zeroinitializer, ptr %i.iw, align 4, !tbaa !65, !alias.scope !1595
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.iz, label %middle.block341, label %vector.body334, !llvm.loop !1576

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.hy, %n.vec333
  br i1 %cmp.n342, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader448

.lr.ph.i.i208.preheader448:                       ; preds = %vector.memcheck328, %.lr.ph.i.i208.preheader, %middle.block341
  %.010.i.i209.ph = phi ptr [ %i.a, %vector.memcheck328 ], [ %i.a, %.lr.ph.i.i208.preheader ], [ %i.is, %middle.block341 ]
  %.079.i.i210.ph = phi ptr [ %i.gt, %vector.memcheck328 ], [ %i.gt, %.lr.ph.i.i208.preheader ], [ %i.it, %middle.block341 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader448, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.jb, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader448 ]
  %.079.i.i210 = phi ptr [ %i.ja, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader448 ]
  %i.ja = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.jb = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !65
  store i32 %i.jc, ptr %i.jb, align 4, !tbaa !65
  store i32 0, ptr %i.ja, align 4, !tbaa !65
  %.not.i.i211 = icmp eq ptr %3, %i.ja
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !1577

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block341, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.jd = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.is, %middle.block341 ], [ %i.jb, %.lr.ph.i.i208 ] ; 3 uses
  %i.je = sub i64 0, %4
  %i.jf = getelementptr [4 x i8], ptr %i.jd, i64 %i.je ; 12 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %min.iters.check350 = icmp ult i64 %4, 8
  br i1 %min.iters.check350, label %.lr.ph.i.i215.preheader447, label %vector.memcheck351

vector.memcheck351:                               ; preds = %.lr.ph.i.i215.preheader
  %i.jg = shl i64 %4, 2
  %i.jh = getelementptr i8, ptr %5, i64 %i.jg
  %bound0352 = icmp ult ptr %i.jf, %i.jh
  %bound1353 = icmp ult ptr %5, %i.jd
  %found.conflict354 = and i1 %bound0352, %bound1353
  br i1 %found.conflict354, label %.lr.ph.i.i215.preheader447, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck351
  %n.vec356 = and i64 %4, -8                      ; 3 uses
  %i.ji = and i64 %4, 7
  %i.jj = shl i64 %n.vec356, 2                    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jf, i64 %i.jj
  %i.jl = getelementptr i8, ptr %5, i64 %i.jj
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph355
  %index358 = phi i64 [ 0, %vector.ph355 ], [ %index.next363, %vector.body357 ] ; 2 uses
  %i.jm = shl i64 %index358, 2                    ; 2 uses
  %next.gep359 = getelementptr i8, ptr %i.jf, i64 %i.jm ; 2 uses
  %next.gep360 = getelementptr i8, ptr %5, i64 %i.jm ; 3 uses
  %i.jn = getelementptr i8, ptr %next.gep360, i64 16 ; 2 uses
  %wide.load361 = load <4 x i32>, ptr %next.gep360, align 4, !tbaa !65, !alias.scope !1597
  %wide.load362 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !65, !alias.scope !1597
  %i.jo = getelementptr i8, ptr %next.gep359, i64 16
  store <4 x i32> %wide.load361, ptr %next.gep359, align 4, !tbaa !65, !alias.scope !1598, !noalias !1597
  store <4 x i32> %wide.load362, ptr %i.jo, align 4, !tbaa !65, !alias.scope !1598, !noalias !1597
  store <4 x i32> zeroinitializer, ptr %next.gep360, align 4, !tbaa !65, !alias.scope !1597
  store <4 x i32> zeroinitializer, ptr %i.jn, align 4, !tbaa !65, !alias.scope !1597
  %index.next363 = add nuw i64 %index358, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next363, %n.vec356
  br i1 %i.jp, label %middle.block364, label %vector.body357, !llvm.loop !1581

middle.block364:                                  ; preds = %vector.body357
  %cmp.n365 = icmp eq i64 %4, %n.vec356
  br i1 %cmp.n365, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader447

.lr.ph.i.i215.preheader447:                       ; preds = %vector.memcheck351, %.lr.ph.i.i215.preheader, %middle.block364
  %.09.i.i216.ph = phi i64 [ %4, %vector.memcheck351 ], [ %4, %.lr.ph.i.i215.preheader ], [ %i.ji, %middle.block364 ] ; 4 uses
  %.048.i.i217.ph = phi ptr [ %i.jf, %vector.memcheck351 ], [ %i.jf, %.lr.ph.i.i215.preheader ], [ %i.jk, %middle.block364 ] ; 2 uses
  %.sroa.0.07.i.i218.ph = phi ptr [ %5, %vector.memcheck351 ], [ %5, %.lr.ph.i.i215.preheader ], [ %i.jl, %middle.block364 ] ; 2 uses
  %i.jq = add i64 %.09.i.i216.ph, -1
  %xtraiter461 = and i64 %.09.i.i216.ph, 3        ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader447, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.jr, %.lr.ph.i.i215.prol ], [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader447 ]
  %.048.i.i217.prol = phi ptr [ %i.ju, %.lr.ph.i.i215.prol ], [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader447 ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.jt, %.lr.ph.i.i215.prol ], [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader447 ] ; 3 uses
  %prol.iter463 = phi i64 [ %prol.iter463.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader447 ]
  %i.jr = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.js = load i32, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !65
  store i32 %i.js, ptr %.048.i.i217.prol, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !65
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter463.next = add i64 %prol.iter463, 1   ; 2 uses
  %prol.iter463.cmp.not = icmp eq i64 %prol.iter463.next, %xtraiter461
  br i1 %prol.iter463.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !1582

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader447
  %.09.i.i216.unr = phi i64 [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader447 ], [ %i.jr, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader447 ], [ %i.ju, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader447 ], [ %i.jt, %.lr.ph.i.i215.prol ]
  %i.jv = icmp ult i64 %i.jq, 3
  br i1 %i.jv, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.kf, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.ki, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.kh, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 6 uses
  %i.jw = load i32, ptr %.sroa.0.07.i.i218, align 4, !tbaa !65
  store i32 %i.jw, ptr %.048.i.i217, align 4, !tbaa !65
  store i32 0, ptr %.sroa.0.07.i.i218, align 4, !tbaa !65
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 4 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !65
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !65
  store i32 0, ptr %i.jx, align 4, !tbaa !65
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 8 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.kc = load i32, ptr %i.ka, align 4, !tbaa !65
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !65
  store i32 0, ptr %i.ka, align 4, !tbaa !65
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 12 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.kf = add i64 %.09.i.i216, -4                 ; 2 uses
  %i.kg = load i32, ptr %i.kd, align 4, !tbaa !65
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !65
  store i32 0, ptr %i.kd, align 4, !tbaa !65
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %.not.i.i219.3 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i219.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !1583

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %middle.block364, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.jf
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS_13move_iteratorIPS5_EEE17copy_n_and_updateIS8_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.kj = ptrtoaddr ptr %0 to i64
  %i.kk = add i64 %i.e, -4
  %i.kl = sub i64 %i.kk, %i.kj                    ; 3 uses
  %i.km = lshr i64 %i.kl, 2
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %i.kl, 108
  br i1 %min.iters.check375, label %.lr.ph.i.i224.preheader445, label %vector.memcheck376

vector.memcheck376:                               ; preds = %.lr.ph.i.i224.preheader
  %i.ko = shl i64 %4, 2
  %i.kp = and i64 %i.kl, -4                       ; 2 uses
  %i.kq = add i64 %i.ko, %i.kp
  %i.kr = sub nuw nsw i64 -4, %i.kq
  %i.ks = getelementptr i8, ptr %i.jd, i64 %i.kr
  %i.kt = sub nuw nsw i64 -4, %i.kp
  %i.ku = getelementptr i8, ptr %3, i64 %i.kt
  %bound0377 = icmp ult ptr %i.ks, %3
  %bound1378 = icmp ult ptr %i.ku, %i.jf
  %found.conflict379 = and i1 %bound0377, %bound1378
  br i1 %found.conflict379, label %.lr.ph.i.i224.preheader445, label %vector.ph380

end_hunk_6
