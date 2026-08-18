inline.NumInlined: 1770
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 137
begin_hunk_0_@struct_xkb_SymInterpret:bb.a
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 6 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_SymInterpret_sym, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 4                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_struct_xkb_SymInterpret_mods, align 4
  %i.l = load i32, ptr @ett_x11_rectangle, align 4
  %i.m = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull @struct_xkb_SymInterpret.mods_bits, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %1, align 4
  %i.p = load i32, ptr @hf_x11_struct_xkb_SymInterpret_match, align 4
  %i.q = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.p, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = load i32, ptr @hf_x11_struct_xkb_SymInterpret_virtualMod, align 4
  %i.t = load i32, ptr @ett_x11_rectangle, align 4
  %i.u = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.r, i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull @struct_xkb_SymInterpret.virtualMod_bits, i32 noundef %3) ; 0 uses
  %i.v = load i32, ptr %1, align 4
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %1, align 4
  %i.x = load i32, ptr @hf_x11_struct_xkb_SymInterpret_flags, align 4
  %i.y = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.w, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.z = load i32, ptr %1, align 4
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.aa, ptr %1, align 4
  %i.ab = load i32, ptr @hf_x11_struct_xkb_SIAction, align 4
  %i.ac = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.aa, i32 noundef 8, i32 noundef 0)
  %i.ad = load i32, ptr @ett_x11_rectangle, align 4
  %i.ae = tail call ptr @proto_item_add_subtree(ptr noundef %i.ac, i32 noundef %i.ad) ; 2 uses
  %i.af = load i32, ptr @hf_x11_struct_xkb_SIAction_type, align 4
  %i.ag = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %3) ; 0 uses
  %i.ah = load i32, ptr @hf_x11_struct_xkb_SIAction_data, align 4
  %i.ai = load i32, ptr %1, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.ae, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ai, i32 noundef 7, i32 noundef %3) ; 0 uses
  %i.ak = load i32, ptr %1, align 4
  %i.al = add i32 %i.ak, 7                        ; 2 uses
  store i32 %i.al, ptr %1, align 4
  %i.am = add nuw nsw i32 %.034, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_ModDef(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65026) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.u, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.021 = phi i32 [ %i.v, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_ModDef, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 4, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 3 uses
  %i.f = load i32, ptr %1, align 4
  %i.g = load i32, ptr @hf_x11_struct_xkb_ModDef_mask, align 4
  %i.h = load i32, ptr @ett_x11_rectangle, align 4
  %i.i = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull @struct_xkb_ModDef.mask_bits, i32 noundef %3) ; 0 uses
  %i.j = load i32, ptr %1, align 4
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %1, align 4
  %i.l = load i32, ptr @hf_x11_struct_xkb_ModDef_realMods, align 4
  %i.m = load i32, ptr @ett_x11_rectangle, align 4
  %i.n = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %i.m, ptr noundef nonnull @struct_xkb_ModDef.realMods_bits, i32 noundef %3) ; 0 uses
  %i.o = load i32, ptr %1, align 4
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %1, align 4
  %i.q = load i32, ptr @hf_x11_struct_xkb_ModDef_vmods, align 4
  %i.r = load i32, ptr @ett_x11_rectangle, align 4
  %i.s = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r, ptr noundef nonnull @struct_xkb_ModDef.vmods_bits, i32 noundef %3) ; 0 uses
  %i.t = load i32, ptr %1, align 4
  %i.u = add i32 %i.t, 2                          ; 2 uses
  store i32 %i.u, ptr %1, align 4
  %i.v = add nuw nsw i32 %.021, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_IndicatorMap(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.ah, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.042 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_IndicatorMap, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 12, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 8 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_flags, align 4
  %i.g = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.f, i32 noundef %3) ; 0 uses
  %i.h = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_whichGroups, align 4
  %i.i = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.h, i32 noundef %3) ; 0 uses
  %i.j = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_groups, align 4
  %i.k = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.j, i32 noundef %3) ; 0 uses
  %i.l = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_whichMods, align 4
  %i.m = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %1, ptr noundef %i.e, i32 noundef %i.l, i32 noundef %3) ; 0 uses
  %i.n = load i32, ptr %1, align 4
  %i.o = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_mods, align 4
  %i.p = load i32, ptr @ett_x11_rectangle, align 4
  %i.q = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.p, ptr noundef nonnull @struct_xkb_IndicatorMap.mods_bits, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %1, align 4
  %i.t = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_realMods, align 4
  %i.u = load i32, ptr @ett_x11_rectangle, align 4
  %i.v = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.t, i32 noundef %i.u, ptr noundef nonnull @struct_xkb_IndicatorMap.realMods_bits, i32 noundef %3) ; 0 uses
  %i.w = load i32, ptr %1, align 4
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %1, align 4
  %i.y = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_vmods, align 4
  %i.z = load i32, ptr @ett_x11_rectangle, align 4
  %i.aa = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, ptr noundef nonnull @struct_xkb_IndicatorMap.vmods_bits, i32 noundef %3) ; 0 uses
  %i.ab = load i32, ptr %1, align 4
  %i.ac = add i32 %i.ab, 2                        ; 2 uses
  store i32 %i.ac, ptr %1, align 4
  %i.ad = load i32, ptr @hf_x11_struct_xkb_IndicatorMap_ctrls, align 4
  %i.ae = load i32, ptr @ett_x11_rectangle, align 4
  %i.af = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.e, ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull @struct_xkb_IndicatorMap.ctrls_bits, i32 noundef %3) ; 0 uses
  %i.ag = load i32, ptr %1, align 4
  %i.ah = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.ah, ptr %1, align 4
  %i.ai = add nuw nsw i32 %.042, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_KeyAlias(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.a = phi i32 [ %i.n, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.014 = phi i32 [ %i.o, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = load i32, ptr @hf_x11_struct_xkb_KeyAlias, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef %i.a, i32 noundef 8, i32 noundef 0)
  %i.d = load i32, ptr @ett_x11_rectangle, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d) ; 2 uses
  %i.f = load i32, ptr @hf_x11_struct_xkb_KeyAlias_real, align 4
  %i.g = load i32, ptr %1, align 4
  %i.h = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.f, ptr noundef %0, i32 noundef %i.g, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.i = load i32, ptr %1, align 4
  %i.j = add i32 %i.i, 4                          ; 2 uses
  store i32 %i.j, ptr %1, align 4
  %i.k = load i32, ptr @hf_x11_struct_xkb_KeyAlias_alias, align 4
  %i.l = tail call ptr @proto_tree_add_item(ptr noundef %i.e, i32 noundef %i.k, ptr noundef %0, i32 noundef %i.j, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.m = load i32, ptr %1, align 4
  %i.n = add i32 %i.m, 4                          ; 2 uses
  store i32 %i.n, ptr %1, align 4
  %i.o = add nuw nsw i32 %.014, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @struct_xkb_DeviceLedInfo(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #1 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %listOfCard32.exit
  %.053 = phi i32 [ %i.bd, %listOfCard32.exit ], [ 0, %bb.a ]
  %i.a = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo, align 4
  %i.b = load i32, ptr %1, align 4                ; 2 uses
  %i.c = add i32 %i.b, 4
  %i.d = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.c, i32 noundef %3)
  %i.e = load i32, ptr %1, align 4
  %i.f = add i32 %i.e, 8
  %i.g = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.f, i32 noundef %3)
  %5 = sext i32 %i.d to i64
  %6 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 range(i64 -2147483648, 2147483648) %5)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = sext i32 %i.g to i64
  %10 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 range(i64 -2147483648, 2147483648) %9)
  %11 = trunc nuw nsw i64 %10 to i32
  %i.h = mul nuw nsw i32 %11, 12
  %i.i = add nuw nsw i32 %8, 20
  %i.j = add nuw nsw i32 %i.i, %i.h
  %i.k = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef %i.j, i32 noundef 0)
  %i.l = load i32, ptr @ett_x11_rectangle, align 4
  %i.m = tail call ptr @proto_item_add_subtree(ptr noundef %i.k, i32 noundef %i.l) ; 8 uses
  %i.n = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_ledClass, align 4
  %i.o = tail call fastcc i32 @field16(ptr noundef %0, ptr noundef %1, ptr noundef %i.m, i32 noundef %i.n, i32 noundef %3) ; 0 uses
  %i.p = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_ledID, align 4
  %i.q = tail call fastcc i32 @field16(ptr noundef %0, ptr noundef %1, ptr noundef %i.m, i32 noundef %i.p, i32 noundef %3) ; 0 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.r, i32 noundef %3) ; 2 uses
  %i.t = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_namesPresent, align 4
  %i.u = load i32, ptr %1, align 4
  %i.v = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.t, ptr noundef %0, i32 noundef %i.u, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.w = load i32, ptr %1, align 4
  %i.x = add i32 %i.w, 4                          ; 2 uses
  store i32 %i.x, ptr %1, align 4
  %i.y = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.x, i32 noundef %3)
  %i.z = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_mapsPresent, align 4
  %i.aa = load i32, ptr %1, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.aa, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ac = load i32, ptr %1, align 4
  %i.ad = add i32 %i.ac, 4                        ; 2 uses
  store i32 %i.ad, ptr %1, align 4
  %i.ae = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_physIndicators, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ag = load i32, ptr %1, align 4
  %i.ah = add i32 %i.ag, 4                        ; 2 uses
  store i32 %i.ah, ptr %1, align 4
  %i.ai = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_state, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ak = load i32, ptr %1, align 4
  %i.al = add i32 %i.ak, 4                        ; 2 uses
  store i32 %i.al, ptr %1, align 4
  %i.am = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_names, align 4
  %i.an = load i32, ptr @hf_x11_struct_xkb_DeviceLedInfo_names_item, align 4
  %i.ao = sext i32 %i.s to i64
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 range(i64 -2147483648, 2147483648) %i.ao)
  %i.aq = trunc nuw nsw i64 %i.ap to i32          ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 2
  %i.as = tail call ptr @proto_tree_add_item(ptr noundef %i.m, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef %i.ar, i32 noundef %3)
  %i.at = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.au = tail call ptr @proto_item_add_subtree(ptr noundef %i.as, i32 noundef %i.at)
  %.not14.i = icmp eq i32 %i.s, 0
  br i1 %.not14.i, label %listOfCard32.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph
  %.pre.i = load i32, ptr %1, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.015.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.aq, %.lr.ph.preheader.i ]
  %i.aw = add i32 %.015.i, -1                     ; 2 uses
  %i.ax = tail call ptr @proto_tree_add_item(ptr noundef %i.au, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.av, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.ay = load i32, ptr %1, align 4
  %i.az = add i32 %i.ay, 4                        ; 2 uses
  store i32 %i.az, ptr %1, align 4
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %listOfCard32.exit, label %.lr.ph.i, !llvm.loop !39

listOfCard32.exit:                                ; preds = %.lr.ph.i, %.lr.ph
  %i.ba = sext i32 %i.y to i64
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 range(i64 -2147483648, 2147483648) %i.ba)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  tail call fastcc void @struct_xkb_IndicatorMap(ptr noundef %0, ptr noundef %1, ptr noundef %i.m, i32 noundef %3, i32 noundef %i.bc)
  %i.bd = add nuw nsw i32 %.053, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %listOfCard32.exit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xkbMapNotify(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = load i32, ptr @hf_x11_xkb_MapNotify_xkbType, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.a, ptr noundef %0, i32 noundef %i.b, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.d = load i32, ptr %1, align 4
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %1, align 4
  %i.f = load i32, ptr @hf_x11_event_sequencenumber, align 4
  %i.g = tail call fastcc i32 @field16(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.f, i32 noundef %3) ; 0 uses
  %i.h = load i32, ptr @hf_x11_xkb_MapNotify_time, align 4
  %i.i = load i32, ptr %1, align 4
  %i.j = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.h, ptr noundef %0, i32 noundef %i.i, i32 noundef 4, i32 noundef %3) ; 0 uses
  %i.k = load i32, ptr %1, align 4
  %i.l = add i32 %i.k, 4                          ; 2 uses
  store i32 %i.l, ptr %1, align 4
  %i.m = load i32, ptr @hf_x11_xkb_MapNotify_deviceID, align 4
  %i.n = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.l, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.o = load i32, ptr %1, align 4
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %1, align 4
  %i.q = load i32, ptr @hf_x11_xkb_MapNotify_ptrBtnActions, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.s = load i32, ptr %1, align 4
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %1, align 4
  %i.u = load i32, ptr @hf_x11_xkb_MapNotify_changed, align 4
  %i.v = load i32, ptr @ett_x11_rectangle, align 4
  %i.w = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.v, ptr noundef nonnull @xkbMapNotify.changed_bits, i32 noundef %3) ; 0 uses
  %i.x = load i32, ptr %1, align 4
  %i.y = add i32 %i.x, 2                          ; 2 uses
  store i32 %i.y, ptr %1, align 4
  %i.z = load i32, ptr @hf_x11_xkb_MapNotify_minKeyCode, align 4
  %i.aa = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.z, ptr noundef %0, i32 noundef %i.y, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ab = load i32, ptr %1, align 4
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %1, align 4
  %i.ad = load i32, ptr @hf_x11_xkb_MapNotify_maxKeyCode, align 4
  %i.ae = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ac, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.af = load i32, ptr %1, align 4
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr %1, align 4
  %i.ah = load i32, ptr @hf_x11_xkb_MapNotify_firstType, align 4
  %i.ai = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ah, ptr noundef %0, i32 noundef %i.ag, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.aj = load i32, ptr %1, align 4
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ak, ptr %1, align 4
  %i.al = load i32, ptr @hf_x11_xkb_MapNotify_nTypes, align 4
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.al, ptr noundef %0, i32 noundef %i.ak, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.an = load i32, ptr %1, align 4
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %1, align 4
  %i.ap = load i32, ptr @hf_x11_xkb_MapNotify_firstKeySym, align 4
  %i.aq = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ap, ptr noundef %0, i32 noundef %i.ao, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.ar = load i32, ptr %1, align 4
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr %1, align 4
  %i.at = load i32, ptr @hf_x11_xkb_MapNotify_nKeySyms, align 4
  %i.au = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.at, ptr noundef %0, i32 noundef %i.as, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.av = load i32, ptr %1, align 4
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %1, align 4
  %i.ax = load i32, ptr @hf_x11_xkb_MapNotify_firstKeyAct, align 4
  %i.ay = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ax, ptr noundef %0, i32 noundef %i.aw, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.az = load i32, ptr %1, align 4
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %1, align 4
  %i.bb = load i32, ptr @hf_x11_xkb_MapNotify_nKeyActs, align 4
  %i.bc = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bb, ptr noundef %0, i32 noundef %i.ba, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bd = load i32, ptr %1, align 4
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.be, ptr %1, align 4
  %i.bf = load i32, ptr @hf_x11_xkb_MapNotify_firstKeyBehavior, align 4
  %i.bg = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.be, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bh = load i32, ptr %1, align 4
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bi, ptr %1, align 4
  %i.bj = load i32, ptr @hf_x11_xkb_MapNotify_nKeyBehavior, align 4
  %i.bk = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bj, ptr noundef %0, i32 noundef %i.bi, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bl = load i32, ptr %1, align 4
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %1, align 4
  %i.bn = load i32, ptr @hf_x11_xkb_MapNotify_firstKeyExplicit, align 4
  %i.bo = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bn, ptr noundef %0, i32 noundef %i.bm, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bp = load i32, ptr %1, align 4
  %i.bq = add i32 %i.bp, 1                        ; 2 uses
  store i32 %i.bq, ptr %1, align 4
  %i.br = load i32, ptr @hf_x11_xkb_MapNotify_nKeyExplicit, align 4
  %i.bs = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.br, ptr noundef %0, i32 noundef %i.bq, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bt = load i32, ptr %1, align 4
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  store i32 %i.bu, ptr %1, align 4
  %i.bv = load i32, ptr @hf_x11_xkb_MapNotify_firstModMapKey, align 4
  %i.bw = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bv, ptr noundef %0, i32 noundef %i.bu, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.bx = load i32, ptr %1, align 4
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.by, ptr %1, align 4
  %i.bz = load i32, ptr @hf_x11_xkb_MapNotify_nModMapKeys, align 4
  %i.ca = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.by, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.cb = load i32, ptr %1, align 4
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %1, align 4
  %i.cd = load i32, ptr @hf_x11_xkb_MapNotify_firstVModMapKey, align 4
  %i.ce = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cd, ptr noundef %0, i32 noundef %i.cc, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.cf = load i32, ptr %1, align 4
  %i.cg = add i32 %i.cf, 1                        ; 2 uses
  store i32 %i.cg, ptr %1, align 4
  %i.ch = load i32, ptr @hf_x11_xkb_MapNotify_nVModMapKeys, align 4
  %i.ci = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.ch, ptr noundef %0, i32 noundef %i.cg, i32 noundef 1, i32 noundef %3) ; 0 uses
  %i.cj = load i32, ptr %1, align 4
  %i.ck = add i32 %i.cj, 1                        ; 2 uses
  store i32 %i.ck, ptr %1, align 4
  %i.cl = load i32, ptr @hf_x11_xkb_MapNotify_virtualMods, align 4
  %i.cm = load i32, ptr @ett_x11_rectangle, align 4
  %i.cn = tail call ptr @proto_tree_add_bitmask(ptr noundef %2, ptr noundef %0, i32 noundef %i.ck, i32 noundef %i.cl, i32 noundef %i.cm, ptr noundef nonnull @xkbMapNotify.virtualMods_bits, i32 noundef %3) ; 0 uses
  %i.co = load i32, ptr %1, align 4
  %i.cp = add i32 %i.co, 2                        ; 2 uses
  store i32 %i.cp, ptr %1, align 4
  %i.cq = load i32, ptr @hf_x11_unused, align 4
  %i.cr = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.cq, ptr noundef %0, i32 noundef %i.cp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.cs = load i32, ptr %1, align 4
  %i.ct = add i32 %i.cs, 2
  store i32 %i.ct, ptr %1, align 4
  ret void
}

end_hunk_0
begin_hunk_1_@xvmcCreateSurface_Reply:bb.a
  store i32 %i.v, ptr %2, align 4
  %i.w = load i32, ptr @hf_x11_unused, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 24, i32 noundef 0) ; 0 uses
  %i.y = load i32, ptr %2, align 4
  %i.z = add i32 %i.y, 24                         ; 2 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = load i32, ptr @hf_x11_xvmc_CreateSurface_reply_priv_data, align 4
  %i.ab = load i32, ptr @hf_x11_xvmc_CreateSurface_reply_priv_data_item, align 4
  %i.ac = icmp ugt i32 %i.q, 1073741823
  %i.ad = shl nuw i32 %i.q, 2
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 2147483647)
  %spec.store.select.i = select i1 %i.ac, i32 2147483647, i32 %i.ae
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef %spec.store.select.i, i32 noundef %4)
  %i.ag = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %listOfCard32.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.pre.i = load i32, ptr %2, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.ai = phi i32 [ %i.am, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.015.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ]
  %i.aj = add i32 %.015.i, -1                     ; 2 uses
  %i.ak = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %i.ab, ptr noundef %0, i32 noundef %i.ai, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.al = load i32, ptr %2, align 4
  %i.am = add i32 %i.al, 4                        ; 2 uses
  store i32 %i.am, ptr %2, align 4
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %listOfCard32.exit, label %.lr.ph.i, !llvm.loop !39

listOfCard32.exit:                                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xvmcCreateSubpicture_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.15643)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_unused, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef nonnull @.str.15644, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.p, i32 noundef %4) ; 4 uses
  %i.r = load i32, ptr @hf_x11_replylength, align 4
  %i.s = load i32, ptr %2, align 4
  %i.t = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.s, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.u = load i32, ptr %2, align 4
  %i.v = add i32 %i.u, 4                          ; 2 uses
  store i32 %i.v, ptr %2, align 4
  %i.w = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_width_actual, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.w, ptr noundef %0, i32 noundef %i.v, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.y = load i32, ptr %2, align 4
  %i.z = add i32 %i.y, 2                          ; 2 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_height_actual, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = add i32 %i.ac, 2                        ; 2 uses
  store i32 %i.ad, ptr %2, align 4
  %i.ae = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_num_palette_entries, align 4
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ae, ptr noundef %0, i32 noundef %i.ad, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ag = load i32, ptr %2, align 4
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  store i32 %i.ah, ptr %2, align 4
  %i.ai = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_entry_bytes, align 4
  %i.aj = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.ah, i32 noundef 2, i32 noundef %4) ; 0 uses
  %i.ak = load i32, ptr %2, align 4
  %i.al = add i32 %i.ak, 2                        ; 2 uses
  store i32 %i.al, ptr %2, align 4
  %i.am = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_component_order, align 4
  %i.an = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.am, ptr noundef %0, i32 noundef %i.al, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.ao = load i32, ptr %2, align 4
  %i.ap = add i32 %i.ao, 4                        ; 2 uses
  store i32 %i.ap, ptr %2, align 4
  %i.aq = load i32, ptr @hf_x11_unused, align 4
  %i.ar = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aq, ptr noundef %0, i32 noundef %i.ap, i32 noundef 12, i32 noundef 0) ; 0 uses
  %i.as = load i32, ptr %2, align 4
  %i.at = add i32 %i.as, 12                       ; 2 uses
  store i32 %i.at, ptr %2, align 4
  %i.au = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_priv_data, align 4
  %i.av = load i32, ptr @hf_x11_xvmc_CreateSubpicture_reply_priv_data_item, align 4
  %i.aw = icmp ugt i32 %i.q, 1073741823
  %i.ax = shl nuw i32 %i.q, 2
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 2147483647)
  %spec.store.select.i = select i1 %i.aw, i32 2147483647, i32 %i.ay
  %i.az = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.au, ptr noundef %0, i32 noundef %i.at, i32 noundef %spec.store.select.i, i32 noundef %4)
  %i.ba = load i32, ptr @ett_x11_list_of_card32, align 4
  %i.bb = tail call ptr @proto_item_add_subtree(ptr noundef %i.az, i32 noundef %i.ba)
  %.not14.i = icmp eq i32 %i.q, 0
  br i1 %.not14.i, label %listOfCard32.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.pre.i = load i32, ptr %2, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bc = phi i32 [ %i.bg, %.lr.ph.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.015.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %i.q, %.lr.ph.preheader.i ]
  %i.bd = add i32 %.015.i, -1                     ; 2 uses
  %i.be = tail call ptr @proto_tree_add_item(ptr noundef %i.bb, i32 noundef %i.av, ptr noundef %0, i32 noundef %i.bc, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.bf = load i32, ptr %2, align 4
  %i.bg = add i32 %i.bf, 4                        ; 2 uses
  store i32 %i.bg, ptr %2, align 4
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %listOfCard32.exit, label %.lr.ph.i, !llvm.loop !39

listOfCard32.exit:                                ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @xvmcListSubpictureTypes_Reply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.b, i32 noundef 25, ptr noundef nonnull @.str.15645)
  %i.c = load i32, ptr @hf_x11_reply, align 4
  %i.d = tail call fastcc i32 @field8(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %4) ; 0 uses
  %i.e = load i32, ptr @hf_x11_unused, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.e, ptr noundef %0, i32 noundef %i.f, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.h = load i32, ptr %2, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %2, align 4
  %i.j = tail call zeroext i16 @tvb_get_uint16(ptr noundef %0, i32 noundef %i.i, i32 noundef %4)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i32, ptr @hf_x11_reply_sequencenumber, align 4
  %i.m = load i32, ptr %2, align 4
  %i.n = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %3, i32 noundef %i.l, ptr noundef %0, i32 noundef %i.m, i32 noundef 2, i32 noundef %i.k, ptr noundef nonnull @.str.15646, i32 noundef %i.k) ; 0 uses
  %i.o = load i32, ptr %2, align 4
  %i.p = add i32 %i.o, 2                          ; 2 uses
  store i32 %i.p, ptr %2, align 4
  %i.q = load i32, ptr @hf_x11_replylength, align 4
  %i.r = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.q, ptr noundef %0, i32 noundef %i.p, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.s = load i32, ptr %2, align 4
  %i.t = add i32 %i.s, 4                          ; 2 uses
  store i32 %i.t, ptr %2, align 4
  %i.u = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.t, i32 noundef %4)
  %i.v = load i32, ptr @hf_x11_xvmc_ListSubpictureTypes_reply_num, align 4
  %i.w = load i32, ptr %2, align 4
  %i.x = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.w, i32 noundef 4, i32 noundef %4) ; 0 uses
  %i.y = load i32, ptr %2, align 4
  %i.z = add i32 %i.y, 4                          ; 2 uses
  store i32 %i.z, ptr %2, align 4
  %i.aa = load i32, ptr @hf_x11_unused, align 4
  %i.ab = tail call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.z, i32 noundef 20, i32 noundef 0) ; 0 uses
  %i.ac = load i32, ptr %2, align 4
  %i.ad = add i32 %i.ac, 20
  store i32 %i.ad, ptr %2, align 4
  tail call fastcc void @struct_xv_ImageFormatInfo(ptr noundef %0, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %i.u)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind returns_twice }
attributes #14 = { noreturn }
attributes #15 = { allocsize(1) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = distinct !{!29, !9}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = distinct !{!34, !9}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = distinct !{!84, !9}
!85 = distinct !{!85, !9}
!86 = distinct !{!86, !9}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = distinct !{!91, !9}
!92 = distinct !{!92, !9}
!93 = distinct !{!93, !9}
!94 = distinct !{!94, !9}
!95 = distinct !{!95, !9}
!96 = distinct !{!96, !9}
!97 = distinct !{!97, !9}
!98 = distinct !{!98, !9}
!99 = distinct !{!99, !9}
!100 = distinct !{!100, !9}
!101 = distinct !{!101, !9}
!102 = distinct !{!102, !9}
!103 = distinct !{!103, !9}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !9}
!106 = distinct !{!106, !9}
!107 = distinct !{!107, !9}
!108 = distinct !{!108, !9}
!109 = distinct !{!109, !9}
!110 = distinct !{!110, !9}
!111 = distinct !{!111, !9}
!112 = distinct !{!112, !9}
!113 = distinct !{!113, !9}
!114 = distinct !{!114, !9}
!115 = distinct !{!115, !9}
!116 = distinct !{!116, !9}
!117 = distinct !{!117, !9}
!118 = distinct !{!118, !9}
!119 = distinct !{!119, !9}
!120 = distinct !{!120, !9}
!121 = distinct !{!121, !9}
!122 = distinct !{!122, !9}
!123 = distinct !{!123, !9}
!124 = distinct !{!124, !9}
!125 = distinct !{!125, !9}
!126 = distinct !{!126, !9}
!127 = distinct !{!127, !9}
!128 = distinct !{!128, !9}
!129 = distinct !{!129, !9}
!130 = distinct !{!130, !9}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !9}
!133 = distinct !{!133, !9}
!134 = distinct !{!134, !9}
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
!137 = distinct !{!137, !9}
!138 = distinct !{!138, !9}
!139 = distinct !{!139, !9}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !9}
end_hunk_1
