Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_edgebreaker_encoder_impl?download=true
begin_hunk_0_@_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE18EncodeConnectivityEv:bb.a
  %i.tq = add i32 %i.nv, -2
  %spec.select.i206 = select i1 %.not.i205, i32 %i.tq, i32 %i.to
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink.i207 = phi i32 [ -1, %bb.bq ], [ %spec.select.i206, %bb.br ]
  store i32 %.sink.i207, ptr %12, align 4, !tbaa !288, !alias.scope !468
  %i.tr = invoke noundef i32 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE10EncodeHoleENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEb(ptr noundef nonnull align 8 dereferenceable(601) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %12, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.bm     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.ts = load i32, ptr %8, align 4, !tbaa !288
  store i32 %i.ts, ptr %13, align 4, !tbaa !288
  %i.tt = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(601) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13)
          to label %bb.bu unwind label %bb.bm

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.tt, label %.thread371, label %.noexc.i210

.noexc.i210:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.tu = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.tu, ptr %14, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 32, ptr %i.d, align 8, !tbaa !152
  %i.tv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc211 unwind label %bb.by ; 2 uses

.noexc211:                                        ; preds = %.noexc.i210
  store ptr %i.tv, ptr %14, align 8, !tbaa !154
  %i.tw = load i64, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  store i64 %i.tw, ptr %i.tu, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.tv, ptr noundef nonnull align 1 dereferenceable(32) @.str.4, i64 32, i1 false)
  %i.tx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.tw, ptr %i.tx, align 8, !tbaa !156
  %i.ty = load ptr, ptr %14, align 8, !tbaa !154
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tw
  store i8 0, ptr %i.tz, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ub, ptr %i.ua, align 8, !tbaa !151
  %i.uc = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.ud = load i64, ptr %i.tx, align 8, !tbaa !156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.ud, ptr %i.c, align 8, !tbaa !152
  %i.ue = icmp ugt i64 %i.ud, 15
  br i1 %i.ue, label %.noexc.i.i214, label %._crit_edge.i.i.i213

.noexc.i.i214:                                    ; preds = %.noexc211
  %i.uf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ua, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc215 unwind label %bb.bz ; 2 uses

.noexc215:                                        ; preds = %.noexc.i.i214
  store ptr %i.uf, ptr %i.ua, align 8, !tbaa !154
  %i.ug = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.ug, ptr %i.ub, align 8, !tbaa !155
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %.noexc215, %.noexc211
  %i.uh = phi ptr [ %i.uf, %.noexc215 ], [ %i.ub, %.noexc211 ] ; 2 uses
  switch i64 %i.ud, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i213
  %i.ui = load i8, ptr %i.uc, align 1, !tbaa !155
  store i8 %i.ui, ptr %i.uh, align 1, !tbaa !155
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i.i213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uh, ptr align 1 %i.uc, i64 %i.ud, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i213
  %i.uj = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.uj, ptr %i.uk, align 8, !tbaa !156
  %i.ul = load ptr, ptr %i.ua, align 8, !tbaa !154
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.uj
  store i8 0, ptr %i.um, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.un = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.tu
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.bx
  %i.up = load i64, ptr %i.tu, align 8, !tbaa !155
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.cb

bb.by:                                            ; preds = %.noexc.i210
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.bz:                                            ; preds = %.noexc.i.i214
  %i.us = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ut = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.uu = icmp eq ptr %i.ut, %i.tu
  br i1 %i.uu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.bz
  %i.uv = load i64, ptr %i.tu, align 8, !tbaa !155
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.uw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.by
  %.pn46 = phi { ptr, i32 } [ %i.ur, %bb.by ], [ %i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.us, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ca

.thread371:                                       ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit, %bb.bu, %bb.bh, %bb.bj, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.9, %bb.bj ], [ %.sroa.13.9, %bb.bh ], [ %.sroa.13.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.13.0453, %bb.bu ], [ %.sroa.13.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.13.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.4, %bb.bj ], [ %.sroa.9.4, %bb.bh ], [ %.sroa.9.4, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.9.0454, %bb.bu ], [ %.sroa.9.4, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.9.4, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.0317.2.ph = phi ptr [ %.sroa.0317.9, %bb.bj ], [ %.sroa.0317.9, %bb.bh ], [ %.sroa.0317.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.0317.0455, %bb.bu ], [ %.sroa.0317.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0317.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread362

.thread362:                                       ; preds = %bb.ap, %bb.am, %.thread371
  %.sroa.0317.3369 = phi ptr [ %.sroa.0317.2.ph, %.thread371 ], [ %.sroa.0317.0455, %bb.am ], [ %.sroa.0317.0455, %bb.ap ] ; 2 uses
  %.sroa.9.2368 = phi ptr [ %.sroa.9.1.ph, %.thread371 ], [ %.sroa.9.0454, %bb.am ], [ %.sroa.9.0454, %bb.ap ] ; 2 uses
  %.sroa.13.3367 = phi ptr [ %.sroa.13.2.ph, %.thread371 ], [ %.sroa.13.0453, %bb.am ], [ %.sroa.13.0453, %bb.ap ] ; 2 uses
  %i.ux = add nuw nsw i32 %.042456, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ux, %i.ng
  br i1 %exitcond.not, label %.critedge69, label %bb.am, !llvm.loop !455

bb.ca:                                            ; preds = %.loopexit412, %.loopexit.split-lp413, %.loopexit407, %.loopexit.split-lp408, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.bm
  %.sroa.13.4 = phi ptr [ %.sroa.13.0453, %bb.bm ], [ %.sroa.13.0453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.13.0453, %.loopexit.split-lp408 ], [ %.sroa.13.9, %bb.bn ], [ %.sroa.13.0453, %.loopexit407 ], [ %.sroa.9.0454, %.loopexit412 ], [ %.sroa.9.0454, %.loopexit.split-lp413 ]
  %.sroa.0317.4 = phi ptr [ %.sroa.0317.0455, %bb.bm ], [ %.sroa.0317.0455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.0317.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.0317.0455, %.loopexit.split-lp408 ], [ %.sroa.0317.9, %bb.bn ], [ %.sroa.0317.0455, %.loopexit407 ], [ %.sroa.0317.0455, %.loopexit412 ], [ %.sroa.0317.0455, %.loopexit.split-lp413 ]
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tg, %bb.bm ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %lpad.loopexit.split-lp410, %.loopexit.split-lp408 ], [ %i.th, %bb.bn ], [ %lpad.loopexit409, %.loopexit407 ], [ %lpad.loopexit414, %.loopexit412 ], [ %lpad.loopexit.split-lp415, %.loopexit.split-lp413 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cz

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.sroa.13.2 = phi ptr [ %.sroa.13.0453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  %.sroa.0317.2 = phi ptr [ %.sroa.0317.0455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.0317.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cx

.critedge69:                                      ; preds = %.thread362, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.13.3367, %.thread362 ] ; 9 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.9.2368, %.thread362 ]
  %.sroa.0317.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.0317.3369, %.thread362 ] ; 10 uses
  %i.uy = load ptr, ptr %i.ir, align 8, !tbaa !291 ; 11 uses
  %i.uz = ptrtoaddr ptr %i.uy to i64              ; 6 uses
  %i.va = load ptr, ptr %i.it, align 8, !tbaa !291 ; 6 uses
  %i.vb = ptrtoaddr ptr %i.va to i64              ; 2 uses
  %i.vc = icmp ne ptr %i.uy, %i.va
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.va, i64 -4 ; 5 uses
  %i.vd = icmp ult ptr %i.uy, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.vc, i1 %i.vd, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %.critedge69
  %i.ve = add i64 %i.vb, -8
  %i.vf = add i64 %i.uz, 4
  %i.vg = call i64 @llvm.umax.i64(i64 %i.ve, i64 %i.vf)
  %i.vh = add i64 %i.vg, -4                       ; 2 uses
  %i.vi = icmp ne i64 %i.vh, %i.uz
  %i.vj = zext i1 %i.vi to i64                    ; 2 uses
  %i.vk = add i64 %i.uz, %i.vj
  %i.vl = sub i64 %i.vh, %i.vk
  %i.vm = lshr i64 %i.vl, 3
  %i.vn = add nuw nsw i64 %i.vm, %i.vj            ; 2 uses
  %i.vo = add nuw nsw i64 %i.vn, 1                ; 2 uses
  %min.iters.check607 = icmp samesign ult i64 %i.vn, 31
  br i1 %min.iters.check607, label %.lr.ph.i.i.preheader626, label %vector.memcheck604

vector.memcheck604:                               ; preds = %.lr.ph.i.i.preheader
  %i.vp = add i64 %i.vb, -8
  %i.vq = add i64 %i.uz, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.vp, i64 %i.vq)
  %i.vr = add i64 %umax, -4                       ; 2 uses
  %i.vs = icmp ne i64 %i.vr, %i.uz
  %umin = zext i1 %i.vs to i64                    ; 2 uses
  %i.vt = add i64 %i.uz, %umin
  %i.vu = sub i64 %i.vr, %i.vt
  %i.vv = lshr i64 %i.vu, 3
  %i.vw = add nuw nsw i64 %i.vv, %umin
  %i.vx = shl nuw i64 %i.vw, 2                    ; 2 uses
  %i.vy = getelementptr i8, ptr %i.uy, i64 %i.vx
  %scevgep = getelementptr i8, ptr %i.vy, i64 4
  %i.vz = sub nuw nsw i64 -4, %i.vx
  %scevgep605 = getelementptr i8, ptr %i.va, i64 %i.vz
  %bound0 = icmp ult ptr %i.uy, %i.va
  %bound1 = icmp ult ptr %scevgep605, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader626, label %vector.ph608

vector.ph608:                                     ; preds = %vector.memcheck604
  %n.vec609 = and i64 %i.vo, 9223372036854775800  ; 4 uses
  %i.wa = mul i64 %n.vec609, -4
  %i.wb = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.wa
  %i.wc = shl i64 %n.vec609, 2
  %i.wd = getelementptr i8, ptr %i.uy, i64 %i.wc
  br label %vector.body610

vector.body610:                                   ; preds = %vector.body610, %vector.ph608
  %index611 = phi i64 [ 0, %vector.ph608 ], [ %index.next621, %vector.body610 ] ; 3 uses
  %i.we = mul i64 %index611, -4
  %next.gep612 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.we ; 2 uses
  %i.wf = shl i64 %index611, 2
  %next.gep613 = getelementptr i8, ptr %i.uy, i64 %i.wf ; 3 uses
  %i.wg = getelementptr i8, ptr %next.gep613, i64 16 ; 2 uses
  %wide.load614 = load <4 x i32>, ptr %next.gep613, align 4, !tbaa !288, !alias.scope !469, !noalias !470
  %wide.load615.a = load <4 x i32>, ptr %i.wg, align 4, !tbaa !288, !alias.scope !469, !noalias !470
  %17 = getelementptr i8, ptr %next.gep612, i64 -12 ; 2 uses
  %i.wh = getelementptr i8, ptr %next.gep612, i64 -28 ; 2 uses
  %wide.load616 = load <4 x i32>, ptr %17, align 4, !tbaa !288, !alias.scope !470
  %wide.load617 = load <4 x i32>, ptr %i.wh, align 4, !tbaa !288, !alias.scope !470
  %reverse = shufflevector <4 x i32> %wide.load616, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse618 = shufflevector <4 x i32> %wide.load617, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep613, align 4, !tbaa !288, !alias.scope !469, !noalias !470
  store <4 x i32> %reverse618, ptr %i.wg, align 4, !tbaa !288, !alias.scope !469, !noalias !470
  %reverse619 = shufflevector <4 x i32> %wide.load614, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse620 = shufflevector <4 x i32> %wide.load615.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse619, ptr %17, align 4, !tbaa !288, !alias.scope !470
  store <4 x i32> %reverse620, ptr %i.wh, align 4, !tbaa !288, !alias.scope !470
  %index.next621 = add nuw i64 %index611, 8       ; 2 uses
  %i.wi = icmp eq i64 %index.next621, %n.vec609
  br i1 %i.wi, label %middle.block622, label %vector.body610, !llvm.loop !459

middle.block622:                                  ; preds = %vector.body610
  %cmp.n623 = icmp eq i64 %i.vo, %n.vec609
  br i1 %cmp.n623, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.preheader626

.lr.ph.i.i.preheader626:                          ; preds = %vector.memcheck604, %.lr.ph.i.i.preheader, %middle.block622
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck604 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.wb, %middle.block622 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.uy, %vector.memcheck604 ], [ %i.uy, %.lr.ph.i.i.preheader ], [ %i.wd, %middle.block622 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader626, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader626 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.wl, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader626 ] ; 3 uses
  %i.wj = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  %i.wk = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  store i32 %i.wk, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  store i32 %i.wj, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.wm = icmp ult ptr %i.wl, %.sroa.0.0.i.i
  br i1 %i.wm, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !460

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %middle.block622, %.critedge69
  %i.wn = ptrtoint ptr %i.va to i64
  %i.wo = ptrtoint ptr %i.uy to i64
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = getelementptr inbounds i8, ptr %i.uy, i64 %i.wp
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr %i.wq, ptr %.sroa.0317.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.wr = load ptr, ptr %i.ly, align 8, !tbaa !471
  %i.ws = load ptr, ptr %i.lz, align 8, !tbaa !471
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %.loopexit406, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wu = load ptr, ptr %i.dc, align 8, !tbaa !147 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 192
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 200
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !280
  %i.wy = load ptr, ptr %i.wv, align 8, !tbaa !281
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = sdiv exact i64 %i.xb, 12                ; 3 uses
  %i.xd = and i64 %i.xc, 4294967295               ; 2 uses
  %i.xe = load ptr, ptr %i.dn, align 8, !tbaa !31 ; 2 uses
  %i.xf = load i32, ptr %i.dp, align 8, !tbaa !32 ; 2 uses
  %i.xg = load ptr, ptr %i.db, align 8, !tbaa !31 ; 6 uses
  %i.xh = ptrtoint ptr %i.xe to i64               ; 2 uses
  %i.xi = ptrtoint ptr %i.xg to i64               ; 3 uses
  %i.xj = sub i64 %i.xh, %i.xi
  %i.xk = shl nsw i64 %i.xj, 3
  %i.xl = zext i32 %i.xf to i64                   ; 2 uses
  %i.xm = add nsw i64 %i.xk, %i.xl
  %i.xn = icmp ugt i64 %i.xd, %i.xm
  br i1 %i.xn, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i227 = icmp eq ptr %i.xg, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !123
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = sub i64 %i.xq, %i.xi
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xg, i8 0, i64 %i.xr, i1 false)
  %.sroa.0.0.copyload.i.pre.i.i228 = load ptr, ptr %i.dn, align 8 ; 2 uses
  %.sroa.2.0.copyload.i.pre.i.i229 = load i32, ptr %i.dp, align 8 ; 2 uses
  %.pre.i.i230 = load ptr, ptr %i.db, align 8, !tbaa !31
  %.pre34.i.i231 = ptrtoint ptr %.sroa.0.0.copyload.i.pre.i.i228 to i64
  %.pre35.i.i232 = zext i32 %.sroa.2.0.copyload.i.pre.i.i229 to i64
  %i.xs = ptrtoint ptr %.pre.i.i230 to i64
  br label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233

_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233: ; preds = %bb.cf, %bb.ce
  %.pre-phi36.i.i234 = phi i64 [ %i.xl, %bb.ce ], [ %.pre35.i.i232, %bb.cf ]
  %.pre-phi.i.i235 = phi i64 [ %i.xh, %bb.ce ], [ %.pre34.i.i231, %bb.cf ]
  %i.xt = phi i64 [ 0, %bb.ce ], [ %i.xs, %bb.cf ]
  %.sroa.2.0.copyload.i.i.i236 = phi i32 [ %i.xf, %bb.ce ], [ %.sroa.2.0.copyload.i.pre.i.i229, %bb.cf ]
  %.sroa.0.0.copyload.i.i.i237 = phi ptr [ %i.xe, %bb.ce ], [ %.sroa.0.0.copyload.i.pre.i.i228, %bb.cf ]
  %.neg31.i.i238 = sub i64 %i.xt, %.pre-phi.i.i235
  %.neg29.i.i239 = shl i64 %.neg31.i.i238, 3
  %.neg30.i.i240 = sub nsw i64 %i.xd, %.pre-phi36.i.i234
  %i.xu = add i64 %.neg30.i.i240, %.neg29.i.i239
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr %.sroa.0.0.copyload.i.i.i237, i32 %.sroa.2.0.copyload.i.i.i236, i64 noundef %i.xu, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cd
  %i.xv = trunc i64 %i.xc to i32
  %i.xw = lshr i64 %i.xc, 6
  %.zext394 = and i64 %i.xw, 67108863
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xg, i64 %.zext394
  %i.xy = and i32 %i.xv, 63
  store ptr %i.xx, ptr %i.dn, align 8
  store i32 %i.xy, ptr %i.dp, align 8
  %.not.i20.i.i226 = icmp eq ptr %i.xg, null
  br i1 %.not.i20.i.i226, label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !123
  %i.yb = ptrtoint ptr %i.ya to i64
  %i.yc = sub i64 %i.yb, %i.xi
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xg, i8 0, i64 %i.yc, i1 false)
  br label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242

_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242:         ; preds = %bb.ch, %bb.cg, %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.yd = load ptr, ptr %i.ir, align 8, !tbaa !291 ; 2 uses
  %i.ye = load ptr, ptr %i.it, align 8, !tbaa !291 ; 2 uses
  %.not403459 = icmp eq ptr %i.yd, %i.ye
  br i1 %.not403459, label %.loopexit406, label %.lr.ph461

.loopexit:                                        ; preds = %.lr.ph.i.i244
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp:                               ; preds = %.loopexit406, %.noexc245
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ci:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cj:                                            ; preds = %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.lr.ph461:                                        ; preds = %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.ck
  %.sroa.0268.0460 = phi ptr [ %i.yj, %bb.ck ], [ %i.yd, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 ] ; 2 uses
  %i.yh = load i32, ptr %.sroa.0268.0460, align 4, !tbaa !288
  store i32 %i.yh, ptr %15, align 4, !tbaa !288
  %i.yi = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE35EncodeAttributeConnectivitiesOnFaceENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(601) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %15)
          to label %bb.ck unwind label %bb.cl     ; 0 uses

bb.ck:                                            ; preds = %.lr.ph461
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0268.0460, i64 4 ; 2 uses
  %.not403 = icmp eq ptr %i.yj, %i.ye
  br i1 %.not403, label %.loopexit406, label %.lr.ph461

bb.cl:                                            ; preds = %.lr.ph461
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit406:                                     ; preds = %bb.ck, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.cc
  invoke void @_ZN5draco31MeshEdgebreakerTraversalEncoder22EncodeTraversalSymbolsEv(ptr noundef nonnull align 8 dereferenceable(148) %i.br)
          to label %.noexc245 unwind label %.loopexit.split-lp

.noexc245:                                        ; preds = %.loopexit406
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 3 uses
  invoke void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(148) %i.br, ptr noundef nonnull %i.yl)
          to label %.noexc246 unwind label %.loopexit.split-lp

.noexc246:                                        ; preds = %.noexc245
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !292
  %.not.i.i243 = icmp eq ptr %i.yn, null
  br i1 %.not.i.i243, label %_ZN5draco31MeshEdgebreakerTraversalEncoder4DoneEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.noexc246
  %i.yo = load i32, ptr %i.mx, align 8, !tbaa !284
  %i.yp = icmp sgt i32 %i.yo, 0
  br i1 %i.yp, label %.lr.ph.i.i244, label %_ZN5draco31MeshEdgebreakerTraversalEncoder4DoneEv.exit

.lr.ph.i.i244:                                    ; preds = %.preheader.i.i, %.noexc247
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.noexc247 ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.yq = load ptr, ptr %i.ym, align 8, !tbaa !292
  %i.yr = getelementptr inbounds nuw [56 x i8], ptr %i.yq, i64 %indvars.iv.i.i
  invoke void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56) %i.yr, ptr noundef nonnull %i.yl)
          to label %.noexc247 unwind label %.loopexit

.noexc247:                                        ; preds = %.lr.ph.i.i244
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ys = load i32, ptr %i.mx, align 8, !tbaa !284
  %i.yt = sext i32 %i.ys to i64
  %i.yu = icmp slt i64 %indvars.iv.next.i.i, %i.yt
  br i1 %i.yu, label %.lr.ph.i.i244, label %_ZN5draco31MeshEdgebreakerTraversalEncoder4DoneEv.exit, !llvm.loop !9

_ZN5draco31MeshEdgebreakerTraversalEncoder4DoneEv.exit: ; preds = %.noexc247, %.preheader.i.i, %.noexc246
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !293
  %i.yy = load ptr, ptr %i.yv, align 8, !tbaa !294
  %i.yz = ptrtoint ptr %i.yx to i64
  %i.za = ptrtoint ptr %i.yy to i64
  %i.zb = sub i64 %i.yz, %i.za
  %i.zc = lshr exact i64 %i.zb, 2
  %i.zd = trunc i64 %i.zc to i32
  %i.ze = load ptr, ptr %i.cf, align 8, !tbaa !135
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 88
end_hunk_0
begin_hunk_1_@_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE18EncodeConnectivityEv:bb.a
  %i.vf = add i32 %i.pk, -2
  %spec.select.i208 = select i1 %.not.i207, i32 %i.vf, i32 %i.vd
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink.i209 = phi i32 [ -1, %bb.bt ], [ %spec.select.i208, %bb.bu ]
  store i32 %.sink.i209, ptr %13, align 4, !tbaa !288, !alias.scope !641
  %i.vg = invoke noundef i32 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE10EncodeHoleENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEb(ptr noundef nonnull align 8 dereferenceable(689) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13, i1 noundef zeroext true)
          to label %bb.bw unwind label %bb.bp     ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.vh = load i32, ptr %9, align 4, !tbaa !288
  store i32 %i.vh, ptr %14, align 4, !tbaa !288
  %i.vi = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(689) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %14)
          to label %bb.bx unwind label %bb.bp

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.vi, label %.thread368, label %.noexc.i212

.noexc.i212:                                      ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.vj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.vj, ptr %15, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 32, ptr %i.d, align 8, !tbaa !152
  %i.vk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc213 unwind label %bb.cb ; 2 uses

.noexc213:                                        ; preds = %.noexc.i212
  store ptr %i.vk, ptr %15, align 8, !tbaa !154
  %i.vl = load i64, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  store i64 %i.vl, ptr %i.vj, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.vk, ptr noundef nonnull align 1 dereferenceable(32) @.str.4, i64 32, i1 false)
  %i.vm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.vl, ptr %i.vm, align 8, !tbaa !156
  %i.vn = load ptr, ptr %15, align 8, !tbaa !154
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vl
  store i8 0, ptr %i.vo, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !151
  %i.vr = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.vs = load i64, ptr %i.vm, align 8, !tbaa !156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.vs, ptr %i.c, align 8, !tbaa !152
  %i.vt = icmp ugt i64 %i.vs, 15
  br i1 %i.vt, label %.noexc.i.i216, label %._crit_edge.i.i.i215

.noexc.i.i216:                                    ; preds = %.noexc213
  %i.vu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.vp, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc217 unwind label %bb.cc ; 2 uses

.noexc217:                                        ; preds = %.noexc.i.i216
  store ptr %i.vu, ptr %i.vp, align 8, !tbaa !154
  %i.vv = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.vv, ptr %i.vq, align 8, !tbaa !155
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %.noexc217, %.noexc213
  %i.vw = phi ptr [ %i.vu, %.noexc217 ], [ %i.vq, %.noexc213 ] ; 2 uses
  switch i64 %i.vs, label %bb.bz [
    i64 1, label %bb.by
    i64 0, label %bb.ca
  ]

bb.by:                                            ; preds = %._crit_edge.i.i.i215
  %i.vx = load i8, ptr %i.vr, align 1, !tbaa !155
  store i8 %i.vx, ptr %i.vw, align 1, !tbaa !155
  br label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i.i215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vw, ptr align 1 %i.vr, i64 %i.vs, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %._crit_edge.i.i.i215
  %i.vy = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.vy, ptr %i.vz, align 8, !tbaa !156
  %i.wa = load ptr, ptr %i.vp, align 8, !tbaa !154
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vy
  store i8 0, ptr %i.wb, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.wc = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.vj
  br i1 %i.wd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.ca
  %i.we = load i64, ptr %i.vj, align 8, !tbaa !155
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ce

bb.cb:                                            ; preds = %.noexc.i212
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.cc:                                            ; preds = %.noexc.i.i216
  %i.wh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wi = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.wj = icmp eq ptr %i.wi, %i.vj
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.cc
  %i.wk = load i64, ptr %i.vj, align 8, !tbaa !155
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.cb
  %.pn46 = phi { ptr, i32 } [ %i.wg, %bb.cb ], [ %i.wh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %i.wh, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.cd

.thread368:                                       ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit, %bb.bx, %bb.bk, %bb.bm, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.9, %bb.bm ], [ %.sroa.13.9, %bb.bk ], [ %.sroa.13.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.13.0443, %bb.bx ], [ %.sroa.13.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.13.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186 ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.4, %bb.bm ], [ %.sroa.9.4, %bb.bk ], [ %.sroa.9.4, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.9.0444, %bb.bx ], [ %.sroa.9.4, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.9.4, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186 ]
  %.sroa.0314.2.ph = phi ptr [ %.sroa.0314.9, %bb.bm ], [ %.sroa.0314.9, %bb.bk ], [ %.sroa.0314.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.0314.0445, %bb.bx ], [ %.sroa.0314.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0314.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.thread359

.thread359:                                       ; preds = %bb.as, %bb.ap, %.thread368
  %.sroa.0314.3366 = phi ptr [ %.sroa.0314.2.ph, %.thread368 ], [ %.sroa.0314.0445, %bb.ap ], [ %.sroa.0314.0445, %bb.as ] ; 2 uses
  %.sroa.9.2365 = phi ptr [ %.sroa.9.1.ph, %.thread368 ], [ %.sroa.9.0444, %bb.ap ], [ %.sroa.9.0444, %bb.as ] ; 2 uses
  %.sroa.13.3364 = phi ptr [ %.sroa.13.2.ph, %.thread368 ], [ %.sroa.13.0443, %bb.ap ], [ %.sroa.13.0443, %bb.as ] ; 2 uses
  %i.wm = add nuw nsw i32 %.042446, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.wm, %i.ov
  br i1 %exitcond.not, label %.critedge69, label %bb.ap, !llvm.loop !628

bb.cd:                                            ; preds = %.loopexit404, %.loopexit.split-lp405, %.loopexit403, %.loopexit.split-lp, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %bb.bp
  %.sroa.13.4 = phi ptr [ %.sroa.13.0443, %bb.bp ], [ %.sroa.13.0443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.sroa.13.0443, %.loopexit.split-lp ], [ %.sroa.13.9, %bb.bq ], [ %.sroa.13.0443, %.loopexit403 ], [ %.sroa.9.0444, %.loopexit404 ], [ %.sroa.9.0444, %.loopexit.split-lp405 ]
  %.sroa.0314.4 = phi ptr [ %.sroa.0314.0445, %bb.bp ], [ %.sroa.0314.0445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.sroa.0314.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.sroa.0314.0445, %.loopexit.split-lp ], [ %.sroa.0314.9, %bb.bq ], [ %.sroa.0314.0445, %.loopexit403 ], [ %.sroa.0314.0445, %.loopexit404 ], [ %.sroa.0314.0445, %.loopexit.split-lp405 ]
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uv, %bb.bp ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.uw, %bb.bq ], [ %lpad.loopexit, %.loopexit403 ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.de

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.sroa.13.2 = phi ptr [ %.sroa.13.0443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  %.sroa.0314.2 = phi ptr [ %.sroa.0314.0445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.sroa.0314.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.dc

.critedge69:                                      ; preds = %.thread359, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.13.3364, %.thread359 ] ; 8 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.9.2365, %.thread359 ]
  %.sroa.0314.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.0314.3366, %.thread359 ] ; 9 uses
  %i.wn = load ptr, ptr %i.kg, align 8, !tbaa !291 ; 11 uses
  %i.wo = ptrtoaddr ptr %i.wn to i64              ; 6 uses
  %i.wp = load ptr, ptr %i.ki, align 8, !tbaa !291 ; 6 uses
  %i.wq = ptrtoaddr ptr %i.wp to i64              ; 2 uses
  %i.wr = icmp ne ptr %i.wn, %i.wp
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.wp, i64 -4 ; 5 uses
  %i.ws = icmp ult ptr %i.wn, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.wr, i1 %i.ws, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %.critedge69
  %i.wt = add i64 %i.wq, -8
  %i.wu = add i64 %i.wo, 4
  %i.wv = call i64 @llvm.umax.i64(i64 %i.wt, i64 %i.wu)
  %i.ww = add i64 %i.wv, -4                       ; 2 uses
  %i.wx = icmp ne i64 %i.ww, %i.wo
  %i.wy = zext i1 %i.wx to i64                    ; 2 uses
  %i.wz = add i64 %i.wo, %i.wy
  %i.xa = sub i64 %i.ww, %i.wz
  %i.xb = lshr i64 %i.xa, 3
  %i.xc = add nuw nsw i64 %i.xb, %i.wy            ; 2 uses
  %i.xd = add nuw nsw i64 %i.xc, 1                ; 2 uses
  %min.iters.check603 = icmp samesign ult i64 %i.xc, 31
  br i1 %min.iters.check603, label %.lr.ph.i.i.preheader622, label %vector.memcheck600

vector.memcheck600:                               ; preds = %.lr.ph.i.i.preheader
  %i.xe = add i64 %i.wq, -8
  %i.xf = add i64 %i.wo, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.xe, i64 %i.xf)
  %i.xg = add i64 %umax, -4                       ; 2 uses
  %i.xh = icmp ne i64 %i.xg, %i.wo
  %umin = zext i1 %i.xh to i64                    ; 2 uses
  %i.xi = add i64 %i.wo, %umin
  %i.xj = sub i64 %i.xg, %i.xi
  %i.xk = lshr i64 %i.xj, 3
  %i.xl = add nuw nsw i64 %i.xk, %umin
  %i.xm = shl nuw i64 %i.xl, 2                    ; 2 uses
  %i.xn = getelementptr i8, ptr %i.wn, i64 %i.xm
  %scevgep = getelementptr i8, ptr %i.xn, i64 4
  %i.xo = sub nuw nsw i64 -4, %i.xm
  %scevgep601 = getelementptr i8, ptr %i.wp, i64 %i.xo
  %bound0 = icmp ult ptr %i.wn, %i.wp
  %bound1 = icmp ult ptr %scevgep601, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader622, label %vector.ph604

vector.ph604:                                     ; preds = %vector.memcheck600
  %n.vec605 = and i64 %i.xd, 9223372036854775800  ; 4 uses
  %i.xp = mul i64 %n.vec605, -4
  %i.xq = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.xp
  %i.xr = shl i64 %n.vec605, 2
  %i.xs = getelementptr i8, ptr %i.wn, i64 %i.xr
  br label %vector.body606

vector.body606:                                   ; preds = %vector.body606, %vector.ph604
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next617, %vector.body606 ] ; 3 uses
  %i.xt = mul i64 %index607, -4
  %next.gep608 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.xt ; 2 uses
  %i.xu = shl i64 %index607, 2
  %next.gep609 = getelementptr i8, ptr %i.wn, i64 %i.xu ; 3 uses
  %i.xv = getelementptr i8, ptr %next.gep609, i64 16 ; 2 uses
  %wide.load610 = load <4 x i32>, ptr %next.gep609, align 4, !tbaa !288, !alias.scope !642, !noalias !643
  %wide.load611.a = load <4 x i32>, ptr %i.xv, align 4, !tbaa !288, !alias.scope !642, !noalias !643
  %18 = getelementptr i8, ptr %next.gep608, i64 -12 ; 2 uses
  %i.xw = getelementptr i8, ptr %next.gep608, i64 -28 ; 2 uses
  %wide.load612 = load <4 x i32>, ptr %18, align 4, !tbaa !288, !alias.scope !643
  %wide.load613 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !288, !alias.scope !643
  %reverse = shufflevector <4 x i32> %wide.load612, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse614 = shufflevector <4 x i32> %wide.load613, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep609, align 4, !tbaa !288, !alias.scope !642, !noalias !643
  store <4 x i32> %reverse614, ptr %i.xv, align 4, !tbaa !288, !alias.scope !642, !noalias !643
  %reverse615 = shufflevector <4 x i32> %wide.load610, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse616 = shufflevector <4 x i32> %wide.load611.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse615, ptr %18, align 4, !tbaa !288, !alias.scope !643
  store <4 x i32> %reverse616, ptr %i.xw, align 4, !tbaa !288, !alias.scope !643
  %index.next617 = add nuw i64 %index607, 8       ; 2 uses
  %i.xx = icmp eq i64 %index.next617, %n.vec605
  br i1 %i.xx, label %middle.block618, label %vector.body606, !llvm.loop !632

middle.block618:                                  ; preds = %vector.body606
  %cmp.n619 = icmp eq i64 %i.xd, %n.vec605
  br i1 %cmp.n619, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.preheader622

.lr.ph.i.i.preheader622:                          ; preds = %vector.memcheck600, %.lr.ph.i.i.preheader, %middle.block618
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck600 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.xq, %middle.block618 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.wn, %vector.memcheck600 ], [ %i.wn, %.lr.ph.i.i.preheader ], [ %i.xs, %middle.block618 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader622, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader622 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ya, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader622 ] ; 3 uses
  %i.xy = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  %i.xz = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  store i32 %i.xz, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  store i32 %i.xy, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  %i.ya = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.yb = icmp ult ptr %i.ya, %.sroa.0.0.i.i
  br i1 %i.yb, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !633

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %middle.block618, %.critedge69
  %i.yc = ptrtoint ptr %i.wp to i64
  %i.yd = ptrtoint ptr %i.wn to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = getelementptr inbounds i8, ptr %i.wn, i64 %i.ye
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr %i.yf, ptr %.sroa.0314.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.cf unwind label %bb.cm

bb.cf:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.yg = load ptr, ptr %i.nn, align 8, !tbaa !644
  %i.yh = load ptr, ptr %i.no, align 8, !tbaa !644
  %i.yi = icmp eq ptr %i.yg, %i.yh
  br i1 %i.yi, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.yj = load ptr, ptr %i.er, align 8, !tbaa !330 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 192
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 200
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !280
  %i.yn = load ptr, ptr %i.yk, align 8, !tbaa !281
  %i.yo = ptrtoint ptr %i.ym to i64
  %i.yp = ptrtoint ptr %i.yn to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = sdiv exact i64 %i.yq, 12                ; 3 uses
  %i.ys = and i64 %i.yr, 4294967295               ; 2 uses
  %i.yt = load ptr, ptr %i.fc, align 8, !tbaa !31 ; 2 uses
  %i.yu = load i32, ptr %i.fe, align 8, !tbaa !32 ; 2 uses
  %i.yv = load ptr, ptr %i.eq, align 8, !tbaa !31 ; 6 uses
  %i.yw = ptrtoint ptr %i.yt to i64               ; 2 uses
  %i.yx = ptrtoint ptr %i.yv to i64               ; 3 uses
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = shl nsw i64 %i.yy, 3
  %i.za = zext i32 %i.yu to i64                   ; 2 uses
  %i.zb = add nsw i64 %i.yz, %i.za
  %i.zc = icmp ugt i64 %i.ys, %i.zb
  br i1 %i.zc, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i.i229 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !123
  %i.zf = ptrtoint ptr %i.ze to i64
  %i.zg = sub i64 %i.zf, %i.yx
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.yv, i8 0, i64 %i.zg, i1 false)
  %.sroa.0.0.copyload.i.pre.i.i230 = load ptr, ptr %i.fc, align 8 ; 2 uses
  %.sroa.2.0.copyload.i.pre.i.i231 = load i32, ptr %i.fe, align 8 ; 2 uses
  %.pre.i.i232 = load ptr, ptr %i.eq, align 8, !tbaa !31
  %.pre34.i.i233 = ptrtoint ptr %.sroa.0.0.copyload.i.pre.i.i230 to i64
  %.pre35.i.i234 = zext i32 %.sroa.2.0.copyload.i.pre.i.i231 to i64
  %i.zh = ptrtoint ptr %.pre.i.i232 to i64
  br label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235

_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235: ; preds = %bb.ci, %bb.ch
  %.pre-phi36.i.i236 = phi i64 [ %i.za, %bb.ch ], [ %.pre35.i.i234, %bb.ci ]
  %.pre-phi.i.i237 = phi i64 [ %i.yw, %bb.ch ], [ %.pre34.i.i233, %bb.ci ]
  %i.zi = phi i64 [ 0, %bb.ch ], [ %i.zh, %bb.ci ]
  %.sroa.2.0.copyload.i.i.i238 = phi i32 [ %i.yu, %bb.ch ], [ %.sroa.2.0.copyload.i.pre.i.i231, %bb.ci ]
  %.sroa.0.0.copyload.i.i.i239 = phi ptr [ %i.yt, %bb.ch ], [ %.sroa.0.0.copyload.i.pre.i.i230, %bb.ci ]
  %.neg31.i.i240 = sub i64 %i.zi, %.pre-phi.i.i237
  %.neg29.i.i241 = shl i64 %.neg31.i.i240, 3
  %.neg30.i.i242 = sub nsw i64 %i.ys, %.pre-phi36.i.i236
  %i.zj = add i64 %.neg30.i.i242, %.neg29.i.i241
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.eq, ptr %.sroa.0.0.copyload.i.i.i239, i32 %.sroa.2.0.copyload.i.i.i238, i64 noundef %i.zj, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244 unwind label %bb.cn

bb.cj:                                            ; preds = %bb.cg
  %i.zk = trunc i64 %i.yr to i32
  %i.zl = lshr i64 %i.yr, 6
  %.zext391 = and i64 %i.zl, 67108863
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %.zext391
  %i.zn = and i32 %i.zk, 63
  store ptr %i.zm, ptr %i.fc, align 8
  store i32 %i.zn, ptr %i.fe, align 8
  %.not.i20.i.i228 = icmp eq ptr %i.yv, null
  br i1 %.not.i20.i.i228, label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !123
  %i.zq = ptrtoint ptr %i.zp to i64
  %i.zr = sub i64 %i.zq, %i.yx
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.yv, i8 0, i64 %i.zr, i1 false)
  br label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244

_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244:         ; preds = %bb.ck, %bb.cj, %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235
  %i.zs = load ptr, ptr %i.kg, align 8, !tbaa !291 ; 2 uses
  %i.zt = load ptr, ptr %i.ki, align 8, !tbaa !291 ; 2 uses
  %.not400449 = icmp eq ptr %i.zs, %i.zt
  br i1 %.not400449, label %.loopexit, label %.lr.ph451

bb.cl:                                            ; preds = %.loopexit
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cm:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cn:                                            ; preds = %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.lr.ph451:                                        ; preds = %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244, %bb.co
  %.sroa.0265.0450 = phi ptr [ %i.zz, %bb.co ], [ %i.zs, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244 ] ; 2 uses
  %i.zx = load i32, ptr %.sroa.0265.0450, align 4, !tbaa !288
  store i32 %i.zx, ptr %16, align 4, !tbaa !288
  %i.zy = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE35EncodeAttributeConnectivitiesOnFaceENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(689) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %16)
          to label %bb.co unwind label %bb.cp     ; 0 uses

bb.co:                                            ; preds = %.lr.ph451
  %i.zz = getelementptr inbounds nuw i8, ptr %.sroa.0265.0450, i64 4 ; 2 uses
  %.not400 = icmp eq ptr %i.zz, %i.zt
  br i1 %.not400, label %.loopexit, label %.lr.ph451

bb.cp:                                            ; preds = %.lr.ph451
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit:                                        ; preds = %bb.co, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244, %bb.cf
  invoke void @_ZN5draco41MeshEdgebreakerTraversalPredictiveEncoder4DoneEv(ptr noundef nonnull align 8 dereferenceable(240) %i.br)
          to label %bb.cq unwind label %bb.cl

bb.cq:                                            ; preds = %.loopexit
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 684
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !337
  %i.aad = load ptr, ptr %i.du, align 8, !tbaa !329
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 88
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !262
  %i.aag = invoke noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.aac, ptr noundef %i.aaf)
          to label %bb.cr unwind label %bb.cx     ; 0 uses

bb.cr:                                            ; preds = %bb.cq
  %i.aah = load i32, ptr %i.jg, align 4, !tbaa !336
  %i.aai = load ptr, ptr %i.du, align 8, !tbaa !329
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 88
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !262
  %i.aal = invoke noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.aah, ptr noundef %i.aak)
          to label %bb.cs unwind label %bb.cx     ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  %i.aam = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE15EncodeSplitDataEv(ptr noundef nonnull align 8 dereferenceable(689) %1)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.aam, label %bb.da, label %.noexc.i246

.noexc.i246:                                      ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  %i.aan = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.aan, ptr %17, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 28, ptr %i.b, align 8, !tbaa !152
  %i.aao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc247 unwind label %bb.cy ; 2 uses

.noexc247:                                        ; preds = %.noexc.i246
  store ptr %i.aao, ptr %17, align 8, !tbaa !154
  %i.aap = load i64, ptr %i.b, align 8, !tbaa !152 ; 3 uses
  store i64 %i.aap, ptr %i.aan, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.aao, ptr noundef nonnull align 1 dereferenceable(28) @.str.5, i64 28, i1 false)
  %i.aaq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  store i64 %i.aap, ptr %i.aaq, align 8, !tbaa !156
  %i.aar = load ptr, ptr %17, align 8, !tbaa !154
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aap
  store i8 0, ptr %i.aas, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE18EncodeConnectivityEv:bb.a
  %i.tr = add i32 %i.nw, -2
  %spec.select.i206 = select i1 %.not.i205, i32 %i.tr, i32 %i.tp
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink.i207 = phi i32 [ -1, %bb.bq ], [ %spec.select.i206, %bb.br ]
  store i32 %.sink.i207, ptr %12, align 4, !tbaa !288, !alias.scope !883
  %i.ts = invoke noundef i32 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE10EncodeHoleENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEb(ptr noundef nonnull align 8 dereferenceable(705) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %12, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.bm     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.tt = load i32, ptr %8, align 4, !tbaa !288
  store i32 %i.tt, ptr %13, align 4, !tbaa !288
  %i.tu = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(705) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13)
          to label %bb.bu unwind label %bb.bm

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.tu, label %.thread366, label %.noexc.i210

.noexc.i210:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.tv = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.tv, ptr %14, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 32, ptr %i.d, align 8, !tbaa !152
  %i.tw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc211 unwind label %bb.by ; 2 uses

.noexc211:                                        ; preds = %.noexc.i210
  store ptr %i.tw, ptr %14, align 8, !tbaa !154
  %i.tx = load i64, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.tw, ptr noundef nonnull align 1 dereferenceable(32) @.str.4, i64 32, i1 false)
  %i.ty = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.tx, ptr %i.ty, align 8, !tbaa !156
  %i.tz = load ptr, ptr %14, align 8, !tbaa !154
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tx
  store i8 0, ptr %i.ua, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.uc, ptr %i.ub, align 8, !tbaa !151
  %i.ud = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.ue = load i64, ptr %i.ty, align 8, !tbaa !156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.ue, ptr %i.c, align 8, !tbaa !152
  %i.uf = icmp ugt i64 %i.ue, 15
  br i1 %i.uf, label %.noexc.i.i214, label %._crit_edge.i.i.i213

.noexc.i.i214:                                    ; preds = %.noexc211
  %i.ug = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ub, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc215 unwind label %bb.bz ; 2 uses

.noexc215:                                        ; preds = %.noexc.i.i214
  store ptr %i.ug, ptr %i.ub, align 8, !tbaa !154
  %i.uh = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.uh, ptr %i.uc, align 8, !tbaa !155
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %.noexc215, %.noexc211
  %i.ui = phi ptr [ %i.ug, %.noexc215 ], [ %i.uc, %.noexc211 ] ; 2 uses
  switch i64 %i.ue, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i213
  %i.uj = load i8, ptr %i.ud, align 1, !tbaa !155
  store i8 %i.uj, ptr %i.ui, align 1, !tbaa !155
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i.i213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ui, ptr align 1 %i.ud, i64 %i.ue, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i213
  %i.uk = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.uk, ptr %i.ul, align 8, !tbaa !156
  %i.um = load ptr, ptr %i.ub, align 8, !tbaa !154
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.uk
  store i8 0, ptr %i.un, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.uo = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.up = icmp eq ptr %i.uo, %i.tv
  br i1 %i.up, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.bx
  %i.uq = load i64, ptr %i.tv, align 8, !tbaa !155
  %i.ur = add i64 %i.uq, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.ur) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.cb

bb.by:                                            ; preds = %.noexc.i210
  %i.us = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.bz:                                            ; preds = %.noexc.i.i214
  %i.ut = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uu = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.tv
  br i1 %i.uv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.bz
  %i.uw = load i64, ptr %i.tv, align 8, !tbaa !155
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.ux) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.by
  %.pn46 = phi { ptr, i32 } [ %i.us, %bb.by ], [ %i.ut, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.ut, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ca

.thread366:                                       ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit, %bb.bu, %bb.bh, %bb.bj, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.9, %bb.bj ], [ %.sroa.13.9, %bb.bh ], [ %.sroa.13.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.13.0441, %bb.bu ], [ %.sroa.13.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.13.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.4, %bb.bj ], [ %.sroa.9.4, %bb.bh ], [ %.sroa.9.4, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.9.0442, %bb.bu ], [ %.sroa.9.4, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.9.4, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.0312.2.ph = phi ptr [ %.sroa.0312.9, %bb.bj ], [ %.sroa.0312.9, %bb.bh ], [ %.sroa.0312.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.0312.0443, %bb.bu ], [ %.sroa.0312.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0312.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread357

.thread357:                                       ; preds = %bb.ap, %bb.am, %.thread366
  %.sroa.0312.3364 = phi ptr [ %.sroa.0312.2.ph, %.thread366 ], [ %.sroa.0312.0443, %bb.am ], [ %.sroa.0312.0443, %bb.ap ] ; 2 uses
  %.sroa.9.2363 = phi ptr [ %.sroa.9.1.ph, %.thread366 ], [ %.sroa.9.0442, %bb.am ], [ %.sroa.9.0442, %bb.ap ] ; 2 uses
  %.sroa.13.3362 = phi ptr [ %.sroa.13.2.ph, %.thread366 ], [ %.sroa.13.0441, %bb.am ], [ %.sroa.13.0441, %bb.ap ] ; 2 uses
  %i.uy = add nuw nsw i32 %.042444, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.uy, %i.nh
  br i1 %exitcond.not, label %.critedge69, label %bb.am, !llvm.loop !870

bb.ca:                                            ; preds = %.loopexit402, %.loopexit.split-lp403, %.loopexit401, %.loopexit.split-lp, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.bm
  %.sroa.13.4 = phi ptr [ %.sroa.13.0441, %bb.bm ], [ %.sroa.13.0441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.13.0441, %.loopexit.split-lp ], [ %.sroa.13.9, %bb.bn ], [ %.sroa.13.0441, %.loopexit401 ], [ %.sroa.9.0442, %.loopexit402 ], [ %.sroa.9.0442, %.loopexit.split-lp403 ]
  %.sroa.0312.4 = phi ptr [ %.sroa.0312.0443, %bb.bm ], [ %.sroa.0312.0443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.0312.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.0312.0443, %.loopexit.split-lp ], [ %.sroa.0312.9, %bb.bn ], [ %.sroa.0312.0443, %.loopexit401 ], [ %.sroa.0312.0443, %.loopexit402 ], [ %.sroa.0312.0443, %.loopexit.split-lp403 ]
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.th, %bb.bm ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ti, %bb.bn ], [ %lpad.loopexit, %.loopexit401 ], [ %lpad.loopexit404, %.loopexit402 ], [ %lpad.loopexit.split-lp405, %.loopexit.split-lp403 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.db

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.sroa.13.2 = phi ptr [ %.sroa.13.0441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  %.sroa.0312.2 = phi ptr [ %.sroa.0312.0443, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.0312.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cz

.critedge69:                                      ; preds = %.thread357, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.13.3362, %.thread357 ] ; 8 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.9.2363, %.thread357 ]
  %.sroa.0312.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.0312.3364, %.thread357 ] ; 9 uses
  %i.uz = load ptr, ptr %i.is, align 8, !tbaa !291 ; 11 uses
  %i.va = ptrtoaddr ptr %i.uz to i64              ; 6 uses
  %i.vb = load ptr, ptr %i.iu, align 8, !tbaa !291 ; 6 uses
  %i.vc = ptrtoaddr ptr %i.vb to i64              ; 2 uses
  %i.vd = icmp ne ptr %i.uz, %i.vb
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.vb, i64 -4 ; 5 uses
  %i.ve = icmp ult ptr %i.uz, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.vd, i1 %i.ve, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %.critedge69
  %i.vf = add i64 %i.vc, -8
  %i.vg = add i64 %i.va, 4
  %i.vh = call i64 @llvm.umax.i64(i64 %i.vf, i64 %i.vg)
  %i.vi = add i64 %i.vh, -4                       ; 2 uses
  %i.vj = icmp ne i64 %i.vi, %i.va
  %i.vk = zext i1 %i.vj to i64                    ; 2 uses
  %i.vl = add i64 %i.va, %i.vk
  %i.vm = sub i64 %i.vi, %i.vl
  %i.vn = lshr i64 %i.vm, 3
  %i.vo = add nuw nsw i64 %i.vn, %i.vk            ; 2 uses
  %i.vp = add nuw nsw i64 %i.vo, 1                ; 2 uses
  %min.iters.check595 = icmp samesign ult i64 %i.vo, 31
  br i1 %min.iters.check595, label %.lr.ph.i.i.preheader614, label %vector.memcheck592

vector.memcheck592:                               ; preds = %.lr.ph.i.i.preheader
  %i.vq = add i64 %i.vc, -8
  %i.vr = add i64 %i.va, 4
  %umax = call i64 @llvm.umax.i64(i64 %i.vq, i64 %i.vr)
  %i.vs = add i64 %umax, -4                       ; 2 uses
  %i.vt = icmp ne i64 %i.vs, %i.va
  %umin = zext i1 %i.vt to i64                    ; 2 uses
  %i.vu = add i64 %i.va, %umin
  %i.vv = sub i64 %i.vs, %i.vu
  %i.vw = lshr i64 %i.vv, 3
  %i.vx = add nuw nsw i64 %i.vw, %umin
  %i.vy = shl nuw i64 %i.vx, 2                    ; 2 uses
  %i.vz = getelementptr i8, ptr %i.uz, i64 %i.vy
  %scevgep = getelementptr i8, ptr %i.vz, i64 4
  %i.wa = sub nuw nsw i64 -4, %i.vy
  %scevgep593 = getelementptr i8, ptr %i.vb, i64 %i.wa
  %bound0 = icmp ult ptr %i.uz, %i.vb
  %bound1 = icmp ult ptr %scevgep593, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader614, label %vector.ph596

vector.ph596:                                     ; preds = %vector.memcheck592
  %n.vec597 = and i64 %i.vp, 9223372036854775800  ; 4 uses
  %i.wb = mul i64 %n.vec597, -4
  %i.wc = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.wb
  %i.wd = shl i64 %n.vec597, 2
  %i.we = getelementptr i8, ptr %i.uz, i64 %i.wd
  br label %vector.body598

vector.body598:                                   ; preds = %vector.body598, %vector.ph596
  %index599 = phi i64 [ 0, %vector.ph596 ], [ %index.next609, %vector.body598 ] ; 3 uses
  %i.wf = mul i64 %index599, -4
  %next.gep600 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.wf ; 2 uses
  %i.wg = shl i64 %index599, 2
  %next.gep601 = getelementptr i8, ptr %i.uz, i64 %i.wg ; 3 uses
  %i.wh = getelementptr i8, ptr %next.gep601, i64 16 ; 2 uses
  %wide.load602 = load <4 x i32>, ptr %next.gep601, align 4, !tbaa !288, !alias.scope !884, !noalias !885
  %wide.load603.a = load <4 x i32>, ptr %i.wh, align 4, !tbaa !288, !alias.scope !884, !noalias !885
  %17 = getelementptr i8, ptr %next.gep600, i64 -12 ; 2 uses
  %i.wi = getelementptr i8, ptr %next.gep600, i64 -28 ; 2 uses
  %wide.load604 = load <4 x i32>, ptr %17, align 4, !tbaa !288, !alias.scope !885
  %wide.load605 = load <4 x i32>, ptr %i.wi, align 4, !tbaa !288, !alias.scope !885
  %reverse = shufflevector <4 x i32> %wide.load604, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse606 = shufflevector <4 x i32> %wide.load605, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep601, align 4, !tbaa !288, !alias.scope !884, !noalias !885
  store <4 x i32> %reverse606, ptr %i.wh, align 4, !tbaa !288, !alias.scope !884, !noalias !885
  %reverse607 = shufflevector <4 x i32> %wide.load602, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse608 = shufflevector <4 x i32> %wide.load603.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse607, ptr %17, align 4, !tbaa !288, !alias.scope !885
  store <4 x i32> %reverse608, ptr %i.wi, align 4, !tbaa !288, !alias.scope !885
  %index.next609 = add nuw i64 %index599, 8       ; 2 uses
  %i.wj = icmp eq i64 %index.next609, %n.vec597
  br i1 %i.wj, label %middle.block610, label %vector.body598, !llvm.loop !874

middle.block610:                                  ; preds = %vector.body598
  %cmp.n611 = icmp eq i64 %i.vp, %n.vec597
  br i1 %cmp.n611, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.preheader614

.lr.ph.i.i.preheader614:                          ; preds = %vector.memcheck592, %.lr.ph.i.i.preheader, %middle.block610
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck592 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.wc, %middle.block610 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.uz, %vector.memcheck592 ], [ %i.uz, %.lr.ph.i.i.preheader ], [ %i.we, %middle.block610 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader614, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader614 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.wm, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader614 ] ; 3 uses
  %i.wk = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  %i.wl = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  store i32 %i.wl, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  store i32 %i.wk, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.wn = icmp ult ptr %i.wm, %.sroa.0.0.i.i
  br i1 %i.wn, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !875

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %middle.block610, %.critedge69
  %i.wo = ptrtoint ptr %i.vb to i64
  %i.wp = ptrtoint ptr %i.uz to i64
  %i.wq = sub i64 %i.wo, %i.wp
  %i.wr = getelementptr inbounds i8, ptr %i.uz, i64 %i.wq
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr %i.wr, ptr %.sroa.0312.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.ws = load ptr, ptr %i.lz, align 8, !tbaa !886
  %i.wt = load ptr, ptr %i.ma, align 8, !tbaa !886
  %i.wu = icmp eq ptr %i.ws, %i.wt
  br i1 %i.wu, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wv = load ptr, ptr %i.dd, align 8, !tbaa !357 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 192
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 200
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !280
  %i.wz = load ptr, ptr %i.ww, align 8, !tbaa !281
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = ptrtoint ptr %i.wz to i64
  %i.xc = sub i64 %i.xa, %i.xb
  %i.xd = sdiv exact i64 %i.xc, 12                ; 3 uses
  %i.xe = and i64 %i.xd, 4294967295               ; 2 uses
  %i.xf = load ptr, ptr %i.do, align 8, !tbaa !31 ; 2 uses
  %i.xg = load i32, ptr %i.dq, align 8, !tbaa !32 ; 2 uses
  %i.xh = load ptr, ptr %i.dc, align 8, !tbaa !31 ; 6 uses
  %i.xi = ptrtoint ptr %i.xf to i64               ; 2 uses
  %i.xj = ptrtoint ptr %i.xh to i64               ; 3 uses
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = shl nsw i64 %i.xk, 3
  %i.xm = zext i32 %i.xg to i64                   ; 2 uses
  %i.xn = add nsw i64 %i.xl, %i.xm
  %i.xo = icmp ugt i64 %i.xe, %i.xn
  br i1 %i.xo, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i227 = icmp eq ptr %i.xh, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !123
  %i.xr = ptrtoint ptr %i.xq to i64
  %i.xs = sub i64 %i.xr, %i.xj
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xh, i8 0, i64 %i.xs, i1 false)
  %.sroa.0.0.copyload.i.pre.i.i228 = load ptr, ptr %i.do, align 8 ; 2 uses
  %.sroa.2.0.copyload.i.pre.i.i229 = load i32, ptr %i.dq, align 8 ; 2 uses
  %.pre.i.i230 = load ptr, ptr %i.dc, align 8, !tbaa !31
  %.pre34.i.i231 = ptrtoint ptr %.sroa.0.0.copyload.i.pre.i.i228 to i64
  %.pre35.i.i232 = zext i32 %.sroa.2.0.copyload.i.pre.i.i229 to i64
  %i.xt = ptrtoint ptr %.pre.i.i230 to i64
  br label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233

_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233: ; preds = %bb.cf, %bb.ce
  %.pre-phi36.i.i234 = phi i64 [ %i.xm, %bb.ce ], [ %.pre35.i.i232, %bb.cf ]
  %.pre-phi.i.i235 = phi i64 [ %i.xi, %bb.ce ], [ %.pre34.i.i231, %bb.cf ]
  %i.xu = phi i64 [ 0, %bb.ce ], [ %i.xt, %bb.cf ]
  %.sroa.2.0.copyload.i.i.i236 = phi i32 [ %i.xg, %bb.ce ], [ %.sroa.2.0.copyload.i.pre.i.i229, %bb.cf ]
  %.sroa.0.0.copyload.i.i.i237 = phi ptr [ %i.xf, %bb.ce ], [ %.sroa.0.0.copyload.i.pre.i.i228, %bb.cf ]
  %.neg31.i.i238 = sub i64 %i.xu, %.pre-phi.i.i235
  %.neg29.i.i239 = shl i64 %.neg31.i.i238, 3
  %.neg30.i.i240 = sub nsw i64 %i.xe, %.pre-phi36.i.i234
  %i.xv = add i64 %.neg30.i.i240, %.neg29.i.i239
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr %.sroa.0.0.copyload.i.i.i237, i32 %.sroa.2.0.copyload.i.i.i236, i64 noundef %i.xv, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cd
  %i.xw = trunc i64 %i.xd to i32
  %i.xx = lshr i64 %i.xd, 6
  %.zext389 = and i64 %i.xx, 67108863
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %.zext389
  %i.xz = and i32 %i.xw, 63
  store ptr %i.xy, ptr %i.do, align 8
  store i32 %i.xz, ptr %i.dq, align 8
  %.not.i20.i.i226 = icmp eq ptr %i.xh, null
  br i1 %.not.i20.i.i226, label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !123
  %i.yc = ptrtoint ptr %i.yb to i64
  %i.yd = sub i64 %i.yc, %i.xj
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xh, i8 0, i64 %i.yd, i1 false)
  br label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242

_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242:         ; preds = %bb.ch, %bb.cg, %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.ye = load ptr, ptr %i.is, align 8, !tbaa !291 ; 2 uses
  %i.yf = load ptr, ptr %i.iu, align 8, !tbaa !291 ; 2 uses
  %.not398447 = icmp eq ptr %i.ye, %i.yf
  br i1 %.not398447, label %.loopexit, label %.lr.ph449

bb.ci:                                            ; preds = %.loopexit
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cj:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.yh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ck:                                            ; preds = %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.lr.ph449:                                        ; preds = %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.cl
  %.sroa.0263.0448 = phi ptr [ %i.yl, %bb.cl ], [ %i.ye, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 ] ; 2 uses
  %i.yj = load i32, ptr %.sroa.0263.0448, align 4, !tbaa !288
  store i32 %i.yj, ptr %15, align 4, !tbaa !288
  %i.yk = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE35EncodeAttributeConnectivitiesOnFaceENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(705) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %15)
          to label %bb.cl unwind label %bb.cm     ; 0 uses

bb.cl:                                            ; preds = %.lr.ph449
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.0263.0448, i64 4 ; 2 uses
  %.not398 = icmp eq ptr %i.yl, %i.yf
  br i1 %.not398, label %.loopexit, label %.lr.ph449

bb.cm:                                            ; preds = %.lr.ph449
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit:                                        ; preds = %bb.cl, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.cc
  invoke void @_ZN5draco38MeshEdgebreakerTraversalValenceEncoder4DoneEv(ptr noundef nonnull align 8 dereferenceable(256) %i.br)
          to label %bb.cn unwind label %bb.ci

bb.cn:                                            ; preds = %.loopexit
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !364
  %i.yp = load ptr, ptr %i.cg, align 8, !tbaa !356
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 88
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !262
  %i.ys = invoke noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.yo, ptr noundef %i.yr)
          to label %bb.co unwind label %bb.cu     ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.yt = load i32, ptr %i.hs, align 4, !tbaa !363
  %i.yu = load ptr, ptr %i.cg, align 8, !tbaa !356
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 88
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !262
  %i.yx = invoke noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.yt, ptr noundef %i.yw)
          to label %bb.cp unwind label %bb.cu     ; 0 uses

bb.cp:                                            ; preds = %bb.co
  %i.yy = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE15EncodeSplitDataEv(ptr noundef nonnull align 8 dereferenceable(705) %1)
          to label %bb.cq unwind label %bb.cu

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.yy, label %bb.cx, label %.noexc.i244

.noexc.i244:                                      ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  %i.yz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.yz, ptr %16, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 28, ptr %i.b, align 8, !tbaa !152
  %i.za = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc245 unwind label %bb.cv ; 2 uses

.noexc245:                                        ; preds = %.noexc.i244
  store ptr %i.za, ptr %16, align 8, !tbaa !154
  %i.zb = load i64, ptr %i.b, align 8, !tbaa !152 ; 3 uses
  store i64 %i.zb, ptr %i.yz, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.za, ptr noundef nonnull align 1 dereferenceable(28) @.str.5, i64 28, i1 false)
  %i.zc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.zb, ptr %i.zc, align 8, !tbaa !156
  %i.zd = load ptr, ptr %16, align 8, !tbaa !154
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.zb
  store i8 0, ptr %i.ze, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_2
