inline.NumInlined: 822
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  store i8 %i.qw, ptr %i.qx, align 1, !tbaa !14
  %i.qy = call i32 @llvm.abs.i32(i32 %.155.i, i1 true)
  %i.qz = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ra = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.qy, ptr noundef nonnull %i.qz) ; 0 uses
  %i.rb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #15
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr noundef nonnull readonly align 8 dereferenceable(32) %11, i64 %i.qt, ptr nonnull %i.a, i64 noundef 2, i64 noundef %.0.i89, i64 %i.rb, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.cy

bb.cy:                                            ; preds = %bb.j, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit, %._crit_edge.i, %bb.cp, %bb.co, %bb.cm, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %.2 = phi i1 [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertNonNumericFloatsIdEEbcT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatFImEEvT_iRKNS2_11FormatStateE.exit ], [ true, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_17FormatEImEEvT_ibRKNS2_11FormatStateE.exit ], [ true, %bb.cm ], [ true, %._crit_edge.i ], [ true, %bb.cp ], [ true, %bb.co ], [ false, %bb.j ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef %2)
  ret i1 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056), i64, ptr, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4absl12lts_202605267uint128C1Ee(ptr noundef nonnull align 16 dereferenceable(16), x86_fp80 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { x86_fp80, i32 } @llvm.frexp.f80.i32(x86_fp80) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateEm(i64 %0, i64 %1, i32 noundef range(i32 -2147483647, -2147483648) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.anon.4, align 8              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = icmp ugt i64 %i.c, %4
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !84 ; 3 uses
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = and i8 %i.f, 8
  %.not81 = icmp eq i8 %i.g, 0
  br i1 %.not81, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %reass.sub = sub i64 %i.c, %4
  %i.h = add i64 %reass.sub, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i1 [ true, %.thread ], [ false, %bb.b ]
  %i.j = phi i64 [ %i.h, %.thread ], [ 1, %bb.b ]
  %i.k = load i8, ptr %3, align 8, !tbaa !26      ; 2 uses
  %.not = icmp ne i8 %i.k, 0
  %i.l = zext i1 %.not to i64
  %i.m = add i64 %i.j, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16, !noalias !85 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = zext nneg i32 %i.o to i64                ; 2 uses
  %.not.i = icmp ult i64 %i.m, %i.q
  br i1 %.not.i, label %bb.e, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i64 %i.q, %i.m               ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.pre.pre, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !9, !noalias !85 ; 2 uses
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = and i8 %i.t, 16
  %.not1.i = icmp eq i8 %i.v, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread: ; preds = %bb.e, %bb.c, %bb.d, %bb.f
  %.sroa.12.0.ph = phi i64 [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.r, %bb.e ]
  %.sroa.7.0.ph = phi i64 [ %i.r, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.e ]
  %i.w = add nuw nsw i64 %.sroa.7.0.ph, 1
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !88
  %i.ac = add i64 %i.ab, %i.r
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1056 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 8 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !92 ; 4 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.af, %i.ah                    ; 4 uses
  %i.aj = icmp ugt i64 %i.r, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 8 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.an = sub nuw nsw i64 %i.r, %i.ai             ; 3 uses
  %.not.peel.i = icmp eq ptr %i.ad, %i.ag
  br i1 %.not.peel.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 32, i64 %i.ai, i1 false)
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ai ; 2 uses
  store ptr %i.ap, ptr %i.ae, align 8, !tbaa !92
  %.pre.i = ptrtoint ptr %i.ap to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.af, %.lr.ph.i ]
  %i.aq = sub i64 %.pre-phi.i, %i.al
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !94
  tail call void %i.ar(ptr noundef %i.as, i64 %i.aq, ptr nonnull %i.ak), !inline_history !95
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !92
  %i.at = icmp samesign ugt i64 %i.an, 1024
  br i1 %i.at, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.h, %.peel.next.i
  %.010.i = phi i64 [ %i.au, %.peel.next.i ], [ %i.an, %bb.h ]
  %i.au = add i64 %.010.i, -1024                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ak, i8 32, i64 1024, i1 false)
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !92
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !93
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !94
  tail call void %i.av(ptr noundef %i.aw, i64 1024, ptr nonnull %i.ak), !inline_history !95
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !92
  %i.ax = icmp ugt i64 %i.au, 1024
  br i1 %i.ax, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.h, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit
  %.0.lcssa.i = phi i64 [ %i.r, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit ], [ %i.an, %bb.h ], [ %i.au, %.peel.next.i ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ag, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit ], [ %i.ak, %bb.h ], [ %i.ak, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i, i8 32, i64 %.0.lcssa.i, i1 false)
  %i.ay = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.0.lcssa.i
  store ptr %i.az, ptr %i.ae, align 8, !tbaa !92
  %.pre = load i8, ptr %3, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, %._crit_edge.i
  %i.ba = phi i8 [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ %.pre, %._crit_edge.i ] ; 2 uses
  %i.bb = phi ptr [ %i.x, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ %i.y, %._crit_edge.i ] ; 5 uses
  %i.bc = phi i64 [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ 1, %._crit_edge.i ] ; 4 uses
  %.sroa.12.080 = phi i64 [ %.sroa.12.0.ph, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ 0, %._crit_edge.i ] ; 5 uses
  %.not23 = icmp eq i8 %i.ba, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !88
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1056
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %.lr.ph.i27, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit33

.lr.ph.i27:                                       ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 32 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !94
  tail call void %i.bn(ptr noundef %i.bo, i64 1024, ptr nonnull %i.bl), !inline_history !95
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit33

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit33: ; preds = %bb.i, %.lr.ph.i27
  %.lcssa.i26 = phi ptr [ %i.bj, %bb.i ], [ %i.bl, %.lr.ph.i27 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i26, i8 %i.ba, i64 1, i1 false)
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !92
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !92
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit33
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !88
  %i.bu = add i64 %i.bt, %i.bc
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1056 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 8 uses
  %i.bx = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !92 ; 4 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = sub i64 %i.bx, %i.bz                    ; 4 uses
  %i.cb = icmp ugt i64 %i.bc, %i.ca
  br i1 %i.cb, label %.lr.ph.i37, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit43

.lr.ph.i37:                                       ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 8 uses
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.cf = sub nuw nsw i64 %i.bc, %i.ca            ; 3 uses
  %.not.peel.i38 = icmp eq ptr %i.bv, %i.by
  br i1 %.not.peel.i38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i37
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.by, i8 48, i64 %i.ca, i1 false)
  %i.cg = load ptr, ptr %i.bw, align 8, !tbaa !92
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca ; 2 uses
  store ptr %i.ch, ptr %i.bw, align 8, !tbaa !92
  %.pre.i39 = ptrtoint ptr %i.ch to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i37
  %.pre-phi.i40 = phi i64 [ %.pre.i39, %bb.k ], [ %i.bx, %.lr.ph.i37 ]
  %i.ci = sub i64 %.pre-phi.i40, %i.cd
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !93
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !94
  tail call void %i.cj(ptr noundef %i.ck, i64 %i.ci, ptr nonnull %i.cc), !inline_history !95
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !92
  %i.cl = icmp samesign ugt i64 %i.cf, 1024
  br i1 %i.cl, label %.peel.next.i41, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit43

.peel.next.i41:                                   ; preds = %bb.l, %.peel.next.i41
  %.010.i42 = phi i64 [ %i.cm, %.peel.next.i41 ], [ %i.cf, %bb.l ]
  %i.cm = add i64 %.010.i42, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cc, i8 48, i64 1024, i1 false)
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !92
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !93
  %i.co = load ptr, ptr %i.br, align 8, !tbaa !94
  tail call void %i.cn(ptr noundef %i.co, i64 1024, ptr nonnull %i.cc), !inline_history !95
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !92
  %i.cp = icmp ugt i64 %i.cm, 1024
  br i1 %i.cp, label %.peel.next.i41, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit43, !llvm.loop !96

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit43: ; preds = %.peel.next.i41, %bb.j, %bb.l
  %.0.lcssa.i35 = phi i64 [ %i.bc, %bb.j ], [ %i.cf, %bb.l ], [ %i.cm, %.peel.next.i41 ] ; 2 uses
  %.lcssa.i36 = phi ptr [ %i.by, %bb.j ], [ %i.cc, %bb.l ], [ %i.cc, %.peel.next.i41 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i36, i8 48, i64 %.0.lcssa.i35, i1 false)
  %i.cq = load ptr, ptr %i.bw, align 8, !tbaa !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.0.lcssa.i35
  store ptr %i.cr, ptr %i.bw, align 8, !tbaa !92
  br i1 %i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit43
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !88
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1056
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 4 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !92 ; 2 uses
  %i.cz = icmp eq ptr %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i47, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit53

.lr.ph.i47:                                       ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !93
  %i.dd = load ptr, ptr %i.cs, align 8, !tbaa !94
  tail call void %i.dc(ptr noundef %i.dd, i64 1024, ptr nonnull %i.da), !inline_history !95
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit53

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit53: ; preds = %bb.m, %.lr.ph.i47
  %.lcssa.i46 = phi ptr [ %i.cy, %bb.m ], [ %i.da, %.lr.ph.i47 ]
  store i8 46, ptr %.lcssa.i46, align 1
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store ptr %i.df, ptr %i.cx, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit53, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !31
  %i.dh = sub i64 %i.dg, %4
  store i64 %i.dh, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %3, ptr %5, align 8, !tbaa !37
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.di, align 8, !tbaa !44
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS3_EEE(i64 %0, i64 %1, i32 noundef %2, ptr nonnull %5, ptr nonnull @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.dj = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 8 uses
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !25  ; 5 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit63, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !88
  %i.do = add i64 %i.dn, %i.dk
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !88
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 1056 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 8 uses
  %i.dr = ptrtoint ptr %i.dp to i64               ; 2 uses
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !92 ; 4 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dr, %i.dt                    ; 4 uses
  %i.dv = icmp ugt i64 %i.dk, %i.du
  br i1 %i.dv, label %.lr.ph.i57, label %._crit_edge.i54

.lr.ph.i57:                                       ; preds = %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 8 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dz = sub nuw i64 %i.dk, %i.du                ; 3 uses
  %.not.peel.i58 = icmp eq ptr %i.dp, %i.ds
  br i1 %.not.peel.i58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i57
  call void @llvm.memset.p0.i64(ptr align 1 %i.ds, i8 48, i64 %i.du, i1 false)
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !92
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.du ; 2 uses
  store ptr %i.eb, ptr %i.dq, align 8, !tbaa !92
  %.pre.i59 = ptrtoint ptr %i.eb to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i57
  %.pre-phi.i60 = phi i64 [ %.pre.i59, %bb.p ], [ %i.dr, %.lr.ph.i57 ]
  %i.ec = sub i64 %.pre-phi.i60, %i.dx
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !93
  %i.ee = load ptr, ptr %i.dj, align 8, !tbaa !94
  call void %i.ed(ptr noundef %i.ee, i64 %i.ec, ptr nonnull %i.dw), !inline_history !95
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !92
  %i.ef = icmp ugt i64 %i.dz, 1024
  br i1 %i.ef, label %.peel.next.i61, label %._crit_edge.i54

.peel.next.i61:                                   ; preds = %bb.q, %.peel.next.i61
  %.010.i62 = phi i64 [ %i.eg, %.peel.next.i61 ], [ %i.dz, %bb.q ]
  %i.eg = add i64 %.010.i62, -1024                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dw, i8 48, i64 1024, i1 false)
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !92
  %i.eh = load ptr, ptr %i.dy, align 8, !tbaa !93
  %i.ei = load ptr, ptr %i.dj, align 8, !tbaa !94
  call void %i.eh(ptr noundef %i.ei, i64 1024, ptr nonnull %i.dw), !inline_history !95
  store ptr %i.dw, ptr %i.dq, align 8, !tbaa !92
  %i.ej = icmp ugt i64 %i.eg, 1024
  br i1 %i.ej, label %.peel.next.i61, label %._crit_edge.i54, !llvm.loop !96

._crit_edge.i54:                                  ; preds = %.peel.next.i61, %bb.q, %bb.o
  %.0.lcssa.i55 = phi i64 [ %i.dk, %bb.o ], [ %i.dz, %bb.q ], [ %i.eg, %.peel.next.i61 ] ; 2 uses
  %.lcssa.i56 = phi ptr [ %i.ds, %bb.o ], [ %i.dw, %bb.q ], [ %i.dw, %.peel.next.i61 ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i56, i8 48, i64 %.0.lcssa.i55, i1 false)
  %i.ek = load ptr, ptr %i.dq, align 8, !tbaa !92
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0.lcssa.i55
  store ptr %i.el, ptr %i.dq, align 8, !tbaa !92
  %.pre89 = load ptr, ptr %i.bb, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit63

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit63: ; preds = %bb.n, %._crit_edge.i54
  %i.em = phi ptr [ %i.dj, %bb.n ], [ %.pre89, %._crit_edge.i54 ] ; 7 uses
  %i.en = icmp eq i64 %.sroa.12.080, 0
  br i1 %i.en, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit73, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit63
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !88
  %i.eq = add i64 %i.ep, %.sroa.12.080
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !88
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 1056 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 24 ; 8 uses
  %i.et = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !92 ; 4 uses
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = sub i64 %i.et, %i.ev                    ; 4 uses
  %i.ex = icmp ugt i64 %.sroa.12.080, %i.ew
  br i1 %i.ex, label %.lr.ph.i67, label %._crit_edge.i64

.lr.ph.i67:                                       ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 8 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.fb = sub nuw nsw i64 %.sroa.12.080, %i.ew    ; 3 uses
  %.not.peel.i68 = icmp eq ptr %i.er, %i.eu
  br i1 %.not.peel.i68, label %bb.t, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm3EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) %i.a, i8 0, i64 1536, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 384), !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm4EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 512), !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110StackArray19RunWithCapacityImplILm5EEEvNS0_11FunctionRefIFvNS0_4SpanIjEEEEE(ptr %0, ptr nofree readonly captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca [640 x i32], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2560) %i.a, i8 0, i64 2560, i1 false)
  call void %1(ptr %0, ptr nonnull %i.a, i64 640), !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS0_7uint128EiNS0_11FunctionRefIFvS5_EEEEUlNS0_4SpanIjEEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr %1, i64 %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 16, !tbaa !25
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 16, !tbaa !99  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !59
  %.sroa.223.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %2, ptr %.sroa.223.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !25
  %i.f = sdiv i32 %i.c, 32
  %i.g = add nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64                     ; 3 uses
  %i.i = add nsw i32 %i.c, 159
  %i.j = sdiv i32 %i.i, 32
  %i.k = mul nsw i32 %i.j, 11
  %i.l = add nsw i32 %i.k, 9
  %i.m = sdiv i32 %i.l, 10
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !107
  %i.p = srem i32 %i.c, 32                        ; 2 uses
  %i.q = zext i64 %.sroa.2.0.copyload.i.i.i.i to i128
  %i.r = shl nuw i128 %i.q, 64
  %i.s = zext i64 %.sroa.0.0.copyload.i.i.i.i to i128 ; 2 uses
  %i.t = or disjoint i128 %i.r, %i.s
  %i.u = zext nneg i32 %i.p to i128
  %i.v = shl i128 %i.s, %i.u
  %i.w = trunc i128 %i.v to i32
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.h
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  store i32 %i.w, ptr %i.y, align 4, !tbaa !56
  %i.z = sub nsw i32 32, %i.p
  %i.aa = zext nneg i32 %i.z to i128
  %i.ab = lshr i128 %i.t, %i.aa                   ; 2 uses
  %i.ac = trunc i128 %i.ab to i64                 ; 2 uses
  %i.ad = lshr i128 %i.ab, 64                     ; 2 uses
  %.not.i41.i.i.i.i.i = icmp ne i64 %i.ac, 0
  %i.ae = icmp ne i128 %i.ad, 0
  %i.af = or i1 %.not.i41.i.i.i.i.i, %i.ae
  br i1 %i.af, label %.lr.ph.preheader.i.i.i.i.i, label %.preheader40.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.ag = trunc nuw nsw i128 %i.ad to i64
  br label %.lr.ph.i.i.i.i.i

.preheader40.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.024.lcssa.i.i.i.i.i = phi i64 [ %i.h, %bb.a ], [ %i.aj, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not47.i.i.i.i.i = icmp eq i64 %.024.lcssa.i.i.i.i.i, 0
  br i1 %.not47.i.i.i.i.i, label %.preheader40._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader40._crit_edge.i.i.i.i.i:                ; preds = %.preheader40.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.n
  %.pre.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !56
  %i.ah = add nsw i64 %i.n, 1
  br label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.02444.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.8.043.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.032.042.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ai = trunc i64 %.sroa.032.042.i.i.i.i.i to i32
  %i.aj = add i64 %.02444.i.i.i.i.i, 1            ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02444.i.i.i.i.i
  store i32 %i.ai, ptr %i.ak, align 4, !tbaa !56
  %i.al = zext nneg i64 %.sroa.8.043.i.i.i.i.i to i128
  %i.am = shl nuw nsw i128 %i.al, 64
  %i.an = zext i64 %.sroa.032.042.i.i.i.i.i to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = lshr i128 %i.ao, 32
  %i.aq = trunc i128 %i.ap to i64                 ; 2 uses
  %i.ar = lshr i64 %.sroa.8.043.i.i.i.i.i, 32     ; 2 uses
  %i.as = or i64 %i.ar, %i.aq
  %.not54.i.i.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not54.i.i.i.i.i, label %.preheader40.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !108

.preheader.i.i.i.i.i:                             ; preds = %.preheader40.i.i.i.i.i, %bb.b
  %i.at = phi i64 [ %i.az, %bb.b ], [ %i.n, %.preheader40.i.i.i.i.i ] ; 2 uses
  %.148.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.b ], [ %.024.lcssa.i.i.i.i.i, %.preheader40.i.i.i.i.i ] ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.au = trunc nuw nsw i64 %i.bj to i32          ; 2 uses
  %i.av = add i64 %.148.i.i.i.i.i, -1             ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56
  %i.ay = icmp eq i32 %i.ax, 0
  %spec.select.i.i.i.i.i = select i1 %i.ay, i64 %i.av, i64 %.148.i.i.i.i.i ; 2 uses
  %i.az = add i64 %i.at, -1                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  store i32 %i.au, ptr %i.ba, align 4, !tbaa !56
  %.not.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !109

bb.c:                                             ; preds = %bb.c, %.preheader.i.i.i.i.i
  %.02546.i.i.i.i.i = phi i64 [ %.148.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.bb, %bb.c ]
  %.02645.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.bj, %bb.c ]
  %i.bb = add i64 %.02546.i.i.i.i.i, -1           ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %.02645.i.i.i.i.i, 32
  %i.bg = or disjoint i64 %i.bf, %i.be            ; 2 uses
  %i.bh = udiv i64 %i.bg, 1000000000
  %i.bi = trunc nuw i64 %i.bh to i32
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !56
  %i.bj = urem i64 %i.bg, 1000000000              ; 2 uses
  %.not28.i.i.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not28.i.i.i.i.i, label %bb.b, label %bb.c, !llvm.loop !110

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %.preheader40._crit_edge.i.i.i.i.i
  %i.bk = phi i32 [ %.pre.i.i.i.i.i, %.preheader40._crit_edge.i.i.i.i.i ], [ %i.au, %bb.b ] ; 2 uses
  %i.bl = phi i64 [ %i.ah, %.preheader40._crit_edge.i.i.i.i.i ], [ %i.at, %bb.b ]
  store i64 %i.bl, ptr %4, align 8, !tbaa !111
  %.not2749.i.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not2749.i.i.i.i.i, label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %.lr.ph52.i.i.i.i.i

.lr.ph52.i.i.i.i.i:                               ; preds = %._crit_edge.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph52.i.i.i.i.i
  %.050.i.i.i.i.i = phi i32 [ %i.bk, %.lr.ph52.i.i.i.i.i ], [ %i.bu, %bb.d ] ; 3 uses
  %i.bn = urem i32 %.050.i.i.i.i.i, 10
  %i.bo = trunc nuw nsw i32 %i.bn to i8
  %i.bp = or disjoint i8 %i.bo, 48
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !103 ; 2 uses
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.d, align 8, !tbaa !103
  %i.bs = sub i64 8, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bs
  store i8 %i.bp, ptr %i.bt, align 1, !tbaa !14
  %i.bu = udiv i32 %.050.i.i.i.i.i, 10
  %.not27.i.i.i.i.i = icmp ult i32 %.050.i.i.i.i.i, 10
  br i1 %.not27.i.i.i.i.i, label %_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit, label %bb.d, !llvm.loop !112

_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13RunConversionENS1_7uint128EiNS1_11FunctionRefIFvS4_EEEEUlNS1_4SpanIjEEE_JSA_EENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit: ; preds = %bb.d, %._crit_edge.i.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %0, align 16, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.bv, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 56, i1 false)
  call void %.val5.i.i.i.i(ptr %.val.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %3), !inline_history !114
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS4_11FormatStateEbE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107
  %i.c = load i64, ptr %2, align 8, !tbaa !111
  %i.d = sub i64 %i.b, %i.c
  %i.e = mul i64 %i.d, 9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !103  ; 8 uses
  %i.h = add i64 %i.e, %i.g
  %i.i = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !117, !align !118 ; 8 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !31 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.k, align 8    ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9
  %i.n = and i8 %i.m, 8
  %.not66.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not66.i.i.i.i, label %bb.b, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i, %bb.a
  %i.o = add i64 %.val3.i.i.i.i, 1
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.thread.i.i.i.i ], [ 0, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit.i.i.i.i ]
  %i.q = add i64 %i.h, %i.p
  %i.r = load i8, ptr %i.i, align 8, !tbaa !26    ; 5 uses
  %.not.i.i.i.i = icmp ne i8 %i.r, 0
  %i.s = zext i1 %.not.i.i.i.i to i64
  %i.t = add i64 %i.q, %i.s                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16, !noalias !119 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = zext nneg i32 %i.v to i64                ; 2 uses
  %.not.i6.i.i.i.i = icmp ult i64 %i.t, %i.x
  br i1 %.not.i6.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = sub nuw nsw i64 %i.x, %i.t               ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val4.i.i.i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !9, !noalias !119 ; 2 uses
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i8 %i.aa, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !88
  %i.ah = add i64 %i.ag, %i.y
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 1056 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 8 uses
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !92 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.ak, %i.am                    ; 4 uses
  %i.ao = icmp ugt i64 %i.y, %i.an
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 8 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = sub nuw nsw i64 %i.y, %i.an             ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.ai, %i.al
  br i1 %.not.peel.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 32, i64 %i.an, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  store ptr %i.au, ptr %i.aj, align 8, !tbaa !92
  %.pre.i.i.i.i.i = ptrtoint ptr %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i.i.i.i ]
  %i.av = sub i64 %.pre-phi.i.i.i.i.i, %i.aq
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !93
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !94
  tail call void %i.aw(ptr noundef %i.ax, i64 %i.av, ptr nonnull %i.ap), !inline_history !122
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !92
  %i.ay = icmp samesign ugt i64 %i.as, 1024
  br i1 %i.ay, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.g, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.az, %.peel.next.i.i.i.i.i ], [ %i.as, %bb.g ]
  %i.az = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 32, i64 1024, i1 false)
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !92
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !93
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !94
  tail call void %i.ba(ptr noundef %i.bb, i64 1024, ptr nonnull %i.ap), !inline_history !122
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !92
  %i.bc = icmp ugt i64 %i.az, 1024
  br i1 %i.bc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !96

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.as, %bb.g ], [ %i.az, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.al, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.ap, %bb.g ], [ %i.ap, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !92
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !115 ; 2 uses
  %.pre74.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.bf = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.r, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %i.bg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.i, %bb.d ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %.sroa.10.065.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.y, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.7.064.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ 0, %bb.d ], [ %i.y, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.not1.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not1.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !88
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1056
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 2 uses
  %i.bp = icmp eq ptr %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph.i10.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

.lr.ph.i10.i.i.i.i:                               ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !94
  tail call void %i.bs(ptr noundef %i.bt, i64 1024, ptr nonnull %i.bq), !inline_history !122
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i: ; preds = %.lr.ph.i10.i.i.i.i, %bb.h
  %.lcssa.i9.i.i.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bq, %.lr.ph.i10.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i9.i.i.i.i, i8 %i.bf, i64 1, i1 false)
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !92
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !92
  %.pre75.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !115
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.bw = phi ptr [ %.pre75.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit16.i.i.i.i ], [ %i.bg, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !33 ; 7 uses
  %i.bz = icmp eq i64 %.sroa.7.064.i.i.i.i, 0
  br i1 %i.bz, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !88
  %i.cc = add i64 %i.cb, %.sroa.7.064.i.i.i.i
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 1056 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 8 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !92 ; 4 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.cf, %i.ch                    ; 4 uses
  %i.cj = icmp ugt i64 %.sroa.7.064.i.i.i.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i20.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.lr.ph.i20.i.i.i.i:                               ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 8 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cn = sub nuw nsw i64 %.sroa.7.064.i.i.i.i, %i.ci ; 3 uses
  %.not.peel.i21.i.i.i.i = icmp eq ptr %i.cd, %i.cg
  br i1 %.not.peel.i21.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i20.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cg, i8 48, i64 %i.ci, i1 false)
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci ; 2 uses
  store ptr %i.cp, ptr %i.ce, align 8, !tbaa !92
  %.pre.i22.i.i.i.i = ptrtoint ptr %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i20.i.i.i.i
  %.pre-phi.i23.i.i.i.i = phi i64 [ %.pre.i22.i.i.i.i, %bb.k ], [ %i.cf, %.lr.ph.i20.i.i.i.i ]
  %i.cq = sub i64 %.pre-phi.i23.i.i.i.i, %i.cl
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !93
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !94
  tail call void %i.cr(ptr noundef %i.cs, i64 %i.cq, ptr nonnull %i.ck), !inline_history !122
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !92
  %i.ct = icmp samesign ugt i64 %i.cn, 1024
  br i1 %i.ct, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i

.peel.next.i24.i.i.i.i:                           ; preds = %bb.l, %.peel.next.i24.i.i.i.i
  %.010.i25.i.i.i.i = phi i64 [ %i.cu, %.peel.next.i24.i.i.i.i ], [ %i.cn, %bb.l ]
  %i.cu = add i64 %.010.i25.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ck, i8 48, i64 1024, i1 false)
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !92
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !93
  %i.cw = load ptr, ptr %i.by, align 8, !tbaa !94
  tail call void %i.cv(ptr noundef %i.cw, i64 1024, ptr nonnull %i.ck), !inline_history !122
  store ptr %i.ck, ptr %i.ce, align 8, !tbaa !92
  %i.cx = icmp ugt i64 %i.cu, 1024
  br i1 %i.cx, label %.peel.next.i24.i.i.i.i, label %._crit_edge.i17.i.i.i.i, !llvm.loop !96

._crit_edge.i17.i.i.i.i:                          ; preds = %.peel.next.i24.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i18.i.i.i.i = phi i64 [ %.sroa.7.064.i.i.i.i, %bb.j ], [ %i.cn, %bb.l ], [ %i.cu, %.peel.next.i24.i.i.i.i ] ; 2 uses
  %.lcssa.i19.i.i.i.i = phi ptr [ %i.cg, %bb.j ], [ %i.ck, %bb.l ], [ %i.ck, %.peel.next.i24.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i19.i.i.i.i, i8 48, i64 %.0.lcssa.i18.i.i.i.i, i1 false)
  %i.cy = load ptr, ptr %i.ce, align 8, !tbaa !92
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.0.lcssa.i18.i.i.i.i
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i: ; preds = %._crit_edge.i17.i.i.i.i, %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !117, !align !118
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !33 ; 7 uses
  %i.dg = sub i64 9, %i.g
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dg ; 2 uses
  %i.di = icmp eq i64 %i.g, 0
  br i1 %i.di, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !88
  %i.dl = add i64 %i.dk, %i.g
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !88
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 1056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !92 ; 2 uses
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %.not.i27.i.i.i.i.peel = icmp ult i64 %i.g, %i.dr
  br i1 %.not.i27.i.i.i.i.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 3 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dq, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !93
  %i.dx = load ptr, ptr %i.df, align 8, !tbaa !94
  tail call void %i.dw(ptr noundef %i.dx, i64 %i.du, ptr nonnull %i.ds), !inline_history !123
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !92
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !93
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !94
  call void %i.dy(ptr noundef %i.dz, i64 %i.g, ptr nonnull %i.dh), !inline_history !124
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dh, i64 %i.g, i1 false)
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !92
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.g
  store ptr %i.eb, ptr %i.dn, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel: ; preds = %bb.o, %bb.n, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit26.i.i.i.i
  %i.ec = load i64, ptr %2, align 8, !tbaa !111   ; 3 uses
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !107
  %.not.i28.i.i.i.i.peel = icmp ult i64 %i.ec, %i.ed
  br i1 %.not.i28.i.i.i.i.peel, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel, label %.loopexit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.ee = add nuw i64 %i.ec, 1
  store i64 %i.ee, ptr %2, align 8, !tbaa !111
  %i.ef = load ptr, ptr %i.db, align 8, !tbaa !125
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.ec
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !56 ; 6 uses
  %i.ei = urem i32 %i.eh, 10
  %i.ej = trunc nuw nsw i32 %i.ei to i8
  %i.ek = or disjoint i8 %i.ej, 48
  store i8 %i.ek, ptr %i.dc, align 8, !tbaa !14
  %i.el = udiv i32 %i.eh, 10000000
  %.lhs.trunc9.i.i.i.i.i.peel = trunc nuw nsw i32 %i.el to i16
  %i.em = urem i16 %.lhs.trunc9.i.i.i.i.i.peel, 10
  %i.en = trunc nuw nsw i16 %i.em to i8
  %i.eo = udiv i32 %i.eh, 100000000
  %.lhs.trunc11.i.i.i.i.i.peel = trunc nuw nsw i32 %i.eo to i8
  %i.ep = urem i8 %.lhs.trunc11.i.i.i.i.i.peel, 10
  %i.eq = insertelement <4 x i32> poison, i32 %i.eh, i64 0
  %i.er = shufflevector <4 x i32> %i.eq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.es = udiv <4 x i32> %i.er, <i32 10000, i32 1000, i32 100, i32 10>
  %i.et = urem <4 x i32> %i.es, splat (i32 10)
  %i.eu = trunc nuw nsw <4 x i32> %i.et to <4 x i8>
  %i.ev = udiv i32 %i.eh, 100000
  %i.ew = udiv i32 %i.eh, 1000000
  %.lhs.trunc.i.i.i.i.i.peel = trunc nuw i32 %i.ev to i16
  %.lhs.trunc7.i.i.i.i.i.peel = trunc nuw nsw i32 %i.ew to i16
  %i.ex = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i.peel, i64 0
  %i.ey = insertelement <2 x i16> %i.ex, i16 %.lhs.trunc.i.i.i.i.i.peel, i64 1
  %i.ez = urem <2 x i16> %i.ey, splat (i16 10)
  %i.fa = insertelement <8 x i8> poison, i8 %i.ep, i64 0
  %i.fb = insertelement <8 x i8> %i.fa, i8 %i.en, i64 1
  %i.fc = shufflevector <4 x i8> %i.eu, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <8 x i8> %i.fb, <8 x i8> %i.fc, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.fe = shufflevector <2 x i16> %i.ez, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ff = trunc <8 x i16> %i.fe to <8 x i8>
  %i.fg = shufflevector <8 x i8> %i.fd, <8 x i8> %i.ff, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.fh = or disjoint <8 x i8> %i.fg, splat (i8 48)
  store <8 x i8> %i.fh, ptr %i.da, align 8, !tbaa !14
  store i64 9, ptr %i.f, align 8, !tbaa !103
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i.peel
  %i.fi = load ptr, ptr %0, align 8, !tbaa !115, !nonnull !117, !align !118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !33 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !88
  %i.fn = add i64 %i.fm, 9
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !88
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1056
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !92 ; 2 uses
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %.not.i27.i.i.i.i = icmp ugt i64 %i.ft, 9
  br i1 %.not.i27.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 32 ; 3 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.fs, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !93
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !94
  call void %i.fy(ptr noundef %i.fz, i64 %i.fw, ptr nonnull %i.fu), !inline_history !123
  store ptr %i.fu, ptr %i.fp, align 8, !tbaa !92
  %i.ga = load ptr, ptr %i.fx, align 8, !tbaa !93
  %i.gb = load ptr, ptr %i.fk, align 8, !tbaa !94
  call void %i.ga(ptr noundef %i.gb, i64 9, ptr nonnull %i.da), !inline_history !124
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fq, ptr noundef nonnull align 8 dereferenceable(9) %i.da, i64 9, i1 false)
  %i.gc = load ptr, ptr %i.fp, align 8, !tbaa !92
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  store ptr %i.gd, ptr %i.fp, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.r, %bb.q
  %i.ge = load i64, ptr %2, align 8, !tbaa !111   ; 3 uses
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !107
  %.not.i28.i.i.i.i = icmp ult i64 %i.ge, %i.gf
  br i1 %.not.i28.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i, label %.loopexit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.gg = add nuw i64 %i.ge, 1
  store i64 %i.gg, ptr %2, align 8, !tbaa !111
  %i.gh = load ptr, ptr %i.db, align 8, !tbaa !125
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ge
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !56 ; 6 uses
  %i.gk = urem i32 %i.gj, 10
  %i.gl = trunc nuw nsw i32 %i.gk to i8
  %i.gm = or disjoint i8 %i.gl, 48
  store i8 %i.gm, ptr %i.dc, align 8, !tbaa !14
  %i.gn = udiv i32 %i.gj, 10000000
  %.lhs.trunc9.i.i.i.i.i = trunc nuw nsw i32 %i.gn to i16
  %i.go = urem i16 %.lhs.trunc9.i.i.i.i.i, 10
  %i.gp = trunc nuw nsw i16 %i.go to i8
  %i.gq = udiv i32 %i.gj, 100000000
  %.lhs.trunc11.i.i.i.i.i = trunc nuw nsw i32 %i.gq to i8
  %i.gr = urem i8 %.lhs.trunc11.i.i.i.i.i, 10
  %i.gs = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.gt = shufflevector <4 x i32> %i.gs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gu = udiv <4 x i32> %i.gt, <i32 10000, i32 1000, i32 100, i32 10>
  %i.gv = urem <4 x i32> %i.gu, splat (i32 10)
  %i.gw = trunc nuw nsw <4 x i32> %i.gv to <4 x i8>
  %i.gx = udiv i32 %i.gj, 100000
  %i.gy = udiv i32 %i.gj, 1000000
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.gx to i16
  %.lhs.trunc7.i.i.i.i.i = trunc nuw nsw i32 %i.gy to i16
  %i.gz = insertelement <2 x i16> poison, i16 %.lhs.trunc7.i.i.i.i.i, i64 0
  %i.ha = insertelement <2 x i16> %i.gz, i16 %.lhs.trunc.i.i.i.i.i, i64 1
  %i.hb = urem <2 x i16> %i.ha, splat (i16 10)
  %i.hc = insertelement <8 x i8> poison, i8 %i.gr, i64 0
  %i.hd = insertelement <8 x i8> %i.hc, i8 %i.gp, i64 1
  %i.he = shufflevector <4 x i8> %i.gw, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = shufflevector <8 x i8> %i.hd, <8 x i8> %i.he, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 10, i32 11>
  %i.hg = shufflevector <2 x i16> %i.hb, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hh = trunc <8 x i16> %i.hg to <8 x i8>
  %i.hi = shufflevector <8 x i8> %i.hf, <8 x i8> %i.hh, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 7>
  %i.hj = or disjoint <8 x i8> %i.hi, splat (i8 48)
  store <8 x i8> %i.hj, ptr %i.da, align 8, !tbaa !14
  store i64 9, ptr %i.f, align 8, !tbaa !103
  br label %bb.p, !llvm.loop !126

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i.peel
  %i.hk = load ptr, ptr %0, align 8, !tbaa !115   ; 5 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i.i.i.i = load i64, ptr %i.hl, align 8, !tbaa !31
  %.not.i29.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i: ; preds = %.loopexit
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %.val2.i.i.i.i = load ptr, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 1
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9
  %i.hp = and i8 %i.ho, 8
  %.not67.i.i.i.i = icmp eq i8 %i.hp, 0
  br i1 %.not67.i.i.i.i, label %bb.t, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i, %.loopexit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !127, !nonnull !117
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !35, !range !128, !noundef !117
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !33 ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !88
  %i.hy = add i64 %i.hx, 1
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !88
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 1056
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 4 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !92 ; 2 uses
  %i.ic = icmp eq ptr %i.hz, %i.ib
  br i1 %i.ic, label %.lr.ph.i34.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

.lr.ph.i34.i.i.i.i:                               ; preds = %bb.s
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !93
  %i.ig = load ptr, ptr %i.hv, align 8, !tbaa !94
  call void %i.if(ptr noundef %i.ig, i64 1024, ptr nonnull %i.id), !inline_history !122
  store ptr %i.id, ptr %i.ia, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i: ; preds = %.lr.ph.i34.i.i.i.i, %bb.s
  %.lcssa.i33.i.i.i.i = phi ptr [ %i.ib, %bb.s ], [ %i.id, %.lr.ph.i34.i.i.i.i ]
  store i8 46, ptr %.lcssa.i33.i.i.i.i, align 1
  %i.ih = load ptr, ptr %i.ia, align 8, !tbaa !92
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store ptr %i.ii, ptr %i.ia, align 8, !tbaa !92
  %.pre77.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !115
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i
  %.pre77.i.i.i.i = phi ptr [ %.pre77.pre.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit40.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.thread.i.i.i.i ], [ %i.hk, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_111FormatState14ShouldPrintDotEv.exit30.i.i.i.i ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !127, !nonnull !117
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !35, !range !128, !noundef !117
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit50.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.in = getelementptr inbounds nuw i8, ptr %.pre77.i.i.i.i, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !33 ; 7 uses
end_hunk_1
begin_hunk_2_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %.not81.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not81.i.i.i.i, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i8, ptr %1, align 8, !tbaa !14
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !25
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.preheader.i.i.i
  %.lcssa7786.i.i.i.i = phi i64 [ %.val20.i.i.i.i, %bb.m ], [ %.sroa.3.0.copyload.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 10 uses
  %i.h = phi i64 [ %i.gw, %bb.m ], [ %i.g, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %storemerge.lcssa.i7982.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.m ], [ %.sroa.03.0.copyload.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 5 uses
  %.not.i.i.i.i.i = icmp ne i8 %storemerge.lcssa.i7982.i.i.i.i, 0
  %i.i = icmp ne i64 %.lcssa7786.i.i.i.i, 0
  %i.j = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.i
  br i1 %i.j, label %bb.b, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.lcssa7786.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %bb.b
  %xtraiter = and i64 %.lcssa7786.i.i.i.i, 1
  %i.k = icmp eq i64 %.lcssa7786.i.i.i.i, 1
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.preheader.new:             ; preds = %.preheader.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.lcssa7786.i.i.i.i, -2
  br label %.preheader.i.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.epil.preheader:            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.epil.init = phi i64 [ %.lcssa7786.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ah, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %.0610.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %i.ao, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod76 = trunc i64 %.lcssa7786.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.l = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i.epil.init
  %i.m = getelementptr i8, ptr %i.l, i64 -4       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !56
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, 10
  %i.q = add nuw nsw i64 %i.p, %.0610.i.i.i.i.i.i.epil.init ; 2 uses
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.m, align 4, !tbaa !56
  %i.s = lshr i64 %i.q, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.i.epil.preheader
  %.lcssa64 = phi i64 [ %i.ao, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa ], [ %i.s, %.preheader.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.t = trunc nuw nsw i64 %.lcssa64 to i8
  %i.u = add i64 %.lcssa7786.i.i.i.i, -1          ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56
  %i.x = icmp eq i32 %i.w, 0
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.u, i64 %.lcssa7786.i.i.i.i ; 3 uses
  %i.y = icmp eq i64 %.lcssa64, 9
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i = phi i64 [ %.lcssa7786.i.i.i.i, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ah, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0610.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %i.ao, %.preheader.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i ]
  %i.z = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 -4      ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, 10
  %i.ae = add nuw nsw i64 %i.ad, %.0610.i.i.i.i.i.i ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !56
  %i.ag = lshr i64 %i.ae, 32
  %i.ah = add i64 %.011.i.i.i.i.i.i, -2           ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !56
  %i.ak = zext i32 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, 10
  %i.am = add nuw nsw i64 %i.al, %i.ag            ; 2 uses
  %i.an = trunc i64 %i.am to i32
  store i32 %i.an, ptr %i.ai, align 4, !tbaa !56
  %i.ao = lshr i64 %i.am, 32                      ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i, !llvm.loop !132

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.ap = phi i64 [ %spec.select92.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ] ; 2 uses
  %i.aq = phi i64 [ %spec.select93.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i.i.i.i.i = phi i64 [ %i.ar, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i ], [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ]
  %i.ar = add i64 %.sroa.2.010.i.i.i.i.i, 1       ; 3 uses
  %.not.i2.i.i.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i2.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i, label %.preheader.i3.i.i.i.i.i.preheader

.preheader.i3.i.i.i.i.i.preheader:                ; preds = %.lr.ph.i.i.i.i.i
  %xtraiter77 = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.aq, 1
  br i1 %i.as, label %.preheader.i3.i.i.i.i.i.epil.preheader, label %.preheader.i3.i.i.i.i.i.preheader.new

.preheader.i3.i.i.i.i.i.preheader.new:            ; preds = %.preheader.i3.i.i.i.i.i.preheader
  %unroll_iter81 = and i64 %i.aq, -2
  br label %.preheader.i3.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i.i.i.i.i
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i, label %.preheader.i3.i.i.i.i.i.epil.preheader

.preheader.i3.i.i.i.i.i.epil.preheader:           ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.preheader
  %.011.i4.i.i.i.i.i.epil.init = phi i64 [ %i.aq, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bo, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %.0610.i5.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader ], [ %i.bv, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod80 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.at = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i.epil.init
  %i.au = getelementptr i8, ptr %i.at, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !56
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.aw, 10
  %i.ay = add nuw nsw i64 %i.ax, %.0610.i5.i.i.i.i.i.epil.init ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.au, align 4, !tbaa !56
  %i.ba = lshr i64 %i.ay, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, %.preheader.i3.i.i.i.i.i.epil.preheader
  %.lcssa65 = phi i64 [ %i.bv, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa ], [ %i.ba, %.preheader.i3.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.bb = add i64 %i.aq, -1                       ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %spec.select92.i.i.i.i = select i1 %i.be, i64 %i.bb, i64 %i.ap ; 2 uses
  %spec.select93.i.i.i.i = select i1 %i.be, i64 %i.bb, i64 %i.aq
  %i.bf = icmp eq i64 %.lcssa65, 9
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !139

.preheader.i3.i.i.i.i.i:                          ; preds = %.preheader.i3.i.i.i.i.i, %.preheader.i3.i.i.i.i.i.preheader.new
  %.011.i4.i.i.i.i.i = phi i64 [ %i.aq, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bo, %.preheader.i3.i.i.i.i.i ] ; 2 uses
  %.0610.i5.i.i.i.i.i = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %i.bv, %.preheader.i3.i.i.i.i.i ]
  %niter82 = phi i64 [ 0, %.preheader.i3.i.i.i.i.i.preheader.new ], [ %niter82.next.1, %.preheader.i3.i.i.i.i.i ]
  %i.bg = getelementptr [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %.011.i4.i.i.i.i.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul nuw nsw i64 %i.bj, 10
  %i.bl = add nuw nsw i64 %i.bk, %.0610.i5.i.i.i.i.i ; 2 uses
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !56
  %i.bn = lshr i64 %i.bl, 32
  %i.bo = add i64 %.011.i4.i.i.i.i.i, -2          ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !56
  %i.br = zext i32 %i.bq to i64
  %i.bs = mul nuw nsw i64 %i.br, 10
  %i.bt = add nuw nsw i64 %i.bs, %i.bn            ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  store i32 %i.bu, ptr %i.bp, align 4, !tbaa !56
  %i.bv = lshr i64 %i.bt, 32                      ; 3 uses
  %niter82.next.1 = add nuw i64 %niter82, 2       ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i.unr-lcssa, label %.preheader.i3.i.i.i.i.i, !llvm.loop !132

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i.i.i.i.i
  %i.bw = trunc nuw nsw i64 %.lcssa65 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i, %bb.b
  %.val20.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %bb.b ], [ %spec.select92.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %storemerge.lcssa.i.i.i.i.i = phi i8 [ %i.t, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %bb.b ], [ %i.bw, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.sroa.2.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i.i.i.i.i ], [ 0, %bb.b ], [ %i.ar, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.loopexit.split.loop.exit.i.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %i.bx = add i64 %.sroa.2.0.lcssa.i.i.i.i.i, 1   ; 3 uses
  %.not62.i.i.i.i = icmp ult i64 %i.bx, %i.h
  br i1 %.not62.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %i.by = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !117, !align !118
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33 ; 6 uses
  %i.cb = add i8 %storemerge.lcssa.i7982.i.i.i.i, 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !88
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 1056
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !92 ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.i23.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %bb.c
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !93
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !94
  tail call void %i.cl(ptr noundef %i.cm, i64 1024, ptr nonnull %i.cj), !inline_history !140
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %.lr.ph.i23.i.i.i.i, %bb.c
  %.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %bb.c ], [ %i.cj, %.lr.ph.i23.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i.i.i.i.i, i8 %i.cb, i64 1, i1 false)
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !92
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.cg, align 8, !tbaa !92
  %i.cp = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !117, !align !118
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !33 ; 7 uses
  %i.cs = icmp eq i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  br i1 %i.cs, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !88
  %i.cv = add i64 %i.cu, %.sroa.2.0.lcssa.i.i.i.i.i
  store i64 %i.cv, ptr %i.ct, align 8, !tbaa !88
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 1056 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 8 uses
  %i.cy = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !92 ; 4 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.cy, %i.da                    ; 4 uses
  %i.dc = icmp ugt i64 %.sroa.2.0.lcssa.i.i.i.i.i, %i.db
  br i1 %i.dc, label %.lr.ph.i26.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i26.i.i.i.i:                               ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 8 uses
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.2.0.lcssa.i.i.i.i.i, %i.db ; 3 uses
  %.not.peel.i27.i.i.i.i = icmp eq ptr %i.cw, %i.cz
  br i1 %.not.peel.i27.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i26.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cz, i8 57, i64 %i.db, i1 false)
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.db ; 2 uses
  store ptr %i.di, ptr %i.cx, align 8, !tbaa !92
  %.pre.i28.i.i.i.i = ptrtoint ptr %i.di to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i26.i.i.i.i
  %.pre-phi.i29.i.i.i.i = phi i64 [ %.pre.i28.i.i.i.i, %bb.e ], [ %i.cy, %.lr.ph.i26.i.i.i.i ]
  %i.dj = sub i64 %.pre-phi.i29.i.i.i.i, %i.de
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !93
  %i.dl = load ptr, ptr %i.cr, align 8, !tbaa !94
  tail call void %i.dk(ptr noundef %i.dl, i64 %i.dj, ptr nonnull %i.dd), !inline_history !140
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !92
  %i.dm = icmp ugt i64 %i.dg, 1024
  br i1 %i.dm, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.f, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.dn, %.peel.next.i.i.i.i.i ], [ %i.dg, %bb.f ]
  %i.dn = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dd, i8 57, i64 1024, i1 false)
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !92
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !93
  %i.dp = load ptr, ptr %i.cr, align 8, !tbaa !94
  tail call void %i.do(ptr noundef %i.dp, i64 1024, ptr nonnull %i.dd), !inline_history !140
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !92
  %i.dq = icmp ugt i64 %i.dn, 1024
  br i1 %i.dq, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !96

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.f, %bb.d
  %.0.lcssa.i24.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i.i.i.i.i, %bb.d ], [ %i.dg, %bb.f ], [ %i.dn, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i25.i.i.i.i = phi ptr [ %i.cz, %bb.d ], [ %i.dd, %bb.f ], [ %i.dd, %.peel.next.i.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i25.i.i.i.i, i8 57, i64 %.0.lcssa.i24.i.i.i.i, i1 false)
  %i.dr = load ptr, ptr %i.cx, align 8, !tbaa !92
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.0.lcssa.i24.i.i.i.i
  store ptr %i.ds, ptr %i.cx, align 8, !tbaa !92
  br label %bb.m

bb.g:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit.i.i.i.i
  %i.dt = icmp ugt i64 %i.bx, %i.h
  %i.du = icmp sgt i8 %storemerge.lcssa.i.i.i.i.i, 5
  %or.cond.i.i.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i.i.i, label %.critedge17.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i: ; preds = %bb.g
  %i.dv = icmp eq i8 %storemerge.lcssa.i.i.i.i.i, 5 ; 2 uses
  %i.dw = icmp ne i64 %.val20.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.critedge17.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i
  %.not.i31.i.i.i.i = icmp eq i64 %.val20.i.i.i.i, 0
  %i.dx = select i1 %i.dv, i1 %.not.i31.i.i.i.i, i1 false
  br i1 %i.dx, label %bb.i, label %.critedge15.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %.not13.i.i.i.i = icmp ne i64 %.sroa.2.0.lcssa.i.i.i.i.i, 0
  %i.dy = and i8 %storemerge.lcssa.i7982.i.i.i.i, -127
  %i.dz = icmp eq i8 %i.dy, 1
  %i.ea = or i1 %i.dz, %.not13.i.i.i.i
  br i1 %i.ea, label %.critedge17.i.i.i.i, label %.critedge15.i.i.i.i

.critedge17.i.i.i.i:                              ; preds = %bb.i, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit.i.i.i.i, %bb.g
  %i.eb = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !117, !align !118
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 6 uses
  %i.ee = add i8 %storemerge.lcssa.i7982.i.i.i.i, 49
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !88
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !88
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1056
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !92 ; 2 uses
  %i.el = icmp eq ptr %i.ei, %i.ek
  br i1 %i.el, label %.lr.ph.i35.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i

.lr.ph.i35.i.i.i.i:                               ; preds = %.critedge17.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !93
  %i.ep = load ptr, ptr %i.ed, align 8, !tbaa !94
  tail call void %i.eo(ptr noundef %i.ep, i64 1024, ptr nonnull %i.em), !inline_history !140
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i: ; preds = %.lr.ph.i35.i.i.i.i, %.critedge17.i.i.i.i
  %.lcssa.i34.i.i.i.i = phi ptr [ %i.ek, %.critedge17.i.i.i.i ], [ %i.em, %.lr.ph.i35.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i34.i.i.i.i, i8 %i.ee, i64 1, i1 false)
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !92
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1
  store ptr %i.er, ptr %i.ej, align 8, !tbaa !92
  %i.es = load ptr, ptr %i.e, align 8, !tbaa !138, !nonnull !117, !align !118 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !25
  %i.eu = add i64 %i.et, -1
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !25
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

.critedge15.i.i.i.i:                              ; preds = %bb.i, %bb.h
  %i.ev = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !117, !align !118
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !33 ; 6 uses
  %i.ey = add i8 %storemerge.lcssa.i7982.i.i.i.i, 48
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !88
  %i.fb = add i64 %i.fa, 1
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !88
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 1056
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 24 ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !92 ; 2 uses
  %i.ff = icmp eq ptr %i.fc, %i.fe
  br i1 %i.ff, label %.lr.ph.i45.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i

.lr.ph.i45.i.i.i.i:                               ; preds = %.critedge15.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !93
  %i.fj = load ptr, ptr %i.ex, align 8, !tbaa !94
  tail call void %i.fi(ptr noundef %i.fj, i64 1024, ptr nonnull %i.fg), !inline_history !140
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i: ; preds = %.lr.ph.i45.i.i.i.i, %.critedge15.i.i.i.i
  %.lcssa.i44.i.i.i.i = phi ptr [ %i.fe, %.critedge15.i.i.i.i ], [ %i.fg, %.lr.ph.i45.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i44.i.i.i.i, i8 %i.ey, i64 1, i1 false)
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !92
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !92
  %i.fm = load ptr, ptr %0, align 8, !tbaa !136, !nonnull !117, !align !118
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !33 ; 7 uses
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !138, !nonnull !117, !align !118 ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !25
  %i.fr = add i64 %i.fq, -1                       ; 5 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !88
  %i.fv = add i64 %i.fu, %i.fr
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !88
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 1056 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 24 ; 8 uses
  %i.fy = ptrtoint ptr %i.fw to i64               ; 2 uses
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !92 ; 4 uses
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.fy, %i.ga                    ; 4 uses
  %i.gc = icmp ugt i64 %i.fr, %i.gb
  br i1 %i.gc, label %.lr.ph.i55.i.i.i.i, label %._crit_edge.i52.i.i.i.i

.lr.ph.i55.i.i.i.i:                               ; preds = %bb.j
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 32 ; 8 uses
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gg = sub nuw i64 %i.fr, %i.gb                ; 3 uses
  %.not.peel.i56.i.i.i.i = icmp eq ptr %i.fw, %i.fz
  br i1 %.not.peel.i56.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i55.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fz, i8 57, i64 %i.gb, i1 false)
  %i.gh = load ptr, ptr %i.fx, align 8, !tbaa !92
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gb ; 2 uses
  store ptr %i.gi, ptr %i.fx, align 8, !tbaa !92
  %.pre.i57.i.i.i.i = ptrtoint ptr %i.gi to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i55.i.i.i.i
  %.pre-phi.i58.i.i.i.i = phi i64 [ %.pre.i57.i.i.i.i, %bb.k ], [ %i.fy, %.lr.ph.i55.i.i.i.i ]
  %i.gj = sub i64 %.pre-phi.i58.i.i.i.i, %i.ge
  %i.gk = load ptr, ptr %i.gf, align 8, !tbaa !93
  %i.gl = load ptr, ptr %i.fo, align 8, !tbaa !94
  tail call void %i.gk(ptr noundef %i.gl, i64 %i.gj, ptr nonnull %i.gd), !inline_history !140
  store ptr %i.gd, ptr %i.fx, align 8, !tbaa !92
  %i.gm = icmp ugt i64 %i.gg, 1024
  br i1 %i.gm, label %.peel.next.i59.i.i.i.i, label %._crit_edge.i52.i.i.i.i

.peel.next.i59.i.i.i.i:                           ; preds = %bb.l, %.peel.next.i59.i.i.i.i
  %.010.i60.i.i.i.i = phi i64 [ %i.gn, %.peel.next.i59.i.i.i.i ], [ %i.gg, %bb.l ]
  %i.gn = add i64 %.010.i60.i.i.i.i, -1024        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.gd, i8 57, i64 1024, i1 false)
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !92
  %i.go = load ptr, ptr %i.gf, align 8, !tbaa !93
  %i.gp = load ptr, ptr %i.fo, align 8, !tbaa !94
  tail call void %i.go(ptr noundef %i.gp, i64 1024, ptr nonnull %i.gd), !inline_history !140
  store ptr %i.gd, ptr %i.fx, align 8, !tbaa !92
  %i.gq = icmp ugt i64 %i.gn, 1024
  br i1 %i.gq, label %.peel.next.i59.i.i.i.i, label %._crit_edge.i52.i.i.i.i, !llvm.loop !96

._crit_edge.i52.i.i.i.i:                          ; preds = %.peel.next.i59.i.i.i.i, %bb.l, %bb.j
  %.0.lcssa.i53.i.i.i.i = phi i64 [ %i.fr, %bb.j ], [ %i.gg, %bb.l ], [ %i.gn, %.peel.next.i59.i.i.i.i ] ; 2 uses
  %.lcssa.i54.i.i.i.i = phi ptr [ %i.fz, %bb.j ], [ %i.gd, %bb.l ], [ %i.gd, %.peel.next.i59.i.i.i.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i54.i.i.i.i, i8 57, i64 %.0.lcssa.i53.i.i.i.i, i1 false)
  %i.gr = load ptr, ptr %i.fx, align 8, !tbaa !92
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.0.lcssa.i53.i.i.i.i
  store ptr %i.gs, ptr %i.fx, align 8, !tbaa !92
  %.pre.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !138
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i: ; preds = %._crit_edge.i52.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i
  %i.gt = phi ptr [ %i.fp, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit51.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i52.i.i.i.i ]
  store i64 0, ptr %i.gt, align 8, !tbaa !25
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.gu = load ptr, ptr %i.e, align 8, !tbaa !138, !nonnull !117, !align !118 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !25
  %i.gw = sub i64 %i.gv, %i.bx                    ; 3 uses
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !25
  %.not.i.i.i.i = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i.i.i, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %.lr.ph.i.i.i.i

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS1_7uint128EiRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.m, %bb.a, %.preheader.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit41.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit61.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_125PrintFractionalDigitsFastENS0_7uint128EPcim(i64 %0, i64 %1, ptr nofree noundef nonnull captures(ret: address, provenance) %2, i32 noundef range(i32 1, -2147483648) %3, i64 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = sub nsw i32 128, %3
  %i.b = zext i64 %1 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %0 to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = zext nneg i32 %i.a to i128
  %i.g = shl i128 %i.e, %i.f                      ; 2 uses
  %i.h = trunc i128 %i.g to i64                   ; 2 uses
  %i.i = lshr i128 %i.g, 64
  %i.j = trunc nuw i128 %i.i to i64               ; 2 uses
  %i.k = icmp ne i64 %4, 0
  %i.l = icmp ne i64 %i.h, 0                      ; 2 uses
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph, label %.preheader34

.preheader34:                                     ; preds = %.lr.ph, %bb.a
  %.032.lcssa = phi i64 [ %i.j, %bb.a ], [ %i.u, %.lr.ph ] ; 2 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %.015.lcssa = phi i64 [ %4, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.lcssa39 = phi i1 [ %i.l, %bb.a ], [ %i.aa, %.lr.ph ]
  %.not47 = icmp eq i64 %.015.lcssa, 0
  br i1 %.not47, label %._crit_edge, label %.lr.ph51

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.01543 = phi i64 [ %i.y, %.lr.ph ], [ %4, %bb.a ]
  %.01642 = phi ptr [ %i.x, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.041 = phi i64 [ %i.p, %.lr.ph ], [ %i.h, %bb.a ]
  %.03240 = phi i64 [ %i.u, %.lr.ph ], [ %i.j, %bb.a ]
  %i.n = zext i64 %.041 to i128
  %i.o = mul nuw nsw i128 %i.n, 10                ; 2 uses
  %i.p = trunc i128 %i.o to i64                   ; 2 uses
  %i.q = lshr i128 %i.o, 64
  %i.r = zext i64 %.03240 to i128
  %i.s = mul nuw nsw i128 %i.r, 10
  %i.t = add nuw nsw i128 %i.q, %i.s              ; 2 uses
  %i.u = trunc i128 %i.t to i64                   ; 2 uses
  %i.v = lshr i128 %i.t, 64
  %.tr.i.i19 = trunc nuw nsw i128 %i.v to i8
  %i.w = add nuw nsw i8 %.tr.i.i19, 48
  %i.x = getelementptr inbounds nuw i8, ptr %.01642, i64 1 ; 2 uses
  store i8 %i.w, ptr %.01642, align 1, !tbaa !14
  %i.y = add i64 %.01543, -1                      ; 3 uses
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = icmp ne i64 %i.p, 0                     ; 2 uses
  %i.ab = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %i.ab, label %.lr.ph, label %.preheader34, !llvm.loop !141

.lr.ph51:                                         ; preds = %.preheader34, %bb.b
  %.150 = phi i64 [ %i.ai, %bb.b ], [ %.015.lcssa, %.preheader34 ]
  %.11749 = phi ptr [ %i.ah, %bb.b ], [ %.016.lcssa, %.preheader34 ] ; 3 uses
  %.13348 = phi i64 [ %i.ae, %bb.b ], [ %.032.lcssa, %.preheader34 ] ; 2 uses
  %.not18 = icmp eq i64 %.13348, 0
  br i1 %.not18, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph51
  %i.ac = zext i64 %.13348 to i128
  %i.ad = mul nuw nsw i128 %i.ac, 10              ; 2 uses
  %i.ae = trunc i128 %i.ad to i64                 ; 2 uses
  %i.af = lshr i128 %i.ad, 64
  %.tr.i.i20 = trunc nuw nsw i128 %i.af to i8
  %i.ag = or disjoint i8 %.tr.i.i20, 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.11749, i64 1 ; 2 uses
  store i8 %i.ag, ptr %.11749, align 1, !tbaa !14
  %i.ai = add i64 %.150, -1                       ; 2 uses
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph51, !llvm.loop !142

._crit_edge:                                      ; preds = %bb.b, %.preheader34
  %.133.lcssa = phi i64 [ %.032.lcssa, %.preheader34 ], [ %i.ae, %bb.b ] ; 2 uses
  %.117.lcssa = phi ptr [ %.016.lcssa, %.preheader34 ], [ %i.ah, %bb.b ] ; 5 uses
  %i.aj = icmp sgt i64 %.133.lcssa, -1
  br i1 %i.aj, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ak = icmp ne i64 %.133.lcssa, -9223372036854775808
  %or.cond = select i1 %i.ak, i1 true, i1 %.lcssa39
  br i1 %or.cond, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c, %.preheader.backedge
  %.117.pn = phi ptr [ %.0.i, %.preheader.backedge ], [ %.117.lcssa, %bb.c ]
  %.0.i = getelementptr inbounds i8, ptr %.117.pn, i64 -1 ; 4 uses
  %i.al = load i8, ptr %.0.i, align 1, !tbaa !14  ; 2 uses
  switch i8 %i.al, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split [
    i8 57, label %bb.d
    i8 46, label %.preheader.backedge
  ]

bb.d:                                             ; preds = %.preheader
  store i8 48, ptr %.0.i, align 1, !tbaa !14
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.d, %.preheader
  br label %.preheader, !llvm.loop !55

bb.e:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds i8, ptr %.117.lcssa, i64 -1 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ao = icmp eq i8 %i.an, 46
  %spec.select.idx.i = sext i1 %i.ao to i64
  %spec.select.i = getelementptr inbounds i8, ptr %i.am, i64 %spec.select.idx.i ; 2 uses
  %i.ap = load i8, ptr %spec.select.i, align 1, !tbaa !14 ; 2 uses
  %i.aq = and i8 %i.ap, -127
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %.preheader.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %i.as = phi i8 [ %.pr.i, %bb.g ], [ %i.ap, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.at, %bb.g ], [ %spec.select.i, %bb.e ] ; 3 uses
  switch i8 %i.as, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split [
    i8 57, label %bb.f
    i8 46, label %bb.g
  ]

bb.f:                                             ; preds = %.preheader.i
  store i8 48, ptr %.0.i.i, align 1, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i
  %i.at = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  %.pr.i = load i8, ptr %i.at, align 1, !tbaa !14
  br label %.preheader.i, !llvm.loop !55

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split: ; preds = %.preheader.i, %.preheader
  %.lcssa64.sink = phi i8 [ %i.al, %.preheader ], [ %i.as, %.preheader.i ]
  %.0.i.i.lcssa.sink = phi ptr [ %.0.i, %.preheader ], [ %.0.i.i, %.preheader.i ]
  %i.au = add i8 %.lcssa64.sink, 1
  store i8 %i.au, ptr %.0.i.i.lcssa.sink, align 1, !tbaa !14
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit: ; preds = %.lr.ph51, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split, %bb.e, %._crit_edge
  %.11737 = phi ptr [ %.117.lcssa, %._crit_edge ], [ %.117.lcssa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111RoundToEvenEPc.exit.sink.split ], [ %.117.lcssa, %bb.e ], [ %.11749, %.lr.ph51 ]
  ret ptr %.11737
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_110FinalPrintERKNS2_11FormatStateESt17basic_string_viewIcSt11char_traitsIcEEmmS9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, ptr %2, i64 noundef range(i64 0, 3) %3, i64 noundef %4, i64 %.0.val, ptr %.8.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16   ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = load i8, ptr %0, align 8, !tbaa !26      ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp eq i8 %i.f, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !88
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1056
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.lr.ph.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !93
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !94
  tail call void %i.r(ptr noundef %i.s, i64 1024, ptr nonnull %i.p), !inline_history !95
  store ptr %i.p, ptr %i.m, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit: ; preds = %bb.c, %.lr.ph.i
  %.lcssa.i = phi ptr [ %i.n, %bb.c ], [ %i.p, %.lr.ph.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i, i8 %i.f, i64 1, i1 false)
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %i.m, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 7 uses
  %i.x = icmp eq i64 %1, 0
  br i1 %i.x, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !88
  %i.aa = add i64 %i.z, %1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1056
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !92 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %.not.i = icmp ult i64 %1, %i.ag
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !93
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !94
  tail call void %i.al(ptr noundef %i.am, i64 %i.aj, ptr nonnull %i.ah), !inline_history !143
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !92
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !93
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !94
  tail call void %i.an(ptr noundef %i.ao, i64 %1, ptr %2), !inline_history !144
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %2, i64 %1, i1 false)
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %1
  store ptr %i.aq, ptr %i.ac, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.f, %bb.g
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !33  ; 8 uses
  %i.as = icmp eq i64 %4, 0
  br i1 %i.as, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit39, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !88
  %i.av = add i64 %i.au, %4
  store i64 %i.av, ptr %i.at, align 8, !tbaa !88
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1056 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 8 uses
  %i.ay = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !92 ; 4 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ay, %i.ba                    ; 4 uses
  %i.bc = icmp ugt i64 %4, %i.bb
  br i1 %i.bc, label %.lr.ph.i35, label %._crit_edge.i

.lr.ph.i35:                                       ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 8 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bg = sub nuw i64 %4, %i.bb                   ; 3 uses
  %.not.peel.i36 = icmp eq ptr %i.aw, %i.az
  br i1 %.not.peel.i36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i35
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 48, i64 %i.bb, i1 false)
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb ; 2 uses
  store ptr %i.bi, ptr %i.ax, align 8, !tbaa !92
  %.pre.i37 = ptrtoint ptr %i.bi to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i35
  %.pre-phi.i38 = phi i64 [ %.pre.i37, %bb.i ], [ %i.ay, %.lr.ph.i35 ]
  %i.bj = sub i64 %.pre-phi.i38, %i.be
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !93
  %i.bl = load ptr, ptr %i.ar, align 8, !tbaa !94
  tail call void %i.bk(ptr noundef %i.bl, i64 %i.bj, ptr nonnull %i.bd), !inline_history !95
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !92
  %i.bm = icmp ugt i64 %i.bg, 1024
  br i1 %i.bm, label %.peel.next.i, label %._crit_edge.i

.peel.next.i:                                     ; preds = %bb.j, %.peel.next.i
  %.010.i = phi i64 [ %i.bn, %.peel.next.i ], [ %i.bg, %bb.j ]
  %i.bn = add i64 %.010.i, -1024                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.bd, i8 48, i64 1024, i1 false)
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !92
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !93
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !94
  tail call void %i.bo(ptr noundef %i.bp, i64 1024, ptr nonnull %i.bd), !inline_history !95
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !92
  %i.bq = icmp ugt i64 %i.bn, 1024
  br i1 %i.bq, label %.peel.next.i, label %._crit_edge.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %.peel.next.i, %bb.j, %bb.h
  %.0.lcssa.i33 = phi i64 [ %4, %bb.h ], [ %i.bg, %bb.j ], [ %i.bn, %.peel.next.i ] ; 2 uses
  %.lcssa.i34 = phi ptr [ %i.az, %bb.h ], [ %i.bd, %bb.j ], [ %i.bd, %.peel.next.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i34, i8 48, i64 %.0.lcssa.i33, i1 false)
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.0.lcssa.i33
  store ptr %i.bs, ptr %i.ax, align 8, !tbaa !92
  %.pre21 = load ptr, ptr %i.v, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit39

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit39: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %._crit_edge.i
  %i.bt = phi ptr [ %i.ar, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %.pre21, %._crit_edge.i ] ; 7 uses
  %i.bu = icmp eq i64 %.0.val, 0
  br i1 %i.bu, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit41, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !88
  %i.bx = add i64 %i.bw, %.0.val
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 1056
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !92 ; 2 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64               ; 2 uses
  %i.cd = sub i64 %i.cb, %i.cc
  %.not.i40 = icmp ult i64 %.0.val, %i.cd
  br i1 %.not.i40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !93
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !94
  tail call void %i.ci(ptr noundef %i.cj, i64 %i.cg, ptr nonnull %i.ce), !inline_history !143
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !92
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !93
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !94
  tail call void %i.ck(ptr noundef %i.cl, i64 %.0.val, ptr %.8.val), !inline_history !144
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit41

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %.8.val, i64 %.0.val, i1 false)
  %i.cm = load ptr, ptr %i.bz, align 8, !tbaa !92
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.0.val
  store ptr %i.cn, ptr %i.bz, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit41

bb.n:                                             ; preds = %bb.a
  %.not = icmp ne i8 %i.f, 0
  %i.co = zext i1 %.not to i64
  %i.cp = add i64 %4, %1
  %i.cq = add i64 %i.cp, %.0.val
  %i.cr = add i64 %i.cq, %i.co                    ; 2 uses
  %i.cs = zext nneg i32 %i.d to i64               ; 2 uses
  %.not.i42 = icmp ult i64 %i.cr, %i.cs
  br i1 %.not.i42, label %bb.o, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ct = sub nuw nsw i64 %i.cs, %i.cr            ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9, !noalias !145 ; 2 uses
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = and i8 %i.cv, 16
  %.not1.i = icmp eq i8 %i.cx, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread: ; preds = %bb.o, %bb.n, %bb.p
  %.sroa.7.0.ph = phi i64 [ %i.ct, %bb.p ], [ 0, %bb.n ], [ 0, %bb.o ]
  %.sroa.10.0.ph = phi i64 [ 0, %bb.p ], [ 0, %bb.n ], [ %i.ct, %bb.o ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit52

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit: ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !33 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !88
  %i.dd = add i64 %i.dc, %i.ct
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !88
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1056 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 8 uses
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !92 ; 4 uses
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.dg, %i.di                    ; 4 uses
  %i.dk = icmp ugt i64 %i.ct, %i.dj
  br i1 %i.dk, label %.lr.ph.i46, label %._crit_edge.i43

.lr.ph.i46:                                       ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 8 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.do = sub nuw nsw i64 %i.ct, %i.dj            ; 3 uses
  %.not.peel.i47 = icmp eq ptr %i.de, %i.dh
  br i1 %.not.peel.i47, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i46
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dh, i8 32, i64 %i.dj, i1 false)
  %i.dp = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dj ; 2 uses
  store ptr %i.dq, ptr %i.df, align 8, !tbaa !92
  %.pre.i48 = ptrtoint ptr %i.dq to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i46
  %.pre-phi.i49 = phi i64 [ %.pre.i48, %bb.q ], [ %i.dg, %.lr.ph.i46 ]
  %i.dr = sub i64 %.pre-phi.i49, %i.dm
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !93
  %i.dt = load ptr, ptr %i.da, align 8, !tbaa !94
  tail call void %i.ds(ptr noundef %i.dt, i64 %i.dr, ptr nonnull %i.dl), !inline_history !95
  store ptr %i.dl, ptr %i.df, align 8, !tbaa !92
  %i.du = icmp samesign ugt i64 %i.do, 1024
  br i1 %i.du, label %.peel.next.i50, label %._crit_edge.i43

.peel.next.i50:                                   ; preds = %bb.r, %.peel.next.i50
  %.010.i51 = phi i64 [ %i.dv, %.peel.next.i50 ], [ %i.do, %bb.r ]
  %i.dv = add i64 %.010.i51, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dl, i8 32, i64 1024, i1 false)
  store ptr %i.de, ptr %i.df, align 8, !tbaa !92
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !93
  %i.dx = load ptr, ptr %i.da, align 8, !tbaa !94
  tail call void %i.dw(ptr noundef %i.dx, i64 1024, ptr nonnull %i.dl), !inline_history !95
  store ptr %i.dl, ptr %i.df, align 8, !tbaa !92
  %i.dy = icmp ugt i64 %i.dv, 1024
  br i1 %i.dy, label %.peel.next.i50, label %._crit_edge.i43, !llvm.loop !96

._crit_edge.i43:                                  ; preds = %.peel.next.i50, %bb.r, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit
  %.0.lcssa.i44 = phi i64 [ %i.ct, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit ], [ %i.do, %bb.r ], [ %i.dv, %.peel.next.i50 ] ; 2 uses
  %.lcssa.i45 = phi ptr [ %i.dh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit ], [ %i.dl, %bb.r ], [ %i.dl, %.peel.next.i50 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i45, i8 32, i64 %.0.lcssa.i44, i1 false)
  %i.dz = load ptr, ptr %i.df, align 8, !tbaa !92
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.0.lcssa.i44
  store ptr %i.ea, ptr %i.df, align 8, !tbaa !92
  %.pre = load i8, ptr %0, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit52

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit52: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread, %._crit_edge.i43
  %i.eb = phi i8 [ %i.f, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ %.pre, %._crit_edge.i43 ] ; 2 uses
  %i.ec = phi ptr [ %i.cy, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ %i.cz, %._crit_edge.i43 ] ; 7 uses
  %.sroa.10.010 = phi i64 [ %.sroa.10.0.ph, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ 0, %._crit_edge.i43 ] ; 5 uses
  %.sroa.7.09 = phi i64 [ %.sroa.7.0.ph, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.thread ], [ 0, %._crit_edge.i43 ] ; 5 uses
  %.not31 = icmp eq i8 %i.eb, 0
  br i1 %.not31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit52
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !88
  %i.eg = add i64 %i.ef, 1
  store i64 %i.eg, ptr %i.ee, align 8, !tbaa !88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 1056
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 4 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !92 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph.i56, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit62

.lr.ph.i56:                                       ; preds = %bb.s
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 32 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !93
  %i.eo = load ptr, ptr %i.ed, align 8, !tbaa !94
  tail call void %i.en(ptr noundef %i.eo, i64 1024, ptr nonnull %i.el), !inline_history !95
  store ptr %i.el, ptr %i.ei, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit62

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit62: ; preds = %bb.s, %.lr.ph.i56
  %.lcssa.i55 = phi ptr [ %i.ej, %bb.s ], [ %i.el, %.lr.ph.i56 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i55, i8 %i.eb, i64 1, i1 false)
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !92
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.ei, align 8, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit62, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit52
  %i.er = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 7 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 6 uses
  %i.es = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.es, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !88
  %i.ev = add i64 %i.eu, %.sroa.speculated.i
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !88
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 1056
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 4 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !92 ; 2 uses
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fb = sub i64 %i.ez, %i.fa
  %.not.i63 = icmp ult i64 %.sroa.speculated.i, %i.fb
  br i1 %.not.i63, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = sub i64 %i.fa, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !93
  %i.fh = load ptr, ptr %i.er, align 8, !tbaa !94
  tail call void %i.fg(ptr noundef %i.fh, i64 %i.fe, ptr nonnull %i.fc), !inline_history !143
  store ptr %i.fc, ptr %i.ex, align 8, !tbaa !92
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !93
  %i.fj = load ptr, ptr %i.er, align 8, !tbaa !94
  tail call void %i.fi(ptr noundef %i.fj, i64 %.sroa.speculated.i, ptr %2), !inline_history !144
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64

bb.w:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %2, i64 %.sroa.speculated.i, i1 false)
  %i.fk = load ptr, ptr %i.ex, align 8, !tbaa !92
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.sroa.speculated.i
  store ptr %i.fl, ptr %i.ex, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64: ; preds = %bb.t, %bb.v, %bb.w
  %i.fm = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 8 uses
  %i.fn = icmp eq i64 %.sroa.7.09, 0
  br i1 %i.fn, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit74, label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !88
  %i.fq = add i64 %i.fp, %.sroa.7.09
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !88
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 1056 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 8 uses
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !92 ; 4 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = sub i64 %i.ft, %i.fv                    ; 4 uses
  %i.fx = icmp ugt i64 %.sroa.7.09, %i.fw
  br i1 %i.fx, label %.lr.ph.i68, label %._crit_edge.i65

.lr.ph.i68:                                       ; preds = %bb.x
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 8 uses
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.gb = sub nuw nsw i64 %.sroa.7.09, %i.fw      ; 3 uses
  %.not.peel.i69 = icmp eq ptr %i.fr, %i.fu
  br i1 %.not.peel.i69, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i68
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fu, i8 48, i64 %i.fw, i1 false)
  %i.gc = load ptr, ptr %i.fs, align 8, !tbaa !92
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fw ; 2 uses
  store ptr %i.gd, ptr %i.fs, align 8, !tbaa !92
  %.pre.i70 = ptrtoint ptr %i.gd to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i68
  %.pre-phi.i71 = phi i64 [ %.pre.i70, %bb.y ], [ %i.ft, %.lr.ph.i68 ]
  %i.ge = sub i64 %.pre-phi.i71, %i.fz
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !93
  %i.gg = load ptr, ptr %i.fm, align 8, !tbaa !94
  tail call void %i.gf(ptr noundef %i.gg, i64 %i.ge, ptr nonnull %i.fy), !inline_history !95
  store ptr %i.fy, ptr %i.fs, align 8, !tbaa !92
  %i.gh = icmp samesign ugt i64 %i.gb, 1024
  br i1 %i.gh, label %.peel.next.i72, label %._crit_edge.i65

.peel.next.i72:                                   ; preds = %bb.z, %.peel.next.i72
  %.010.i73 = phi i64 [ %i.gi, %.peel.next.i72 ], [ %i.gb, %bb.z ]
  %i.gi = add i64 %.010.i73, -1024                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fy, i8 48, i64 1024, i1 false)
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !92
  %i.gj = load ptr, ptr %i.ga, align 8, !tbaa !93
  %i.gk = load ptr, ptr %i.fm, align 8, !tbaa !94
  tail call void %i.gj(ptr noundef %i.gk, i64 1024, ptr nonnull %i.fy), !inline_history !95
  store ptr %i.fy, ptr %i.fs, align 8, !tbaa !92
  %i.gl = icmp ugt i64 %i.gi, 1024
  br i1 %i.gl, label %.peel.next.i72, label %._crit_edge.i65, !llvm.loop !96

._crit_edge.i65:                                  ; preds = %.peel.next.i72, %bb.z, %bb.x
  %.0.lcssa.i66 = phi i64 [ %.sroa.7.09, %bb.x ], [ %i.gb, %bb.z ], [ %i.gi, %.peel.next.i72 ] ; 2 uses
  %.lcssa.i67 = phi ptr [ %i.fu, %bb.x ], [ %i.fy, %bb.z ], [ %i.fy, %.peel.next.i72 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i67, i8 48, i64 %.0.lcssa.i66, i1 false)
  %i.gm = load ptr, ptr %i.fs, align 8, !tbaa !92
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.0.lcssa.i66
  store ptr %i.gn, ptr %i.fs, align 8, !tbaa !92
  %.pre19 = load ptr, ptr %i.ec, align 8, !tbaa !33
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit74

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit74: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64, %._crit_edge.i65
  %i.go = phi ptr [ %i.fm, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit64 ], [ %.pre19, %._crit_edge.i65 ] ; 7 uses
  %i.gp = icmp ugt i64 %3, %1
  br i1 %i.gp, label %bb.aa, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit74
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i64 noundef %3, i64 noundef %1) #16
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit74
  %i.gq = sub nuw i64 %1, %3                      ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.gs = icmp eq i64 %1, %3
  br i1 %i.gs, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79, label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !88
  %i.gv = add i64 %i.gu, %i.gq
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !88
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 1056
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 24 ; 4 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !92 ; 2 uses
  %i.gz = ptrtoint ptr %i.gw to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha
  %.not.i78 = icmp ult i64 %i.gq, %i.hb
  br i1 %.not.i78, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 32 ; 3 uses
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = sub i64 %i.ha, %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !93
  %i.hh = load ptr, ptr %i.go, align 8, !tbaa !94
  tail call void %i.hg(ptr noundef %i.hh, i64 %i.he, ptr nonnull %i.hc), !inline_history !143
  store ptr %i.hc, ptr %i.gx, align 8, !tbaa !92
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !93
  %i.hj = load ptr, ptr %i.go, align 8, !tbaa !94
  tail call void %i.hi(ptr noundef %i.hj, i64 %i.gq, ptr %i.gr), !inline_history !144
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gy, ptr align 1 %i.gr, i64 %i.gq, i1 false)
  %i.hk = load ptr, ptr %i.gx, align 8, !tbaa !92
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.gq
  store ptr %i.hl, ptr %i.gx, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.ac, %bb.ad
  %i.hm = load ptr, ptr %i.ec, align 8, !tbaa !33 ; 8 uses
  %i.hn = icmp eq i64 %4, 0
  br i1 %i.hn, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit89, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit79
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !88
  %i.hq = add i64 %i.hp, %4
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !88
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 1056 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 8 uses
  %i.ht = ptrtoint ptr %i.hr to i64               ; 2 uses
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !92 ; 4 uses
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = sub i64 %i.ht, %i.hv                    ; 4 uses
  %i.hx = icmp ugt i64 %4, %i.hw
  br i1 %i.hx, label %.lr.ph.i83, label %._crit_edge.i80

.lr.ph.i83:                                       ; preds = %bb.ae
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 8 uses
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ib = sub nuw i64 %4, %i.hw                   ; 3 uses
  %.not.peel.i84 = icmp eq ptr %i.hr, %i.hu
  br i1 %.not.peel.i84, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i83
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.hu, i8 48, i64 %i.hw, i1 false)
  %i.ic = load ptr, ptr %i.hs, align 8, !tbaa !92
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hw ; 2 uses
  store ptr %i.id, ptr %i.hs, align 8, !tbaa !92
  %.pre.i85 = ptrtoint ptr %i.id to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i83
  %.pre-phi.i86 = phi i64 [ %.pre.i85, %bb.af ], [ %i.ht, %.lr.ph.i83 ]
end_hunk_2
begin_hunk_3_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_15BinaryToDecimalEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %spec.select277.i.i.i.i = add i64 %i.u, %i.z    ; 3 uses
  %i.aa = add i64 %spec.select277.i.i.i.i, 1
  %.not.i.i.i.i = icmp ult i64 %i.aa, %i.y
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 2 uses
  %.sroa.0207.0.extract.trunc.i.i.i.i = trunc i64 %i.ac to i32
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !31
  %i.ae = icmp ne i64 %spec.select277.i.i.i.i, %i.ad
  %i.af = and i64 %i.ac, 4294967296
  %.not281.i.i.i.i = icmp ne i64 %i.af, 0
  %i.ag = icmp sgt i32 %.sroa.0207.0.extract.trunc.i.i.i.i, 4
  %i.ah = and i1 %.not281.i.i.i.i, %i.ag
  %or.cond279.i.i.i.i = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond279.i.i.i.i, label %.critedge.i.i.i.i, label %bb.d

.critedge.i.i.i.i:                                ; preds = %bb.c
  %.not37.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i, 9  ; 2 uses
  %i.ai = add nsw i32 %.0.i.i.i.i.i, 1
  %spec.select.i.i.i.i = select i1 %.not37.i.i.i.i, i32 1, i32 %i.ai
  %spec.select43.i.i.i.i = select i1 %.not37.i.i.i.i, i32 %i.j, i32 %i.k
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i.i.i.i, %bb.c, %bb.b
  %.132.i.i.i.i = phi i8 [ 57, %bb.b ], [ 48, %.critedge.i.i.i.i ], [ 57, %bb.c ] ; 3 uses
  %.130.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.b ], [ %spec.select.i.i.i.i, %.critedge.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.c ]
  %.1.i.i.i.i = phi i32 [ %i.k, %bb.b ], [ %spec.select43.i.i.i.i, %.critedge.i.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.aj = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %.1.i.i.i.i, ptr noundef nonnull %i.a) ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !150, !nonnull !117, !align !118
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25 ; 2 uses
  %i.aq = icmp ugt i64 %i.am, %i.ap
  br i1 %i.aq, label %.thread.i.i.i.i, label %bb.e

.thread.i.i.i.i:                                  ; preds = %bb.d
  %i.ar = ptrtoint ptr %i.aj to i64
  %i.as = ptrtoint ptr %i.a to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = icmp slt i32 %.1.i.i.i.i, 10            ; 2 uses
  %i.av = select i1 %i.au, i64 3, i64 2
  %i.aw = add i64 %i.at, %i.av
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.ak, i64 16
  %.val.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !84
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !84 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9
  %.fr282.i.i.i.i = freeze i8 %i.ba
  %i.bb = and i8 %.fr282.i.i.i.i, 8
  %i.bc = icmp ne i8 %i.bb, 0                     ; 2 uses
  %i.bd = ptrtoint ptr %i.aj to i64
  %i.be = ptrtoint ptr %i.a to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = icmp slt i32 %.1.i.i.i.i, 10            ; 2 uses
  %i.bh = select i1 %i.bg, i64 3, i64 2
  %i.bi = add i64 %i.bf, %i.bh
  %spec.select280.i.i.i.i = select i1 %i.bc, i64 2, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i.i.i
  %.val.i.i.i.i = phi ptr [ %i.ay, %bb.e ], [ %.val.pre.i.i.i.i, %.thread.i.i.i.i ] ; 2 uses
  %i.bj = phi i64 [ %i.bi, %bb.e ], [ %i.aw, %.thread.i.i.i.i ]
  %i.bk = phi i1 [ %i.bg, %bb.e ], [ %i.au, %.thread.i.i.i.i ]
  %i.bl = phi i64 [ %i.bf, %bb.e ], [ %i.at, %.thread.i.i.i.i ] ; 6 uses
  %i.bm = phi i1 [ %i.bc, %bb.e ], [ true, %.thread.i.i.i.i ]
  %i.bn = phi i64 [ %spec.select280.i.i.i.i, %bb.e ], [ 2, %.thread.i.i.i.i ]
  %i.bo = sub i64 %i.am, %i.ap
  %i.bp = load i8, ptr %i.ak, align 8, !tbaa !26  ; 5 uses
  %.not38.i.i.i.i = icmp ne i8 %i.bp, 0
  %i.bq = zext i1 %.not38.i.i.i.i to i64
  %i.br = add i64 %i.bo, %i.bj
  %i.bs = add i64 %i.br, %i.bn
  %i.bt = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !16, !noalias !151 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = zext nneg i32 %i.bv to i64              ; 2 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.bt, %i.bx
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.by = sub nuw nsw i64 %i.bx, %i.bt            ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9, !noalias !151 ; 2 uses
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = and i8 %i.ca, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i: ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !33 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !88
  %i.ch = add i64 %i.cg, %i.by
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 1056 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 8 uses
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !92 ; 4 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.ck, %i.cm                    ; 4 uses
  %i.co = icmp ugt i64 %i.by, %i.cn
  br i1 %i.co, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 8 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cs = sub nuw nsw i64 %i.by, %i.cn            ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.ci, %i.cl
  br i1 %.not.peel.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.cl, i8 32, i64 %i.cn, i1 false)
  %i.ct = load ptr, ptr %i.cj, align 8, !tbaa !92
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cn ; 2 uses
  store ptr %i.cu, ptr %i.cj, align 8, !tbaa !92
  %.pre.i.i.i.i.i = ptrtoint ptr %i.cu to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.j ], [ %i.ck, %.lr.ph.i.i.i.i.i ]
  %i.cv = sub i64 %.pre-phi.i.i.i.i.i, %i.cq
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !93
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !94
  call void %i.cw(ptr noundef %i.cx, i64 %i.cv, ptr nonnull %i.cp), !inline_history !154
  store ptr %i.cp, ptr %i.cj, align 8, !tbaa !92
  %i.cy = icmp samesign ugt i64 %i.cs, 1024
  br i1 %i.cy, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.k, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cz, %.peel.next.i.i.i.i.i ], [ %i.cs, %bb.k ]
  %i.cz = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cp, i8 32, i64 1024, i1 false)
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !92
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !93
  %i.db = load ptr, ptr %i.ce, align 8, !tbaa !94
  call void %i.da(ptr noundef %i.db, i64 1024, ptr nonnull %i.cp), !inline_history !154
  store ptr %i.cp, ptr %i.cj, align 8, !tbaa !92
  %i.dc = icmp ugt i64 %i.cz, 1024
  br i1 %i.dc, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !96

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.by, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.cs, %bb.k ], [ %i.cz, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.cl, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.cp, %bb.k ], [ %i.cp, %.peel.next.i.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !92
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.de, ptr %i.cj, align 8, !tbaa !92
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !148 ; 2 uses
  %.pre319.i.i.i.i = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.df = phi i8 [ %.pre319.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.bp, %bb.h ], [ %i.bp, %bb.i ], [ %i.bp, %bb.g ], [ %i.bp, %bb.f ] ; 2 uses
  %i.dg = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.g ], [ %i.ak, %bb.f ] ; 2 uses
  %.sroa.9205.0258.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.by, %bb.h ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %.not39.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not39.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !33 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !88
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !88
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 1056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !92 ; 2 uses
  %i.dp = icmp eq ptr %i.dm, %i.do
  br i1 %i.dp, label %.lr.ph.i62.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit68.i.i.i.i

.lr.ph.i62.i.i.i.i:                               ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !93
  %i.dt = load ptr, ptr %i.di, align 8, !tbaa !94
  call void %i.ds(ptr noundef %i.dt, i64 1024, ptr nonnull %i.dq), !inline_history !154
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit68.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit68.i.i.i.i: ; preds = %.lr.ph.i62.i.i.i.i, %bb.l
  %.lcssa.i61.i.i.i.i = phi ptr [ %i.do, %bb.l ], [ %i.dq, %.lr.ph.i62.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i61.i.i.i.i, i8 %i.df, i64 1, i1 false)
  %i.du = load ptr, ptr %i.dn, align 8, !tbaa !92
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.dn, align 8, !tbaa !92
  %.pre320.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !148
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit68.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.dw = phi ptr [ %.pre320.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit68.i.i.i.i ], [ %i.dg, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !33 ; 6 uses
  %i.dz = trunc i32 %.130.i.i.i.i to i8
  %i.ea = add i8 %i.dz, 48
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !88
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.eb, align 8, !tbaa !88
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 1056
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !92 ; 2 uses
  %i.eh = icmp eq ptr %i.ee, %i.eg
  br i1 %i.eh, label %.lr.ph.i72.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit78.i.i.i.i

.lr.ph.i72.i.i.i.i:                               ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 32 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !93
  %i.el = load ptr, ptr %i.dy, align 8, !tbaa !94
  call void %i.ek(ptr noundef %i.el, i64 1024, ptr nonnull %i.ei), !inline_history !154
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit78.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit78.i.i.i.i: ; preds = %.lr.ph.i72.i.i.i.i, %bb.m
  %.lcssa.i71.i.i.i.i = phi ptr [ %i.eg, %bb.m ], [ %i.ei, %.lr.ph.i72.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i71.i.i.i.i, i8 %i.ea, i64 1, i1 false)
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !92
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.en, ptr %i.ef, align 8, !tbaa !92
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit78.i.i.i.i
  %i.eo = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !33 ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !88
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !88
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1056
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 4 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !92 ; 2 uses
  %i.ex = icmp eq ptr %i.eu, %i.ew
  br i1 %i.ex, label %.lr.ph.i82.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit88.i.i.i.i

.lr.ph.i82.i.i.i.i:                               ; preds = %bb.n
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !93
  %i.fb = load ptr, ptr %i.eq, align 8, !tbaa !94
  call void %i.fa(ptr noundef %i.fb, i64 1024, ptr nonnull %i.ey), !inline_history !154
  store ptr %i.ey, ptr %i.ev, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit88.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit88.i.i.i.i: ; preds = %.lr.ph.i82.i.i.i.i, %bb.n
  %.lcssa.i81.i.i.i.i = phi ptr [ %i.ew, %bb.n ], [ %i.ey, %.lr.ph.i82.i.i.i.i ]
  store i8 46, ptr %.lcssa.i81.i.i.i.i, align 1
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !92
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fd, ptr %i.ev, align 8, !tbaa !92
  br label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit88.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit78.i.i.i.i
  %i.fe = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !31
  %i.fh = load ptr, ptr %i.an, align 8, !tbaa !150, !nonnull !117, !align !118
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !25
  %i.fj = sub i64 %i.fg, %i.fi                    ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %spec.select277.i.i.i.i, i64 %i.r) ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fj, i64 %.sroa.speculated.i.i.i.i) ; 6 uses
  %.not.i89.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %.not.i89.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !33 ; 7 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !88
  %i.fo = add i64 %i.fn, %.sroa.speculated.i.i.i.i.i
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !88
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1056 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 8 uses
  %i.fr = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !92 ; 4 uses
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = sub i64 %i.fr, %i.ft                    ; 4 uses
  %i.fv = icmp ugt i64 %.sroa.speculated.i.i.i.i.i, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.p
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 8 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fz = sub nuw i64 %.sroa.speculated.i.i.i.i.i, %i.fu ; 3 uses
  %.not.peel.i.i.i.i.i.i = icmp eq ptr %i.fp, %i.fs
  br i1 %.not.peel.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.fs, i8 %.132.i.i.i.i, i64 %i.fu, i1 false)
  %i.ga = load ptr, ptr %i.fq, align 8, !tbaa !92
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fu ; 2 uses
  store ptr %i.gb, ptr %i.fq, align 8, !tbaa !92
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.gb to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i.i, %bb.q ], [ %i.fr, %.lr.ph.i.i.i.i.i.i ]
  %i.gc = sub i64 %.pre-phi.i.i.i.i.i.i, %i.fx
  %i.gd = load ptr, ptr %i.fy, align 8, !tbaa !93
  %i.ge = load ptr, ptr %i.fl, align 8, !tbaa !94
  call void %i.gd(ptr noundef %i.ge, i64 %i.gc, ptr nonnull %i.fw), !inline_history !155
  store ptr %i.fw, ptr %i.fq, align 8, !tbaa !92
  %i.gf = icmp ugt i64 %i.fz, 1024
  br i1 %i.gf, label %.peel.next.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i.i

.peel.next.i.i.i.i.i.i:                           ; preds = %bb.r, %.peel.next.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.gg, %.peel.next.i.i.i.i.i.i ], [ %i.fz, %bb.r ]
  %i.gg = add i64 %.010.i.i.i.i.i.i, -1024        ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.fw, i8 %.132.i.i.i.i, i64 1024, i1 false)
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !92
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !93
  %i.gi = load ptr, ptr %i.fl, align 8, !tbaa !94
  call void %i.gh(ptr noundef %i.gi, i64 1024, ptr nonnull %i.fw), !inline_history !155
  store ptr %i.fw, ptr %i.fq, align 8, !tbaa !92
  %i.gj = icmp ugt i64 %i.gg, 1024
  br i1 %i.gj, label %.peel.next.i.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i.i, !llvm.loop !96

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i, %bb.r, %bb.p
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i.i, %bb.p ], [ %i.fz, %bb.r ], [ %i.gg, %.peel.next.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi ptr [ %i.fs, %bb.p ], [ %i.fw, %bb.r ], [ %i.fw, %.peel.next.i.i.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i.i, i8 %.132.i.i.i.i, i64 %.0.lcssa.i.i.i.i.i.i, i1 false)
  %i.gk = load ptr, ptr %i.fq, align 8, !tbaa !92
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.0.lcssa.i.i.i.i.i.i
  store ptr %i.gl, ptr %i.fq, align 8, !tbaa !92
  %i.gm = sub i64 %i.fj, %.sroa.speculated.i.i.i.i.i
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit.i.i.i.i"

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit.i.i.i.i": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i.i, %bb.o
  %.3.i.i.i.i = phi i64 [ %i.fj, %bb.o ], [ %i.gm, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i.i ]
  %i.gn = sub i64 %i.r, %.sroa.speculated.i.i.i.i ; 2 uses
  %.not40.old.i.i.i.i = icmp eq i64 %i.gn, 0
  br i1 %.not40.old.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit.i.i.i.i"
  %i.go = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i", %.preheader.i.i.i.i
  %.0252.i.i.i.i = phi i64 [ %.5.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i" ], [ %.3.i.i.i.i, %.preheader.i.i.i.i ] ; 6 uses
  %.0239.i.i.i.i = phi i64 [ %i.lf, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i" ], [ %i.gn, %.preheader.i.i.i.i ] ; 6 uses
  %i.gp = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.gq = extractvalue { i64, i64 } %i.gp, 0      ; 2 uses
  %i.gr = extractvalue { i64, i64 } %i.gp, 1      ; 4 uses
  %i.gs = and i64 %i.gq, 4294967296
  %.not283.i.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not283.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.thread.thread271.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gt = add i64 %i.gr, 1                        ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %.0239.i.i.i.i
  %i.gv = trunc i64 %i.gq to i8                   ; 2 uses
  br i1 %i.gu, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.gw = add i8 %i.gv, 48
  %i.gx = icmp ne i64 %.0252.i.i.i.i, 0           ; 2 uses
  %.sroa.speculated.i90.i.i.i.i = zext i1 %i.gx to i64 ; 3 uses
  br i1 %i.gx, label %bb.v, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit101.i.i.i.i"

bb.v:                                             ; preds = %bb.u
  %i.gy = load ptr, ptr %i.go, align 8, !tbaa !33 ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !88
  %i.hb = add i64 %i.ha, %.sroa.speculated.i90.i.i.i.i
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !88
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 1056 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 24 ; 4 uses
  %i.he = ptrtoint ptr %i.hc to i64               ; 2 uses
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !92 ; 3 uses
  %i.hg = ptrtoint ptr %i.hf to i64               ; 2 uses
  %i.hh = sub i64 %i.he, %i.hg
  %i.hi = icmp ult i64 %i.hh, %.sroa.speculated.i90.i.i.i.i
  br i1 %i.hi, label %.lr.ph.i.i95.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i92.i.i.i.i

.lr.ph.i.i95.i.i.i.i:                             ; preds = %bb.v
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 32 ; 4 uses
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %.not.peel.i.i96.i.i.i.i = icmp eq ptr %i.hc, %i.hf
  %spec.select.i.i.i = select i1 %.not.peel.i.i96.i.i.i.i, i64 %i.he, i64 %i.hg
  %i.hm = sub i64 %spec.select.i.i.i, %i.hk
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !93
  %i.ho = load ptr, ptr %i.gy, align 8, !tbaa !94
  call void %i.hn(ptr noundef %i.ho, i64 %i.hm, ptr nonnull %i.hj), !inline_history !155
  store ptr %i.hj, ptr %i.hd, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i92.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i92.i.i.i.i: ; preds = %.lr.ph.i.i95.i.i.i.i, %bb.v
  %.lcssa.i.i94.i.i.i.i = phi ptr [ %i.hf, %bb.v ], [ %i.hj, %.lr.ph.i.i95.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i.i94.i.i.i.i, i8 %i.gw, i64 1, i1 false)
  %i.hp = load ptr, ptr %i.hd, align 8, !tbaa !92
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  store ptr %i.hq, ptr %i.hd, align 8, !tbaa !92
  %i.hr = sub nuw i64 %.0252.i.i.i.i, %.sroa.speculated.i90.i.i.i.i
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit101.i.i.i.i"

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit101.i.i.i.i": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i92.i.i.i.i, %bb.u
  %.4.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.hr, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i92.i.i.i.i ] ; 3 uses
  %.sroa.speculated.i102.i.i.i.i = call i64 @llvm.umin.i64(i64 %.4.i.i.i.i, i64 %i.gr) ; 6 uses
  %.not.i103.i.i.i.i = icmp eq i64 %.sroa.speculated.i102.i.i.i.i, 0
  br i1 %.not.i103.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i", label %bb.w

bb.w:                                             ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit101.i.i.i.i"
  %i.hs = load ptr, ptr %i.go, align 8, !tbaa !33 ; 7 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !88
  %i.hv = add i64 %i.hu, %.sroa.speculated.i102.i.i.i.i
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !88
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 1056 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 24 ; 8 uses
  %i.hy = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.hz = load ptr, ptr %i.hx, align 8, !tbaa !92 ; 4 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 %i.hy, %i.ia                    ; 4 uses
  %i.ic = icmp ugt i64 %.sroa.speculated.i102.i.i.i.i, %i.ib
  br i1 %i.ic, label %.lr.ph.i.i107.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i104.i.i.i.i

.lr.ph.i.i107.i.i.i.i:                            ; preds = %bb.w
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 32 ; 8 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 2 uses
  %i.ig = sub nuw i64 %.sroa.speculated.i102.i.i.i.i, %i.ib ; 3 uses
  %.not.peel.i.i108.i.i.i.i = icmp eq ptr %i.hw, %i.hz
  br i1 %.not.peel.i.i108.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i107.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.hz, i8 57, i64 %i.ib, i1 false)
  %i.ih = load ptr, ptr %i.hx, align 8, !tbaa !92
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.ib ; 2 uses
  store ptr %i.ii, ptr %i.hx, align 8, !tbaa !92
  %.pre.i.i109.i.i.i.i = ptrtoint ptr %i.ii to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i107.i.i.i.i
  %.pre-phi.i.i110.i.i.i.i = phi i64 [ %.pre.i.i109.i.i.i.i, %bb.x ], [ %i.hy, %.lr.ph.i.i107.i.i.i.i ]
  %i.ij = sub i64 %.pre-phi.i.i110.i.i.i.i, %i.ie
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !93
  %i.il = load ptr, ptr %i.hs, align 8, !tbaa !94
  call void %i.ik(ptr noundef %i.il, i64 %i.ij, ptr nonnull %i.id), !inline_history !155
  store ptr %i.id, ptr %i.hx, align 8, !tbaa !92
  %i.im = icmp ugt i64 %i.ig, 1024
  br i1 %i.im, label %.peel.next.i.i111.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i104.i.i.i.i

.peel.next.i.i111.i.i.i.i:                        ; preds = %bb.y, %.peel.next.i.i111.i.i.i.i
  %.010.i.i112.i.i.i.i = phi i64 [ %i.in, %.peel.next.i.i111.i.i.i.i ], [ %i.ig, %bb.y ]
  %i.in = add i64 %.010.i.i112.i.i.i.i, -1024     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.id, i8 57, i64 1024, i1 false)
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !92
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !93
  %i.ip = load ptr, ptr %i.hs, align 8, !tbaa !94
  call void %i.io(ptr noundef %i.ip, i64 1024, ptr nonnull %i.id), !inline_history !155
  store ptr %i.id, ptr %i.hx, align 8, !tbaa !92
  %i.iq = icmp ugt i64 %i.in, 1024
  br i1 %i.iq, label %.peel.next.i.i111.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i104.i.i.i.i, !llvm.loop !96

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i104.i.i.i.i: ; preds = %.peel.next.i.i111.i.i.i.i, %bb.y, %bb.w
  %.0.lcssa.i.i105.i.i.i.i = phi i64 [ %.sroa.speculated.i102.i.i.i.i, %bb.w ], [ %i.ig, %bb.y ], [ %i.in, %.peel.next.i.i111.i.i.i.i ] ; 2 uses
  %.lcssa.i.i106.i.i.i.i = phi ptr [ %i.hz, %bb.w ], [ %i.id, %bb.y ], [ %i.id, %.peel.next.i.i111.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i106.i.i.i.i, i8 57, i64 %.0.lcssa.i.i105.i.i.i.i, i1 false)
  %i.ir = load ptr, ptr %i.hx, align 8, !tbaa !92
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %.0.lcssa.i.i105.i.i.i.i
  store ptr %i.is, ptr %i.hx, align 8, !tbaa !92
  %i.it = sub i64 %.4.i.i.i.i, %.sroa.speculated.i102.i.i.i.i
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i"

bb.z:                                             ; preds = %bb.t
  %i.iu = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.iv = extractvalue { i64, i64 } %i.iu, 0      ; 2 uses
  %.sroa.0195.0.extract.trunc.i.i.i.i = trunc i64 %i.iv to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i64 %i.iv, 32 ; 2 uses
  %i.iw = icmp eq i64 %.0239.i.i.i.i, 1
  br i1 %i.iw, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %.not41.i.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not41.i.i.i.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ix = trunc i64 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.iy = icmp sgt i32 %.sroa.0195.0.extract.trunc.i.i.i.i, 4
  %i.iz = and i1 %i.iy, %i.ix
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.ja = icmp eq i64 %.0239.i.i.i.i, %i.gt
  br i1 %i.ja, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jb = trunc i64 %.sroa.5.0.extract.shift.i.i.i.i to i1
  %i.jc = icmp sgt i32 %.sroa.0195.0.extract.trunc.i.i.i.i, 4
  %i.jd = and i1 %i.jc, %i.jb
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.028.i.i.i.i = phi i1 [ true, %bb.ac ], [ %i.jd, %bb.ad ], [ true, %bb.aa ], [ %i.iz, %bb.ab ] ; 2 uses
  %i.je = zext i1 %.028.i.i.i.i to i8
  %i.jf = add i8 %i.gv, 48
  %i.jg = add i8 %i.jf, %i.je
  %i.jh = icmp ne i64 %.0252.i.i.i.i, 0           ; 2 uses
  %.sroa.speculated.i117.i.i.i.i = zext i1 %i.jh to i64 ; 3 uses
  br i1 %i.jh, label %bb.af, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit128.i.i.i.i"

bb.af:                                            ; preds = %bb.ae
  %i.ji = load ptr, ptr %i.go, align 8, !tbaa !33 ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !88
  %i.jl = add i64 %i.jk, %.sroa.speculated.i117.i.i.i.i
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !88
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 1056 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 24 ; 4 uses
  %i.jo = ptrtoint ptr %i.jm to i64               ; 2 uses
  %i.jp = load ptr, ptr %i.jn, align 8, !tbaa !92 ; 3 uses
  %i.jq = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jr = sub i64 %i.jo, %i.jq
  %i.js = icmp ult i64 %i.jr, %.sroa.speculated.i117.i.i.i.i
  br i1 %i.js, label %.lr.ph.i.i122.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i119.i.i.i.i

.lr.ph.i.i122.i.i.i.i:                            ; preds = %bb.af
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 4 uses
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %.not.peel.i.i123.i.i.i.i = icmp eq ptr %i.jm, %i.jp
  %spec.select2.i.i.i = select i1 %.not.peel.i.i123.i.i.i.i, i64 %i.jo, i64 %i.jq
  %i.jw = sub i64 %spec.select2.i.i.i, %i.ju
  %i.jx = load ptr, ptr %i.jv, align 8, !tbaa !93
  %i.jy = load ptr, ptr %i.ji, align 8, !tbaa !94
  call void %i.jx(ptr noundef %i.jy, i64 %i.jw, ptr nonnull %i.jt), !inline_history !155
  store ptr %i.jt, ptr %i.jn, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i119.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i119.i.i.i.i: ; preds = %.lr.ph.i.i122.i.i.i.i, %bb.af
  %.lcssa.i.i121.i.i.i.i = phi ptr [ %i.jp, %bb.af ], [ %i.jt, %.lr.ph.i.i122.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i.i121.i.i.i.i, i8 %i.jg, i64 1, i1 false)
  %i.jz = load ptr, ptr %i.jn, align 8, !tbaa !92
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1
  store ptr %i.ka, ptr %i.jn, align 8, !tbaa !92
  %i.kb = sub nuw i64 %.0252.i.i.i.i, %.sroa.speculated.i117.i.i.i.i
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit128.i.i.i.i"

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit128.i.i.i.i": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i119.i.i.i.i, %bb.ae
  %.6.i.i.i.i = phi i64 [ 0, %bb.ae ], [ %i.kb, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i119.i.i.i.i ]
  %i.kc = add i64 %.0239.i.i.i.i, -1
  %i.kd = select i1 %.028.i.i.i.i, i8 48, i8 57   ; 3 uses
  %.sroa.speculated.i129.i.i.i.i = call i64 @llvm.umin.i64(i64 %.6.i.i.i.i, i64 %i.kc) ; 5 uses
  %.not.i130.i.i.i.i = icmp eq i64 %.sroa.speculated.i129.i.i.i.i, 0
  br i1 %.not.i130.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit128.i.i.i.i"
  %i.ke = load ptr, ptr %i.go, align 8, !tbaa !33 ; 7 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !88
  %i.kh = add i64 %i.kg, %.sroa.speculated.i129.i.i.i.i
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !88
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 1056 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 24 ; 8 uses
  %i.kk = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !92 ; 4 uses
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = sub i64 %i.kk, %i.km                    ; 4 uses
  %i.ko = icmp ugt i64 %.sroa.speculated.i129.i.i.i.i, %i.kn
  br i1 %i.ko, label %.lr.ph.i.i134.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i131.i.i.i.i

.lr.ph.i.i134.i.i.i.i:                            ; preds = %bb.ag
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ke, i64 32 ; 8 uses
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 2 uses
  %i.ks = sub nuw i64 %.sroa.speculated.i129.i.i.i.i, %i.kn ; 3 uses
  %.not.peel.i.i135.i.i.i.i = icmp eq ptr %i.ki, %i.kl
  br i1 %.not.peel.i.i135.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i134.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.kl, i8 %i.kd, i64 %i.kn, i1 false)
  %i.kt = load ptr, ptr %i.kj, align 8, !tbaa !92
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kn ; 2 uses
  store ptr %i.ku, ptr %i.kj, align 8, !tbaa !92
  %.pre.i.i136.i.i.i.i = ptrtoint ptr %i.ku to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i134.i.i.i.i
  %.pre-phi.i.i137.i.i.i.i = phi i64 [ %.pre.i.i136.i.i.i.i, %bb.ah ], [ %i.kk, %.lr.ph.i.i134.i.i.i.i ]
  %i.kv = sub i64 %.pre-phi.i.i137.i.i.i.i, %i.kq
  %i.kw = load ptr, ptr %i.kr, align 8, !tbaa !93
  %i.kx = load ptr, ptr %i.ke, align 8, !tbaa !94
  call void %i.kw(ptr noundef %i.kx, i64 %i.kv, ptr nonnull %i.kp), !inline_history !155
  store ptr %i.kp, ptr %i.kj, align 8, !tbaa !92
  %i.ky = icmp ugt i64 %i.ks, 1024
  br i1 %i.ky, label %.peel.next.i.i138.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i131.i.i.i.i

.peel.next.i.i138.i.i.i.i:                        ; preds = %bb.ai, %.peel.next.i.i138.i.i.i.i
  %.010.i.i139.i.i.i.i = phi i64 [ %i.kz, %.peel.next.i.i138.i.i.i.i ], [ %i.ks, %bb.ai ]
  %i.kz = add i64 %.010.i.i139.i.i.i.i, -1024     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.kp, i8 %i.kd, i64 1024, i1 false)
  store ptr %i.ki, ptr %i.kj, align 8, !tbaa !92
  %i.la = load ptr, ptr %i.kr, align 8, !tbaa !93
  %i.lb = load ptr, ptr %i.ke, align 8, !tbaa !94
  call void %i.la(ptr noundef %i.lb, i64 1024, ptr nonnull %i.kp), !inline_history !155
  store ptr %i.kp, ptr %i.kj, align 8, !tbaa !92
  %i.lc = icmp ugt i64 %i.kz, 1024
  br i1 %i.lc, label %.peel.next.i.i138.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i131.i.i.i.i, !llvm.loop !96

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i131.i.i.i.i: ; preds = %.peel.next.i.i138.i.i.i.i, %bb.ai, %bb.ag
  %.0.lcssa.i.i132.i.i.i.i = phi i64 [ %.sroa.speculated.i129.i.i.i.i, %bb.ag ], [ %i.ks, %bb.ai ], [ %i.kz, %.peel.next.i.i138.i.i.i.i ] ; 2 uses
  %.lcssa.i.i133.i.i.i.i = phi ptr [ %i.kl, %bb.ag ], [ %i.kp, %bb.ai ], [ %i.kp, %.peel.next.i.i138.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i133.i.i.i.i, i8 %i.kd, i64 %.0.lcssa.i.i132.i.i.i.i, i1 false)
  %i.ld = load ptr, ptr %i.kj, align 8, !tbaa !92
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %.0.lcssa.i.i132.i.i.i.i
  store ptr %i.le, ptr %i.kj, align 8, !tbaa !92
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i104.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit101.i.i.i.i"
  %.5.i.i.i.i = phi i64 [ %.4.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit101.i.i.i.i" ], [ %i.it, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i104.i.i.i.i ]
  %.neg.i.i.i.i = xor i64 %i.gr, -1
  %i.lf = add i64 %.0239.i.i.i.i, %.neg.i.i.i.i   ; 2 uses
  %.not40.i.i.i.i = icmp eq i64 %i.lf, 0
  br i1 %.not40.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i", label %bb.s

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.thread.thread271.i.i.i.i": ; preds = %bb.s
  %.sroa.speculated.i141.i.i.i.i = call i64 @llvm.umin.i64(i64 %.0252.i.i.i.i, i64 %.0239.i.i.i.i) ; 4 uses
  %.not.i142.i.i.i.i = icmp eq i64 %.0252.i.i.i.i, 0
  br i1 %.not.i142.i.i.i.i, label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.thread.thread271.i.i.i.i"
  %i.lg = load ptr, ptr %i.go, align 8, !tbaa !33 ; 7 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !88
  %i.lj = add i64 %i.li, %.sroa.speculated.i141.i.i.i.i
  store i64 %i.lj, ptr %i.lh, align 8, !tbaa !88
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 1056 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 24 ; 8 uses
  %i.lm = ptrtoint ptr %i.lk to i64               ; 2 uses
  %i.ln = load ptr, ptr %i.ll, align 8, !tbaa !92 ; 4 uses
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = sub i64 %i.lm, %i.lo                    ; 4 uses
  %i.lq = icmp ugt i64 %.sroa.speculated.i141.i.i.i.i, %i.lp
  br i1 %i.lq, label %.lr.ph.i.i146.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i

.lr.ph.i.i146.i.i.i.i:                            ; preds = %bb.aj
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 8 uses
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lu = sub nuw i64 %.sroa.speculated.i141.i.i.i.i, %i.lp ; 3 uses
  %.not.peel.i.i147.i.i.i.i = icmp eq ptr %i.lk, %i.ln
  br i1 %.not.peel.i.i147.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i146.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ln, i8 48, i64 %i.lp, i1 false)
  %i.lv = load ptr, ptr %i.ll, align 8, !tbaa !92
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lp ; 2 uses
  store ptr %i.lw, ptr %i.ll, align 8, !tbaa !92
  %.pre.i.i148.i.i.i.i = ptrtoint ptr %i.lw to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i146.i.i.i.i
  %.pre-phi.i.i149.i.i.i.i = phi i64 [ %.pre.i.i148.i.i.i.i, %bb.ak ], [ %i.lm, %.lr.ph.i.i146.i.i.i.i ]
  %i.lx = sub i64 %.pre-phi.i.i149.i.i.i.i, %i.ls
  %i.ly = load ptr, ptr %i.lt, align 8, !tbaa !93
  %i.lz = load ptr, ptr %i.lg, align 8, !tbaa !94
  call void %i.ly(ptr noundef %i.lz, i64 %i.lx, ptr nonnull %i.lr), !inline_history !155
  store ptr %i.lr, ptr %i.ll, align 8, !tbaa !92
  %i.ma = icmp ugt i64 %i.lu, 1024
  br i1 %i.ma, label %.peel.next.i.i150.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i

.peel.next.i.i150.i.i.i.i:                        ; preds = %bb.al, %.peel.next.i.i150.i.i.i.i
  %.010.i.i151.i.i.i.i = phi i64 [ %i.mb, %.peel.next.i.i150.i.i.i.i ], [ %i.lu, %bb.al ]
  %i.mb = add i64 %.010.i.i151.i.i.i.i, -1024     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.lr, i8 48, i64 1024, i1 false)
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !92
  %i.mc = load ptr, ptr %i.lt, align 8, !tbaa !93
  %i.md = load ptr, ptr %i.lg, align 8, !tbaa !94
  call void %i.mc(ptr noundef %i.md, i64 1024, ptr nonnull %i.lr), !inline_history !155
  store ptr %i.lr, ptr %i.ll, align 8, !tbaa !92
  %i.me = icmp ugt i64 %i.mb, 1024
  br i1 %i.me, label %.peel.next.i.i150.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i, !llvm.loop !96

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i: ; preds = %.peel.next.i.i150.i.i.i.i, %bb.al, %bb.aj
  %.0.lcssa.i.i144.i.i.i.i = phi i64 [ %.sroa.speculated.i141.i.i.i.i, %bb.aj ], [ %i.lu, %bb.al ], [ %i.mb, %.peel.next.i.i150.i.i.i.i ] ; 2 uses
  %.lcssa.i.i145.i.i.i.i = phi ptr [ %i.ln, %bb.aj ], [ %i.lr, %bb.al ], [ %i.lr, %.peel.next.i.i150.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i145.i.i.i.i, i8 48, i64 %.0.lcssa.i.i144.i.i.i.i, i1 false)
  %i.mf = load ptr, ptr %i.ll, align 8, !tbaa !92
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.0.lcssa.i.i144.i.i.i.i
  store ptr %i.mg, ptr %i.ll, align 8, !tbaa !92
  br label %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"

"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i": ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.i.i.i.i", %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i143.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit140.thread.thread271.i.i.i.i", %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i131.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit128.i.i.i.i", %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit.i.i.i.i"
  %i.mh = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !33 ; 6 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !156, !nonnull !117
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !35, !range !128, !noundef !117
  %i.mn = trunc nuw i8 %i.mm to i1
  %i.mo = select i1 %i.mn, i8 69, i8 101
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 16 ; 2 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !88
  %i.mr = add i64 %i.mq, 1
  store i64 %i.mr, ptr %i.mp, align 8, !tbaa !88
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 1056
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mj, i64 24 ; 4 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !92 ; 2 uses
  %i.mv = icmp eq ptr %i.ms, %i.mu
  br i1 %i.mv, label %.lr.ph.i156.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i

.lr.ph.i156.i.i.i.i:                              ; preds = %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mj, i64 32 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !93
  %i.mz = load ptr, ptr %i.mj, align 8, !tbaa !94
  call void %i.my(ptr noundef %i.mz, i64 1024, ptr nonnull %i.mw), !inline_history !154
  store ptr %i.mw, ptr %i.mt, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i: ; preds = %.lr.ph.i156.i.i.i.i, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i"
  %.lcssa.i155.i.i.i.i = phi ptr [ %i.mu, %"_ZZZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS0_7uint128EibRKNS2_11FormatStateEmENK3$_0clENS2_15BinaryToDecimalEENKUlmcE_clEmc.exit152.i.i.i.i" ], [ %i.mw, %.lr.ph.i156.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i155.i.i.i.i, i8 %i.mo, i64 1, i1 false)
  %i.na = load ptr, ptr %i.mt, align 8, !tbaa !92
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store ptr %i.nb, ptr %i.mt, align 8, !tbaa !92
  %i.nc = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !33 ; 6 uses
  %i.nf = icmp sgt i32 %.1.i.i.i.i, -1
  %i.ng = select i1 %i.nf, i8 43, i8 45
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !88
  %i.nj = add i64 %i.ni, 1
  store i64 %i.nj, ptr %i.nh, align 8, !tbaa !88
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 1056
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 24 ; 4 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !92 ; 2 uses
  %i.nn = icmp eq ptr %i.nk, %i.nm
  br i1 %i.nn, label %.lr.ph.i166.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i

.lr.ph.i166.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.ne, i64 32 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !93
  %i.nr = load ptr, ptr %i.ne, align 8, !tbaa !94
  call void %i.nq(ptr noundef %i.nr, i64 1024, ptr nonnull %i.no), !inline_history !154
  store ptr %i.no, ptr %i.nl, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i: ; preds = %.lr.ph.i166.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i
  %.lcssa.i165.i.i.i.i = phi ptr [ %i.nm, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit162.i.i.i.i ], [ %i.no, %.lr.ph.i166.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i165.i.i.i.i, i8 %i.ng, i64 1, i1 false)
  %i.ns = load ptr, ptr %i.nl, align 8, !tbaa !92
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store ptr %i.nt, ptr %i.nl, align 8, !tbaa !92
  br i1 %i.bk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.nu = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !33 ; 6 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !88
  %i.nz = add i64 %i.ny, 1
  store i64 %i.nz, ptr %i.nx, align 8, !tbaa !88
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1056
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 24 ; 4 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !92 ; 2 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %.lr.ph.i176.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

.lr.ph.i176.i.i.i.i:                              ; preds = %bb.am
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nw, i64 32 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !93
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !94
  call void %i.og(ptr noundef %i.oh, i64 1024, ptr nonnull %i.oe), !inline_history !154
  store ptr %i.oe, ptr %i.ob, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i: ; preds = %.lr.ph.i176.i.i.i.i, %bb.am
  %.lcssa.i175.i.i.i.i = phi ptr [ %i.oc, %bb.am ], [ %i.oe, %.lr.ph.i176.i.i.i.i ]
  store i8 48, ptr %.lcssa.i175.i.i.i.i, align 1
  %i.oi = load ptr, ptr %i.ob, align 8, !tbaa !92
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  store ptr %i.oj, ptr %i.ob, align 8, !tbaa !92
  br label %bb.an

bb.an:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit182.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit172.i.i.i.i
  %i.ok = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !33 ; 7 uses
  %i.on = icmp eq i64 %i.bl, 0
  br i1 %i.on, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !88
  %i.oq = add i64 %i.op, %i.bl
  store i64 %i.oq, ptr %i.oo, align 8, !tbaa !88
  %i.or = getelementptr inbounds nuw i8, ptr %i.om, i64 1056
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 24 ; 4 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !92 ; 2 uses
  %i.ou = ptrtoint ptr %i.or to i64
  %i.ov = ptrtoint ptr %i.ot to i64               ; 2 uses
  %i.ow = sub i64 %i.ou, %i.ov
  %.not.i183.i.i.i.i = icmp ult i64 %i.bl, %i.ow
  br i1 %.not.i183.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ox = getelementptr inbounds nuw i8, ptr %i.om, i64 32 ; 3 uses
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = sub i64 %i.ov, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !93
  %i.pc = load ptr, ptr %i.om, align 8, !tbaa !94
  call void %i.pb(ptr noundef %i.pc, i64 %i.oz, ptr nonnull %i.ox), !inline_history !157
  store ptr %i.ox, ptr %i.os, align 8, !tbaa !92
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !93
  %i.pe = load ptr, ptr %i.om, align 8, !tbaa !94
  call void %i.pd(ptr noundef %i.pe, i64 %i.bl, ptr nonnull %i.a), !inline_history !158
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ot, ptr nonnull align 16 %i.a, i64 %i.bl, i1 false)
  %i.pf = load ptr, ptr %i.os, align 8, !tbaa !92
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.bl
  store ptr %i.pg, ptr %i.os, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %i.ph = load ptr, ptr %0, align 8, !tbaa !148, !nonnull !117, !align !118
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !33 ; 7 uses
  %i.pk = icmp eq i64 %.sroa.9205.0258.i.i.i.i, 0
  br i1 %i.pk, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 16 ; 2 uses
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !88
  %i.pn = add i64 %i.pm, %.sroa.9205.0258.i.i.i.i
  store i64 %i.pn, ptr %i.pl, align 8, !tbaa !88
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 1056 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24 ; 8 uses
  %i.pq = ptrtoint ptr %i.po to i64               ; 2 uses
  %i.pr = load ptr, ptr %i.pp, align 8, !tbaa !92 ; 4 uses
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.pq, %i.ps                    ; 4 uses
  %i.pu = icmp ugt i64 %.sroa.9205.0258.i.i.i.i, %i.pt
  br i1 %i.pu, label %.lr.ph.i187.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.lr.ph.i187.i.i.i.i:                              ; preds = %bb.ar
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pj, i64 32 ; 8 uses
  %i.pw = ptrtoint ptr %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pj, i64 8 ; 2 uses
  %i.py = sub nuw nsw i64 %.sroa.9205.0258.i.i.i.i, %i.pt ; 3 uses
  %.not.peel.i188.i.i.i.i = icmp eq ptr %i.po, %i.pr
  br i1 %.not.peel.i188.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i187.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.pr, i8 32, i64 %i.pt, i1 false)
  %i.pz = load ptr, ptr %i.pp, align 8, !tbaa !92
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.pt ; 2 uses
  store ptr %i.qa, ptr %i.pp, align 8, !tbaa !92
  %.pre.i189.i.i.i.i = ptrtoint ptr %i.qa to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i187.i.i.i.i
  %.pre-phi.i190.i.i.i.i = phi i64 [ %.pre.i189.i.i.i.i, %bb.as ], [ %i.pq, %.lr.ph.i187.i.i.i.i ]
  %i.qb = sub i64 %.pre-phi.i190.i.i.i.i, %i.pw
  %i.qc = load ptr, ptr %i.px, align 8, !tbaa !93
  %i.qd = load ptr, ptr %i.pj, align 8, !tbaa !94
  call void %i.qc(ptr noundef %i.qd, i64 %i.qb, ptr nonnull %i.pv), !inline_history !154
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !92
  %i.qe = icmp ugt i64 %i.py, 1024
  br i1 %i.qe, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i

.peel.next.i191.i.i.i.i:                          ; preds = %bb.at, %.peel.next.i191.i.i.i.i
  %.010.i192.i.i.i.i = phi i64 [ %i.qf, %.peel.next.i191.i.i.i.i ], [ %i.py, %bb.at ]
  %i.qf = add i64 %.010.i192.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.pv, i8 32, i64 1024, i1 false)
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !92
  %i.qg = load ptr, ptr %i.px, align 8, !tbaa !93
  %i.qh = load ptr, ptr %i.pj, align 8, !tbaa !94
  call void %i.qg(ptr noundef %i.qh, i64 1024, ptr nonnull %i.pv), !inline_history !154
  store ptr %i.pv, ptr %i.pp, align 8, !tbaa !92
  %i.qi = icmp ugt i64 %i.qf, 1024
  br i1 %i.qi, label %.peel.next.i191.i.i.i.i, label %._crit_edge.i184.i.i.i.i, !llvm.loop !96

._crit_edge.i184.i.i.i.i:                         ; preds = %.peel.next.i191.i.i.i.i, %bb.at, %bb.ar
  %.0.lcssa.i185.i.i.i.i = phi i64 [ %.sroa.9205.0258.i.i.i.i, %bb.ar ], [ %i.py, %bb.at ], [ %i.qf, %.peel.next.i191.i.i.i.i ] ; 2 uses
  %.lcssa.i186.i.i.i.i = phi ptr [ %i.pr, %bb.ar ], [ %i.pv, %bb.at ], [ %i.pv, %.peel.next.i191.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i186.i.i.i.i, i8 32, i64 %.0.lcssa.i185.i.i.i.i, i1 false)
  %i.qj = load ptr, ptr %i.pp, align 8, !tbaa !92
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %.0.lcssa.i185.i.i.i.i
  store ptr %i.qk, ptr %i.pp, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i: ; preds = %._crit_edge.i184.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatEPositiveExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_15BinaryToDecimalEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %bb.a, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit193.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !159    ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107
  %.not.i.i = icmp ult i64 %i.c, %i.e
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_111GetOneDigitERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE.exit.thread

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115BinaryToDecimal13AdvanceDigitsEv.exit.thread.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = add nuw i64 %i.c, 1
  store i64 %i.g, ptr %0, align 8, !tbaa !111
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !56   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = urem i32 %i.j, 10
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8, !tbaa !14
  %i.q = udiv i32 %i.j, 10000000
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.q to i16
  %i.r = urem i16 %.lhs.trunc9.i.i, 10
  %i.s = trunc nuw nsw i16 %i.r to i8
  %i.t = udiv i32 %i.j, 100000000
  %.lhs.trunc11.i.i = trunc nuw nsw i32 %i.t to i8
  %i.u = urem i8 %.lhs.trunc11.i.i, 10
  %i.v = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.x = udiv <4 x i32> %i.w, <i32 10000, i32 1000, i32 100, i32 10>
  %i.y = urem <4 x i32> %i.x, splat (i32 10)
  %i.z = trunc nuw nsw <4 x i32> %i.y to <4 x i8>
  %i.aa = udiv i32 %i.j, 100000
  %i.ab = udiv i32 %i.j, 1000000
  %.lhs.trunc.i.i = trunc nuw i32 %i.aa to i16
  %.lhs.trunc7.i.i = trunc nuw nsw i32 %i.ab to i16
end_hunk_3
begin_hunk_4_@"_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS0_7uint128EibRKNS4_11FormatStateEmE3$_0vJNS4_24FractionalDigitGeneratorEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
.thread.i.i.i.i:                                  ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %.sroa.92.0.i.i.i = phi i64 [ %.lcssa322328.i.i.i.i, %bb.b ], [ %.lcssa322328.i.i.i.i, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ] ; 3 uses
  %.val82342.i.i.i.i = phi i8 [ %storemerge.lcssa.i.i.i.i.i, %bb.b ], [ %storemerge.lcssa.i.i.i.i.i, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ] ; 4 uses
  %.2266.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i.i.i.i.i, %bb.b ], [ %i.br, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ] ; 3 uses
  %.255.i.i.i.i = phi i32 [ %.053335.i.i.i.i, %bb.b ], [ %i.bs, %bb.d ], [ 0, %bb.a ], [ %i.bt, %bb.e ] ; 3 uses
  %.2.i.i.i.i = phi i32 [ %i.bq, %bb.b ], [ 9, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ] ; 4 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !31 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !166, !nonnull !117, !align !118
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %.050.i.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.by, i64 %i.cb) ; 5 uses
  %.not67.not.i.i.i.i = icmp ult i64 %.2266.i.i.i.i, %.050.i.i.i.i
  br i1 %.not67.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i.i
  %i.cc = icmp ne i64 %.2266.i.i.i.i, %.050.i.i.i.i
  %i.cd = icmp sgt i8 %.val82342.i.i.i.i, 5
  %or.cond.i.i.i.i = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond.i.i.i.i, label %.critedge77.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.f
  %i.ce = icmp eq i8 %.val82342.i.i.i.i, 5
  %i.cf = icmp ne i64 %.sroa.92.0.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.critedge77.i.i.i.i, label %bb.g

.critedge77.i.i.i.i:                              ; preds = %.split.i.i.i.i, %bb.f
  %i.cg = icmp eq i32 %.2.i.i.i.i, 9
  %i.ch = add nsw i32 %.2.i.i.i.i, 1
  %i.ci = select i1 %i.cg, i32 1, i32 %i.ch       ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 1
  %.neg.i.i.i.i = sext i1 %i.cj to i32
  %i.ck = add i32 %.255.i.i.i.i, %.neg.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %.critedge77.i.i.i.i, %.split.i.i.i.i, %.thread.i.i.i.i
  %.457.i.i.i.i = phi i32 [ %.255.i.i.i.i, %.thread.i.i.i.i ], [ %i.ck, %.critedge77.i.i.i.i ], [ %.255.i.i.i.i, %.split.i.i.i.i ] ; 2 uses
  %.149.i.i.i.i = phi i8 [ 57, %.thread.i.i.i.i ], [ 48, %.critedge77.i.i.i.i ], [ 57, %.split.i.i.i.i ] ; 3 uses
  %.4.i.i.i.i = phi i32 [ %.2.i.i.i.i, %.thread.i.i.i.i ], [ %i.ci, %.critedge77.i.i.i.i ], [ %.2.i.i.i.i, %.split.i.i.i.i ]
  %.neg69.i.i.i.i = add i32 %.457.i.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store i8 45, ptr %i.a, align 16, !tbaa !14
  %i.cm = icmp slt i32 %.457.i.i.i.i, 9
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 48, ptr %i.cl, align 1, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.046.i.i.i.i = phi ptr [ %i.cn, %bb.h ], [ %i.cl, %bb.g ]
  %i.co = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %.neg69.i.i.i.i, ptr noundef nonnull %.046.i.i.i.i) ; 2 uses
  %.not70.not.i.i.i.i = icmp ugt i64 %i.by, %i.cb ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164 ; 7 uses
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %.pre.i.i.i.i, i64 16
  %.val.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !84 ; 3 uses
  br i1 %.not70.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.pre.i.i.i.i, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !9
  %i.cr = and i8 %i.cq, 8
  %.not288.i.i.i.i = icmp eq i8 %i.cr, 0
  %i.cs = select i1 %.not288.i.i.i.i, i64 1, i64 2
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.j, %bb.i
  %i.ct = phi i64 [ %i.cs, %bb.j ], [ 2, %bb.i ]
  %i.cu = ptrtoint ptr %i.co to i64
  %i.cv = ptrtoint ptr %i.a to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = load i8, ptr %.pre.i.i.i.i, align 8, !tbaa !26 ; 5 uses
  %.not71.i.i.i.i = icmp ne i8 %i.cx, 0
  %i.cy = zext i1 %.not71.i.i.i.i to i64
  %i.cz = add i64 %.050.i.i.i.i, 1
  %i.da = add i64 %i.cz, %i.cw
  %i.db = add i64 %i.da, %i.ct
  %i.dc = add i64 %i.db, %i.cy                    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.pre.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !16, !noalias !167 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dg = zext nneg i32 %i.de to i64              ; 2 uses
  %.not.i96.i.i.i.i = icmp ult i64 %i.dc, %i.dg
  br i1 %.not.i96.i.i.i.i, label %bb.l, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dh = sub nuw nsw i64 %i.dg, %i.dc            ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val.pre.i.i.i.i, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !9, !noalias !167 ; 2 uses
  %i.dk = trunc i8 %i.dj to i1
  br i1 %i.dk, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = and i8 %i.dj, 16
  %.not1.i.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i: ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !88
  %i.dq = add i64 %i.dp, %i.dh
  store i64 %i.dq, ptr %i.do, align 8, !tbaa !88
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 1056 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 8 uses
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !92 ; 4 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dt, %i.dv                    ; 4 uses
  %i.dx = icmp ugt i64 %i.dh, %i.dw
  br i1 %i.dx, label %.lr.ph.i97.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i97.i.i.i.i:                               ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 8 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.eb = sub nuw nsw i64 %i.dh, %i.dw            ; 3 uses
  %.not.peel.i.i.i.i.i = icmp eq ptr %i.dr, %i.du
  br i1 %.not.peel.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i97.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.du, i8 32, i64 %i.dw, i1 false)
  %i.ec = load ptr, ptr %i.ds, align 8, !tbaa !92
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dw ; 2 uses
  store ptr %i.ed, ptr %i.ds, align 8, !tbaa !92
  %.pre.i.i.i.i.i = ptrtoint ptr %i.ed to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i97.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %bb.n ], [ %i.dt, %.lr.ph.i97.i.i.i.i ]
  %i.ee = sub i64 %.pre-phi.i.i.i.i.i, %i.dz
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !93
  %i.eg = load ptr, ptr %i.dn, align 8, !tbaa !94
  call void %i.ef(ptr noundef %i.eg, i64 %i.ee, ptr nonnull %i.dy), !inline_history !170
  store ptr %i.dy, ptr %i.ds, align 8, !tbaa !92
  %i.eh = icmp samesign ugt i64 %i.eb, 1024
  br i1 %i.eh, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.o, %.peel.next.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ei, %.peel.next.i.i.i.i.i ], [ %i.eb, %bb.o ]
  %i.ei = add i64 %.010.i.i.i.i.i, -1024          ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.dy, i8 32, i64 1024, i1 false)
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !92
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !93
  %i.ek = load ptr, ptr %i.dn, align 8, !tbaa !94
  call void %i.ej(ptr noundef %i.ek, i64 1024, ptr nonnull %i.dy), !inline_history !170
  store ptr %i.dy, ptr %i.ds, align 8, !tbaa !92
  %i.el = icmp ugt i64 %i.ei, 1024
  br i1 %i.el, label %.peel.next.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !96

._crit_edge.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i, %bb.o, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.dh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.eb, %bb.o ], [ %i.ei, %.peel.next.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi ptr [ %i.du, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_119ExtraWidthToPaddingEmRKNS2_11FormatStateE.exit.i.i.i.i ], [ %i.dy, %bb.o ], [ %i.dy, %.peel.next.i.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i.i.i.i.i, i8 32, i64 %.0.lcssa.i.i.i.i.i, i1 false)
  %i.em = load ptr, ptr %i.ds, align 8, !tbaa !92
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.en, ptr %i.ds, align 8, !tbaa !92
  %.pre389.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164 ; 2 uses
  %.pre390.i.i.i.i = load i8, ptr %.pre389.i.i.i.i, align 8, !tbaa !26
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %bb.m, %bb.l, %bb.k, %._crit_edge.i.i.i.i
  %i.eo = phi i8 [ %.pre390.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.cx, %bb.l ], [ %i.cx, %bb.m ], [ %i.cx, %bb.k ], [ %i.cx, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ep = phi ptr [ %.pre389.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.l ], [ %.pre.i.i.i.i, %bb.m ], [ %.pre.i.i.i.i, %bb.k ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.9.0276.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i ], [ %i.dh, %bb.l ], [ 0, %bb.m ], [ 0, %bb.k ], [ 0, %._crit_edge.i.i.i.i ] ; 5 uses
  %.not72.i.i.i.i = icmp eq i8 %i.eo, 0
  br i1 %.not72.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !33 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !88
  %i.eu = add i64 %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !88
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 1056
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 4 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !92 ; 2 uses
  %i.ey = icmp eq ptr %i.ev, %i.ex
  br i1 %i.ey, label %.lr.ph.i101.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit107.i.i.i.i

.lr.ph.i101.i.i.i.i:                              ; preds = %bb.p
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 32 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !93
  %i.fc = load ptr, ptr %i.er, align 8, !tbaa !94
  call void %i.fb(ptr noundef %i.fc, i64 1024, ptr nonnull %i.ez), !inline_history !170
  store ptr %i.ez, ptr %i.ew, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit107.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit107.i.i.i.i: ; preds = %.lr.ph.i101.i.i.i.i, %bb.p
  %.lcssa.i100.i.i.i.i = phi ptr [ %i.ex, %bb.p ], [ %i.ez, %.lr.ph.i101.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i100.i.i.i.i, i8 %i.eo, i64 1, i1 false)
  %i.fd = load ptr, ptr %i.ew, align 8, !tbaa !92
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fe, ptr %i.ew, align 8, !tbaa !92
  %.pre391.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit107.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i
  %i.ff = phi ptr [ %.pre391.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit107.i.i.i.i ], [ %i.ep, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit.i.i.i.i ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !33 ; 6 uses
  %i.fi = trunc i32 %.4.i.i.i.i to i8
  %i.fj = add i8 %i.fi, 48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !88
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !88
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 1056
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 24 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !92 ; 2 uses
  %i.fq = icmp eq ptr %i.fn, %i.fp
  br i1 %i.fq, label %.lr.ph.i111.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit117.i.i.i.i

.lr.ph.i111.i.i.i.i:                              ; preds = %bb.q
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !93
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !94
  call void %i.ft(ptr noundef %i.fu, i64 1024, ptr nonnull %i.fr), !inline_history !170
  store ptr %i.fr, ptr %i.fo, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit117.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit117.i.i.i.i: ; preds = %.lr.ph.i111.i.i.i.i, %bb.q
  %.lcssa.i110.i.i.i.i = phi ptr [ %i.fp, %bb.q ], [ %i.fr, %.lr.ph.i111.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i110.i.i.i.i, i8 %i.fj, i64 1, i1 false)
  %i.fv = load ptr, ptr %i.fo, align 8, !tbaa !92
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store ptr %i.fw, ptr %i.fo, align 8, !tbaa !92
  %.pre392.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164 ; 3 uses
  br i1 %.not70.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit117.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre392.i.i.i.i, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !84, !nonnull !117, !align !171
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !9
  %i.gb = and i8 %i.ga, 8
  %.not289.i.i.i.i = icmp eq i8 %i.gb, 0
  br i1 %.not289.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit117.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.pre392.i.i.i.i, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !33 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !88
  %i.gg = add i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 1056
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 24 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !92 ; 2 uses
  %i.gk = icmp eq ptr %i.gh, %i.gj
  br i1 %i.gk, label %.lr.ph.i121.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit127.i.i.i.i

.lr.ph.i121.i.i.i.i:                              ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 32 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !93
  %i.go = load ptr, ptr %i.gd, align 8, !tbaa !94
  call void %i.gn(ptr noundef %i.go, i64 1024, ptr nonnull %i.gl), !inline_history !170
  store ptr %i.gl, ptr %i.gi, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit127.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit127.i.i.i.i: ; preds = %.lr.ph.i121.i.i.i.i, %bb.s
  %.lcssa.i120.i.i.i.i = phi ptr [ %i.gj, %bb.s ], [ %i.gl, %.lr.ph.i121.i.i.i.i ]
  store i8 46, ptr %.lcssa.i120.i.i.i.i, align 1
  %i.gp = load ptr, ptr %i.gi, align 8, !tbaa !92
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store ptr %i.gq, ptr %i.gi, align 8, !tbaa !92
  %.pre393.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164
  br label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit127.i.i.i.i, %bb.r
  %i.gr = phi ptr [ %.pre393.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit127.i.i.i.i ], [ %.pre392.i.i.i.i, %bb.r ]
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %.050.i.i.i.i, i64 %.2266.i.i.i.i) ; 6 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !33 ; 7 uses
  %i.gu = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.gu, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit137.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !88
  %i.gx = add i64 %i.gw, %.sroa.speculated.i.i.i.i
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !88
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 1056 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 8 uses
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !92 ; 4 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = sub i64 %i.ha, %i.hc                    ; 4 uses
  %i.he = icmp ugt i64 %.sroa.speculated.i.i.i.i, %i.hd
  br i1 %i.he, label %.lr.ph.i131.i.i.i.i, label %._crit_edge.i128.i.i.i.i

.lr.ph.i131.i.i.i.i:                              ; preds = %bb.u
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 8 uses
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.hi = sub nuw i64 %.sroa.speculated.i.i.i.i, %i.hd ; 3 uses
  %.not.peel.i132.i.i.i.i = icmp eq ptr %i.gy, %i.hb
  br i1 %.not.peel.i132.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i131.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.hb, i8 %.149.i.i.i.i, i64 %i.hd, i1 false)
  %i.hj = load ptr, ptr %i.gz, align 8, !tbaa !92
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hd ; 2 uses
  store ptr %i.hk, ptr %i.gz, align 8, !tbaa !92
  %.pre.i133.i.i.i.i = ptrtoint ptr %i.hk to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i131.i.i.i.i
  %.pre-phi.i134.i.i.i.i = phi i64 [ %.pre.i133.i.i.i.i, %bb.v ], [ %i.ha, %.lr.ph.i131.i.i.i.i ]
  %i.hl = sub i64 %.pre-phi.i134.i.i.i.i, %i.hg
  %i.hm = load ptr, ptr %i.hh, align 8, !tbaa !93
  %i.hn = load ptr, ptr %i.gt, align 8, !tbaa !94
  call void %i.hm(ptr noundef %i.hn, i64 %i.hl, ptr nonnull %i.hf), !inline_history !170
  store ptr %i.hf, ptr %i.gz, align 8, !tbaa !92
  %i.ho = icmp ugt i64 %i.hi, 1024
  br i1 %i.ho, label %.peel.next.i135.i.i.i.i, label %._crit_edge.i128.i.i.i.i

.peel.next.i135.i.i.i.i:                          ; preds = %bb.w, %.peel.next.i135.i.i.i.i
  %.010.i136.i.i.i.i = phi i64 [ %i.hp, %.peel.next.i135.i.i.i.i ], [ %i.hi, %bb.w ]
  %i.hp = add i64 %.010.i136.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.hf, i8 %.149.i.i.i.i, i64 1024, i1 false)
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !92
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !93
  %i.hr = load ptr, ptr %i.gt, align 8, !tbaa !94
  call void %i.hq(ptr noundef %i.hr, i64 1024, ptr nonnull %i.hf), !inline_history !170
  store ptr %i.hf, ptr %i.gz, align 8, !tbaa !92
  %i.hs = icmp ugt i64 %i.hp, 1024
  br i1 %i.hs, label %.peel.next.i135.i.i.i.i, label %._crit_edge.i128.i.i.i.i, !llvm.loop !96

._crit_edge.i128.i.i.i.i:                         ; preds = %.peel.next.i135.i.i.i.i, %bb.w, %bb.u
  %.0.lcssa.i129.i.i.i.i = phi i64 [ %.sroa.speculated.i.i.i.i, %bb.u ], [ %i.hi, %bb.w ], [ %i.hp, %.peel.next.i135.i.i.i.i ] ; 2 uses
  %.lcssa.i130.i.i.i.i = phi ptr [ %i.hb, %bb.u ], [ %i.hf, %bb.w ], [ %i.hf, %.peel.next.i135.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i130.i.i.i.i, i8 %.149.i.i.i.i, i64 %.0.lcssa.i129.i.i.i.i, i1 false)
  %i.ht = load ptr, ptr %i.gz, align 8, !tbaa !92
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.0.lcssa.i129.i.i.i.i
  store ptr %i.hu, ptr %i.gz, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit137.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit137.i.i.i.i: ; preds = %._crit_edge.i128.i.i.i.i, %bb.t
  %i.hv = sub i64 %.050.i.i.i.i, %.sroa.speculated.i.i.i.i ; 3 uses
  %.not73.old.i.i.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not73.old.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i, label %.preheader.split.i.i.i.i

.preheader.split.i.i.i.i:                         ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit137.i.i.i.i
  %.not.i138344.i.i.i.i = icmp ne i8 %.val82342.i.i.i.i, 0
  %i.hw = icmp ne i64 %.sroa.92.0.i.i.i, 0
  %i.hx = select i1 %.not.i138344.i.i.i.i, i1 true, i1 %i.hw
  br i1 %i.hx, label %.lr.ph348.i.i.i.i, label %.critedge.thread282.i.i.i.i

.lr.ph348.i.i.i.i:                                ; preds = %.preheader.split.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i
  %.val83396.i.i.i.i = phi i64 [ %.val83.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i ], [ %.sroa.92.0.i.i.i, %.preheader.split.i.i.i.i ] ; 9 uses
  %.val82346.i.i.i.i = phi i8 [ %.val82.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i ], [ %.val82342.i.i.i.i, %.preheader.split.i.i.i.i ] ; 4 uses
  %.0267345.i.i.i.i = phi i64 [ %i.pf, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i ], [ %i.hv, %.preheader.split.i.i.i.i ] ; 5 uses
  %.not.i.i139.i.i.i.i = icmp eq i64 %.val83396.i.i.i.i, 0
  br i1 %.not.i.i139.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i, label %.preheader.i.i140.i.i.i.i.preheader

.preheader.i.i140.i.i.i.i.preheader:              ; preds = %.lr.ph348.i.i.i.i
  %xtraiter242 = and i64 %.val83396.i.i.i.i, 1
  %i.hy = icmp eq i64 %.val83396.i.i.i.i, 1
  br i1 %i.hy, label %.preheader.i.i140.i.i.i.i.epil.preheader, label %.preheader.i.i140.i.i.i.i.preheader.new

.preheader.i.i140.i.i.i.i.preheader.new:          ; preds = %.preheader.i.i140.i.i.i.i.preheader
  %unroll_iter246 = and i64 %.val83396.i.i.i.i, -2
  br label %.preheader.i.i140.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i140.i.i.i.i
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i, label %.preheader.i.i140.i.i.i.i.epil.preheader

.preheader.i.i140.i.i.i.i.epil.preheader:         ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa, %.preheader.i.i140.i.i.i.i.preheader
  %.011.i.i141.i.i.i.i.epil.init = phi i64 [ %.val83396.i.i.i.i, %.preheader.i.i140.i.i.i.i.preheader ], [ %i.iv, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa ]
  %.0610.i.i142.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i140.i.i.i.i.preheader ], [ %i.jc, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa ]
  %lcmp.mod245 = trunc i64 %.val83396.i.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod245)
  %i.hz = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i.i141.i.i.i.i.epil.init
  %i.ia = getelementptr i8, ptr %i.hz, i64 -4     ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !56
  %i.ic = zext i32 %i.ib to i64
  %i.id = mul nuw nsw i64 %i.ic, 10
  %i.ie = add nuw nsw i64 %i.id, %.0610.i.i142.i.i.i.i.epil.init ; 2 uses
  %i.if = trunc i64 %i.ie to i32
  store i32 %i.if, ptr %i.ia, align 4, !tbaa !56
  %i.ig = lshr i64 %i.ie, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa, %.preheader.i.i140.i.i.i.i.epil.preheader
  %.lcssa200 = phi i64 [ %i.jc, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa ], [ %i.ig, %.preheader.i.i140.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ih = trunc nuw nsw i64 %.lcssa200 to i8
  %i.ii = add i64 %.val83396.i.i.i.i, -1          ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !56
  %i.il = icmp eq i32 %i.ik, 0
  %spec.select499.i.i.i.i = select i1 %i.il, i64 %i.ii, i64 %.val83396.i.i.i.i ; 4 uses
  %i.im = icmp eq i64 %.lcssa200, 9
  br i1 %i.im, label %.lr.ph.i151.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i

.preheader.i.i140.i.i.i.i:                        ; preds = %.preheader.i.i140.i.i.i.i, %.preheader.i.i140.i.i.i.i.preheader.new
  %.011.i.i141.i.i.i.i = phi i64 [ %.val83396.i.i.i.i, %.preheader.i.i140.i.i.i.i.preheader.new ], [ %i.iv, %.preheader.i.i140.i.i.i.i ] ; 2 uses
  %.0610.i.i142.i.i.i.i = phi i64 [ 0, %.preheader.i.i140.i.i.i.i.preheader.new ], [ %i.jc, %.preheader.i.i140.i.i.i.i ]
  %niter247 = phi i64 [ 0, %.preheader.i.i140.i.i.i.i.preheader.new ], [ %niter247.next.1, %.preheader.i.i140.i.i.i.i ]
  %i.in = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i.i141.i.i.i.i
  %i.io = getelementptr i8, ptr %i.in, i64 -4     ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !56
  %i.iq = zext i32 %i.ip to i64
  %i.ir = mul nuw nsw i64 %i.iq, 10
  %i.is = add nuw nsw i64 %i.ir, %.0610.i.i142.i.i.i.i ; 2 uses
  %i.it = trunc i64 %i.is to i32
  store i32 %i.it, ptr %i.io, align 4, !tbaa !56
  %i.iu = lshr i64 %i.is, 32
  %i.iv = add i64 %.011.i.i141.i.i.i.i, -2        ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !56
  %i.iy = zext i32 %i.ix to i64
  %i.iz = mul nuw nsw i64 %i.iy, 10
  %i.ja = add nuw nsw i64 %i.iz, %i.iu            ; 2 uses
  %i.jb = trunc i64 %i.ja to i32
  store i32 %i.jb, ptr %i.iw, align 4, !tbaa !56
  %i.jc = lshr i64 %i.ja, 32                      ; 3 uses
  %niter247.next.1 = add nuw i64 %niter247, 2     ; 2 uses
  %niter247.ncmp.1 = icmp eq i64 %niter247.next.1, %unroll_iter246
  br i1 %niter247.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i.unr-lcssa, label %.preheader.i.i140.i.i.i.i, !llvm.loop !132

.lr.ph.i151.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i
  %.val83398.i.i.i.i = phi i64 [ %.val83399.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i ], [ %spec.select499.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ] ; 2 uses
  %i.jd = phi i64 [ %i.js, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i ], [ %spec.select499.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ] ; 9 uses
  %.sroa.2.010.i152.i.i.i.i = phi i64 [ %i.je, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i ], [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ]
  %i.je = add i64 %.sroa.2.010.i152.i.i.i.i, 1    ; 3 uses
  %.not.i2.i153.i.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not.i2.i153.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i, label %.preheader.i3.i154.i.i.i.i.preheader

.preheader.i3.i154.i.i.i.i.preheader:             ; preds = %.lr.ph.i151.i.i.i.i
  %xtraiter248 = and i64 %i.jd, 1
  %i.jf = icmp eq i64 %i.jd, 1
  br i1 %i.jf, label %.preheader.i3.i154.i.i.i.i.epil.preheader, label %.preheader.i3.i154.i.i.i.i.preheader.new

.preheader.i3.i154.i.i.i.i.preheader.new:         ; preds = %.preheader.i3.i154.i.i.i.i.preheader
  %unroll_iter252 = and i64 %i.jd, -2
  br label %.preheader.i3.i154.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa: ; preds = %.preheader.i3.i154.i.i.i.i
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i, label %.preheader.i3.i154.i.i.i.i.epil.preheader

.preheader.i3.i154.i.i.i.i.epil.preheader:        ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa, %.preheader.i3.i154.i.i.i.i.preheader
  %.011.i4.i155.i.i.i.i.epil.init = phi i64 [ %i.jd, %.preheader.i3.i154.i.i.i.i.preheader ], [ %i.kc, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa ]
  %.0610.i5.i156.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i3.i154.i.i.i.i.preheader ], [ %i.kj, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa ]
  %lcmp.mod251 = trunc i64 %i.jd to i1
  call void @llvm.assume(i1 %lcmp.mod251)
  %i.jg = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i4.i155.i.i.i.i.epil.init
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4     ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !56
  %i.jj = zext i32 %i.ji to i64
  %i.jk = mul nuw nsw i64 %i.jj, 10
  %i.jl = add nuw nsw i64 %i.jk, %.0610.i5.i156.i.i.i.i.epil.init ; 2 uses
  %i.jm = trunc i64 %i.jl to i32
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !56
  %i.jn = lshr i64 %i.jl, 32
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa, %.preheader.i3.i154.i.i.i.i.epil.preheader
  %.lcssa201 = phi i64 [ %i.kj, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa ], [ %i.jn, %.preheader.i3.i154.i.i.i.i.epil.preheader ] ; 2 uses
  %i.jo = add i64 %i.jd, -1                       ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !56
  %i.jr = icmp eq i32 %i.jq, 0                    ; 2 uses
  %.val83399.i.i.i.i = select i1 %i.jr, i64 %i.jo, i64 %.val83398.i.i.i.i ; 2 uses
  %i.js = select i1 %i.jr, i64 %i.jo, i64 %i.jd   ; 2 uses
  %i.jt = icmp eq i64 %.lcssa201, 9
  br i1 %i.jt, label %.lr.ph.i151.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i, !llvm.loop !139

.preheader.i3.i154.i.i.i.i:                       ; preds = %.preheader.i3.i154.i.i.i.i, %.preheader.i3.i154.i.i.i.i.preheader.new
  %.011.i4.i155.i.i.i.i = phi i64 [ %i.jd, %.preheader.i3.i154.i.i.i.i.preheader.new ], [ %i.kc, %.preheader.i3.i154.i.i.i.i ] ; 2 uses
  %.0610.i5.i156.i.i.i.i = phi i64 [ 0, %.preheader.i3.i154.i.i.i.i.preheader.new ], [ %i.kj, %.preheader.i3.i154.i.i.i.i ]
  %niter253 = phi i64 [ 0, %.preheader.i3.i154.i.i.i.i.preheader.new ], [ %niter253.next.1, %.preheader.i3.i154.i.i.i.i ]
  %i.ju = getelementptr [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %.011.i4.i155.i.i.i.i
  %i.jv = getelementptr i8, ptr %i.ju, i64 -4     ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !56
  %i.jx = zext i32 %i.jw to i64
  %i.jy = mul nuw nsw i64 %i.jx, 10
  %i.jz = add nuw nsw i64 %i.jy, %.0610.i5.i156.i.i.i.i ; 2 uses
  %i.ka = trunc i64 %i.jz to i32
  store i32 %i.ka, ptr %i.jv, align 4, !tbaa !56
  %i.kb = lshr i64 %i.jz, 32
  %i.kc = add i64 %.011.i4.i155.i.i.i.i, -2       ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i.i.i, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !56
  %i.kf = zext i32 %i.ke to i64
  %i.kg = mul nuw nsw i64 %i.kf, 10
  %i.kh = add nuw nsw i64 %i.kg, %i.kb            ; 2 uses
  %i.ki = trunc i64 %i.kh to i32
  store i32 %i.ki, ptr %i.kd, align 4, !tbaa !56
  %i.kj = lshr i64 %i.kh, 32                      ; 3 uses
  %niter253.next.1 = add nuw i64 %niter253, 2     ; 2 uses
  %niter253.ncmp.1 = icmp eq i64 %niter253.next.1, %unroll_iter252
  br i1 %niter253.ncmp.1, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i.unr-lcssa, label %.preheader.i3.i154.i.i.i.i, !llvm.loop !132

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit8.i158.i.i.i.i
  %i.kk = trunc nuw nsw i64 %.lcssa201 to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i: ; preds = %.lr.ph.i151.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i, %.lr.ph348.i.i.i.i
  %.val83.i.i.i.i = phi i64 [ %spec.select499.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ], [ 0, %.lr.ph348.i.i.i.i ], [ %.val83399.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i ], [ %.val83398.i.i.i.i, %.lr.ph.i151.i.i.i.i ] ; 2 uses
  %.val87.i.i.i.i = phi i64 [ %spec.select499.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ], [ 0, %.lr.ph348.i.i.i.i ], [ %i.js, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.i151.i.i.i.i ] ; 2 uses
  %.val82.i.i.i.i = phi i8 [ %i.ih, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ], [ 0, %.lr.ph348.i.i.i.i ], [ %i.kk, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.lr.ph.i151.i.i.i.i ] ; 4 uses
  %.sroa.2.0.lcssa.i148.i.i.i.i = phi i64 [ 0, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator11GetOneDigitEv.exit.i144.i.i.i.i ], [ 0, %.lr.ph348.i.i.i.i ], [ %i.je, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.loopexit.split.loop.exit.i.i.i.i ], [ %i.je, %.lr.ph.i151.i.i.i.i ] ; 7 uses
  %i.kl = add i64 %.sroa.2.0.lcssa.i148.i.i.i.i, 1 ; 3 uses
  %i.km = icmp ult i64 %i.kl, %.0267345.i.i.i.i
  br i1 %i.km, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i
  %i.kn = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !33 ; 6 uses
  %i.kq = add nuw nsw i8 %.val82346.i.i.i.i, 48
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !88
  %i.kt = add i64 %i.ks, 1
  store i64 %i.kt, ptr %i.kr, align 8, !tbaa !88
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 1056
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 24 ; 4 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !92 ; 2 uses
  %i.kx = icmp eq ptr %i.ku, %i.kw
  br i1 %i.kx, label %.lr.ph.i163.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit169.i.i.i.i

.lr.ph.i163.i.i.i.i:                              ; preds = %bb.x
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kp, i64 32 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !93
  %i.lb = load ptr, ptr %i.kp, align 8, !tbaa !94
  call void %i.la(ptr noundef %i.lb, i64 1024, ptr nonnull %i.ky), !inline_history !170
  store ptr %i.ky, ptr %i.kv, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit169.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit169.i.i.i.i: ; preds = %.lr.ph.i163.i.i.i.i, %bb.x
  %.lcssa.i162.i.i.i.i = phi ptr [ %i.kw, %bb.x ], [ %i.ky, %.lr.ph.i163.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i162.i.i.i.i, i8 %i.kq, i64 1, i1 false)
  %i.lc = load ptr, ptr %i.kv, align 8, !tbaa !92
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  store ptr %i.ld, ptr %i.kv, align 8, !tbaa !92
  %i.le = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !33 ; 7 uses
  %i.lh = icmp eq i64 %.sroa.2.0.lcssa.i148.i.i.i.i, 0
  br i1 %i.lh, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit169.i.i.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !88
  %i.lk = add i64 %i.lj, %.sroa.2.0.lcssa.i148.i.i.i.i
  store i64 %i.lk, ptr %i.li, align 8, !tbaa !88
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lg, i64 1056 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 24 ; 8 uses
  %i.ln = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !92 ; 4 uses
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.ln, %i.lp                    ; 4 uses
  %i.lr = icmp ugt i64 %.sroa.2.0.lcssa.i148.i.i.i.i, %i.lq
  br i1 %i.lr, label %.lr.ph.i173.i.i.i.i, label %._crit_edge.i170.i.i.i.i

.lr.ph.i173.i.i.i.i:                              ; preds = %bb.y
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 8 uses
  %i.lt = ptrtoint ptr %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lv = sub nuw i64 %.sroa.2.0.lcssa.i148.i.i.i.i, %i.lq ; 3 uses
  %.not.peel.i174.i.i.i.i = icmp eq ptr %i.ll, %i.lo
  br i1 %.not.peel.i174.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i173.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.lo, i8 57, i64 %i.lq, i1 false)
  %i.lw = load ptr, ptr %i.lm, align 8, !tbaa !92
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.lq ; 2 uses
  store ptr %i.lx, ptr %i.lm, align 8, !tbaa !92
  %.pre.i175.i.i.i.i = ptrtoint ptr %i.lx to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i173.i.i.i.i
  %.pre-phi.i176.i.i.i.i = phi i64 [ %.pre.i175.i.i.i.i, %bb.z ], [ %i.ln, %.lr.ph.i173.i.i.i.i ]
  %i.ly = sub i64 %.pre-phi.i176.i.i.i.i, %i.lt
  %i.lz = load ptr, ptr %i.lu, align 8, !tbaa !93
  %i.ma = load ptr, ptr %i.lg, align 8, !tbaa !94
  call void %i.lz(ptr noundef %i.ma, i64 %i.ly, ptr nonnull %i.ls), !inline_history !170
  store ptr %i.ls, ptr %i.lm, align 8, !tbaa !92
  %i.mb = icmp ugt i64 %i.lv, 1024
  br i1 %i.mb, label %.peel.next.i177.i.i.i.i, label %._crit_edge.i170.i.i.i.i

.peel.next.i177.i.i.i.i:                          ; preds = %bb.aa, %.peel.next.i177.i.i.i.i
  %.010.i178.i.i.i.i = phi i64 [ %i.mc, %.peel.next.i177.i.i.i.i ], [ %i.lv, %bb.aa ]
  %i.mc = add i64 %.010.i178.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ls, i8 57, i64 1024, i1 false)
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !92
  %i.md = load ptr, ptr %i.lu, align 8, !tbaa !93
  %i.me = load ptr, ptr %i.lg, align 8, !tbaa !94
  call void %i.md(ptr noundef %i.me, i64 1024, ptr nonnull %i.ls), !inline_history !170
  store ptr %i.ls, ptr %i.lm, align 8, !tbaa !92
  %i.mf = icmp ugt i64 %i.mc, 1024
  br i1 %i.mf, label %.peel.next.i177.i.i.i.i, label %._crit_edge.i170.i.i.i.i, !llvm.loop !96

._crit_edge.i170.i.i.i.i:                         ; preds = %.peel.next.i177.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i171.i.i.i.i = phi i64 [ %.sroa.2.0.lcssa.i148.i.i.i.i, %bb.y ], [ %i.lv, %bb.aa ], [ %i.mc, %.peel.next.i177.i.i.i.i ] ; 2 uses
  %.lcssa.i172.i.i.i.i = phi ptr [ %i.lo, %bb.y ], [ %i.ls, %bb.aa ], [ %i.ls, %.peel.next.i177.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i172.i.i.i.i, i8 57, i64 %.0.lcssa.i171.i.i.i.i, i1 false)
  %i.mg = load ptr, ptr %i.lm, align 8, !tbaa !92
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %.0.lcssa.i171.i.i.i.i
  store ptr %i.mh, ptr %i.lm, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator9GetDigitsEv.exit159.i.i.i.i
  %i.mi = icmp ugt i64 %i.kl, %.0267345.i.i.i.i
  %i.mj = icmp sgt i8 %.val82.i.i.i.i, 5
  %or.cond500.i.i.i.i = select i1 %i.mi, i1 true, i1 %i.mj
  br i1 %or.cond500.i.i.i.i, label %.critedge81.i.i.i.i, label %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit181.i.i.i.i

_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit181.i.i.i.i: ; preds = %bb.ab
  %i.mk = icmp eq i8 %.val82.i.i.i.i, 5           ; 2 uses
  %i.ml = icmp ne i64 %.val87.i.i.i.i, 0
  %spec.select.i180.i.i.i.i = and i1 %i.ml, %i.mk
  br i1 %spec.select.i180.i.i.i.i, label %.critedge81.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit181.i.i.i.i
  %.not.i182.i.i.i.i = icmp eq i64 %.val87.i.i.i.i, 0
  %i.mm = and i1 %.not.i182.i.i.i.i, %i.mk
  br i1 %i.mm, label %bb.ad, label %.critedge79.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not74.i.i.i.i = icmp ne i64 %.sroa.2.0.lcssa.i148.i.i.i.i, 0
  %i.mn = and i8 %.val82346.i.i.i.i, -127
  %i.mo = icmp eq i8 %i.mn, 1
  %i.mp = or i1 %i.mo, %.not74.i.i.i.i
  br i1 %i.mp, label %.critedge81.i.i.i.i, label %.critedge79.i.i.i.i

.critedge81.i.i.i.i:                              ; preds = %bb.ad, %_ZNK4absl12lts_2026052619str_format_internal12_GLOBAL__N_124FractionalDigitGenerator17IsGreaterThanHalfEv.exit181.i.i.i.i, %bb.ab
  %i.mq = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !33 ; 6 uses
  %i.mt = add nuw nsw i8 %.val82346.i.i.i.i, 49
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !88
  %i.mw = add i64 %i.mv, 1
  store i64 %i.mw, ptr %i.mu, align 8, !tbaa !88
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 1056
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 24 ; 4 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !92 ; 2 uses
  %i.na = icmp eq ptr %i.mx, %i.mz
  br i1 %i.na, label %.lr.ph.i186.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i

.lr.ph.i186.i.i.i.i:                              ; preds = %.critedge81.i.i.i.i
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ms, i64 32 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !93
  %i.ne = load ptr, ptr %i.ms, align 8, !tbaa !94
  call void %i.nd(ptr noundef %i.ne, i64 1024, ptr nonnull %i.nb), !inline_history !170
  store ptr %i.nb, ptr %i.my, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i: ; preds = %.lr.ph.i186.i.i.i.i, %.critedge81.i.i.i.i
  %.lcssa.i185.i.i.i.i = phi ptr [ %i.mz, %.critedge81.i.i.i.i ], [ %i.nb, %.lr.ph.i186.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i185.i.i.i.i, i8 %i.mt, i64 1, i1 false)
  %i.nf = load ptr, ptr %i.my, align 8, !tbaa !92
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  store ptr %i.ng, ptr %i.my, align 8, !tbaa !92
  %i.nh = add i64 %.0267345.i.i.i.i, -1           ; 2 uses
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i, label %.critedge.thread282.i.i.i.i

.critedge79.i.i.i.i:                              ; preds = %bb.ad, %bb.ac
  %i.nj = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !33 ; 6 uses
  %i.nm = add nuw nsw i8 %.val82346.i.i.i.i, 48
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 16 ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !88
  %i.np = add i64 %i.no, 1
  store i64 %i.np, ptr %i.nn, align 8, !tbaa !88
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 1056
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nl, i64 24 ; 4 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !92 ; 2 uses
  %i.nt = icmp eq ptr %i.nq, %i.ns
  br i1 %i.nt, label %.lr.ph.i196.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit202.i.i.i.i

.lr.ph.i196.i.i.i.i:                              ; preds = %.critedge79.i.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nl, i64 32 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !93
  %i.nx = load ptr, ptr %i.nl, align 8, !tbaa !94
  call void %i.nw(ptr noundef %i.nx, i64 1024, ptr nonnull %i.nu), !inline_history !170
  store ptr %i.nu, ptr %i.nr, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit202.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit202.i.i.i.i: ; preds = %.lr.ph.i196.i.i.i.i, %.critedge79.i.i.i.i
  %.lcssa.i195.i.i.i.i = phi ptr [ %i.ns, %.critedge79.i.i.i.i ], [ %i.nu, %.lr.ph.i196.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i195.i.i.i.i, i8 %i.nm, i64 1, i1 false)
  %i.ny = load ptr, ptr %i.nr, align 8, !tbaa !92
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  store ptr %i.nz, ptr %i.nr, align 8, !tbaa !92
  %i.oa = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !33 ; 7 uses
  %i.od = add i64 %.0267345.i.i.i.i, -1           ; 5 uses
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit202.i.i.i.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !88
  %i.oh = add i64 %i.og, %i.od
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !88
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 1056 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oc, i64 24 ; 8 uses
  %i.ok = ptrtoint ptr %i.oi to i64               ; 2 uses
  %i.ol = load ptr, ptr %i.oj, align 8, !tbaa !92 ; 4 uses
  %i.om = ptrtoint ptr %i.ol to i64
  %i.on = sub i64 %i.ok, %i.om                    ; 4 uses
  %i.oo = icmp ugt i64 %i.od, %i.on
  br i1 %i.oo, label %.lr.ph.i206.i.i.i.i, label %._crit_edge.i203.i.i.i.i

.lr.ph.i206.i.i.i.i:                              ; preds = %bb.ae
  %i.op = getelementptr inbounds nuw i8, ptr %i.oc, i64 32 ; 8 uses
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.os = sub nuw i64 %i.od, %i.on                ; 3 uses
  %.not.peel.i207.i.i.i.i = icmp eq ptr %i.oi, %i.ol
  br i1 %.not.peel.i207.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i206.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.ol, i8 57, i64 %i.on, i1 false)
  %i.ot = load ptr, ptr %i.oj, align 8, !tbaa !92
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.on ; 2 uses
  store ptr %i.ou, ptr %i.oj, align 8, !tbaa !92
  %.pre.i208.i.i.i.i = ptrtoint ptr %i.ou to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i206.i.i.i.i
  %.pre-phi.i209.i.i.i.i = phi i64 [ %.pre.i208.i.i.i.i, %bb.af ], [ %i.ok, %.lr.ph.i206.i.i.i.i ]
  %i.ov = sub i64 %.pre-phi.i209.i.i.i.i, %i.oq
  %i.ow = load ptr, ptr %i.or, align 8, !tbaa !93
  %i.ox = load ptr, ptr %i.oc, align 8, !tbaa !94
  call void %i.ow(ptr noundef %i.ox, i64 %i.ov, ptr nonnull %i.op), !inline_history !170
  store ptr %i.op, ptr %i.oj, align 8, !tbaa !92
  %i.oy = icmp ugt i64 %i.os, 1024
  br i1 %i.oy, label %.peel.next.i210.i.i.i.i, label %._crit_edge.i203.i.i.i.i

.peel.next.i210.i.i.i.i:                          ; preds = %bb.ag, %.peel.next.i210.i.i.i.i
  %.010.i211.i.i.i.i = phi i64 [ %i.oz, %.peel.next.i210.i.i.i.i ], [ %i.os, %bb.ag ]
  %i.oz = add i64 %.010.i211.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.op, i8 57, i64 1024, i1 false)
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !92
  %i.pa = load ptr, ptr %i.or, align 8, !tbaa !93
  %i.pb = load ptr, ptr %i.oc, align 8, !tbaa !94
  call void %i.pa(ptr noundef %i.pb, i64 1024, ptr nonnull %i.op), !inline_history !170
  store ptr %i.op, ptr %i.oj, align 8, !tbaa !92
  %i.pc = icmp ugt i64 %i.oz, 1024
  br i1 %i.pc, label %.peel.next.i210.i.i.i.i, label %._crit_edge.i203.i.i.i.i, !llvm.loop !96

._crit_edge.i203.i.i.i.i:                         ; preds = %.peel.next.i210.i.i.i.i, %bb.ag, %bb.ae
  %.0.lcssa.i204.i.i.i.i = phi i64 [ %i.od, %bb.ae ], [ %i.os, %bb.ag ], [ %i.oz, %.peel.next.i210.i.i.i.i ] ; 2 uses
  %.lcssa.i205.i.i.i.i = phi ptr [ %i.ol, %bb.ae ], [ %i.op, %bb.ag ], [ %i.op, %.peel.next.i210.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i205.i.i.i.i, i8 57, i64 %.0.lcssa.i204.i.i.i.i, i1 false)
  %i.pd = load ptr, ptr %i.oj, align 8, !tbaa !92
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 %.0.lcssa.i204.i.i.i.i
  store ptr %i.pe, ptr %i.oj, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i: ; preds = %._crit_edge.i170.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit169.i.i.i.i
  %i.pf = sub i64 %.0267345.i.i.i.i, %i.kl        ; 2 uses
  %.not.i138.i.i.i.i = icmp ne i8 %.val82.i.i.i.i, 0
  %i.pg = icmp ne i64 %.val83.i.i.i.i, 0
  %i.ph = select i1 %.not.i138.i.i.i.i, i1 true, i1 %i.pg
  br i1 %i.ph, label %.lr.ph348.i.i.i.i, label %.critedge.thread282.i.i.i.i

.critedge.thread282.i.i.i.i:                      ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i, %.preheader.split.i.i.i.i
  %.1268284.i.i.i.i = phi i64 [ %i.nh, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i ], [ %i.hv, %.preheader.split.i.i.i.i ], [ %i.pf, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit212.i.i.i.i ] ; 4 uses
  %.pn.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %i.pi = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !33 ; 7 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 2 uses
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !88
  %i.pl = add i64 %i.pk, %.1268284.i.i.i.i
  store i64 %i.pl, ptr %i.pj, align 8, !tbaa !88
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 1056 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pi, i64 24 ; 8 uses
  %i.po = ptrtoint ptr %i.pm to i64               ; 2 uses
  %i.pp = load ptr, ptr %i.pn, align 8, !tbaa !92 ; 4 uses
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = sub i64 %i.po, %i.pq                    ; 4 uses
  %i.ps = icmp ugt i64 %.1268284.i.i.i.i, %i.pr
  br i1 %i.ps, label %.lr.ph.i216.i.i.i.i, label %._crit_edge.i213.i.i.i.i

.lr.ph.i216.i.i.i.i:                              ; preds = %.critedge.thread282.i.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pi, i64 32 ; 8 uses
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pi, i64 8 ; 2 uses
  %i.pw = sub nuw i64 %.1268284.i.i.i.i, %i.pr    ; 3 uses
  %.not.peel.i217.i.i.i.i = icmp eq ptr %i.pm, %i.pp
  br i1 %.not.peel.i217.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i216.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.pp, i8 48, i64 %i.pr, i1 false)
  %i.px = load ptr, ptr %i.pn, align 8, !tbaa !92
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pr ; 2 uses
  store ptr %i.py, ptr %i.pn, align 8, !tbaa !92
  %.pre.i218.i.i.i.i = ptrtoint ptr %i.py to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i216.i.i.i.i
  %.pre-phi.i219.i.i.i.i = phi i64 [ %.pre.i218.i.i.i.i, %bb.ah ], [ %i.po, %.lr.ph.i216.i.i.i.i ]
  %i.pz = sub i64 %.pre-phi.i219.i.i.i.i, %i.pu
  %i.qa = load ptr, ptr %i.pv, align 8, !tbaa !93
  %i.qb = load ptr, ptr %i.pi, align 8, !tbaa !94
  call void %i.qa(ptr noundef %i.qb, i64 %i.pz, ptr nonnull %i.pt), !inline_history !170
  store ptr %i.pt, ptr %i.pn, align 8, !tbaa !92
  %i.qc = icmp ugt i64 %i.pw, 1024
  br i1 %i.qc, label %.peel.next.i220.i.i.i.i, label %._crit_edge.i213.i.i.i.i

.peel.next.i220.i.i.i.i:                          ; preds = %bb.ai, %.peel.next.i220.i.i.i.i
  %.010.i221.i.i.i.i = phi i64 [ %i.qd, %.peel.next.i220.i.i.i.i ], [ %i.pw, %bb.ai ]
  %i.qd = add i64 %.010.i221.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.pt, i8 48, i64 1024, i1 false)
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !92
  %i.qe = load ptr, ptr %i.pv, align 8, !tbaa !93
  %i.qf = load ptr, ptr %i.pi, align 8, !tbaa !94
  call void %i.qe(ptr noundef %i.qf, i64 1024, ptr nonnull %i.pt), !inline_history !170
  store ptr %i.pt, ptr %i.pn, align 8, !tbaa !92
  %i.qg = icmp ugt i64 %i.qd, 1024
  br i1 %i.qg, label %.peel.next.i220.i.i.i.i, label %._crit_edge.i213.i.i.i.i, !llvm.loop !96

._crit_edge.i213.i.i.i.i:                         ; preds = %.peel.next.i220.i.i.i.i, %bb.ai, %.critedge.thread282.i.i.i.i
  %.0.lcssa.i214.i.i.i.i = phi i64 [ %.1268284.i.i.i.i, %.critedge.thread282.i.i.i.i ], [ %i.pw, %bb.ai ], [ %i.qd, %.peel.next.i220.i.i.i.i ] ; 2 uses
  %.lcssa.i215.i.i.i.i = phi ptr [ %i.pp, %.critedge.thread282.i.i.i.i ], [ %i.pt, %bb.ai ], [ %i.pt, %.peel.next.i220.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i215.i.i.i.i, i8 48, i64 %.0.lcssa.i214.i.i.i.i, i1 false)
  %i.qh = load ptr, ptr %i.pn, align 8, !tbaa !92
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.0.lcssa.i214.i.i.i.i
  store ptr %i.qi, ptr %i.pn, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i: ; preds = %._crit_edge.i213.i.i.i.i, %._crit_edge.i203.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit202.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit192.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit137.i.i.i.i
  %i.qj = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !33 ; 6 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !172, !nonnull !117
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !35, !range !128, !noundef !117
  %i.qp = trunc nuw i8 %i.qo to i1
  %i.qq = select i1 %i.qp, i8 69, i8 101
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 16 ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !88
  %i.qt = add i64 %i.qs, 1
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !88
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ql, i64 1056
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ql, i64 24 ; 4 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !92 ; 2 uses
  %i.qx = icmp eq ptr %i.qu, %i.qw
  br i1 %i.qx, label %.lr.ph.i226.i.i.i.i, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i

.lr.ph.i226.i.i.i.i:                              ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ql, i64 32 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !93
  %i.rb = load ptr, ptr %i.ql, align 8, !tbaa !94
  call void %i.ra(ptr noundef %i.rb, i64 1024, ptr nonnull %i.qy), !inline_history !170
  store ptr %i.qy, ptr %i.qv, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i: ; preds = %.lr.ph.i226.i.i.i.i, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i
  %.lcssa.i225.i.i.i.i = phi ptr [ %i.qw, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit222.i.i.i.i ], [ %i.qy, %.lr.ph.i226.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa.i225.i.i.i.i, i8 %i.qq, i64 1, i1 false)
  %i.rc = load ptr, ptr %i.qv, align 8, !tbaa !92
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 1
  store ptr %i.rd, ptr %i.qv, align 8, !tbaa !92
  %i.re = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !33 ; 7 uses
  %i.rh = icmp eq ptr %i.co, %i.a
  br i1 %i.rh, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 16 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !88
  %i.rk = add i64 %i.rj, %i.cw
  store i64 %i.rk, ptr %i.ri, align 8, !tbaa !88
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 1056
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 24 ; 4 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !92 ; 2 uses
  %i.ro = ptrtoint ptr %i.rl to i64
  %i.rp = ptrtoint ptr %i.rn to i64               ; 2 uses
  %i.rq = sub i64 %i.ro, %i.rp
  %.not.i233.i.i.i.i = icmp ult i64 %i.cw, %i.rq
  br i1 %.not.i233.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rg, i64 32 ; 3 uses
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = sub i64 %i.rp, %i.rs
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !93
  %i.rw = load ptr, ptr %i.rg, align 8, !tbaa !94
  call void %i.rv(ptr noundef %i.rw, i64 %i.rt, ptr nonnull %i.rr), !inline_history !173
  store ptr %i.rr, ptr %i.rm, align 8, !tbaa !92
  %i.rx = load ptr, ptr %i.ru, align 8, !tbaa !93
  %i.ry = load ptr, ptr %i.rg, align 8, !tbaa !94
  call void %i.rx(ptr noundef %i.ry, i64 %i.cw, ptr nonnull %i.a), !inline_history !174
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rn, ptr nonnull align 16 %i.a, i64 %i.cw, i1 false)
  %i.rz = load ptr, ptr %i.rm, align 8, !tbaa !92
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.cw
  store ptr %i.sa, ptr %i.rm, align 8, !tbaa !92
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i: ; preds = %bb.al, %bb.ak, %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendEmc.exit232.i.i.i.i
  %i.sb = load ptr, ptr %0, align 8, !tbaa !164, !nonnull !117, !align !118
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !33 ; 7 uses
  %i.se = icmp eq i64 %.sroa.9.0276.i.i.i.i, 0
  br i1 %i.se, label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit", label %bb.am

bb.am:                                            ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sd, i64 16 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !88
  %i.sh = add i64 %i.sg, %.sroa.9.0276.i.i.i.i
  store i64 %i.sh, ptr %i.sf, align 8, !tbaa !88
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 1056 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 24 ; 8 uses
  %i.sk = ptrtoint ptr %i.si to i64               ; 2 uses
  %i.sl = load ptr, ptr %i.sj, align 8, !tbaa !92 ; 4 uses
  %i.sm = ptrtoint ptr %i.sl to i64
  %i.sn = sub i64 %i.sk, %i.sm                    ; 4 uses
  %i.so = icmp ugt i64 %.sroa.9.0276.i.i.i.i, %i.sn
  br i1 %i.so, label %.lr.ph.i237.i.i.i.i, label %._crit_edge.i234.i.i.i.i

.lr.ph.i237.i.i.i.i:                              ; preds = %bb.am
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sd, i64 32 ; 8 uses
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sd, i64 8 ; 2 uses
  %i.ss = sub nuw nsw i64 %.sroa.9.0276.i.i.i.i, %i.sn ; 3 uses
  %.not.peel.i238.i.i.i.i = icmp eq ptr %i.si, %i.sl
  br i1 %.not.peel.i238.i.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i237.i.i.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %i.sl, i8 32, i64 %i.sn, i1 false)
  %i.st = load ptr, ptr %i.sj, align 8, !tbaa !92
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.sn ; 2 uses
  store ptr %i.su, ptr %i.sj, align 8, !tbaa !92
  %.pre.i239.i.i.i.i = ptrtoint ptr %i.su to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i237.i.i.i.i
  %.pre-phi.i240.i.i.i.i = phi i64 [ %.pre.i239.i.i.i.i, %bb.an ], [ %i.sk, %.lr.ph.i237.i.i.i.i ]
  %i.sv = sub i64 %.pre-phi.i240.i.i.i.i, %i.sq
  %i.sw = load ptr, ptr %i.sr, align 8, !tbaa !93
  %i.sx = load ptr, ptr %i.sd, align 8, !tbaa !94
  call void %i.sw(ptr noundef %i.sx, i64 %i.sv, ptr nonnull %i.sp), !inline_history !170
  store ptr %i.sp, ptr %i.sj, align 8, !tbaa !92
  %i.sy = icmp ugt i64 %i.ss, 1024
  br i1 %i.sy, label %.peel.next.i241.i.i.i.i, label %._crit_edge.i234.i.i.i.i

.peel.next.i241.i.i.i.i:                          ; preds = %bb.ao, %.peel.next.i241.i.i.i.i
  %.010.i242.i.i.i.i = phi i64 [ %i.sz, %.peel.next.i241.i.i.i.i ], [ %i.ss, %bb.ao ]
  %i.sz = add i64 %.010.i242.i.i.i.i, -1024       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sp, i8 32, i64 1024, i1 false)
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !92
  %i.ta = load ptr, ptr %i.sr, align 8, !tbaa !93
  %i.tb = load ptr, ptr %i.sd, align 8, !tbaa !94
  call void %i.ta(ptr noundef %i.tb, i64 1024, ptr nonnull %i.sp), !inline_history !170
  store ptr %i.sp, ptr %i.sj, align 8, !tbaa !92
  %i.tc = icmp ugt i64 %i.sz, 1024
  br i1 %i.tc, label %.peel.next.i241.i.i.i.i, label %._crit_edge.i234.i.i.i.i, !llvm.loop !96

._crit_edge.i234.i.i.i.i:                         ; preds = %.peel.next.i241.i.i.i.i, %bb.ao, %bb.am
  %.0.lcssa.i235.i.i.i.i = phi i64 [ %.sroa.9.0276.i.i.i.i, %bb.am ], [ %i.ss, %bb.ao ], [ %i.sz, %.peel.next.i241.i.i.i.i ] ; 2 uses
  %.lcssa.i236.i.i.i.i = phi ptr [ %i.sl, %bb.am ], [ %i.sp, %bb.ao ], [ %i.sp, %.peel.next.i241.i.i.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.lcssa.i236.i.i.i.i, i8 32, i64 %.0.lcssa.i235.i.i.i.i, i1 false)
  %i.td = load ptr, ptr %i.sj, align 8, !tbaa !92
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 %.0.lcssa.i235.i.i.i.i
  store ptr %i.te, ptr %i.sj, align 8, !tbaa !92
  br label %"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit"

"_ZSt6invokeIRZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_122FormatENegativeExpSlowENS1_7uint128EibRKNS3_11FormatStateEmE3$_0JNS3_24FractionalDigitGeneratorEEENSt13invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit": ; preds = %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i.i.i, %._crit_edge.i234.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferENS0_7uint128EPc(i64, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_19str_format_internal12_GLOBAL__N_122FormatGPositiveExpSlowINS0_7uint128EEEvT_ibRKNS4_11FormatStateEEUlNS4_15BinaryToDecimalEE_vJSB_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.anon, align 8                ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %class.anon.7, align 8              ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::BinaryToDecimal", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !107
  %i.f = load i64, ptr %5, align 8, !tbaa !111
  %i.g = sub i64 %i.e, %i.f
  %i.h = mul i64 %i.g, 9
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !103  ; 3 uses
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, -1                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = sub i64 9, %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  store i64 %i.j, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !175, !nonnull !117, !align !118 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = add i64 %i.s, 1
  %i.u = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1
  %i.x = and i64 %i.v, 4294967296
  %.not94.i.i.i.i = icmp eq i64 %i.x, 0           ; 2 uses
  %.sroa.064.0.extract.trunc.i.i.i.i = trunc i64 %i.v to i32
  %.0.i.i.i.i.i = select i1 %.not94.i.i.i.i, i32 9, i32 %.sroa.064.0.extract.trunc.i.i.i.i ; 4 uses
  %i.y = sext i1 %.not94.i.i.i.i to i64
  %spec.select90.i.i.i.i = add i64 %i.w, %i.y     ; 3 uses
  %i.z = add i64 %spec.select90.i.i.i.i, 1
  %.not.i.i.i.i = icmp ult i64 %i.z, %i.t         ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = call fastcc { i64, i64 } @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19GetDigitsERNS2_15BinaryToDecimalERSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.ab = extractvalue { i64, i64 } %i.aa, 0      ; 2 uses
  %.sroa.061.0.extract.trunc.i.i.i.i = trunc i64 %i.ab to i32
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !31  ; 2 uses
  %i.ad = icmp ne i64 %spec.select90.i.i.i.i, %i.ac
  %i.ae = and i64 %i.ab, 4294967296
  %.not95.i.i.i.i = icmp ne i64 %i.ae, 0
  %i.af = icmp sgt i32 %.sroa.061.0.extract.trunc.i.i.i.i, 4
  %i.ag = and i1 %.not95.i.i.i.i, %i.af
  %or.cond92.i.i.i.i = select i1 %i.ad, i1 true, i1 %i.ag
  br i1 %or.cond92.i.i.i.i, label %.critedge35.i.i.i.i, label %bb.c

.critedge35.i.i.i.i:                              ; preds = %bb.b
  %.not31.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i, 9  ; 2 uses
  %i.ah = add nsw i32 %.0.i.i.i.i.i, 1
  %.021.i.i.i.i = select i1 %.not31.i.i.i.i, i32 1, i32 %i.ah
  %.0.i.i.i.i = select i1 %.not31.i.i.i.i, i64 %i.k, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %.critedge35.i.i.i.i, %bb.b, %bb.a
  %.126.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %.critedge35.i.i.i.i ], [ 0, %bb.b ]
  %.223.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.a ], [ %.021.i.i.i.i, %.critedge35.i.i.i.i ], [ %.0.i.i.i.i.i, %bb.b ]
  %.2.i.i.i.i = phi i64 [ %i.l, %bb.a ], [ %.0.i.i.i.i, %.critedge35.i.i.i.i ], [ %i.l, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84, !nonnull !117, !align !171
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = and i8 %i.al, 8
  %i.an = icmp ne i8 %i.am, 0                     ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.an, i64 0, i64 %.126.i.i.i.i ; 2 uses
end_hunk_4
