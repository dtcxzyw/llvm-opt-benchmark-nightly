inline.NumInlined: 222
inline.NumDeleted: 105
begin_hunk_0_@_upb_Decoder_DecodeMessage:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_upb_Decoder_DecodeField.exit, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %.0.i15, %_upb_Decoder_DecodeField.exit ] ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = ptrtoint ptr %.0 to i64
end_hunk_0
begin_hunk_1_@_upb_Decoder_DecodeMessage:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.033.i.i = phi i32 [ %i.az, %bb.i ], [ %..033.i.i, %bb.k ] ; 3 uses
  %.030.i.i = phi i32 [ %i.bg, %bb.i ], [ %.030..i.i, %bb.k ] ; 3 uses
  %.not.i.i26 = icmp slt i32 %.033.i.i, %.030.i.i
  br i1 %.not.i.i26, label %upb_MiniTable_FindFieldByNumber.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_1
begin_hunk_2_@_upb_Decoder_DecodeMessage:bb.a
  %i.bn = add nuw i32 %i.bi, 1
  %.not40.i.i = icmp eq i32 %i.bl, %i.ap
  %i.bo = icmp ult i32 %i.bl, %i.ap               ; 2 uses
  %..033.i.i = select i1 %i.bo, i32 %.033.i.i, i32 %i.bm, !prof !29
  %.030..i.i = select i1 %i.bo, i32 %i.bn, i32 %.030.i.i, !prof !29
  br i1 %.not40.i.i, label %_upb_Decoder_FindField.exit, label %bb.j, !llvm.loop !30

upb_MiniTable_FindFieldByNumber.exit.i:           ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_upb_Decoder_DecodeMessage:bb.a
  %i.dy = trunc i64 %i.dx to i8
  br label %_upb_Decoder_Munge.exit

_upb_Decoder_Munge.exit:                          ; preds = %.lr.ph.i, %bb.q, %upb_WireReader_ReadVarint.exit, %bb.w, %bb.v, %bb.u, %upb_MiniTableEnum_CheckValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.179310 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.179311, %bb.q ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.179311, %upb_WireReader_ReadVarint.exit ], [ %i.dy, %bb.w ], [ %i.dt, %bb.v ], [ %i.dn, %bb.u ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.179311, %upb_MiniTableEnum_CheckValue.exit ], [ %.sroa.0.0..sroa.0.0..sroa.0.0.179311, %.lr.ph.i ]
  %i.dz = zext i8 %.val to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @_upb_Decoder_GetVarintOp.kVarintOps, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !22
end_hunk_3
begin_hunk_4_@_upb_Decoder_DecodeMessage:bb.a
  unreachable

_upb_Decoder_DecodeWireValue.exit:                ; preds = %bb.af, %bb.ac, %bb.ae, %bb.ad, %bb.ab, %_upb_Decoder_Munge.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.179309 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.179310, %_upb_Decoder_Munge.exit ], [ %i.fn, %bb.ac ], [ %i.fn, %bb.ae ], [ %i.fn, %bb.ad ], [ %i.fn, %bb.ab ], [ %i.fn, %bb.af ]
  %.4.in = phi i8 [ %i.eb, %_upb_Decoder_Munge.exit ], [ %i.fk, %bb.ac ], [ %i.fk, %bb.ae ], [ %i.fk, %bb.ad ], [ %i.fk, %bb.ab ], [ %i.fk, %bb.af ] ; 3 uses
  %.1.i = phi ptr [ %.0.i19, %_upb_Decoder_Munge.exit ], [ %.0.i21, %bb.ac ], [ %.0.i21, %bb.ae ], [ %.0.i21, %bb.ad ], [ %.0.i21, %bb.ab ], [ %.0.i21, %bb.af ] ; 3 uses
  %.4 = zext nneg i8 %.4.in to i32
  %i.gn = icmp sgt i8 %.4.in, -1
  br i1 %i.gn, label %_upb_Decoder_DecodeWireValue.exit.thread247, label %_upb_Decoder_DecodeWireValue.exit.thread

_upb_Decoder_DecodeWireValue.exit.thread247:      ; preds = %bb.ah, %bb.ai, %bb.y, %bb.x, %bb.af, %_upb_Decoder_DecodeWireValue.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.179 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0.179309, %_upb_Decoder_DecodeWireValue.exit ], [ %i.fn, %bb.af ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ], [ %i.er, %bb.y ], [ %i.ej, %bb.x ]
  %.1.i251 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit ], [ %.0.i21, %bb.af ], [ %.0.i16, %bb.ai ], [ %.0.i16, %bb.ah ], [ %i.eq, %bb.y ], [ %i.ei, %bb.x ] ; 24 uses
  %.4250 = phi i32 [ %.4, %_upb_Decoder_DecodeWireValue.exit ], [ 4, %bb.af ], [ 6, %bb.ai ], [ 6, %bb.ah ], [ 3, %bb.y ], [ 2, %bb.x ] ; 7 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i27, i64 11
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
end_hunk_4
begin_hunk_5_@_upb_Decoder_DecodeMessage:bb.a
  br label %upb_EpsCopyInputStream_ReadStringEphemeral.exit

upb_EpsCopyInputStream_ReadStringEphemeral.exit:  ; preds = %bb.bq, %bb.br
  %.sroa.0188.6 = phi ptr [ undef, %bb.bq ], [ %.1.i251, %bb.br ]
  %.0.i84 = phi ptr [ %i.nq, %bb.bq ], [ %i.nr, %bb.br ] ; 3 uses
  %.not.i.i46 = icmp eq ptr %.0.i84, null
  br i1 %.not.i.i46, label %bb.bs, label %bb.bt
end_hunk_5
begin_hunk_6_@_upb_Decoder_DecodeMessage:bb.a
  %i.om = zext nneg i32 %i.ni to i64
  %i.on = shl i64 %i.oi, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.on
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oo, ptr align 1 %.sroa.0188.6, i64 %i.nj, i1 false)
  br label %_upb_Decoder_DecodeField.exit

bb.bz:                                            ; preds = %_upb_Decoder_Reserve.exit95, %_upb_Decoder_Reserve.exit95, %_upb_Decoder_Reserve.exit95
end_hunk_6
begin_hunk_7_@_upb_Decoder_DecodeMessage:bb.a
  br i1 %i.aad, label %_upb_Decoder_DecodeWireValue.exit.thread.thread, label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader

_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader: ; preds = %bb.ag, %_upb_Decoder_DecodeWireValue.exit.thread
  %.0209.ph = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ], [ %.0.i16, %bb.ag ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread285

_upb_Decoder_DecodeWireValue.exit.thread.thread:  ; preds = %bb.t, %bb.q, %bb.ag, %bb.ac, %upb_MiniTableEnum_CheckValue.exit, %bb.s, %bb.ai, %bb.x, %bb.y, %_upb_Decoder_DecodeWireValue.exit.thread
  %.1.i243283 = phi ptr [ %.1.i, %_upb_Decoder_DecodeWireValue.exit.thread ], [ %.0.i21, %bb.ac ], [ %.0.i16, %bb.ag ], [ %.0.i19, %upb_MiniTableEnum_CheckValue.exit ], [ %.0.i19, %bb.s ], [ %i.eq, %bb.y ], [ %.0.i16, %bb.ai ], [ %i.ei, %bb.x ], [ %.0.i19, %bb.q ], [ %.0.i19, %bb.t ] ; 8 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.180 = load i64, ptr %.sroa.0, align 8
  %i.aae = icmp eq i32 %i.ap, 0
  br i1 %i.aae, label %bb.en, label %bb.eo
end_hunk_7
begin_hunk_8_@_upb_Decoder_DecodeMessage:bb.a
  unreachable

_upb_Decoder_DecodeWireValue.exit.thread.thread285: ; preds = %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader
  %.0209 = phi ptr [ %.0209.ph, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader ], [ %.0209.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge ] ; 4 uses
  %.028.i = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader ], [ %.028.i.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge ] ; 13 uses
  %.sroa.0.0.i63 = phi ptr [ null, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader ], [ %.sroa.0.0.i63.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge ] ; 14 uses
  %.sroa.5.0.i65 = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader ], [ %.sroa.5.0.i65.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge ] ; 14 uses
  %.027.i = phi i32 [ 0, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.preheader ], [ %.027.i.be, %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge ] ; 16 uses
  %i.acu = load ptr, ptr %0, align 8, !tbaa !18
  %i.acv = ptrtoint ptr %.0209 to i64
end_hunk_8
begin_hunk_9_@_upb_Decoder_DecodeMessage:bb.a
  br i1 %.not37.i70, label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.adx, ptr noundef %.sroa.0.0.i63, i32 noundef %.sroa.5.0.i65), !inline_history !78
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge

bb.fn:                                            ; preds = %upb_WireReader_ReadTag.exit.i
  %i.adz = load i8, ptr %.0.i.i65, align 1, !tbaa !22 ; 3 uses
  %i.aea = icmp sgt i8 %i.adz, -1
  br i1 %i.aea, label %bb.fo, label %upb_EpsCopyInputStream_HasErrorHandler.exit.i147, !prof !20

bb.fo:                                            ; preds = %bb.fn
  %5 = zext nneg i8 %i.adz to i32
  %i.aeb = getelementptr inbounds nuw i8, ptr %.0.i.i65, i64 1
  br label %upb_WireReader_ReadSize.exit.i

upb_EpsCopyInputStream_HasErrorHandler.exit.i147: ; preds = %bb.fn
  %6 = zext i8 %i.adz to i64
  %i.aec = call { ptr, i64 } @_upb_WireReader_ReadLongSize_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i.i65, i64 noundef %6, ptr noundef nonnull %0) #13, !inline_history !78 ; 2 uses
  %i.aed = extractvalue { ptr, i64 } %i.aec, 0
  %i.aee = extractvalue { ptr, i64 } %i.aec, 1
  %7 = trunc i64 %i.aee to i32
  br label %upb_WireReader_ReadSize.exit.i

upb_WireReader_ReadSize.exit.i:                   ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i147, %bb.fo
  %.0220 = phi i32 [ %5, %bb.fo ], [ %7, %upb_EpsCopyInputStream_HasErrorHandler.exit.i147 ] ; 3 uses
  %.0.i39.i = phi ptr [ %i.aeb, %bb.fo ], [ %i.aed, %upb_EpsCopyInputStream_HasErrorHandler.exit.i147 ] ; 2 uses
  %8 = zext i32 %.0220 to i64                     ; 2 uses
  %i.aef = load ptr, ptr %0, align 8, !tbaa !18
  %i.aeg = load i64, ptr %i.l, align 8, !tbaa !51 ; 2 uses
  %i.aeh = icmp eq i64 %i.aeg, 0
end_hunk_9
begin_hunk_10_@_upb_Decoder_DecodeMessage:bb.a
  %i.aek = ptrtoint ptr %i.aej to i64
  %i.ael = ptrtoint ptr %.0.i39.i to i64          ; 2 uses
  %i.aem = sub i64 %i.aek, %i.ael
  %9 = icmp slt i64 %i.aem, %8
  br i1 %9, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %upb_WireReader_ReadSize.exit.i
  %i.aen = call ptr @upb_EpsCopyInputStream_ReturnError_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0) #13
end_hunk_10
begin_hunk_11_@_upb_Decoder_DecodeMessage:bb.a
  %i.aep = sub i64 %i.aeg, %i.aeo
  %i.aeq = getelementptr i8, ptr %.val14.i, i64 %i.aep
  %i.aer = getelementptr i8, ptr %i.aeq, i64 %i.ael
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.i39.i, i64 %8
  br label %upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit

upb_EpsCopyInputStream_ReadStringAlwaysAlias.exit: ; preds = %bb.fp, %bb.fq
  %.sroa.0197.6 = phi ptr [ undef, %bb.fp ], [ %i.aer, %bb.fq ] ; 2 uses
  %.0.i145 = phi ptr [ %i.aen, %bb.fp ], [ %i.aes, %bb.fq ] ; 4 uses
  %.not.i66 = icmp eq ptr %.0.i145, null
  br i1 %.not.i66, label %bb.fr, label %bb.fs
end_hunk_11
begin_hunk_12_@_upb_Decoder_DecodeMessage:bb.a
  br i1 %.not35.i, label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  call fastcc void @upb_Decoder_AddMessageSetItem(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, i32 noundef %.028.i, ptr noundef %.sroa.0197.6, i32 noundef %.0220), !inline_history !78
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge

bb.fv:                                            ; preds = %upb_WireReader_ReadTag.exit.i
end_hunk_12
begin_hunk_13_@_upb_Decoder_DecodeMessage:bb.a
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge

_upb_Decoder_DecodeWireValue.exit.thread.thread285.backedge: ; preds = %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.fz, %bb.fy, %bb.fx, %bb.fs, %bb.fu, %bb.ft, %upb_WireReader_ReadVarint.exit.i, %bb.fl, %bb.fm
  %.0209.be = phi ptr [ %i.afb, %bb.fx ], [ %i.afe, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.0.i145, %bb.fs ], [ %i.afs, %bb.gc ], [ %.0.i38.i, %upb_WireReader_ReadVarint.exit.i ], [ %.0.i38.i, %bb.fm ], [ %.0.i38.i, %bb.fl ], [ %.0.i145, %bb.ft ], [ %.0.i145, %bb.fu ], [ %i.afw, %bb.gf ], [ %i.afv, %bb.ge ], [ %i.aff, %bb.fy ], [ %i.afg, %bb.fz ], [ %i.aft, %bb.gd ]
  %.028.i.be = phi i32 [ %.028.i, %bb.fx ], [ %.028.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.028.i, %bb.fs ], [ %.028.i, %bb.gc ], [ %.028.i, %upb_WireReader_ReadVarint.exit.i ], [ %i.adx, %bb.fm ], [ %i.adx, %bb.fl ], [ %.028.i, %bb.ft ], [ %.028.i, %bb.fu ], [ %.028.i, %bb.gf ], [ %.028.i, %bb.ge ], [ %.028.i, %bb.fy ], [ %.028.i, %bb.fz ], [ %.028.i, %bb.gd ]
  %.sroa.0.0.i63.be = phi ptr [ %.sroa.0.0.i63, %bb.fx ], [ %.sroa.0.0.i63, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.0.0.i63, %bb.fs ], [ %.sroa.0.0.i63, %bb.gc ], [ %.sroa.0.0.i63, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.0.0.i63, %bb.fm ], [ %.sroa.0.0.i63, %bb.fl ], [ %.sroa.0197.6, %bb.ft ], [ %.sroa.0.0.i63, %bb.fu ], [ %.sroa.0.0.i63, %bb.gf ], [ %.sroa.0.0.i63, %bb.ge ], [ %.sroa.0.0.i63, %bb.fy ], [ %.sroa.0.0.i63, %bb.fz ], [ %.sroa.0.0.i63, %bb.gd ]
  %.sroa.5.0.i65.be = phi i32 [ %.sroa.5.0.i65, %bb.fx ], [ %.sroa.5.0.i65, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.sroa.5.0.i65, %bb.fs ], [ %.sroa.5.0.i65, %bb.gc ], [ %.sroa.5.0.i65, %upb_WireReader_ReadVarint.exit.i ], [ %.sroa.5.0.i65, %bb.fm ], [ %.sroa.5.0.i65, %bb.fl ], [ %.0220, %bb.ft ], [ %.sroa.5.0.i65, %bb.fu ], [ %.sroa.5.0.i65, %bb.gf ], [ %.sroa.5.0.i65, %bb.ge ], [ %.sroa.5.0.i65, %bb.fy ], [ %.sroa.5.0.i65, %bb.fz ], [ %.sroa.5.0.i65, %bb.gd ]
  %.027.i.be = phi i32 [ %.027.i, %bb.fx ], [ %.027.i, %upb_EpsCopyInputStream_HasErrorHandler.exit.i.i.i ], [ %.027.i, %bb.fs ], [ %.027.i, %bb.gc ], [ %.027.i, %upb_WireReader_ReadVarint.exit.i ], [ %i.adw, %bb.fm ], [ %i.adw, %bb.fl ], [ %i.aev, %bb.ft ], [ %i.aev, %bb.fu ], [ %.027.i, %bb.gf ], [ %.027.i, %bb.ge ], [ %.027.i, %bb.fy ], [ %.027.i, %bb.fz ], [ %.027.i, %bb.gd ]
  br label %_upb_Decoder_DecodeWireValue.exit.thread.thread285, !llvm.loop !79

bb.fy:                                            ; preds = %bb.fv
end_hunk_13
begin_hunk_14_@_upb_Decoder_DecodeMessage:bb.a
  unreachable

_upb_Decoder_DecodeField.exit:                    ; preds = %upb_WireReader_ReadTag.exit.i, %bb.el, %bb.ek, %bb.ej, %_upb_Decoder_ReadString2.exit127, %bb.eb, %_upb_Decoder_RecurseSubMessage.exit52.i, %_upb_Decoder_RecurseSubMessage.exit.i56, %bb.ck, %_upb_Decoder_DecodeVarintPacked.exit.i, %_upb_Decoder_RecurseSubMessage.exit73.i, %_upb_Decoder_RecurseSubMessage.exit.i, %_upb_Decoder_ReadString2.exit, %bb.av, %bb.au, %_upb_Decoder_Reserve.exit83, %bb.bv, %_upb_Decoder_DecodeToMap.exit, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i
  %.0.i15 = phi ptr [ %.026.i, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.i ], [ %i.yq, %_upb_Decoder_RecurseSubMessage.exit52.i ], [ %.0.i84, %bb.bv ], [ %i.tv, %_upb_Decoder_DecodeToMap.exit ], [ %.1.i251, %bb.au ], [ %i.ix, %bb.av ], [ %.0.i.i.i89, %_upb_Decoder_ReadString2.exit ], [ %i.ri, %bb.ck ], [ %i.mz, %_upb_Decoder_RecurseSubMessage.exit73.i ], [ %.1216254, %_upb_Decoder_DecodeVarintPacked.exit.i ], [ %i.lz, %_upb_Decoder_RecurseSubMessage.exit.i ], [ %.0.i84, %_upb_Decoder_Reserve.exit83 ], [ %.0.i.i.i118, %_upb_Decoder_ReadString2.exit127 ], [ %i.yz, %bb.eb ], [ %.1.i251, %bb.el ], [ %.1.i251, %bb.ej ], [ %.1.i251, %bb.ek ], [ %i.xp, %_upb_Decoder_RecurseSubMessage.exit.i56 ], [ %.026.i, %_upb_Message_AddUnknown_dont_copy_me__upb_internal_use_only.exit.thread.i ], [ %.0.i.i65, %upb_WireReader_ReadTag.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %.pre316 = load i8, ptr %i.f, align 1, !tbaa !80, !range !67
  %i.afy = trunc nuw i8 %.pre316 to i1
end_hunk_14
