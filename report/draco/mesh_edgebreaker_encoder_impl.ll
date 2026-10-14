Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_edgebreaker_encoder_impl?download=true
inline.NumInlined: 5079
inline.NumDeleted: 1534
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE18EncodeConnectivityEv:bb.a
  br label %bb.ca

bb.bn:                                            ; preds = %bb.bi
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bo:                                            ; preds = %.noexc.i192
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.bp:                                            ; preds = %.noexc.i.i196
  %i.tm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tn = load ptr, ptr %11, align 8, !tbaa !154  ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.sm
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.bp
  %i.tp = load i64, ptr %i.sm, align 8, !tbaa !155
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.bo
  %.pn48 = phi { ptr, i32 } [ %i.tl, %bb.bo ], [ %i.tm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.tm, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ca

bb.bq:                                            ; preds = %_ZN5draco31MeshEdgebreakerTraversalEncoder28EncodeStartFaceConfigurationEb.exit
  br i1 %i.nz, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.tr = add nuw i32 %i.ny, 1                    ; 2 uses
  %i.ts = urem i32 %i.tr, 3
  %.not.i205 = icmp eq i32 %i.ts, 0
  %i.tt = add i32 %i.ny, -2
  %spec.select.i206 = select i1 %.not.i205, i32 %i.tt, i32 %i.tr
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink.i207 = phi i32 [ -1, %bb.bq ], [ %spec.select.i206, %bb.br ]
  store i32 %.sink.i207, ptr %12, align 4, !tbaa !288, !alias.scope !462
  %i.tu = invoke noundef i32 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE10EncodeHoleENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEb(ptr noundef nonnull align 8 dereferenceable(601) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %12, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.bm     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.tv = load i32, ptr %8, align 4, !tbaa !288
  store i32 %i.tv, ptr %13, align 4, !tbaa !288
  %i.tw = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(601) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13)
          to label %bb.bu unwind label %bb.bm

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.tw, label %.thread371, label %.noexc.i210

.noexc.i210:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.tx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.tx, ptr %14, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 32, ptr %i.d, align 8, !tbaa !152
  %i.ty = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc211 unwind label %bb.by ; 2 uses

.noexc211:                                        ; preds = %.noexc.i210
  store ptr %i.ty, ptr %14, align 8, !tbaa !154
  %i.tz = load i64, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  store i64 %i.tz, ptr %i.tx, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ty, ptr noundef nonnull align 1 dereferenceable(32) @.str.4, i64 32, i1 false)
  %i.ua = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.tz, ptr %i.ua, align 8, !tbaa !156
  %i.ub = load ptr, ptr %14, align 8, !tbaa !154
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.tz
  store i8 0, ptr %i.uc, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.ue, ptr %i.ud, align 8, !tbaa !151
  %i.uf = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.ug = load i64, ptr %i.ua, align 8, !tbaa !156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.ug, ptr %i.c, align 8, !tbaa !152
  %i.uh = icmp ugt i64 %i.ug, 15
  br i1 %i.uh, label %.noexc.i.i214, label %._crit_edge.i.i.i213

.noexc.i.i214:                                    ; preds = %.noexc211
  %i.ui = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ud, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc215 unwind label %bb.bz ; 2 uses

.noexc215:                                        ; preds = %.noexc.i.i214
  store ptr %i.ui, ptr %i.ud, align 8, !tbaa !154
  %i.uj = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.uj, ptr %i.ue, align 8, !tbaa !155
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %.noexc215, %.noexc211
  %i.uk = phi ptr [ %i.ui, %.noexc215 ], [ %i.ue, %.noexc211 ] ; 2 uses
  switch i64 %i.ug, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i213
  %i.ul = load i8, ptr %i.uf, align 1, !tbaa !155
  store i8 %i.ul, ptr %i.uk, align 1, !tbaa !155
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i.i213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uk, ptr align 1 %i.uf, i64 %i.ug, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i213
  %i.um = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.um, ptr %i.un, align 8, !tbaa !156
  %i.uo = load ptr, ptr %i.ud, align 8, !tbaa !154
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.um
  store i8 0, ptr %i.up, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.uq = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.ur = icmp eq ptr %i.uq, %i.tx
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.bx
  %i.us = load i64, ptr %i.tx, align 8, !tbaa !155
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ut) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.cb

bb.by:                                            ; preds = %.noexc.i210
  %i.uu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.bz:                                            ; preds = %.noexc.i.i214
  %i.uv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uw = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.ux = icmp eq ptr %i.uw, %i.tx
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.bz
  %i.uy = load i64, ptr %i.tx, align 8, !tbaa !155
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.uz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.by
  %.pn46 = phi { ptr, i32 } [ %i.uu, %bb.by ], [ %i.uv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.uv, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ca

.thread371:                                       ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit, %bb.bu, %bb.bh, %bb.bj, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.9, %bb.bj ], [ %.sroa.13.9, %bb.bh ], [ %.sroa.13.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.13.0450, %bb.bu ], [ %.sroa.13.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.13.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.4, %bb.bj ], [ %.sroa.9.4, %bb.bh ], [ %.sroa.9.4, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.9.0451, %bb.bu ], [ %.sroa.9.4, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.9.4, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.0317.2.ph = phi ptr [ %.sroa.0317.9, %bb.bj ], [ %.sroa.0317.9, %bb.bh ], [ %.sroa.0317.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.0317.0452, %bb.bu ], [ %.sroa.0317.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0317.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread362

.thread362:                                       ; preds = %bb.ap, %bb.am, %.thread371
  %.sroa.0317.3369 = phi ptr [ %.sroa.0317.2.ph, %.thread371 ], [ %.sroa.0317.0452, %bb.am ], [ %.sroa.0317.0452, %bb.ap ] ; 2 uses
  %.sroa.9.2368 = phi ptr [ %.sroa.9.1.ph, %.thread371 ], [ %.sroa.9.0451, %bb.am ], [ %.sroa.9.0451, %bb.ap ] ; 2 uses
  %.sroa.13.3367 = phi ptr [ %.sroa.13.2.ph, %.thread371 ], [ %.sroa.13.0450, %bb.am ], [ %.sroa.13.0450, %bb.ap ] ; 2 uses
  %i.va = add nuw nsw i32 %.042453, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.va, %i.nj
  br i1 %exitcond.not, label %.critedge69, label %bb.am, !llvm.loop !449

bb.ca:                                            ; preds = %.loopexit409, %.loopexit.split-lp410, %.loopexit404, %.loopexit.split-lp405, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.bm
  %.sroa.13.4 = phi ptr [ %.sroa.13.0450, %bb.bm ], [ %.sroa.13.0450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.13.0450, %.loopexit.split-lp405 ], [ %.sroa.13.9, %bb.bn ], [ %.sroa.13.0450, %.loopexit404 ], [ %.sroa.9.0451, %.loopexit409 ], [ %.sroa.9.0451, %.loopexit.split-lp410 ]
  %.sroa.0317.4 = phi ptr [ %.sroa.0317.0452, %bb.bm ], [ %.sroa.0317.0452, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.0317.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.0317.0452, %.loopexit.split-lp405 ], [ %.sroa.0317.9, %bb.bn ], [ %.sroa.0317.0452, %.loopexit404 ], [ %.sroa.0317.0452, %.loopexit409 ], [ %.sroa.0317.0452, %.loopexit.split-lp410 ]
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tj, %bb.bm ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %lpad.loopexit.split-lp407, %.loopexit.split-lp405 ], [ %i.tk, %bb.bn ], [ %lpad.loopexit406, %.loopexit404 ], [ %lpad.loopexit411, %.loopexit409 ], [ %lpad.loopexit.split-lp412, %.loopexit.split-lp410 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cz

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.sroa.13.2 = phi ptr [ %.sroa.13.0450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  %.sroa.0317.2 = phi ptr [ %.sroa.0317.0452, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.0317.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cx

.critedge69:                                      ; preds = %.thread362, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.13.3367, %.thread362 ] ; 9 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.9.2368, %.thread362 ]
  %.sroa.0317.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.0317.3369, %.thread362 ] ; 10 uses
  %i.vb = load ptr, ptr %i.it, align 8, !tbaa !291 ; 11 uses
  %i.vc = load ptr, ptr %i.iv, align 8, !tbaa !291 ; 6 uses
  %i.vd = icmp ne ptr %i.vb, %i.vc
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.vc, i64 -4 ; 5 uses
  %i.ve = icmp ult ptr %i.vb, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.vd, i1 %i.ve, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %.critedge69
  %i.vf = ptrtoaddr ptr %i.vc to i64
  %17 = ptrtoaddr ptr %i.vb to i64                ; 3 uses
  %18 = add i64 %i.vf, -8
  %i.vg = add i64 %17, 4
  %i.vh = call i64 @llvm.umax.i64(i64 %18, i64 %i.vg)
  %i.vi = add i64 %i.vh, -4                       ; 2 uses
  %i.vj = icmp ne i64 %i.vi, %17
  %i.vk = zext i1 %i.vj to i64                    ; 3 uses
  %i.vl = add i64 %17, %i.vk
  %i.vm = sub i64 %i.vi, %i.vl                    ; 2 uses
  %i.vn = lshr i64 %i.vm, 3
  %i.vo = add nuw nsw i64 %i.vn, %i.vk            ; 2 uses
  %i.vp = add nuw nsw i64 %i.vo, 1                ; 2 uses
  %min.iters.check604 = icmp samesign ult i64 %i.vo, 31
  br i1 %min.iters.check604, label %.lr.ph.i.i.preheader620, label %vector.memcheck605

vector.memcheck605:                               ; preds = %.lr.ph.i.i.preheader
  %i.vq = lshr i64 %i.vm, 3
  %i.vr = add nuw nsw i64 %i.vq, %i.vk
  %i.vs = shl nuw i64 %i.vr, 2                    ; 2 uses
  %i.vt = getelementptr i8, ptr %i.vb, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 4
  %i.vv = sub nuw nsw i64 -4, %i.vs
  %i.vw = getelementptr i8, ptr %i.vc, i64 %i.vv
  %bound0 = icmp ult ptr %i.vb, %i.vc
  %bound1 = icmp ult ptr %i.vw, %i.vu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader620, label %vector.ph606

vector.ph606:                                     ; preds = %vector.memcheck605
  %n.vec607 = and i64 %i.vp, 9223372036854775804  ; 4 uses
  %i.vx = mul i64 %n.vec607, -4
  %i.vy = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.vx
  %i.vz = shl i64 %n.vec607, 2
  %i.wa = getelementptr i8, ptr %i.vb, i64 %i.vz
  br label %vector.body608

vector.body608:                                   ; preds = %vector.body608, %vector.ph606
  %index609 = phi i64 [ 0, %vector.ph606 ], [ %index.next615, %vector.body608 ] ; 3 uses
  %i.wb = mul i64 %index609, -4
  %next.gep610 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.wb
  %i.wc = shl i64 %index609, 2
  %next.gep611 = getelementptr i8, ptr %i.vb, i64 %i.wc ; 2 uses
  %wide.load612 = load <4 x i32>, ptr %next.gep611, align 4, !tbaa !288, !alias.scope !463, !noalias !464
  %i.wd = getelementptr i8, ptr %next.gep610, i64 -12 ; 2 uses
  %wide.load613 = load <4 x i32>, ptr %i.wd, align 4, !tbaa !288, !alias.scope !464
  %reverse = shufflevector <4 x i32> %wide.load613, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep611, align 4, !tbaa !288, !alias.scope !463, !noalias !464
  %reverse614 = shufflevector <4 x i32> %wide.load612, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse614, ptr %i.wd, align 4, !tbaa !288, !alias.scope !464
  %index.next615 = add nuw i64 %index609, 4       ; 2 uses
  %i.we = icmp eq i64 %index.next615, %n.vec607
  br i1 %i.we, label %middle.block616, label %vector.body608, !llvm.loop !453

middle.block616:                                  ; preds = %vector.body608
  %cmp.n617 = icmp eq i64 %i.vp, %n.vec607
  br i1 %cmp.n617, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.preheader620

.lr.ph.i.i.preheader620:                          ; preds = %vector.memcheck605, %.lr.ph.i.i.preheader, %middle.block616
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck605 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.vy, %middle.block616 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.vb, %vector.memcheck605 ], [ %i.vb, %.lr.ph.i.i.preheader ], [ %i.wa, %middle.block616 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader620, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader620 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.wh, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader620 ] ; 3 uses
  %i.wf = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  %i.wg = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  store i32 %i.wg, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  store i32 %i.wf, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.wi = icmp ult ptr %i.wh, %.sroa.0.0.i.i
  br i1 %i.wi, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !454

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %middle.block616, %.critedge69
  %i.wj = ptrtoint ptr %i.vc to i64
  %i.wk = ptrtoint ptr %i.vb to i64
  %i.wl = sub i64 %i.wj, %i.wk
  %i.wm = getelementptr inbounds i8, ptr %i.vb, i64 %i.wl
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr %i.wm, ptr %.sroa.0317.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.cc unwind label %bb.ci

bb.cc:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.wn = load ptr, ptr %i.mb, align 8, !tbaa !465
  %i.wo = load ptr, ptr %i.mc, align 8, !tbaa !465
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %.loopexit403, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wq = load ptr, ptr %i.dc, align 8, !tbaa !147 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 192
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 200
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !280
  %i.wu = load ptr, ptr %i.wr, align 8, !tbaa !281
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = ptrtoint ptr %i.wu to i64
  %i.wx = sub i64 %i.wv, %i.ww
  %i.wy = sdiv exact i64 %i.wx, 12                ; 3 uses
  %i.wz = and i64 %i.wy, 4294967295               ; 2 uses
  %i.xa = load ptr, ptr %i.dn, align 8, !tbaa !31 ; 2 uses
  %i.xb = load i32, ptr %i.dp, align 8, !tbaa !32 ; 2 uses
  %i.xc = load ptr, ptr %i.db, align 8, !tbaa !31 ; 6 uses
  %i.xd = ptrtoint ptr %i.xa to i64               ; 2 uses
  %i.xe = ptrtoint ptr %i.xc to i64               ; 3 uses
  %i.xf = sub i64 %i.xd, %i.xe
  %i.xg = shl nsw i64 %i.xf, 3
  %i.xh = zext i32 %i.xb to i64                   ; 2 uses
  %i.xi = add nsw i64 %i.xg, %i.xh
  %i.xj = icmp ugt i64 %i.wz, %i.xi
  br i1 %i.xj, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i227 = icmp eq ptr %i.xc, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !123
  %i.xm = ptrtoint ptr %i.xl to i64
  %i.xn = sub i64 %i.xm, %i.xe
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xc, i8 0, i64 %i.xn, i1 false)
  %.sroa.0.0.copyload.i.pre.i.i228 = load ptr, ptr %i.dn, align 8 ; 2 uses
  %.sroa.2.0.copyload.i.pre.i.i229 = load i32, ptr %i.dp, align 8 ; 2 uses
  %.pre.i.i230 = load ptr, ptr %i.db, align 8, !tbaa !31
  %.pre34.i.i231 = ptrtoint ptr %.sroa.0.0.copyload.i.pre.i.i228 to i64
  %.pre35.i.i232 = zext i32 %.sroa.2.0.copyload.i.pre.i.i229 to i64
  %i.xo = ptrtoint ptr %.pre.i.i230 to i64
  br label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233

_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233: ; preds = %bb.cf, %bb.ce
  %.pre-phi36.i.i234 = phi i64 [ %i.xh, %bb.ce ], [ %.pre35.i.i232, %bb.cf ]
  %.pre-phi.i.i235 = phi i64 [ %i.xd, %bb.ce ], [ %.pre34.i.i231, %bb.cf ]
  %i.xp = phi i64 [ 0, %bb.ce ], [ %i.xo, %bb.cf ]
  %.sroa.2.0.copyload.i.i.i236 = phi i32 [ %i.xb, %bb.ce ], [ %.sroa.2.0.copyload.i.pre.i.i229, %bb.cf ]
  %.sroa.0.0.copyload.i.i.i237 = phi ptr [ %i.xa, %bb.ce ], [ %.sroa.0.0.copyload.i.pre.i.i228, %bb.cf ]
  %.neg31.i.i238 = sub i64 %i.xp, %.pre-phi.i.i235
  %.neg29.i.i239 = shl i64 %.neg31.i.i238, 3
  %.neg30.i.i240 = sub nsw i64 %i.wz, %.pre-phi36.i.i234
  %i.xq = add i64 %.neg30.i.i240, %.neg29.i.i239
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr %.sroa.0.0.copyload.i.i.i237, i32 %.sroa.2.0.copyload.i.i.i236, i64 noundef %i.xq, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 unwind label %bb.cj

bb.cg:                                            ; preds = %bb.cd
  %i.xr = trunc i64 %i.wy to i32
  %i.xs = lshr i64 %i.wy, 6
  %.zext394 = and i64 %i.xs, 67108863
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %.zext394
  %i.xu = and i32 %i.xr, 63
  store ptr %i.xt, ptr %i.dn, align 8
  store i32 %i.xu, ptr %i.dp, align 8
  %.not.i20.i.i226 = icmp eq ptr %i.xc, null
  br i1 %.not.i20.i.i226, label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !123
  %i.xx = ptrtoint ptr %i.xw to i64
  %i.xy = sub i64 %i.xx, %i.xe
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xc, i8 0, i64 %i.xy, i1 false)
  br label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242

_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242:         ; preds = %bb.ch, %bb.cg, %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.xz = load ptr, ptr %i.it, align 8, !tbaa !291 ; 2 uses
  %i.ya = load ptr, ptr %i.iv, align 8, !tbaa !291 ; 2 uses
  %.not400456 = icmp eq ptr %i.xz, %i.ya
  br i1 %.not400456, label %.loopexit403, label %.lr.ph458

.loopexit:                                        ; preds = %.lr.ph.i.i244
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit.split-lp:                               ; preds = %.loopexit403, %.noexc245
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ci:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cj:                                            ; preds = %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.lr.ph458:                                        ; preds = %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.ck
  %.sroa.0268.0457 = phi ptr [ %i.yf, %bb.ck ], [ %i.xz, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 ] ; 2 uses
  %i.yd = load i32, ptr %.sroa.0268.0457, align 4, !tbaa !288
  store i32 %i.yd, ptr %15, align 4, !tbaa !288
  %i.ye = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE35EncodeAttributeConnectivitiesOnFaceENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(601) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %15)
          to label %bb.ck unwind label %bb.cl     ; 0 uses

bb.ck:                                            ; preds = %.lr.ph458
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0268.0457, i64 4 ; 2 uses
  %.not400 = icmp eq ptr %i.yf, %i.ya
  br i1 %.not400, label %.loopexit403, label %.lr.ph458

bb.cl:                                            ; preds = %.lr.ph458
  %i.yg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

.loopexit403:                                     ; preds = %bb.ck, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.cc
  invoke void @_ZN5draco31MeshEdgebreakerTraversalEncoder22EncodeTraversalSymbolsEv(ptr noundef nonnull align 8 dereferenceable(148) %i.br)
          to label %.noexc245 unwind label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE18EncodeConnectivityEv:bb.a
  br label %bb.cd

bb.bq:                                            ; preds = %bb.bl
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.br:                                            ; preds = %.noexc.i194
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

bb.bs:                                            ; preds = %.noexc.i.i198
  %i.vc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vd = load ptr, ptr %12, align 8, !tbaa !154  ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.uc
  br i1 %i.ve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.bs
  %i.vf = load i64, ptr %i.uc, align 8, !tbaa !155
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204, %bb.br
  %.pn48 = phi { ptr, i32 } [ %i.vb, %bb.br ], [ %i.vc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %i.vc, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.cd

bb.bt:                                            ; preds = %_ZN5draco31MeshEdgebreakerTraversalEncoder28EncodeStartFaceConfigurationEb.exit
  br i1 %i.pp, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.vh = add nuw i32 %i.po, 1                    ; 2 uses
  %i.vi = urem i32 %i.vh, 3
  %.not.i207 = icmp eq i32 %i.vi, 0
  %i.vj = add i32 %i.po, -2
  %spec.select.i208 = select i1 %.not.i207, i32 %i.vj, i32 %i.vh
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink.i209 = phi i32 [ -1, %bb.bt ], [ %spec.select.i208, %bb.bu ]
  store i32 %.sink.i209, ptr %13, align 4, !tbaa !288, !alias.scope !630
  %i.vk = invoke noundef i32 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE10EncodeHoleENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEb(ptr noundef nonnull align 8 dereferenceable(689) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13, i1 noundef zeroext true)
          to label %bb.bw unwind label %bb.bp     ; 0 uses

bb.bw:                                            ; preds = %bb.bv
  %i.vl = load i32, ptr %9, align 4, !tbaa !288
  store i32 %i.vl, ptr %14, align 4, !tbaa !288
  %i.vm = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(689) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %14)
          to label %bb.bx unwind label %bb.bp

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.vm, label %.thread368, label %.noexc.i212

.noexc.i212:                                      ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %i.vn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.vn, ptr %15, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 32, ptr %i.d, align 8, !tbaa !152
  %i.vo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc213 unwind label %bb.cb ; 2 uses

.noexc213:                                        ; preds = %.noexc.i212
  store ptr %i.vo, ptr %15, align 8, !tbaa !154
  %i.vp = load i64, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  store i64 %i.vp, ptr %i.vn, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.vo, ptr noundef nonnull align 1 dereferenceable(32) @.str.4, i64 32, i1 false)
  %i.vq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.vp, ptr %i.vq, align 8, !tbaa !156
  %i.vr = load ptr, ptr %15, align 8, !tbaa !154
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vp
  store i8 0, ptr %i.vs, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.vu, ptr %i.vt, align 8, !tbaa !151
  %i.vv = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.vw = load i64, ptr %i.vq, align 8, !tbaa !156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.vw, ptr %i.c, align 8, !tbaa !152
  %i.vx = icmp ugt i64 %i.vw, 15
  br i1 %i.vx, label %.noexc.i.i216, label %._crit_edge.i.i.i215

.noexc.i.i216:                                    ; preds = %.noexc213
  %i.vy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.vt, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc217 unwind label %bb.cc ; 2 uses

.noexc217:                                        ; preds = %.noexc.i.i216
  store ptr %i.vy, ptr %i.vt, align 8, !tbaa !154
  %i.vz = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.vz, ptr %i.vu, align 8, !tbaa !155
  br label %._crit_edge.i.i.i215

._crit_edge.i.i.i215:                             ; preds = %.noexc217, %.noexc213
  %i.wa = phi ptr [ %i.vy, %.noexc217 ], [ %i.vu, %.noexc213 ] ; 2 uses
  switch i64 %i.vw, label %bb.bz [
    i64 1, label %bb.by
    i64 0, label %bb.ca
  ]

bb.by:                                            ; preds = %._crit_edge.i.i.i215
  %i.wb = load i8, ptr %i.vv, align 1, !tbaa !155
  store i8 %i.wb, ptr %i.wa, align 1, !tbaa !155
  br label %bb.ca

bb.bz:                                            ; preds = %._crit_edge.i.i.i215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wa, ptr align 1 %i.vv, i64 %i.vw, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %._crit_edge.i.i.i215
  %i.wc = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !156
  %i.we = load ptr, ptr %i.vt, align 8, !tbaa !154
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wc
  store i8 0, ptr %i.wf, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.wg = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.vn
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.ca
  %i.wi = load i64, ptr %i.vn, align 8, !tbaa !155
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.ce

bb.cb:                                            ; preds = %.noexc.i212
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

bb.cc:                                            ; preds = %.noexc.i.i216
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wm = load ptr, ptr %15, align 8, !tbaa !154  ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.vn
  br i1 %i.wn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.cc
  %i.wo = load i64, ptr %i.vn, align 8, !tbaa !155
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.cb
  %.pn46 = phi { ptr, i32 } [ %i.wk, %bb.cb ], [ %i.wl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %i.wl, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.cd

.thread368:                                       ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit, %bb.bx, %bb.bk, %bb.bm, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.9, %bb.bm ], [ %.sroa.13.9, %bb.bk ], [ %.sroa.13.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.13.0440, %bb.bx ], [ %.sroa.13.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.13.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186 ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.4, %bb.bm ], [ %.sroa.9.4, %bb.bk ], [ %.sroa.9.4, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.9.0441, %bb.bx ], [ %.sroa.9.4, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.9.4, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186 ]
  %.sroa.0314.2.ph = phi ptr [ %.sroa.0314.9, %bb.bm ], [ %.sroa.0314.9, %bb.bk ], [ %.sroa.0314.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.0314.0442, %bb.bx ], [ %.sroa.0314.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0314.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit186 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %.thread359

.thread359:                                       ; preds = %bb.as, %bb.ap, %.thread368
  %.sroa.0314.3366 = phi ptr [ %.sroa.0314.2.ph, %.thread368 ], [ %.sroa.0314.0442, %bb.ap ], [ %.sroa.0314.0442, %bb.as ] ; 2 uses
  %.sroa.9.2365 = phi ptr [ %.sroa.9.1.ph, %.thread368 ], [ %.sroa.9.0441, %bb.ap ], [ %.sroa.9.0441, %bb.as ] ; 2 uses
  %.sroa.13.3364 = phi ptr [ %.sroa.13.2.ph, %.thread368 ], [ %.sroa.13.0440, %bb.ap ], [ %.sroa.13.0440, %bb.as ] ; 2 uses
  %i.wq = add nuw nsw i32 %.042443, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.wq, %i.oz
  br i1 %exitcond.not, label %.critedge69, label %bb.ap, !llvm.loop !617

bb.cd:                                            ; preds = %.loopexit401, %.loopexit.split-lp402, %.loopexit400, %.loopexit.split-lp, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %bb.bp
  %.sroa.13.4 = phi ptr [ %.sroa.13.0440, %bb.bp ], [ %.sroa.13.0440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.sroa.13.0440, %.loopexit.split-lp ], [ %.sroa.13.9, %bb.bq ], [ %.sroa.13.0440, %.loopexit400 ], [ %.sroa.9.0441, %.loopexit401 ], [ %.sroa.9.0441, %.loopexit.split-lp402 ]
  %.sroa.0314.4 = phi ptr [ %.sroa.0314.0442, %bb.bp ], [ %.sroa.0314.0442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.sroa.0314.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.sroa.0314.0442, %.loopexit.split-lp ], [ %.sroa.0314.9, %bb.bq ], [ %.sroa.0314.0442, %.loopexit400 ], [ %.sroa.0314.0442, %.loopexit401 ], [ %.sroa.0314.0442, %.loopexit.split-lp402 ]
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.uz, %bb.bp ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.va, %bb.bq ], [ %lpad.loopexit, %.loopexit400 ], [ %lpad.loopexit403, %.loopexit401 ], [ %lpad.loopexit.split-lp404, %.loopexit.split-lp402 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.de

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.sroa.13.2 = phi ptr [ %.sroa.13.0440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  %.sroa.0314.2 = phi ptr [ %.sroa.0314.0442, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.sroa.0314.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.dc

.critedge69:                                      ; preds = %.thread359, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.13.3364, %.thread359 ] ; 8 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.9.2365, %.thread359 ]
  %.sroa.0314.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.0314.3366, %.thread359 ] ; 9 uses
  %i.wr = load ptr, ptr %i.kj, align 8, !tbaa !291 ; 11 uses
  %i.ws = load ptr, ptr %i.kl, align 8, !tbaa !291 ; 6 uses
  %i.wt = icmp ne ptr %i.wr, %i.ws
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ws, i64 -4 ; 5 uses
  %i.wu = icmp ult ptr %i.wr, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.wt, i1 %i.wu, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %.critedge69
  %i.wv = ptrtoaddr ptr %i.ws to i64
  %18 = ptrtoaddr ptr %i.wr to i64                ; 3 uses
  %19 = add i64 %i.wv, -8
  %i.ww = add i64 %18, 4
  %i.wx = call i64 @llvm.umax.i64(i64 %19, i64 %i.ww)
  %i.wy = add i64 %i.wx, -4                       ; 2 uses
  %i.wz = icmp ne i64 %i.wy, %18
  %i.xa = zext i1 %i.wz to i64                    ; 3 uses
  %i.xb = add i64 %18, %i.xa
  %i.xc = sub i64 %i.wy, %i.xb                    ; 2 uses
  %i.xd = lshr i64 %i.xc, 3
  %i.xe = add nuw nsw i64 %i.xd, %i.xa            ; 2 uses
  %i.xf = add nuw nsw i64 %i.xe, 1                ; 2 uses
  %min.iters.check600 = icmp samesign ult i64 %i.xe, 31
  br i1 %min.iters.check600, label %.lr.ph.i.i.preheader616, label %vector.memcheck601

vector.memcheck601:                               ; preds = %.lr.ph.i.i.preheader
  %i.xg = lshr i64 %i.xc, 3
  %i.xh = add nuw nsw i64 %i.xg, %i.xa
  %i.xi = shl nuw i64 %i.xh, 2                    ; 2 uses
  %i.xj = getelementptr i8, ptr %i.wr, i64 %i.xi
  %i.xk = getelementptr i8, ptr %i.xj, i64 4
  %i.xl = sub nuw nsw i64 -4, %i.xi
  %i.xm = getelementptr i8, ptr %i.ws, i64 %i.xl
  %bound0 = icmp ult ptr %i.wr, %i.ws
  %bound1 = icmp ult ptr %i.xm, %i.xk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader616, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck601
  %n.vec603 = and i64 %i.xf, 9223372036854775804  ; 4 uses
  %i.xn = mul i64 %n.vec603, -4
  %i.xo = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.xn
  %i.xp = shl i64 %n.vec603, 2
  %i.xq = getelementptr i8, ptr %i.wr, i64 %i.xp
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next611, %vector.body604 ] ; 3 uses
  %i.xr = mul i64 %index605, -4
  %next.gep606 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.xr
  %i.xs = shl i64 %index605, 2
  %next.gep607 = getelementptr i8, ptr %i.wr, i64 %i.xs ; 2 uses
  %wide.load608 = load <4 x i32>, ptr %next.gep607, align 4, !tbaa !288, !alias.scope !631, !noalias !632
  %i.xt = getelementptr i8, ptr %next.gep606, i64 -12 ; 2 uses
  %wide.load609 = load <4 x i32>, ptr %i.xt, align 4, !tbaa !288, !alias.scope !632
  %reverse = shufflevector <4 x i32> %wide.load609, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep607, align 4, !tbaa !288, !alias.scope !631, !noalias !632
  %reverse610 = shufflevector <4 x i32> %wide.load608, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse610, ptr %i.xt, align 4, !tbaa !288, !alias.scope !632
  %index.next611 = add nuw i64 %index605, 4       ; 2 uses
  %i.xu = icmp eq i64 %index.next611, %n.vec603
  br i1 %i.xu, label %middle.block612, label %vector.body604, !llvm.loop !621

middle.block612:                                  ; preds = %vector.body604
  %cmp.n613 = icmp eq i64 %i.xf, %n.vec603
  br i1 %cmp.n613, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.preheader616

.lr.ph.i.i.preheader616:                          ; preds = %vector.memcheck601, %.lr.ph.i.i.preheader, %middle.block612
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck601 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.xo, %middle.block612 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.wr, %vector.memcheck601 ], [ %i.wr, %.lr.ph.i.i.preheader ], [ %i.xq, %middle.block612 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader616, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader616 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.xx, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader616 ] ; 3 uses
  %i.xv = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  %i.xw = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  store i32 %i.xw, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  store i32 %i.xv, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.xy = icmp ult ptr %i.xx, %.sroa.0.0.i.i
  br i1 %i.xy, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !622

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %middle.block612, %.critedge69
  %i.xz = ptrtoint ptr %i.ws to i64
  %i.ya = ptrtoint ptr %i.wr to i64
  %i.yb = sub i64 %i.xz, %i.ya
  %i.yc = getelementptr inbounds i8, ptr %i.wr, i64 %i.yb
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr %i.yc, ptr %.sroa.0314.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.cf unwind label %bb.cm

bb.cf:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.yd = load ptr, ptr %i.nr, align 8, !tbaa !633
  %i.ye = load ptr, ptr %i.ns, align 8, !tbaa !633
  %i.yf = icmp eq ptr %i.yd, %i.ye
  br i1 %i.yf, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.yg = load ptr, ptr %i.es, align 8, !tbaa !330 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 192
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 200
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !280
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !281
  %i.yl = ptrtoint ptr %i.yj to i64
  %i.ym = ptrtoint ptr %i.yk to i64
  %i.yn = sub i64 %i.yl, %i.ym
  %i.yo = sdiv exact i64 %i.yn, 12                ; 3 uses
  %i.yp = and i64 %i.yo, 4294967295               ; 2 uses
  %i.yq = load ptr, ptr %i.fd, align 8, !tbaa !31 ; 2 uses
  %i.yr = load i32, ptr %i.ff, align 8, !tbaa !32 ; 2 uses
  %i.ys = load ptr, ptr %i.er, align 8, !tbaa !31 ; 6 uses
  %i.yt = ptrtoint ptr %i.yq to i64               ; 2 uses
  %i.yu = ptrtoint ptr %i.ys to i64               ; 3 uses
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = shl nsw i64 %i.yv, 3
  %i.yx = zext i32 %i.yr to i64                   ; 2 uses
  %i.yy = add nsw i64 %i.yw, %i.yx
  %i.yz = icmp ugt i64 %i.yp, %i.yy
  br i1 %i.yz, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %.not.i.i.i229 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !123
  %i.zc = ptrtoint ptr %i.zb to i64
  %i.zd = sub i64 %i.zc, %i.yu
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ys, i8 0, i64 %i.zd, i1 false)
  %.sroa.0.0.copyload.i.pre.i.i230 = load ptr, ptr %i.fd, align 8 ; 2 uses
  %.sroa.2.0.copyload.i.pre.i.i231 = load i32, ptr %i.ff, align 8 ; 2 uses
  %.pre.i.i232 = load ptr, ptr %i.er, align 8, !tbaa !31
  %.pre34.i.i233 = ptrtoint ptr %.sroa.0.0.copyload.i.pre.i.i230 to i64
  %.pre35.i.i234 = zext i32 %.sroa.2.0.copyload.i.pre.i.i231 to i64
  %i.ze = ptrtoint ptr %.pre.i.i232 to i64
  br label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235

_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235: ; preds = %bb.ci, %bb.ch
  %.pre-phi36.i.i236 = phi i64 [ %i.yx, %bb.ch ], [ %.pre35.i.i234, %bb.ci ]
  %.pre-phi.i.i237 = phi i64 [ %i.yt, %bb.ch ], [ %.pre34.i.i233, %bb.ci ]
  %i.zf = phi i64 [ 0, %bb.ch ], [ %i.ze, %bb.ci ]
  %.sroa.2.0.copyload.i.i.i238 = phi i32 [ %i.yr, %bb.ch ], [ %.sroa.2.0.copyload.i.pre.i.i231, %bb.ci ]
  %.sroa.0.0.copyload.i.i.i239 = phi ptr [ %i.yq, %bb.ch ], [ %.sroa.0.0.copyload.i.pre.i.i230, %bb.ci ]
  %.neg31.i.i240 = sub i64 %i.zf, %.pre-phi.i.i237
  %.neg29.i.i241 = shl i64 %.neg31.i.i240, 3
  %.neg30.i.i242 = sub nsw i64 %i.yp, %.pre-phi36.i.i236
  %i.zg = add i64 %.neg30.i.i242, %.neg29.i.i241
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.er, ptr %.sroa.0.0.copyload.i.i.i239, i32 %.sroa.2.0.copyload.i.i.i238, i64 noundef %i.zg, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244 unwind label %bb.cn

bb.cj:                                            ; preds = %bb.cg
  %i.zh = trunc i64 %i.yo to i32
  %i.zi = lshr i64 %i.yo, 6
  %.zext391 = and i64 %i.zi, 67108863
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %.zext391
  %i.zk = and i32 %i.zh, 63
  store ptr %i.zj, ptr %i.fd, align 8
  store i32 %i.zk, ptr %i.ff, align 8
  %.not.i20.i.i228 = icmp eq ptr %i.ys, null
  br i1 %.not.i20.i.i228, label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !123
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = sub i64 %i.zn, %i.yu
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ys, i8 0, i64 %i.zo, i1 false)
  br label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244

_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244:         ; preds = %bb.ck, %bb.cj, %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235
  %i.zp = load ptr, ptr %i.kj, align 8, !tbaa !291 ; 2 uses
  %i.zq = load ptr, ptr %i.kl, align 8, !tbaa !291 ; 2 uses
  %.not397446 = icmp eq ptr %i.zp, %i.zq
  br i1 %.not397446, label %.loopexit, label %.lr.ph448

bb.cl:                                            ; preds = %.loopexit
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cm:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cn:                                            ; preds = %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i235
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.lr.ph448:                                        ; preds = %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244, %bb.co
  %.sroa.0265.0447 = phi ptr [ %i.zw, %bb.co ], [ %i.zp, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244 ] ; 2 uses
  %i.zu = load i32, ptr %.sroa.0265.0447, align 4, !tbaa !288
  store i32 %i.zu, ptr %16, align 4, !tbaa !288
  %i.zv = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_41MeshEdgebreakerTraversalPredictiveEncoderEE35EncodeAttributeConnectivitiesOnFaceENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(689) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %16)
          to label %bb.co unwind label %bb.cp     ; 0 uses

bb.co:                                            ; preds = %.lr.ph448
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0265.0447, i64 4 ; 2 uses
  %.not397 = icmp eq ptr %i.zw, %i.zq
  br i1 %.not397, label %.loopexit, label %.lr.ph448

bb.cp:                                            ; preds = %.lr.ph448
  %i.zx = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

.loopexit:                                        ; preds = %bb.co, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit244, %bb.cf
  invoke void @_ZN5draco41MeshEdgebreakerTraversalPredictiveEncoder4DoneEv(ptr noundef nonnull align 8 dereferenceable(240) %i.br)
          to label %bb.cq unwind label %bb.cl

bb.cq:                                            ; preds = %.loopexit
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 684
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !337
  %i.aaa = load ptr, ptr %i.dv, align 8, !tbaa !329
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 88
end_hunk_1
begin_hunk_2_@_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE18EncodeConnectivityEv:bb.a
  br label %bb.ca

bb.bn:                                            ; preds = %bb.bi
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bo:                                            ; preds = %.noexc.i192
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.bp:                                            ; preds = %.noexc.i.i196
  %i.tn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.to = load ptr, ptr %11, align 8, !tbaa !154  ; 2 uses
  %i.tp = icmp eq ptr %i.to, %i.sn
  br i1 %i.tp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.bp
  %i.tq = load i64, ptr %i.sn, align 8, !tbaa !155
  %i.tr = add i64 %i.tq, 1
  call void @_ZdlPvm(ptr noundef %i.to, i64 noundef %i.tr) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.bo
  %.pn48 = phi { ptr, i32 } [ %i.tm, %bb.bo ], [ %i.tn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.tn, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ca

bb.bq:                                            ; preds = %_ZN5draco31MeshEdgebreakerTraversalEncoder28EncodeStartFaceConfigurationEb.exit
  br i1 %i.oa, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ts = add nuw i32 %i.nz, 1                    ; 2 uses
  %i.tt = urem i32 %i.ts, 3
  %.not.i205 = icmp eq i32 %i.tt, 0
  %i.tu = add i32 %i.nz, -2
  %spec.select.i206 = select i1 %.not.i205, i32 %i.tu, i32 %i.ts
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink.i207 = phi i32 [ -1, %bb.bq ], [ %spec.select.i206, %bb.br ]
  store i32 %.sink.i207, ptr %12, align 4, !tbaa !288, !alias.scope !867
  %i.tv = invoke noundef i32 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE10EncodeHoleENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEEb(ptr noundef nonnull align 8 dereferenceable(705) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %12, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.bm     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.tw = load i32, ptr %8, align 4, !tbaa !288
  store i32 %i.tw, ptr %13, align 4, !tbaa !288
  %i.tx = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(705) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %13)
          to label %bb.bu unwind label %bb.bm

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.tx, label %.thread366, label %.noexc.i210

.noexc.i210:                                      ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.ty = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ty, ptr %14, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 32, ptr %i.d, align 8, !tbaa !152
  %i.tz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc211 unwind label %bb.by ; 2 uses

.noexc211:                                        ; preds = %.noexc.i210
  store ptr %i.tz, ptr %14, align 8, !tbaa !154
  %i.ua = load i64, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  store i64 %i.ua, ptr %i.ty, align 8, !tbaa !155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.tz, ptr noundef nonnull align 1 dereferenceable(32) @.str.4, i64 32, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store i64 %i.ua, ptr %i.ub, align 8, !tbaa !156
  %i.uc = load ptr, ptr %14, align 8, !tbaa !154
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.ua
  store i8 0, ptr %i.ud, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i32 -1, ptr %0, align 8, !tbaa !275
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.uf, ptr %i.ue, align 8, !tbaa !151
  %i.ug = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.uh = load i64, ptr %i.ub, align 8, !tbaa !156 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 %i.uh, ptr %i.c, align 8, !tbaa !152
  %i.ui = icmp ugt i64 %i.uh, 15
  br i1 %i.ui, label %.noexc.i.i214, label %._crit_edge.i.i.i213

.noexc.i.i214:                                    ; preds = %.noexc211
  %i.uj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ue, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc215 unwind label %bb.bz ; 2 uses

.noexc215:                                        ; preds = %.noexc.i.i214
  store ptr %i.uj, ptr %i.ue, align 8, !tbaa !154
  %i.uk = load i64, ptr %i.c, align 8, !tbaa !152
  store i64 %i.uk, ptr %i.uf, align 8, !tbaa !155
  br label %._crit_edge.i.i.i213

._crit_edge.i.i.i213:                             ; preds = %.noexc215, %.noexc211
  %i.ul = phi ptr [ %i.uj, %.noexc215 ], [ %i.uf, %.noexc211 ] ; 2 uses
  switch i64 %i.uh, label %bb.bw [
    i64 1, label %bb.bv
    i64 0, label %bb.bx
  ]

bb.bv:                                            ; preds = %._crit_edge.i.i.i213
  %i.um = load i8, ptr %i.ug, align 1, !tbaa !155
  store i8 %i.um, ptr %i.ul, align 1, !tbaa !155
  br label %bb.bx

bb.bw:                                            ; preds = %._crit_edge.i.i.i213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ul, ptr align 1 %i.ug, i64 %i.uh, i1 false)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %._crit_edge.i.i.i213
  %i.un = load i64, ptr %i.c, align 8, !tbaa !152 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.un, ptr %i.uo, align 8, !tbaa !156
  %i.up = load ptr, ptr %i.ue, align 8, !tbaa !154
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 %i.un
  store i8 0, ptr %i.uq, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.ur = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.ty
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %bb.bx
  %i.ut = load i64, ptr %i.ty, align 8, !tbaa !155
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.cb

bb.by:                                            ; preds = %.noexc.i210
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

bb.bz:                                            ; preds = %.noexc.i.i214
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = load ptr, ptr %14, align 8, !tbaa !154  ; 2 uses
  %i.uy = icmp eq ptr %i.ux, %i.ty
  br i1 %i.uy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220: ; preds = %bb.bz
  %i.uz = load i64, ptr %i.ty, align 8, !tbaa !155
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.ux, i64 noundef %i.va) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220, %bb.by
  %.pn46 = phi { ptr, i32 } [ %i.uv, %bb.by ], [ %i.uw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220 ], [ %i.uw, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ca

.thread366:                                       ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit, %bb.bu, %bb.bh, %bb.bj, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.9, %bb.bj ], [ %.sroa.13.9, %bb.bh ], [ %.sroa.13.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.13.0438, %bb.bu ], [ %.sroa.13.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.13.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.4, %bb.bj ], [ %.sroa.9.4, %bb.bh ], [ %.sroa.9.4, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.9.0439, %bb.bu ], [ %.sroa.9.4, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.9.4, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  %.sroa.0312.2.ph = phi ptr [ %.sroa.0312.9, %bb.bj ], [ %.sroa.0312.9, %bb.bh ], [ %.sroa.0312.9, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.0312.0440, %bb.bu ], [ %.sroa.0312.9, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backEOS3_.exit ], [ %.sroa.0312.9, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.thread357

.thread357:                                       ; preds = %bb.ap, %bb.am, %.thread366
  %.sroa.0312.3364 = phi ptr [ %.sroa.0312.2.ph, %.thread366 ], [ %.sroa.0312.0440, %bb.am ], [ %.sroa.0312.0440, %bb.ap ] ; 2 uses
  %.sroa.9.2363 = phi ptr [ %.sroa.9.1.ph, %.thread366 ], [ %.sroa.9.0439, %bb.am ], [ %.sroa.9.0439, %bb.ap ] ; 2 uses
  %.sroa.13.3362 = phi ptr [ %.sroa.13.2.ph, %.thread366 ], [ %.sroa.13.0438, %bb.am ], [ %.sroa.13.0438, %bb.ap ] ; 2 uses
  %i.vb = add nuw nsw i32 %.042441, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.vb, %i.nk
  br i1 %exitcond.not, label %.critedge69, label %bb.am, !llvm.loop !854

bb.ca:                                            ; preds = %.loopexit399, %.loopexit.split-lp400, %.loopexit398, %.loopexit.split-lp, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %bb.bm
  %.sroa.13.4 = phi ptr [ %.sroa.13.0438, %bb.bm ], [ %.sroa.13.0438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.13.0438, %.loopexit.split-lp ], [ %.sroa.13.9, %bb.bn ], [ %.sroa.13.0438, %.loopexit398 ], [ %.sroa.9.0439, %.loopexit399 ], [ %.sroa.9.0439, %.loopexit.split-lp400 ]
  %.sroa.0312.4 = phi ptr [ %.sroa.0312.0440, %bb.bm ], [ %.sroa.0312.0440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.sroa.0312.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %.sroa.0312.0440, %.loopexit.split-lp ], [ %.sroa.0312.9, %bb.bn ], [ %.sroa.0312.0440, %.loopexit398 ], [ %.sroa.0312.0440, %.loopexit399 ], [ %.sroa.0312.0440, %.loopexit.split-lp400 ]
  %.pn48.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tk, %bb.bm ], [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.tl, %bb.bn ], [ %lpad.loopexit, %.loopexit398 ], [ %lpad.loopexit401, %.loopexit399 ], [ %lpad.loopexit.split-lp402, %.loopexit.split-lp400 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.db

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.sroa.13.2 = phi ptr [ %.sroa.13.0438, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.13.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  %.sroa.0312.2 = phi ptr [ %.sroa.0312.0440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ], [ %.sroa.0312.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.cz

.critedge69:                                      ; preds = %.thread357, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.13.3362, %.thread357 ] ; 8 uses
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.9.2363, %.thread357 ]
  %.sroa.0312.0.lcssa = phi ptr [ null, %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit ], [ %.sroa.0312.3364, %.thread357 ] ; 9 uses
  %i.vc = load ptr, ptr %i.iu, align 8, !tbaa !291 ; 11 uses
  %i.vd = load ptr, ptr %i.iw, align 8, !tbaa !291 ; 6 uses
  %i.ve = icmp ne ptr %i.vc, %i.vd
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.vd, i64 -4 ; 5 uses
  %i.vf = icmp ult ptr %i.vc, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ve, i1 %i.vf, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %.critedge69
  %i.vg = ptrtoaddr ptr %i.vd to i64
  %17 = ptrtoaddr ptr %i.vc to i64                ; 3 uses
  %18 = add i64 %i.vg, -8
  %i.vh = add i64 %17, 4
  %i.vi = call i64 @llvm.umax.i64(i64 %18, i64 %i.vh)
  %i.vj = add i64 %i.vi, -4                       ; 2 uses
  %i.vk = icmp ne i64 %i.vj, %17
  %i.vl = zext i1 %i.vk to i64                    ; 3 uses
  %i.vm = add i64 %17, %i.vl
  %i.vn = sub i64 %i.vj, %i.vm                    ; 2 uses
  %i.vo = lshr i64 %i.vn, 3
  %i.vp = add nuw nsw i64 %i.vo, %i.vl            ; 2 uses
  %i.vq = add nuw nsw i64 %i.vp, 1                ; 2 uses
  %min.iters.check592 = icmp samesign ult i64 %i.vp, 31
  br i1 %min.iters.check592, label %.lr.ph.i.i.preheader608, label %vector.memcheck593

vector.memcheck593:                               ; preds = %.lr.ph.i.i.preheader
  %i.vr = lshr i64 %i.vn, 3
  %i.vs = add nuw nsw i64 %i.vr, %i.vl
  %i.vt = shl nuw i64 %i.vs, 2                    ; 2 uses
  %i.vu = getelementptr i8, ptr %i.vc, i64 %i.vt
  %i.vv = getelementptr i8, ptr %i.vu, i64 4
  %i.vw = sub nuw nsw i64 -4, %i.vt
  %i.vx = getelementptr i8, ptr %i.vd, i64 %i.vw
  %bound0 = icmp ult ptr %i.vc, %i.vd
  %bound1 = icmp ult ptr %i.vx, %i.vv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader608, label %vector.ph594

vector.ph594:                                     ; preds = %vector.memcheck593
  %n.vec595 = and i64 %i.vq, 9223372036854775804  ; 4 uses
  %i.vy = mul i64 %n.vec595, -4
  %i.vz = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.vy
  %i.wa = shl i64 %n.vec595, 2
  %i.wb = getelementptr i8, ptr %i.vc, i64 %i.wa
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next603, %vector.body596 ] ; 3 uses
  %i.wc = mul i64 %index597, -4
  %next.gep598 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.wc
  %i.wd = shl i64 %index597, 2
  %next.gep599 = getelementptr i8, ptr %i.vc, i64 %i.wd ; 2 uses
  %wide.load600 = load <4 x i32>, ptr %next.gep599, align 4, !tbaa !288, !alias.scope !868, !noalias !869
  %i.we = getelementptr i8, ptr %next.gep598, i64 -12 ; 2 uses
  %wide.load601 = load <4 x i32>, ptr %i.we, align 4, !tbaa !288, !alias.scope !869
  %reverse = shufflevector <4 x i32> %wide.load601, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep599, align 4, !tbaa !288, !alias.scope !868, !noalias !869
  %reverse602 = shufflevector <4 x i32> %wide.load600, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse602, ptr %i.we, align 4, !tbaa !288, !alias.scope !869
  %index.next603 = add nuw i64 %index597, 4       ; 2 uses
  %i.wf = icmp eq i64 %index.next603, %n.vec595
  br i1 %i.wf, label %middle.block604, label %vector.body596, !llvm.loop !858

middle.block604:                                  ; preds = %vector.body596
  %cmp.n605 = icmp eq i64 %i.vq, %n.vec595
  br i1 %cmp.n605, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.preheader608

.lr.ph.i.i.preheader608:                          ; preds = %vector.memcheck593, %.lr.ph.i.i.preheader, %middle.block604
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck593 ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.vz, %middle.block604 ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.vc, %vector.memcheck593 ], [ %i.vc, %.lr.ph.i.i.preheader ], [ %i.wb, %middle.block604 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader608, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader608 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.wi, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader608 ] ; 3 uses
  %i.wg = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  %i.wh = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  store i32 %i.wh, ptr %.sroa.05.09.i.i, align 4, !tbaa !288
  store i32 %i.wg, ptr %.sroa.0.010.i.i, align 4, !tbaa !288
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.wj = icmp ult ptr %i.wi, %.sroa.0.0.i.i
  br i1 %i.wj, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, !llvm.loop !859

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %middle.block604, %.critedge69
  %i.wk = ptrtoint ptr %i.vd to i64
  %i.wl = ptrtoint ptr %i.vc to i64
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = getelementptr inbounds i8, ptr %i.vc, i64 %i.wm
  invoke void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.iu, ptr %i.wn, ptr %.sroa.0312.0.lcssa, ptr %.sroa.9.0.lcssa)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.wo = load ptr, ptr %i.mc, align 8, !tbaa !870
  %i.wp = load ptr, ptr %i.md, align 8, !tbaa !870
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.wr = load ptr, ptr %i.dd, align 8, !tbaa !357 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 192
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 200
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !280
  %i.wv = load ptr, ptr %i.ws, align 8, !tbaa !281
  %i.ww = ptrtoint ptr %i.wu to i64
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = sub i64 %i.ww, %i.wx
  %i.wz = sdiv exact i64 %i.wy, 12                ; 3 uses
  %i.xa = and i64 %i.wz, 4294967295               ; 2 uses
  %i.xb = load ptr, ptr %i.do, align 8, !tbaa !31 ; 2 uses
  %i.xc = load i32, ptr %i.dq, align 8, !tbaa !32 ; 2 uses
  %i.xd = load ptr, ptr %i.dc, align 8, !tbaa !31 ; 6 uses
  %i.xe = ptrtoint ptr %i.xb to i64               ; 2 uses
  %i.xf = ptrtoint ptr %i.xd to i64               ; 3 uses
  %i.xg = sub i64 %i.xe, %i.xf
  %i.xh = shl nsw i64 %i.xg, 3
  %i.xi = zext i32 %i.xc to i64                   ; 2 uses
  %i.xj = add nsw i64 %i.xh, %i.xi
  %i.xk = icmp ugt i64 %i.xa, %i.xj
  br i1 %i.xk, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not.i.i.i227 = icmp eq ptr %i.xd, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !123
  %i.xn = ptrtoint ptr %i.xm to i64
  %i.xo = sub i64 %i.xn, %i.xf
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xd, i8 0, i64 %i.xo, i1 false)
  %.sroa.0.0.copyload.i.pre.i.i228 = load ptr, ptr %i.do, align 8 ; 2 uses
  %.sroa.2.0.copyload.i.pre.i.i229 = load i32, ptr %i.dq, align 8 ; 2 uses
  %.pre.i.i230 = load ptr, ptr %i.dc, align 8, !tbaa !31
  %.pre34.i.i231 = ptrtoint ptr %.sroa.0.0.copyload.i.pre.i.i228 to i64
  %.pre35.i.i232 = zext i32 %.sroa.2.0.copyload.i.pre.i.i229 to i64
  %i.xp = ptrtoint ptr %.pre.i.i230 to i64
  br label %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233

_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233: ; preds = %bb.cf, %bb.ce
  %.pre-phi36.i.i234 = phi i64 [ %i.xi, %bb.ce ], [ %.pre35.i.i232, %bb.cf ]
  %.pre-phi.i.i235 = phi i64 [ %i.xe, %bb.ce ], [ %.pre34.i.i231, %bb.cf ]
  %i.xq = phi i64 [ 0, %bb.ce ], [ %i.xp, %bb.cf ]
  %.sroa.2.0.copyload.i.i.i236 = phi i32 [ %i.xc, %bb.ce ], [ %.sroa.2.0.copyload.i.pre.i.i229, %bb.cf ]
  %.sroa.0.0.copyload.i.i.i237 = phi ptr [ %i.xb, %bb.ce ], [ %.sroa.0.0.copyload.i.pre.i.i228, %bb.cf ]
  %.neg31.i.i238 = sub i64 %i.xq, %.pre-phi.i.i235
  %.neg29.i.i239 = shl i64 %.neg31.i.i238, 3
  %.neg30.i.i240 = sub nsw i64 %i.xa, %.pre-phi36.i.i234
  %i.xr = add i64 %.neg30.i.i240, %.neg29.i.i239
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.dc, ptr %.sroa.0.0.copyload.i.i.i237, i32 %.sroa.2.0.copyload.i.i.i236, i64 noundef %i.xr, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 unwind label %bb.ck

bb.cg:                                            ; preds = %bb.cd
  %i.xs = trunc i64 %i.wz to i32
  %i.xt = lshr i64 %i.wz, 6
  %.zext389 = and i64 %i.xt, 67108863
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %.zext389
  %i.xv = and i32 %i.xs, 63
  store ptr %i.xu, ptr %i.do, align 8
  store i32 %i.xv, ptr %i.dq, align 8
  %.not.i20.i.i226 = icmp eq ptr %i.xd, null
  br i1 %.not.i20.i.i226, label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !123
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = sub i64 %i.xy, %i.xf
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.xd, i8 0, i64 %i.xz, i1 false)
  br label %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242

_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242:         ; preds = %bb.ch, %bb.cg, %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.ya = load ptr, ptr %i.iu, align 8, !tbaa !291 ; 2 uses
  %i.yb = load ptr, ptr %i.iw, align 8, !tbaa !291 ; 2 uses
  %.not395444 = icmp eq ptr %i.ya, %i.yb
  br i1 %.not395444, label %.loopexit, label %.lr.ph446

bb.ci:                                            ; preds = %.loopexit
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.cj:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.ck:                                            ; preds = %_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb.exit.i.i233
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.lr.ph446:                                        ; preds = %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.cl
  %.sroa.0263.0445 = phi ptr [ %i.yh, %bb.cl ], [ %i.ya, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242 ] ; 2 uses
  %i.yf = load i32, ptr %.sroa.0263.0445, align 4, !tbaa !288
  store i32 %i.yf, ptr %15, align 4, !tbaa !288
  %i.yg = invoke noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_38MeshEdgebreakerTraversalValenceEncoderEE35EncodeAttributeConnectivitiesOnFaceENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(705) %1, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %15)
          to label %bb.cl unwind label %bb.cm     ; 0 uses

bb.cl:                                            ; preds = %.lr.ph446
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0263.0445, i64 4 ; 2 uses
  %.not395 = icmp eq ptr %i.yh, %i.yb
  br i1 %.not395, label %.loopexit, label %.lr.ph446

bb.cm:                                            ; preds = %.lr.ph446
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

.loopexit:                                        ; preds = %bb.cl, %_ZNSt6vectorIbSaIbEE6assignEmRKb.exit242, %bb.cc
  invoke void @_ZN5draco38MeshEdgebreakerTraversalValenceEncoder4DoneEv(ptr noundef nonnull align 8 dereferenceable(256) %i.br)
          to label %bb.cn unwind label %bb.ci

bb.cn:                                            ; preds = %.loopexit
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !364
  %i.yl = load ptr, ptr %i.cg, align 8, !tbaa !356
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 88
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  %i.dw = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !16

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.de, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 9 uses
  %i.dx = zext i32 %.sroa.55.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.dy = add nsw i64 %3, %i.dx                   ; 3 uses
  %i.dz = sdiv i64 %i.dy, 64
  %.idx157 = shl nsw i64 %i.dz, 3
  %i.ea = and i64 %i.dy, -9223372036854775745
  %i.eb = icmp ugt i64 %i.ea, -9223372036854775808
  %storemerge.idx.i.i.i85 = select i1 %i.eb, i64 -8, i64 0
  %i.ec = add nsw i64 %storemerge.idx.i.i.i85, %.idx157 ; 2 uses
  %storemerge.i.i.i86 = getelementptr inbounds i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 %i.ec ; 6 uses
  %i.ed = trunc i64 %i.dy to i32
  %i.ee = and i32 %i.ed, 63                       ; 6 uses
  %.not.i.i.i89 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i89, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.eg = shl nsw i64 -1, %i.dx                   ; 2 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !152
  %i.ei = or i64 %i.eh, %i.eg
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.ab:                                            ; preds = %bb.z
  %i.ej = xor i64 %i.eg, -1
  %i.ek = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !152
  %i.el = and i64 %i.ek, %i.ej
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

_ZSt14__fill_bvectorPmjjb.exit.i.i.i92:           ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i93 = phi i64 [ %i.el, %bb.ab ], [ %i.ei, %bb.aa ]
  store i64 %storemerge.i.i.i.i93, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !152
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92, %bb.y
  %.0.i.i.i94 = phi ptr [ %i.ef, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.em = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.en = ptrtoint ptr %.0.i.i.i94 to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i94, i8 %.neg, i64 %i.eo, i1 false)
  %.not27.i.i.i95 = icmp eq i32 %i.ee, 0
  br i1 %.not27.i.i.i95, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = sub nuw nsw i32 64, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 -1, %i.eq                      ; 2 uses
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !152
  %i.et = or i64 %i.es, %i.er
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

bb.af:                                            ; preds = %bb.ad
  %i.eu = xor i64 %i.er, -1
  %i.ev = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !152
  %i.ew = and i64 %i.ev, %i.eu
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96:         ; preds = %bb.af, %bb.ae
  %storemerge.i28.i.i.i97 = phi i64 [ %i.ew, %bb.af ], [ %i.et, %bb.ae ]
  store i64 %storemerge.i28.i.i.i97, ptr %storemerge.i.i.i86, align 8, !tbaa !152
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i98 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.ee
  br i1 %.not25.i.i.i98, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = shl nsw i64 -1, %i.dx
  %i.ey = sub nuw nsw i32 64, %i.ee
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = and i64 %i.fa, %i.ex                    ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !152
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !152
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i100 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !152
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i104 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %.024.i.i.i.i.i118 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i120 = phi i32 [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %i.fp = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !152
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !152
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !152
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !152
  %i.ga = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.gb, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i125 = select i1 %i.gb, i32 0, i32 %i.ga
  %i.gc = add i32 %.sroa.59.022.i.i.i.i.i120, 1
  %i.gd = icmp eq i32 %.sroa.59.022.i.i.i.i.i120, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126 = select i1 %i.gd, i32 0, i32 %i.gc ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.gd, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 2 uses
  %i.ge = add nsw i64 %.024.i.i.i.i.i118, -1
  %i.gf = icmp sgt i64 %.024.i.i.i.i.i118, 1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !17

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %.sroa.07.0.lcssa.i.i.i.i.i115 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %i.gg = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.not.i129 = icmp eq ptr %i.gg, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  tail call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #18
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.go = lshr i64 %i.cv, 6
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.go
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !123
  store ptr %i.cy, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i115, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.co, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %.not98 = icmp eq ptr %2, %3
  br i1 %.not98, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 8 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210  ; 19 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 6 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 3 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 7 uses
  %i.r = add i64 %i.b, -4
  %i.s = sub i64 %i.r, %i.c                       ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.s, 28
  %diff.check165 = icmp ult i64 %i.d, 32
  %or.cond = or i1 %min.iters.check167, %diff.check165
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %bb.d
  %n.vec169 = and i64 %i.u, 9223372036854775800   ; 3 uses
  %i.v = shl i64 %n.vec169, 2                     ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.q, i64 %i.v
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %i.y = shl i64 %index171, 2                     ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep173, i64 16
  %wide.load174 = load <4 x i32>, ptr %next.gep173, align 4, !tbaa !288
  %wide.load175 = load <4 x i32>, ptr %i.z, align 4, !tbaa !288
  %i.aa = getelementptr i8, ptr %next.gep172, i64 16
  store <4 x i32> %wide.load174, ptr %next.gep172, align 4, !tbaa !288
  store <4 x i32> %wide.load175, ptr %i.aa, align 4, !tbaa !288
  %index.next176 = add nuw i64 %index171, 8       ; 2 uses
  %i.ab = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.ab, label %middle.block177, label %vector.body170, !llvm.loop !1302

middle.block177:                                  ; preds = %vector.body170
  %cmp.n178 = icmp eq i64 %i.u, %n.vec169
  br i1 %cmp.n178, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block177
  %.013.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.w, %middle.block177 ]
  %.sroa.08.012.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.x, %middle.block177 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !288
  store i32 %i.ac, ptr %.013.i.i.i.i.i, align 4, !tbaa !288
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1303

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block177
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.af, ptr %i.h, align 8, !tbaa !210
  %i.ag = ptrtoint ptr %i.q to i64
  %i.ah = sub i64 %i.ag, %i.m
  %i.ai = ashr exact i64 %i.ah, 2                 ; 6 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check184 = icmp ult i64 %i.ai, 8
  %diff.check182 = icmp ugt i64 %i.d, -32
  %or.cond268 = or i1 %min.iters.check184, %diff.check182
  br i1 %or.cond268, label %.lr.ph.i.i.i.i.i51.preheader280, label %vector.ph185

vector.ph185:                                     ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %n.vec186 = and i64 %i.ai, 9223372036854775800  ; 3 uses
  %i.ak = and i64 %i.ai, 7
  %i.al = mul i64 %n.vec186, -4                   ; 2 uses
  %i.am = getelementptr i8, ptr %i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.q, i64 %i.al
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next193, %vector.body187 ] ; 2 uses
  %i.ao = mul i64 %index188, -4                   ; 2 uses
  %next.gep189 = getelementptr i8, ptr %i.i, i64 %i.ao ; 2 uses
  %next.gep190 = getelementptr i8, ptr %i.q, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %next.gep190, i64 -16
  %i.aq = getelementptr inbounds i8, ptr %next.gep190, i64 -32
  %wide.load191 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !288
  %wide.load192 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !288
  %i.ar = getelementptr inbounds i8, ptr %next.gep189, i64 -16
  %i.as = getelementptr inbounds i8, ptr %next.gep189, i64 -32
  store <4 x i32> %wide.load191, ptr %i.ar, align 4, !tbaa !288
  store <4 x i32> %wide.load192, ptr %i.as, align 4, !tbaa !288
  %index.next193 = add nuw i64 %index188, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.at, label %middle.block194, label %vector.body187, !llvm.loop !1304

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.ai, %n.vec186
  br i1 %cmp.n195, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i51.preheader280

.lr.ph.i.i.i.i.i51.preheader280:                  ; preds = %.lr.ph.i.i.i.i.i51.preheader, %middle.block194
  %.010.i.i.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ak, %middle.block194 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.am, %middle.block194 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.an, %middle.block194 ]
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader280, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader280 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader280 ]
  %.078.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader280 ]
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !288
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !288
  %i.ax = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ay = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, !llvm.loop !1305

_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %middle.block194, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.az = icmp sgt i64 %i.e, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit
  %min.iters.check202 = icmp ult i64 %i.e, 8
  %i.ba = sub i64 %i.c, %i.m
  %diff.check200 = icmp ugt i64 %i.ba, -32
  %or.cond269 = or i1 %min.iters.check202, %diff.check200
  br i1 %or.cond269, label %.lr.ph.i.i.i.i.i52.preheader279, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %n.vec204 = and i64 %i.e, 9223372036854775800   ; 3 uses
  %i.bb = and i64 %i.e, 7
  %i.bc = shl i64 %n.vec204, 2                    ; 2 uses
  %i.bd = getelementptr i8, ptr %1, i64 %i.bc
  %i.be = getelementptr i8, ptr %2, i64 %i.bc
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %i.bf = shl i64 %index206, 2                    ; 2 uses
  %next.gep207 = getelementptr i8, ptr %1, i64 %i.bf ; 2 uses
  %next.gep208 = getelementptr i8, ptr %2, i64 %i.bf ; 2 uses
  %i.bg = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load209 = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !288
  %wide.load210 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !288
  %i.bh = getelementptr i8, ptr %next.gep207, i64 16
  store <4 x i32> %wide.load209, ptr %next.gep207, align 4, !tbaa !288
  store <4 x i32> %wide.load210, ptr %i.bh, align 4, !tbaa !288
  %index.next211 = add nuw i64 %index206, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.bi, label %middle.block212, label %vector.body205, !llvm.loop !1306

middle.block212:                                  ; preds = %vector.body205
  %cmp.n213 = icmp eq i64 %i.e, %n.vec204
  br i1 %cmp.n213, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i52.preheader279

.lr.ph.i.i.i.i.i52.preheader279:                  ; preds = %.lr.ph.i.i.i.i.i52.preheader, %middle.block212
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bb, %middle.block212 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.bd, %middle.block212 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.be, %middle.block212 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader279, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i52 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader279 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i52 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader279 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i52 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader279 ] ; 2 uses
  %i.bj = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !288
  store i32 %i.bj, ptr %.0811.i.i.i.i.i, align 4, !tbaa !288
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.bm = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bn = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !1307

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bo, %3
  br i1 %.not11.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag:bb.a
  %i.br = add i64 %i.k, %i.c
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 44
  %i.bv = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.bv, -32
  %or.cond270 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond270, label %.lr.ph.i.i.i.i.preheader284, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bu, 9223372036854775800     ; 3 uses
  %i.bw = shl i64 %n.vec, 2                       ; 2 uses
  %i.bx = getelementptr i8, ptr %i.i, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bo, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bz ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.bo, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep126, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep126, align 4, !tbaa !288
  %wide.load127 = load <4 x i32>, ptr %i.ca, align 4, !tbaa !288
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !288
  store <4 x i32> %wide.load127, ptr %i.cb, align 4, !tbaa !288
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader284

.lr.ph.i.i.i.i.preheader284:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.013.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.sroa.08.012.i.i.i.i.ph = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader284, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader284 ] ; 2 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader284 ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.08.012.i.i.i.i, align 4, !tbaa !288
  store i32 %i.cd, ptr %.013.i.i.i.i, align 4, !tbaa !288
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ce, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1309

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cg = sub nuw nsw i64 %i.e, %i.o
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cg ; 3 uses
  %.not11.i.i.i.i.i53 = icmp eq ptr %1, %i.i
  br i1 %.not11.i.i.i.i.i53, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.ci = add i64 %i.k, -4
  %i.cj = sub i64 %i.ci, %i.m                     ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check132 = icmp ult i64 %i.cj, 76
  %diff.check130 = icmp ult i64 %i.d, 32
  %or.cond271 = or i1 %min.iters.check132, %diff.check130
  br i1 %or.cond271, label %.lr.ph.i.i.i.i.i54.preheader283, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec134 = and i64 %i.cl, 9223372036854775800  ; 3 uses
  %i.cm = shl i64 %n.vec134, 2                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ch, i64 %i.cm
  %i.co = getelementptr i8, ptr %1, i64 %i.cm
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %i.cp = shl i64 %index136, 2                    ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.ch, i64 %i.cp ; 2 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load139 = load <4 x i32>, ptr %next.gep138, align 4, !tbaa !288
  %wide.load140 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !288
  %i.cr = getelementptr i8, ptr %next.gep137, i64 16
  store <4 x i32> %wide.load139, ptr %next.gep137, align 4, !tbaa !288
  store <4 x i32> %wide.load140, ptr %i.cr, align 4, !tbaa !288
  %index.next141 = add nuw i64 %index136, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.cs, label %middle.block142, label %vector.body135, !llvm.loop !1310

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.cl, %n.vec134
  br i1 %cmp.n143, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader283

.lr.ph.i.i.i.i.i54.preheader283:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block142
  %.013.i.i.i.i.i55.ph = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cn, %middle.block142 ]
  %.sroa.08.012.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.co, %middle.block142 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader283, %.lr.ph.i.i.i.i.i54
  %.013.i.i.i.i.i55 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i54 ], [ %.013.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader283 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i54 ], [ %.sroa.08.012.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader283 ] ; 2 uses
  %i.ct = load i32, ptr %.sroa.08.012.i.i.i.i.i56, align 4, !tbaa !288
  store i32 %i.ct, ptr %.013.i.i.i.i.i55, align 4, !tbaa !288
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 4
  %.not.i.i.i.i.i57 = icmp eq ptr %i.cu, %i.i
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54, !llvm.loop !1311

_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit59: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block142, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  store ptr %i.cw, ptr %i.h, align 8, !tbaa !210
  %i.cx = ashr exact i64 %i.n, 2                  ; 6 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i61.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit59
  %min.iters.check149 = icmp ult i64 %i.cx, 8
  %i.cz = sub i64 %i.c, %i.m
  %diff.check147 = icmp ugt i64 %i.cz, -32
  %or.cond272 = or i1 %min.iters.check149, %diff.check147
  br i1 %or.cond272, label %.lr.ph.i.i.i.i.i61.preheader281, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph.i.i.i.i.i61.preheader
  %n.vec151 = and i64 %i.cx, 9223372036854775800  ; 3 uses
  %i.da = and i64 %i.cx, 7
  %i.db = shl i64 %n.vec151, 2                    ; 2 uses
  %i.dc = getelementptr i8, ptr %1, i64 %i.db
  %i.dd = getelementptr i8, ptr %2, i64 %i.db
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 2 uses
  %i.de = shl i64 %index153, 2                    ; 2 uses
  %next.gep154 = getelementptr i8, ptr %1, i64 %i.de ; 2 uses
  %next.gep155 = getelementptr i8, ptr %2, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep155, i64 16
  %wide.load156 = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !288
  %wide.load157 = load <4 x i32>, ptr %i.df, align 4, !tbaa !288
  %i.dg = getelementptr i8, ptr %next.gep154, i64 16
  store <4 x i32> %wide.load156, ptr %next.gep154, align 4, !tbaa !288
  store <4 x i32> %wide.load157, ptr %i.dg, align 4, !tbaa !288
  %index.next158 = add nuw i64 %index153, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.dh, label %middle.block159, label %vector.body152, !llvm.loop !1312

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.cx, %n.vec151
  br i1 %cmp.n160, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i61.preheader281

.lr.ph.i.i.i.i.i61.preheader281:                  ; preds = %.lr.ph.i.i.i.i.i61.preheader, %middle.block159
  %.012.i.i.i.i.i62.ph = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.da, %middle.block159 ]
  %.0811.i.i.i.i.i63.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.dc, %middle.block159 ]
  %.0910.i.i.i.i.i64.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.dd, %middle.block159 ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader281, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i61 ], [ %.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader281 ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i61 ], [ %.0811.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader281 ] ; 2 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i61 ], [ %.0910.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i61.preheader281 ] ; 2 uses
  %i.di = load i32, ptr %.0910.i.i.i.i.i64, align 4, !tbaa !288
  store i32 %i.di, ptr %.0811.i.i.i.i.i63, align 4, !tbaa !288
  %i.dj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 4
  %i.dl = add nsw i64 %.012.i.i.i.i.i62, -1
  %i.dm = icmp samesign ugt i64 %.012.i.i.i.i.i62, 1
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !1313

bb.e:                                             ; preds = %bb.b
  %i.dn = load ptr, ptr %0, align 8, !tbaa !126   ; 7 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 3 uses
  %i.dp = sub i64 %i.k, %i.do
  %i.dq = ashr exact i64 %i.dp, 2                 ; 4 uses
  %i.dr = sub nsw i64 2305843009213693951, %i.dq
  %i.ds = icmp ult i64 %i.dr, %i.e
  br i1 %i.ds, label %bb.f, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dq, i64 %i.e)
  %i.dt = add nsw i64 %.sroa.speculated.i, %i.dq  ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.dq
  %i.dv = tail call i64 @llvm.umin.i64(i64 %i.dt, i64 2305843009213693951)
  %i.dw = select i1 %i.du, i64 2305843009213693951, i64 %i.dv ; 3 uses
  %.not.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dx = shl nuw nsw i64 %i.dw, 2
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #19
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.dz = phi ptr [ %i.dy, %bb.g ], [ null, %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.dn, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i66.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit
  %i.ea = add i64 %i.a, -4
  %i.eb = sub i64 %i.ea, %i.do                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 2
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %min.iters.check218 = icmp ult i64 %i.eb, 28
  br i1 %min.iters.check218, label %.lr.ph.i.i.i.i.i66.preheader277, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph.i.i.i.i.i66.preheader
  %n.vec220 = and i64 %i.ed, 9223372036854775800  ; 3 uses
  %i.ee = shl i64 %n.vec220, 2                    ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 %i.ee  ; 2 uses
  %i.eg = getelementptr i8, ptr %i.dn, i64 %i.ee
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %i.eh = shl i64 %index222, 2                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %i.dz, i64 %i.eh ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.dn, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep224, i64 16
  %wide.load225 = load <4 x i32>, ptr %next.gep224, align 4, !tbaa !288
  %wide.load226 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !288
  %i.ej = getelementptr i8, ptr %next.gep223, i64 16
  store <4 x i32> %wide.load225, ptr %next.gep223, align 4, !tbaa !288
  store <4 x i32> %wide.load226, ptr %i.ej, align 4, !tbaa !288
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.ek, label %middle.block228, label %vector.body221, !llvm.loop !1314

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %i.ed, %n.vec220
  br i1 %cmp.n229, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i66.preheader277

.lr.ph.i.i.i.i.i66.preheader277:                  ; preds = %.lr.ph.i.i.i.i.i66.preheader, %middle.block228
  %.015.i.i.i.i.i.ph = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.ef, %middle.block228 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.eg, %middle.block228 ]
  br label %.lr.ph.i.i.i.i.i66

.lr.ph.i.i.i.i.i66:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader277, %.lr.ph.i.i.i.i.i66
  %.015.i.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i66 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader277 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i66 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader277 ] ; 2 uses
  %i.el = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !288
  store i32 %i.el, ptr %.015.i.i.i.i.i, align 4, !tbaa !288
  %i.em = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.em, %1
  br i1 %.not.i.i.i.i.i67, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i66, !llvm.loop !1315

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i66, %middle.block228, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i68 = phi ptr [ %i.dz, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE11_M_allocateEm.exit ], [ %i.ef, %middle.block228 ], [ %i.en, %.lr.ph.i.i.i.i.i66 ] ; 4 uses
  %i.eo = add i64 %i.b, -4
  %i.ep = sub i64 %i.eo, %i.c                     ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check236 = icmp ult i64 %i.ep, 44
  %.0.lcssa.i.i.i.i.i68233 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i68 to i64
  %i.es = sub i64 %i.c, %.0.lcssa.i.i.i.i.i68233
  %diff.check234 = icmp ugt i64 %i.es, -32
  %or.cond273 = select i1 %min.iters.check236, i1 true, i1 %diff.check234
  br i1 %or.cond273, label %.lr.ph.i.i.i.i70.preheader, label %vector.ph237

vector.ph237:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %n.vec238 = and i64 %i.er, 9223372036854775800  ; 3 uses
  %i.et = shl i64 %n.vec238, 2                    ; 2 uses
  %i.eu = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.et ; 2 uses
  %i.ev = getelementptr i8, ptr %2, i64 %i.et
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph237
  %index240 = phi i64 [ 0, %vector.ph237 ], [ %index.next245, %vector.body239 ] ; 2 uses
  %i.ew = shl i64 %index240, 2                    ; 2 uses
  %next.gep241 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i68, i64 %i.ew ; 2 uses
  %next.gep242 = getelementptr i8, ptr %2, i64 %i.ew ; 2 uses
  %i.ex = getelementptr i8, ptr %next.gep242, i64 16
  %wide.load243 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !288
  %wide.load244 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !288
  %i.ey = getelementptr i8, ptr %next.gep241, i64 16
  store <4 x i32> %wide.load243, ptr %next.gep241, align 4, !tbaa !288
  store <4 x i32> %wide.load244, ptr %i.ey, align 4, !tbaa !288
  %index.next245 = add nuw i64 %index240, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.ez, label %middle.block246, label %vector.body239, !llvm.loop !1316

middle.block246:                                  ; preds = %vector.body239
  %cmp.n247 = icmp eq i64 %i.er, %n.vec238
  br i1 %cmp.n247, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70.preheader

.lr.ph.i.i.i.i70.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %middle.block246
  %.013.i.i.i.i71.ph = phi ptr [ %.0.lcssa.i.i.i.i.i68, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.eu, %middle.block246 ]
  %.sroa.08.012.i.i.i.i72.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ev, %middle.block246 ]
  br label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70
  %.013.i.i.i.i71 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i70 ], [ %.013.i.i.i.i71.ph, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i72 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i70 ], [ %.sroa.08.012.i.i.i.i72.ph, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %i.fa = load i32, ptr %.sroa.08.012.i.i.i.i72, align 4, !tbaa !288
  store i32 %i.fa, ptr %.013.i.i.i.i71, align 4, !tbaa !288
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i72, i64 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i71, i64 4 ; 2 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.fb, %3
  br i1 %.not.i.i.i.i73, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70, !llvm.loop !1317

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75: ; preds = %.lr.ph.i.i.i.i70, %middle.block246
  %.lcssa124 = phi ptr [ %i.eu, %middle.block246 ], [ %i.fc, %.lr.ph.i.i.i.i70 ] ; 5 uses
  %.not13.i.i.i.i.i76 = icmp eq ptr %1, %i.i
  br i1 %.not13.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77.preheader

.lr.ph.i.i.i.i.i77.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75
  %.lcssa124251 = ptrtoaddr ptr %.lcssa124 to i64
  %i.fd = add i64 %i.k, -4
  %i.fe = sub i64 %i.fd, %i.a                     ; 2 uses
  %i.ff = lshr i64 %i.fe, 2
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check254 = icmp ult i64 %i.fe, 44
  %i.fh = sub i64 %i.a, %.lcssa124251
  %diff.check252 = icmp ugt i64 %i.fh, -32
  %or.cond274 = select i1 %min.iters.check254, i1 true, i1 %diff.check252
  br i1 %or.cond274, label %.lr.ph.i.i.i.i.i77.preheader275, label %vector.ph255

vector.ph255:                                     ; preds = %.lr.ph.i.i.i.i.i77.preheader
  %n.vec256 = and i64 %i.fg, 9223372036854775800  ; 3 uses
  %i.fi = shl i64 %n.vec256, 2                    ; 2 uses
  %i.fj = getelementptr i8, ptr %.lcssa124, i64 %i.fi ; 2 uses
  %i.fk = getelementptr i8, ptr %1, i64 %i.fi
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.fl = shl i64 %index258, 2                    ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.lcssa124, i64 %i.fl ; 2 uses
  %next.gep260 = getelementptr i8, ptr %1, i64 %i.fl ; 2 uses
  %i.fm = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load261 = load <4 x i32>, ptr %next.gep260, align 4, !tbaa !288
  %wide.load262 = load <4 x i32>, ptr %i.fm, align 4, !tbaa !288
  %i.fn = getelementptr i8, ptr %next.gep259, i64 16
  store <4 x i32> %wide.load261, ptr %next.gep259, align 4, !tbaa !288
  store <4 x i32> %wide.load262, ptr %i.fn, align 4, !tbaa !288
  %index.next263 = add nuw i64 %index258, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.fo, label %middle.block264, label %vector.body257, !llvm.loop !1318

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.fg, %n.vec256
  br i1 %cmp.n265, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77.preheader275

.lr.ph.i.i.i.i.i77.preheader275:                  ; preds = %.lr.ph.i.i.i.i.i77.preheader, %middle.block264
  %.015.i.i.i.i.i78.ph = phi ptr [ %.lcssa124, %.lr.ph.i.i.i.i.i77.preheader ], [ %i.fj, %middle.block264 ]
  %.01214.i.i.i.i.i79.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i77.preheader ], [ %i.fk, %middle.block264 ]
  br label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %.lr.ph.i.i.i.i.i77.preheader275, %.lr.ph.i.i.i.i.i77
  %.015.i.i.i.i.i78 = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i77 ], [ %.015.i.i.i.i.i78.ph, %.lr.ph.i.i.i.i.i77.preheader275 ] ; 2 uses
  %.01214.i.i.i.i.i79 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i77 ], [ %.01214.i.i.i.i.i79.ph, %.lr.ph.i.i.i.i.i77.preheader275 ] ; 2 uses
  %i.fp = load i32, ptr %.01214.i.i.i.i.i79, align 4, !tbaa !288
  store i32 %i.fp, ptr %.015.i.i.i.i.i78, align 4, !tbaa !288
  %i.fq = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i79, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i78, i64 4 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.fq, %i.i
  br i1 %.not.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77, !llvm.loop !1319

_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit82: ; preds = %.lr.ph.i.i.i.i.i77, %middle.block264, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %.lcssa124, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ], [ %i.fj, %middle.block264 ], [ %i.fr, %.lr.ph.i.i.i.i.i77 ]
  %.not.i83 = icmp eq ptr %i.dn, null
  br i1 %.not.i83, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit82
  %i.fs = sub i64 %i.j, %i.do
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.fs) #18
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, %bb.h
  store ptr %i.dz, ptr %0, align 8, !tbaa !126
  store ptr %.0.lcssa.i.i.i.i.i81, ptr %i.h, align 8, !tbaa !210
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dw
  store ptr %i.ft, ptr %i.f, align 8, !tbaa !127
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21CornerIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i61, %.lr.ph.i.i.i.i.i52, %middle.block159, %middle.block212, %_ZSt22__uninitialized_move_aIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, %_ZSt13move_backwardIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !128    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 304                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !131
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 304                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 30340039594917026
end_hunk_4
