inline.NumInlined: 656
inline.NumDeleted: 254
begin_hunk_0_@_ZN4absl19str_format_internal13ConvertIntArgIcEEbT_NS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE:bb.a
bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.val, i64 %i.ak, i1 false)
  %i.bg = load ptr, ptr %i.at, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store ptr %i.bh, ptr %i.at, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.n
  call fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS1_9IntDigitsENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE(ptr %.val, i64 %i.ak, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.r, %bb.q, %bb.o, %bb.c, %bb.d, %bb.s, %bb.l
  %.0 = phi i1 [ %i.ah, %bb.l ], [ true, %bb.d ], [ true, %bb.s ], [ %i.e, %bb.c ], [ true, %bb.o ], [ true, %bb.q ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl19str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %4 = alloca %"struct.absl::strings_internal::ShiftState", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i8 0, ptr %4, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.b, align 1
  %i.c = call noundef i64 @_ZN4absl16strings_internal10WideToUtf8EwPcRNS0_10ShiftStateE(i32 noundef signext %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 1 dereferenceable(2) %4) #11 ; 8 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = load i8, ptr %4, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN4absl19str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %1, 65280
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.c, 0
  br i1 %i.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %i.c
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %.not.i.i = icmp ult i64 %i.c, %i.r
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.q, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %3, align 8
  call void %i.w(ptr noundef %i.x, i64 %i.u, ptr nonnull %i.s) #11, !inline_history !11
  store ptr %i.s, ptr %i.n, align 8
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = load ptr, ptr %3, align 8
  call void %i.y(ptr noundef %i.z, i64 %i.c, ptr nonnull %i.a) #11, !inline_history !12
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.a, i64 %i.c, i1 false)
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.c
  store ptr %i.ab, ptr %i.n, align 8
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE.exit

bb.g:                                             ; preds = %bb.b
  %.sroa.310.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i = trunc nuw i64 %.sroa.310.0.extract.shift.i to i32
  %i.ac = and i64 %1, 256
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = call noundef zeroext i1 @_ZN4absl19str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 %i.c, ptr nonnull %i.a, i32 noundef %.sroa.310.0.extract.trunc.i, i32 noundef %2, i1 noundef zeroext %i.ad) #11
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE.exit

_ZN4absl19str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %i.af = phi i1 [ false, %bb.a ], [ %i.ae, %bb.g ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE(i8 noundef signext %0, i64 %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %spec.select = lshr i64 %i.a, 32
  %i.b = tail call noundef i64 @llvm.usub.sat.i64(i64 %spec.select, i64 1) ; 8 uses
  %i.c = and i64 %1, 256
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  %i.e = icmp slt i64 %1, 8589934592
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %._ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge, label %bb.b

._ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, %i.b
  store i64 %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8              ; 4 uses
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
  %i.t = load ptr, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %i.u, ptr %i.j, align 8
  %.pre.i = ptrtoint ptr %i.u to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.c ], [ %i.k, %.lr.ph.i ]
  %i.v = sub i64 %.pre-phi.i, %i.q
  %i.w = load ptr, ptr %i.r, align 8
  %i.x = load ptr, ptr %2, align 8
  tail call void %i.w(ptr noundef %i.x, i64 %i.v, ptr nonnull %i.p) #11, !inline_history !13
  store ptr %i.p, ptr %i.j, align 8
  %i.y = icmp samesign ugt i64 %i.s, 1024
  br i1 %i.y, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.d, %.peel.next.i
  %.010.i = phi i64 [ %i.z, %.peel.next.i ], [ %i.s, %bb.d ]
  %i.z = add i64 %.010.i, -1024                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.p, i8 32, i64 1024, i1 false)
  store ptr %i.i, ptr %i.j, align 8
  %i.aa = load ptr, ptr %i.r, align 8
  %i.ab = load ptr, ptr %2, align 8
  tail call void %i.aa(ptr noundef %i.ab, i64 1024, ptr nonnull %i.p) #11, !inline_history !13
  store ptr %i.p, ptr %i.j, align 8
  %i.ac = icmp ugt i64 %i.z, 1024
  br i1 %i.ac, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.d, %bb.b
  %.0.lcssa.i = phi i64 [ %i.b, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %.peel.next.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.l, %bb.b ], [ %i.p, %bb.d ], [ %i.p, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 32, i64 %.0.lcssa.i, i1 false)
  %i.ad = load ptr, ptr %i.j, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0.lcssa.i ; 2 uses
  store ptr %i.ae, ptr %i.j, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %._ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge, %._crit_edge.i
  %i.af = phi ptr [ %.pre, %._ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit_crit_edge ], [ %i.ae, %._crit_edge.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 10 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.af
  br i1 %i.am, label %.lr.ph.i6, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit12

.lr.ph.i6:                                        ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %2, align 8
  tail call void %i.ap(ptr noundef %i.aq, i64 1024, ptr nonnull %i.an) #11, !inline_history !13
  store ptr %i.an, ptr %i.ak, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit12

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit12: ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit, %.lr.ph.i6
  %.lcssa.i5 = phi ptr [ %i.af, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit ], [ %i.an, %.lr.ph.i6 ]
  store i8 %0, ptr %.lcssa.i5, align 1
  %i.ar = load ptr, ptr %i.ak, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 5 uses
  store ptr %i.as, ptr %i.ak, align 8
  %i.at = icmp sgt i64 %1, 8589934591
  %or.cond28.not = and i1 %i.at, %i.d
  br i1 %or.cond28.not, label %bb.e, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit22

bb.e:                                             ; preds = %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit12
  %i.au = load i64, ptr %i.ag, align 8
  %i.av = add i64 %i.au, %i.b
  store i64 %i.av, ptr %i.ag, align 8
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
  %i.bd = load ptr, ptr %i.ak, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax ; 2 uses
  store ptr %i.be, ptr %i.ak, align 8
  %.pre.i18 = ptrtoint ptr %i.be to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i16
  %.pre-phi.i19 = phi i64 [ %.pre.i18, %bb.f ], [ %i.al, %.lr.ph.i16 ]
  %i.bf = sub i64 %.pre-phi.i19, %i.ba
  %i.bg = load ptr, ptr %i.bb, align 8
  %i.bh = load ptr, ptr %2, align 8
  tail call void %i.bg(ptr noundef %i.bh, i64 %i.bf, ptr nonnull %i.az) #11, !inline_history !13
  store ptr %i.az, ptr %i.ak, align 8
  %i.bi = icmp samesign ugt i64 %i.bc, 1024
  br i1 %i.bi, label %.peel.next.i20, label %._crit_edge.i13

.peel.next.i20:                                   ; preds = %bb.g, %.peel.next.i20
  %.010.i21 = phi i64 [ %i.bj, %.peel.next.i20 ], [ %i.bc, %bb.g ]
  %i.bj = add i64 %.010.i21, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.az, i8 32, i64 1024, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8
  %i.bk = load ptr, ptr %i.bb, align 8
  %i.bl = load ptr, ptr %2, align 8
  tail call void %i.bk(ptr noundef %i.bl, i64 1024, ptr nonnull %i.az) #11, !inline_history !13
  store ptr %i.az, ptr %i.ak, align 8
  %i.bm = icmp ugt i64 %i.bj, 1024
  br i1 %i.bm, label %.peel.next.i20, label %._crit_edge.i13, !llvm.loop !14

._crit_edge.i13:                                  ; preds = %.peel.next.i20, %bb.g, %bb.e
  %.0.lcssa.i14 = phi i64 [ %i.b, %bb.e ], [ %i.bc, %bb.g ], [ %i.bj, %.peel.next.i20 ] ; 2 uses
  %.lcssa.i15 = phi ptr [ %i.as, %bb.e ], [ %i.az, %bb.g ], [ %i.az, %.peel.next.i20 ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.lcssa.i15, i8 32, i64 %.0.lcssa.i14, i1 false)
  %i.bn = load ptr, ptr %i.ak, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.0.lcssa.i14
  store ptr %i.bo, ptr %i.ak, align 8
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit22

_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit22: ; preds = %._crit_edge.i13, %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit12
  ret void
}

declare noundef zeroext i1 @_ZN4absl19str_format_internal16ConvertFloatImplEdRKNS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE(double noundef, ptr noundef nonnull align 4 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl19str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS1_9IntDigitsENS0_24FormatConversionSpecImplEPNS0_14FormatSinkImplE(ptr %.0.val, i64 %.8.val, i64 %0, i32 %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.sroa.4.0.extract.shift = lshr i64 %0, 8       ; 2 uses
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8 ; 4 uses
  %.sroa.829.0.extract.shift = lshr i64 %0, 32
  %.inv = icmp slt i64 %0, 0
  %i.a = load i8, ptr %.0.val, align 1            ; 2 uses
  %i.b = icmp slt i8 %i.a, 49
  %i.c = zext i1 %i.b to i64                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.c ; 3 uses
  %i.e = sub i64 %.8.val, %i.c                    ; 8 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.829.0.extract.shift, i64 %i.e)
  %i.g = icmp eq i8 %i.a, 45
  %i.h = and i64 %0, 254
  %switch.i = icmp ne i64 %i.h, 2                 ; 3 uses
  %brmerge.i = or i1 %switch.i, %i.g
  %.mux.i = select i1 %switch.i, ptr null, ptr @.str.4
  %not.switch.i = xor i1 %switch.i, true
  %.mux6.i = zext i1 %not.switch.i to i64
  br i1 %brmerge.i, label %_ZN4absl19str_format_internal12_GLOBAL__N_110SignColumnEbNS0_24FormatConversionSpecImplE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i8 %.sroa.4.0.extract.trunc, 2
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.c, label %_ZN4absl19str_format_internal12_GLOBAL__N_110SignColumnEbNS0_24FormatConversionSpecImplE.exit

bb.c:                                             ; preds = %bb.b
  %i.j = and i8 %.sroa.4.0.extract.trunc, 4       ; 2 uses
  %.not4.not.i = icmp eq i8 %i.j, 0
  %spec.select.i = select i1 %.not4.not.i, ptr null, ptr @.str.6
  %.lobit.i = lshr exact i8 %i.j, 2
  %spec.select5.i = zext nneg i8 %.lobit.i to i64
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_110SignColumnEbNS0_24FormatConversionSpecImplE.exit

_ZN4absl19str_format_internal12_GLOBAL__N_110SignColumnEbNS0_24FormatConversionSpecImplE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.5.0.i = phi ptr [ %.mux.i, %bb.a ], [ %spec.select.i, %bb.c ], [ @.str.5, %bb.b ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ %.mux6.i, %bb.a ], [ %spec.select5.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %.sroa.03.0.i)
  %.sroa.01.0.extract.trunc.i = trunc i64 %0 to i8 ; 3 uses
  %i.l = and i8 %.sroa.01.0.extract.trunc.i, -2
  %switch.i49 = icmp eq i8 %i.l, 6
  br i1 %switch.i49, label %bb.d, label %.split.i

.split.i:                                         ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_110SignColumnEbNS0_24FormatConversionSpecImplE.exit
  %i.m = icmp ne i8 %.sroa.01.0.extract.trunc.i, 17
  %.old = icmp eq i64 %.8.val, %i.c
  %or.cond44 = select i1 %i.m, i1 true, i1 %.old
  br i1 %or.cond44, label %_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit, label %bb.e

bb.d:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_110SignColumnEbNS0_24FormatConversionSpecImplE.exit
  %i.n = and i64 %0, 2048
  %.not.i52 = icmp eq i64 %i.n, 0
  %i.o = icmp eq i64 %.8.val, %i.c
  %or.cond = select i1 %.not.i52, i1 true, i1 %i.o
  br i1 %or.cond, label %_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit, label %bb.e

bb.e:                                             ; preds = %.split.i, %bb.d
  %i.p = icmp eq i8 %.sroa.01.0.extract.trunc.i, 7
  %.str.7..str.8.i = select i1 %i.p, ptr @.str.7, ptr @.str.8
  br label %_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit

_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit: ; preds = %.split.i, %bb.d, %bb.e
  %.sroa.3.0.i = phi ptr [ %.str.7..str.8.i, %bb.e ], [ null, %bb.d ], [ null, %.split.i ] ; 2 uses
  %i.q = phi i1 [ false, %bb.e ], [ true, %bb.d ], [ true, %.split.i ]
  %.sroa.06.0.i = phi i64 [ 2, %bb.e ], [ 0, %bb.d ], [ 0, %.split.i ] ; 6 uses
  %i.r = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.06.0.i)
  %i.s = icmp sgt i32 %1, -1                      ; 2 uses
  %narrow = select i1 %i.s, i32 %1, i32 1
  %spec.select45 = zext i32 %narrow to i64        ; 3 uses
  %i.t = and i8 %.sroa.4.0.extract.trunc, 8
  %i.u = icmp ne i8 %i.t, 0
  %i.v = and i64 %0, 255
  %i.w = icmp eq i64 %i.v, 4
  %or.cond47 = and i1 %i.w, %i.u
  br i1 %or.cond47, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit
  %i.x = icmp eq i64 %.8.val, %i.c
  br i1 %i.x, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.y, 48
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = add i64 %i.e, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %spec.select45)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit
  %.039 = phi i64 [ %.sroa.speculated, %bb.h ], [ %spec.select45, %bb.g ], [ %spec.select45, %_ZN4absl19str_format_internal12_GLOBAL__N_113BaseIndicatorERKNS1_9IntDigitsENS0_24FormatConversionSpecImplE.exit ]
  %i.aa = tail call noundef i64 @llvm.usub.sat.i64(i64 %.039, i64 %i.e) ; 4 uses
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %i.r, i64 %i.aa)
  %i.ac = select i1 %.inv, i64 0, i64 %i.ab       ; 4 uses
  %i.ad = trunc i64 %.sroa.4.0.extract.shift to i1 ; 3 uses
  %i.ae = select i1 %i.ad, i64 0, i64 %i.ac       ; 5 uses
  %i.af = and i8 %.sroa.4.0.extract.trunc, 16
  %.not48 = icmp eq i8 %i.af, 0
  %or.cond50 = or i1 %i.s, %.not48
  br i1 %or.cond50, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  %i.ag = add i64 %i.ae, %i.aa
  %i.ah = select i1 %i.ad, i64 %i.ac, i64 0
  br label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit

bb.j:                                             ; preds = %bb.i
  %i.ai = select i1 %i.ad, i64 %i.ac, i64 0       ; 2 uses
  %i.aj = icmp eq i64 %i.ae, 0
  br i1 %i.aj, label %_ZN4absl19str_format_internal14FormatSinkImpl6AppendEmc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = add i64 %i.al, %i.ae
  store i64 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ap, %i.ar                    ; 4 uses
  %i.at = icmp ugt i64 %i.ae, %i.as
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.k
end_hunk_0
