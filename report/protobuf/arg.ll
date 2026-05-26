inline.NumInlined: 657
inline.NumDeleted: 252
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.z = load ptr, ptr %3, align 8, !tbaa !22
  call void %i.y(ptr noundef %i.z, i64 %i.c, ptr nonnull %i.a), !inline_history !31
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.a, i64 %i.c, i1 false)
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.c
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.g:                                             ; preds = %bb.b
  %.sroa.310.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i = trunc nuw i64 %.sroa.310.0.extract.shift.i to i32
  %i.ac = and i64 %1, 256
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = call noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 %i.c, ptr nonnull %i.a, i32 noundef %.sroa.310.0.extract.trunc.i, i32 noundef %2, i1 noundef zeroext %i.ad)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.af = phi i1 [ false, %bb.a ], [ %i.ae, %bb.g ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i1 %i.af
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %spec.select = lshr i64 %i.a, 32
  %i.b = tail call noundef i64 @llvm.usub.sat.i64(i64 %spec.select, i64 1) ; 8 uses
  %i.c = and i64 %1, 256
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  %i.e = icmp slt i64 %1, 8589934592
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %._ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge, label %bb.b

._ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17
  %i.h = add i64 %i.g, %i.b
  store i64 %i.h, ptr %i.f, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20   ; 4 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = icmp ugt i64 %i.b, %i.n
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = sub nuw nsw i64 %i.b, %i.n               ; 3 uses
  %.not.peel.i = icmp eq ptr %i.i, %i.l
  br i1 %.not.peel.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 32, i64 %i.n, i1 false)
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !20
  %.pre.i = ptrtoint ptr %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.c ], [ %i.k, %.lr.ph.i ]
  %i.v = sub i64 %.pre-phi.i, %i.q
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.x = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.w(ptr noundef %i.x, i64 %i.v, ptr nonnull %i.p), !inline_history !32
  store ptr %i.p, ptr %i.j, align 8, !tbaa !20
  %i.y = icmp samesign ugt i64 %i.s, 1024
  br i1 %i.y, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.d, %.peel.next.i
  %.010.i = phi i64 [ %i.z, %.peel.next.i ], [ %i.s, %bb.d ]
  %i.z = add i64 %.010.i, -1024                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.p, i8 32, i64 1024, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !20
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.ab = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.aa(ptr noundef %i.ab, i64 1024, ptr nonnull %i.p), !inline_history !32
  store ptr %i.p, ptr %i.j, align 8, !tbaa !20
  %i.ac = icmp ugt i64 %i.z, 1024
  br i1 %i.ac, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.d, %bb.b
  %.0.lcssa.i = phi i64 [ %i.b, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %.peel.next.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.l, %bb.b ], [ %i.p, %bb.d ], [ %i.p, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 32, i64 %.0.lcssa.i, i1 false)
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.lcssa.i ; 2 uses
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %._ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge, %._crit_edge.i
  %i.af = phi ptr [ %.pre, %._ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge ], [ %i.ae, %._crit_edge.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.af
  br i1 %i.am, label %.lr.ph.i6, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit12

.lr.ph.i6:                                        ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.ap(ptr noundef %i.aq, i64 1024, ptr nonnull %i.an), !inline_history !32
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit12

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit12: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit, %.lr.ph.i6
  %.lcssa.i5 = phi ptr [ %i.af, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit ], [ %i.an, %.lr.ph.i6 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i5, i8 %0, i64 1, i1 false)
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 5 uses
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !20
  %i.at = icmp sgt i64 %1, 8589934591
  %or.cond28.not = and i1 %i.at, %i.d
  br i1 %or.cond28.not, label %bb.e, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit22

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit12
  %i.au = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.av = add i64 %i.au, %i.b
  store i64 %i.av, ptr %i.ag, align 8, !tbaa !17
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.al, %i.aw                    ; 4 uses
  %i.ay = icmp ugt i64 %i.b, %i.ax
  br i1 %i.ay, label %.lr.ph.i16, label %._crit_edge.i13

.lr.ph.i16:                                       ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bc = sub nuw nsw i64 %i.b, %i.ax             ; 3 uses
  %.not.peel.i17 = icmp eq ptr %i.aj, %i.as
  br i1 %.not.peel.i17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.as, i8 32, i64 %i.ax, i1 false)
  %i.bd = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax ; 2 uses
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !20
  %.pre.i18 = ptrtoint ptr %i.be to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i16
  %.pre-phi.i19 = phi i64 [ %.pre.i18, %bb.f ], [ %i.al, %.lr.ph.i16 ]
  %i.bf = sub i64 %.pre-phi.i19, %i.ba
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bh = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.bg(ptr noundef %i.bh, i64 %i.bf, ptr nonnull %i.az), !inline_history !32
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !20
  %i.bi = icmp samesign ugt i64 %i.bc, 1024
  br i1 %i.bi, label %.peel.next.i20, label %._crit_edge.i13

.peel.next.i20:                                   ; preds = %bb.g, %.peel.next.i20
  %.010.i21 = phi i64 [ %i.bj, %.peel.next.i20 ], [ %i.bc, %bb.g ]
  %i.bj = add i64 %.010.i21, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.az, i8 32, i64 1024, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !20
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !21
  %i.bl = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.bk(ptr noundef %i.bl, i64 1024, ptr nonnull %i.az), !inline_history !32
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !20
  %i.bm = icmp ugt i64 %i.bj, 1024
  br i1 %i.bm, label %.peel.next.i20, label %._crit_edge.i13, !llvm.loop !33

._crit_edge.i13:                                  ; preds = %.peel.next.i20, %bb.g, %bb.e
  %.0.lcssa.i14 = phi i64 [ %i.b, %bb.e ], [ %i.bc, %bb.g ], [ %i.bj, %.peel.next.i20 ] ; 2 uses
  %.lcssa.i15 = phi ptr [ %i.as, %bb.e ], [ %i.az, %bb.g ], [ %i.az, %.peel.next.i20 ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.lcssa.i15, i8 32, i64 %.0.lcssa.i14, i1 false)
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.0.lcssa.i14
  store ptr %i.bo, ptr %i.ak, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit22

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit22: ; preds = %._crit_edge.i13, %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit12
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.0.val, i64 %.8.val, i64 %0, i32 %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i64 %0, 8       ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 4 uses
  %.sroa.829.0.extract.shift = lshr i64 %0, 32
  %.inv = icmp slt i64 %0, 0
  %i.a = load i8, ptr %.0.val, align 1, !tbaa !7  ; 2 uses
  %i.b = icmp slt i8 %i.a, 49
  %i.c = zext i1 %i.b to i64                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.c ; 3 uses
  %i.e = sub i64 %.8.val, %i.c                    ; 8 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.829.0.extract.shift, i64 %i.e)
  %i.g = icmp eq i8 %i.a, 45
  %i.h = and i64 %0, 254
  %switch.i = icmp ne i64 %i.h, 2                 ; 3 uses
  %brmerge.i = or i1 %switch.i, %i.g
  %.mux.i = select i1 %switch.i, ptr null, ptr @.str.3
  %not.switch.i = xor i1 %switch.i, true
  %.mux6.i = zext i1 %not.switch.i to i64
  br i1 %brmerge.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110SignColumnEbNS1_24FormatConversionSpecImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i8 %.sroa.4.0.extract.trunc, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110SignColumnEbNS1_24FormatConversionSpecImplE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = and i8 %.sroa.4.0.extract.trunc, 4       ; 2 uses
  %.not4.not.i = icmp eq i8 %i.j, 0
  %spec.select.i = select i1 %.not4.not.i, ptr null, ptr @.str.5
  %.lobit.i = lshr exact i8 %i.j, 2
  %spec.select5.i = zext nneg i8 %.lobit.i to i64
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110SignColumnEbNS1_24FormatConversionSpecImplE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110SignColumnEbNS1_24FormatConversionSpecImplE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i = phi ptr [ %.mux.i, %bb.a ], [ %spec.select.i, %bb.c ], [ @.str.4, %bb.b ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ %.mux6.i, %bb.a ], [ %spec.select5.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %.sroa.03.0.i)
  %.sroa.01.0.extract.trunc.i = trunc i64 %0 to i8 ; 3 uses
  %i.l = and i8 %.sroa.01.0.extract.trunc.i, -2
  %switch.i49 = icmp eq i8 %i.l, 6
  br i1 %switch.i49, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110SignColumnEbNS1_24FormatConversionSpecImplE.exit
  %i.m = icmp ne i8 %.sroa.01.0.extract.trunc.i, 17
  %.old = icmp eq i64 %.8.val, %i.c
  %or.cond44 = select i1 %i.m, i1 true, i1 %.old
  br i1 %or.cond44, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_110SignColumnEbNS1_24FormatConversionSpecImplE.exit
  %i.n = and i64 %0, 2048
  %.not.i52 = icmp eq i64 %i.n, 0
  %i.o = icmp eq i64 %.8.val, %i.c
  %or.cond = select i1 %.not.i52, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = icmp eq i8 %.sroa.01.0.extract.trunc.i, 7
  %.str.6..str.7.i = select i1 %i.p, ptr @.str.6, ptr @.str.7
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.sroa.3.0.i = phi ptr [ %.str.6..str.7.i, %bb.f ], [ null, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.q = phi i1 [ false, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  %.sroa.06.0.i = phi i64 [ 2, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ] ; 6 uses
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.06.0.i)
  %i.s = icmp sgt i32 %1, -1                      ; 2 uses
  %narrow = select i1 %i.s, i32 %1, i32 1
  %spec.select45 = zext i32 %narrow to i64        ; 3 uses
  %i.t = and i8 %.sroa.4.0.extract.trunc, 8
  %i.u = icmp ne i8 %i.t, 0
  %i.v = and i64 %0, 255
  %i.w = icmp eq i64 %i.v, 4
  %or.cond47 = and i1 %i.w, %i.u
  br i1 %or.cond47, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit
  %i.x = icmp eq i64 %.8.val, %i.c
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %i.d, align 1, !tbaa !7
  %.not = icmp eq i8 %i.y, 48
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = add i64 %i.e, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %spec.select45)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit
  %.039 = phi i64 [ %.sroa.speculated, %bb.i ], [ %spec.select45, %bb.h ], [ %spec.select45, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS2_9IntDigitsENS1_24FormatConversionSpecImplE.exit ]
  %i.aa = tail call noundef i64 @llvm.usub.sat.i64(i64 %.039, i64 %i.e) ; 4 uses
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 %i.aa)
  %i.ac = select i1 %.inv, i64 0, i64 %i.ab       ; 4 uses
  %i.ad = trunc i64 %.sroa.4.0.extract.shift to i1 ; 3 uses
  %i.ae = select i1 %i.ad, i64 0, i64 %i.ac       ; 5 uses
  %3 = and i8 %.sroa.4.0.extract.trunc, 16
  %.not48 = icmp eq i8 %3, 0
  %or.cond50 = or i1 %i.s, %.not48
  br i1 %or.cond50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %4 = add i64 %i.ae, %i.aa
  %i.af = select i1 %i.ad, i64 %i.ac, i64 0
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = select i1 %i.ad, i64 %i.ac, i64 0       ; 2 uses
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !17
  %i.ak = add i64 %i.aj, %i.ae
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !20 ; 4 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.an, %i.ap                    ; 4 uses
  %i.ar = icmp ugt i64 %i.ae, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = sub nuw nsw i64 %i.ae, %i.aq            ; 3 uses
  %.not.peel.i = icmp eq ptr %i.al, %i.ao
  br i1 %.not.peel.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 32, i64 %i.aq, i1 false)
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq ; 2 uses
  store ptr %i.ax, ptr %i.am, align 8, !tbaa !20
  %.pre.i = ptrtoint ptr %i.ax to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.n ], [ %i.an, %.lr.ph.i ]
  %i.ay = sub i64 %.pre-phi.i, %i.at
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.ba = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.az(ptr noundef %i.ba, i64 %i.ay, ptr nonnull %i.as), !inline_history !32
  store ptr %i.as, ptr %i.am, align 8, !tbaa !20
  %i.bb = icmp samesign ugt i64 %i.av, 1024
  br i1 %i.bb, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.o, %.peel.next.i
  %.010.i = phi i64 [ %i.bc, %.peel.next.i ], [ %i.av, %bb.o ]
  %i.bc = add i64 %.010.i, -1024                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.as, i8 32, i64 1024, i1 false)
  store ptr %i.al, ptr %i.am, align 8, !tbaa !20
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.be = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.bd(ptr noundef %i.be, i64 1024, ptr nonnull %i.as), !inline_history !32
  store ptr %i.as, ptr %i.am, align 8, !tbaa !20
  %i.bf = icmp ugt i64 %i.bc, 1024
  br i1 %i.bf, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.o, %bb.m
  %.0.lcssa.i = phi i64 [ %i.ac, %bb.m ], [ %i.av, %bb.o ], [ %i.bc, %.peel.next.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ao, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 32, i64 %.0.lcssa.i, i1 false)
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.0.lcssa.i
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %bb.k, %bb.l, %._crit_edge.i
  %i.bi = phi i64 [ %i.af, %bb.k ], [ %i.ag, %bb.l ], [ %i.ag, %._crit_edge.i ] ; 5 uses
  %.043 = phi i64 [ %4, %bb.k ], [ %i.aa, %bb.l ], [ %i.aa, %._crit_edge.i ] ; 5 uses
  %i.bj = icmp eq i64 %.sroa.03.0.i, 0
  br i1 %i.bj, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !20 ; 2 uses
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %.not.i53 = icmp ugt i64 %i.bs, 1
  br i1 %.not.i53, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.by = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.bx(ptr noundef %i.by, i64 %i.bv, ptr nonnull %i.bt), !inline_history !23
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !20
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.ca = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.bz(ptr noundef %i.ca, i64 1, ptr %.sroa.5.0.i), !inline_history !24
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.r:                                             ; preds = %bb.p
  %i.cb = load i8, ptr %.sroa.5.0.i, align 1
  store i8 %i.cb, ptr %i.bp, align 1
  %i.cc = load ptr, ptr %i.bo, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store ptr %i.cd, ptr %i.bo, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit, %bb.q, %bb.r
  br i1 %i.q, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit55, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !17
  %i.cg = add i64 %i.cf, %.sroa.06.0.i
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 2 uses
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %.not.i54 = icmp ult i64 %.sroa.06.0.i, %i.cm
  br i1 %.not.i54, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cs = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cp, ptr nonnull %i.cn), !inline_history !23
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !20
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !21
  %i.cu = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.ct(ptr noundef %i.cu, i64 %.sroa.06.0.i, ptr %.sroa.3.0.i), !inline_history !24
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit55

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.sroa.3.0.i, i64 %.sroa.06.0.i, i1 false)
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.06.0.i
  store ptr %i.cw, ptr %i.ci, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit55

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit55: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.t, %bb.u
  %i.cx = icmp eq i64 %.043, 0
  br i1 %i.cx, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65, label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit55
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !17
  %i.da = add i64 %i.cz, %.043
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.dd = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !20 ; 4 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.dd, %i.df                    ; 4 uses
  %i.dh = icmp ugt i64 %.043, %i.dg
  br i1 %i.dh, label %.lr.ph.i59, label %._crit_edge.i56

.lr.ph.i59:                                       ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 8 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dl = sub nuw i64 %.043, %i.dg                ; 3 uses
  %.not.peel.i60 = icmp eq ptr %i.db, %i.de
  br i1 %.not.peel.i60, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i59
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 48, i64 %i.dg, i1 false)
  %i.dm = load ptr, ptr %i.dc, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dg ; 2 uses
  store ptr %i.dn, ptr %i.dc, align 8, !tbaa !20
  %.pre.i61 = ptrtoint ptr %i.dn to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i59
  %.pre-phi.i62 = phi i64 [ %.pre.i61, %bb.w ], [ %i.dd, %.lr.ph.i59 ]
  %i.do = sub i64 %.pre-phi.i62, %i.dj
  %i.dp = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.dq = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.dp(ptr noundef %i.dq, i64 %i.do, ptr nonnull %i.di), !inline_history !32
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !20
  %i.dr = icmp ugt i64 %i.dl, 1024
  br i1 %i.dr, label %.peel.next.i63, label %._crit_edge.i56

.peel.next.i63:                                   ; preds = %bb.x, %.peel.next.i63
  %.010.i64 = phi i64 [ %i.ds, %.peel.next.i63 ], [ %i.dl, %bb.x ]
  %i.ds = add i64 %.010.i64, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.di, i8 48, i64 1024, i1 false)
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !20
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !21
  %i.du = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.dt(ptr noundef %i.du, i64 1024, ptr nonnull %i.di), !inline_history !32
  store ptr %i.di, ptr %i.dc, align 8, !tbaa !20
  %i.dv = icmp ugt i64 %i.ds, 1024
  br i1 %i.dv, label %.peel.next.i63, label %._crit_edge.i56, !llvm.loop !33

._crit_edge.i56:                                  ; preds = %.peel.next.i63, %bb.x, %bb.v
  %.0.lcssa.i57 = phi i64 [ %.043, %bb.v ], [ %i.dl, %bb.x ], [ %i.ds, %.peel.next.i63 ] ; 2 uses
  %.lcssa.i58 = phi ptr [ %i.de, %bb.v ], [ %i.di, %bb.x ], [ %i.di, %.peel.next.i63 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i58, i8 48, i64 %.0.lcssa.i57, i1 false)
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0.lcssa.i57
  store ptr %i.dx, ptr %i.dc, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit55, %._crit_edge.i56
  %i.dy = icmp eq i64 %.8.val, %i.c
  br i1 %i.dy, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit67, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !17
  %i.eb = add i64 %i.ea, %i.e
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 2 uses
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.eh = sub i64 %i.ef, %i.eg
  %.not.i66 = icmp ult i64 %i.e, %i.eh
  br i1 %.not.i66, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = sub i64 %i.eg, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !21
  %i.en = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.em(ptr noundef %i.en, i64 %i.ek, ptr nonnull %i.ei), !inline_history !23
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !20
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !21
  %i.ep = load ptr, ptr %2, align 8, !tbaa !22
  tail call void %i.eo(ptr noundef %i.ep, i64 %i.e, ptr nonnull %i.d), !inline_history !24
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit67

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr nonnull align 1 %i.d, i64 %i.e, i1 false)
  %i.eq = load ptr, ptr %i.ed, align 8, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.e
  store ptr %i.er, ptr %i.ed, align 8, !tbaa !20
  br label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit67

_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit67: ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit65, %bb.z, %bb.aa
  %i.es = icmp eq i64 %i.bi, 0
  br i1 %i.es, label %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendEmc.exit77, label %bb.ab

bb.ab:                                            ; preds = %_ZN4absl12lts_2025051219str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit67
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !17
  %i.ev = add i64 %i.eu, %i.bi
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !17
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.ey = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !20 ; 4 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = sub i64 %i.ey, %i.fa                    ; 4 uses
  %i.fc = icmp ugt i64 %i.bi, %i.fb
  br i1 %i.fc, label %.lr.ph.i71, label %._crit_edge.i68

.lr.ph.i71:                                       ; preds = %bb.ab
end_hunk_0
