inline.NumInlined: 368
inline.NumDeleted: 192
begin_hunk_0_@_ZN7CaDiCaL8Internal15connect_watchesEb:bb.a
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !172
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !173
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load i64, ptr %i.r, align 8, !tbaa !175
  %i.bp = icmp ugt i64 %i.bo, %i.bn
  br i1 %i.bp, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  store i64 %i.bn, ptr %i.r, align 8, !tbaa !175
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.k, %bb.j, %bb.o, %bb.q, %bb.p, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.037.049, i64 8 ; 2 uses
  %.not45 = icmp eq ptr %i.bq, %i.n
  br i1 %.not45, label %._crit_edge52, label %bb.h
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal12watch_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !162  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.f = tail call noundef i32 @llvm.abs.i32(i32 %i.b, i1 true)
  %i.g = tail call noundef i32 @llvm.fshl.i32(i32 %i.f, i32 %i.b, i32 1)
  %i.h = zext i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !162  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !163  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176
  %.not.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.n, align 8, !tbaa !168
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !162
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !162
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.m, align 8, !tbaa !163
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !156  ; 5 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775792
  br i1 %i.v, label %bb.d, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.w = ashr exact i64 %i.u, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 576460752303423487)
  %i.aa = select i1 %i.y, i64 576460752303423487, i64 %i.z ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 3 uses
  store ptr %1, ptr %i.ad, align 8, !tbaa !168
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.d, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !162
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %i.l, ptr %.sroa.6.0..sroa_idx7.i, align 4, !tbaa !162
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !177, !alias.scope !178
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !182

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #15
  %.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.i, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i ]
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !156
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !163
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !176
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit: ; preds = %bb.b, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i
  %i.ai = phi ptr [ %i.i, %bb.b ], [ %.pre, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ]
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.ak = tail call noundef i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.d, i32 1)
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.al ; 4 uses
  %i.an = load i32, ptr %i.k, align 8, !tbaa !162 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !163 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !176
  %.not.i.i.i8 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i.i8, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  store ptr %1, ptr %i.ap, align 8, !tbaa !168
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.b, ptr %.sroa.5.0..sroa_idx.i9, align 8, !tbaa !162
  %.sroa.6.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 %i.an, ptr %.sroa.6.0..sroa_idx.i10, align 4, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !163
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit25

bb.g:                                             ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !156 ; 5 uses
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775792
  br i1 %i.ax, label %bb.h, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11: ; preds = %bb.g
  %i.ay = ashr exact i64 %i.aw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i12 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i12, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 576460752303423487)
  %i.bc = select i1 %i.ba, i64 576460752303423487, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i13 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i13)
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #17 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw ; 3 uses
  store ptr %1, ptr %i.bf, align 8, !tbaa !168
  %.sroa.5.0..sroa_idx5.i14 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i32 %i.b, ptr %.sroa.5.0..sroa_idx5.i14, align 8, !tbaa !162
  %.sroa.6.0..sroa_idx7.i15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 %i.an, ptr %.sroa.6.0..sroa_idx7.i15, align 4, !tbaa !162
  %.not10.i.i.i.i.i.i.i.i16 = icmp eq ptr %i.at, %i.ap
  br i1 %.not10.i.i.i.i.i.i.i.i16, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i.i17

.lr.ph.i.i.i.i.i.i.i.i17:                         ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11, %.lr.ph.i.i.i.i.i.i.i.i17
  %.012.i.i.i.i.i.i.i.i18 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i17 ], [ %i.be, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i19 = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i17 ], [ %i.at, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i19, i64 16, i1 false), !tbaa.struct !177, !alias.scope !183
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i19, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i.i.i.i.i.i20, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21, label %.lr.ph.i.i.i.i.i.i.i.i17, !llvm.loop !182

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21: ; preds = %.lr.ph.i.i.i.i.i.i.i.i17, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11
  %.0.lcssa.i.i.i.i.i.i.i.i22 = phi ptr [ %i.be, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i11 ], [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i17 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i22, i64 16
  %.not.i23.i.i.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i23.i.i.i.i23, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24: ; preds = %bb.i, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i21
  store ptr %i.be, ptr %i.am, align 8, !tbaa !156
  store ptr %i.bi, ptr %i.ao, align 8, !tbaa !163
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !176
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit25

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit25: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal12sort_watchesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.023 = alloca [12 x i8], align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5696
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159, !nonnull !160, !align !161
  %i.c = load i32, ptr %i.b, align 4, !tbaa !162  ; 2 uses
  %i.d = xor i32 %i.c, -1
  %i.e = lshr i32 %i.c, 31
  %i.f = add i32 %i.e, %i.d                       ; 2 uses
  %.not70 = icmp eq i32 %i.f, -1
  br i1 %.not70, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit, label %.lr.ph76

.lr.ph76:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 928
  br label %bb.c

._crit_edge77:                                    ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.041.1.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge77
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.041.1.lcssa) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit:   ; preds = %bb.a, %._crit_edge77, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph76, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %.sroa.041.074 = phi ptr [ null, %.lr.ph76 ], [ %.sroa.041.1.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit ] ; 2 uses
  %.sroa.10.073 = phi ptr [ null, %.lr.ph76 ], [ %spec.select, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit ] ; 2 uses
  %.sroa.17.072 = phi ptr [ null, %.lr.ph76 ], [ %.sroa.17.1.lcssa, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit ] ; 2 uses
  %.sroa.038.071 = phi i32 [ -1, %.lr.ph76 ], [ %i.aq, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit ] ; 4 uses
  %i.h = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.038.071, i1 true)
  %i.i = tail call noundef i32 @llvm.fshl.i32(i32 %i.h, i32 %.sroa.038.071, i32 1)
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !187  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !187  ; 4 uses
  %.not4961 = icmp eq ptr %i.o, %i.n
  br i1 %.not4961, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit
  %.sroa.041.166 = phi ptr [ %.sroa.041.2, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.041.074, %bb.c ] ; 9 uses
  %.sroa.10.165 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.10.073, %bb.c ] ; 8 uses
  %.sroa.17.164 = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17.072, %bb.c ] ; 3 uses
  %.sroa.030.063 = phi ptr [ %i.ai, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.033.062 = phi ptr [ %.sroa.033.1, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ], [ %i.o, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.023, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.063, i64 12, i1 false), !tbaa.struct !177
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030.063, i64 12
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !162 ; 3 uses
  %i.p = icmp eq i32 %.sroa.7.0.copyload, 2
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.033.062, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.033.062, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.063, i64 12, i1 false)
  %.sroa.7.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.033.062, i64 12
  store i32 2, ptr %.sroa.7.0..sroa.0.0..sroa_idx, align 4, !tbaa !162
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023)
  %.not.i.i.i21 = icmp eq ptr %.sroa.041.166, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit22, label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.10.165, %.sroa.17.164
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.10.165, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.063, i64 12, i1 false)
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %.sroa.10.165, i64 12
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx25, align 4, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.10.165, i64 16
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %.sroa.10.165 to i64
  %i.t = ptrtoint ptr %.sroa.041.166 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775792
  br i1 %i.v, label %bb.i, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.w = ashr exact i64 %i.u, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 576460752303423487)
  %i.aa = select i1 %i.y, i64 576460752303423487, i64 %i.z ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i19)
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.023, i64 12, i1 false), !tbaa.struct !177
  %.sroa.7.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx27, align 4, !tbaa !162
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.041.166, %.sroa.10.165
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc20, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.041.166, %.noexc20 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !177, !alias.scope !188
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %.sroa.10.165
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !182

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc20 ], [ %i.af, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %.sroa.041.166, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.041.166) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.g, %bb.d
  %.sroa.033.1 = phi ptr [ %i.q, %bb.d ], [ %.sroa.033.062, %bb.g ], [ %.sroa.033.062, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.164, %bb.d ], [ %.sroa.17.164, %bb.g ], [ %i.ah, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.165, %bb.d ], [ %i.r, %bb.g ], [ %i.ag, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.041.2 = phi ptr [ %.sroa.041.166, %bb.d ], [ %.sroa.041.166, %bb.g ], [ %i.ac, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.030.063, i64 16 ; 2 uses
  %.not49 = icmp eq ptr %i.ai, %i.n
  br i1 %.not49, label %._crit_edge, label %.lr.ph, !llvm.loop !192

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit, %bb.c
  %.sroa.033.0.lcssa = phi ptr [ %i.o, %bb.c ], [ %.sroa.033.1, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.17.1.lcssa = phi ptr [ %.sroa.17.072, %bb.c ], [ %.sroa.17.2, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ]
  %.sroa.10.1.lcssa = phi ptr [ %.sroa.10.073, %bb.c ], [ %.sroa.10.2, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.074, %bb.c ], [ %.sroa.041.2, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %i.aj = ptrtoint ptr %.sroa.10.1.lcssa to i64
  %i.ak = ptrtoint ptr %.sroa.041.1.lcssa to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = icmp sgt i64 %i.al, 16
  br i1 %i.am, label %bb.k, label %bb.l, !prof !193

bb.k:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.033.0.lcssa, ptr align 8 %.sroa.041.1.lcssa, i64 %i.al, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.l:                                             ; preds = %._crit_edge
  %i.an = icmp eq i64 %i.al, 16
  br i1 %i.an, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.033.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.1.lcssa, i64 16, i1 false), !tbaa.struct !177
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN7CaDiCaL5WatchESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %bb.m, %bb.l, %bb.k
  %.not.i.i = icmp eq ptr %.sroa.10.1.lcssa, %.sroa.041.1.lcssa
  %spec.select = select i1 %.not.i.i, ptr %.sroa.10.1.lcssa, ptr %.sroa.041.1.lcssa
  %i.ao = xor i32 %.sroa.038.071, -1
  %i.ap = lshr i32 %.sroa.038.071, 31
  %i.aq = add i32 %i.ap, %i.ao                    ; 2 uses
  %.not = icmp eq i32 %i.aq, %i.f
  br i1 %.not, label %._crit_edge77, label %bb.c

bb.n:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.041.166) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit22

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EED2Ev.exit22: ; preds = %bb.e, %bb.n
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::vector<std::vector<CaDiCaL::Watch>>::_Temporary_value", align 8 ; 9 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 14 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %0, ptr %4, align 8, !tbaa !194
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !163  ; 3 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !156    ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %.noexc4.i.thread, label %bb.d

.noexc4.i.thread:                                 ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr null, i64 %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !176
  br label %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = icmp ugt i64 %i.o, 9223372036854775792
  br i1 %i.s, label %.noexc.i.i.i, label %.noexc4.i, !prof !197

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

.noexc4.i:                                        ; preds = %bb.d
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #17 ; 4 uses
  store ptr %i.t, ptr %i.i, align 8, !tbaa !156
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !176
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc4.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.noexc4.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.l, %.noexc4.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !177
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !198

_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc4.i.thread
  %i.z = phi ptr [ %i.p, %.noexc4.i.thread ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc4.i.thread ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.z, align 8, !tbaa !163
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.f, %i.aa                     ; 3 uses
  %i.ac = sdiv exact i64 %i.ab, 24                ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, %2
  br i1 %i.ad, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %.idx = mul i64 %2, -24                         ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %.not11.i.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not11.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.e ] ; 3 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ae, %bb.e ] ; 4 uses
  %i.af = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !187
  store <2 x ptr> %i.af, ptr %.013.i.i.i.i.i, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !176
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.012.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i69 = icmp eq ptr %i.aj, %i.d
  br i1 %.not.i.i.i.i.i69, label %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !199

_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit, %bb.e
  %i.al = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit.loopexit ], [ %i.d, %bb.e ]
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %2
  store ptr %i.am, ptr %i.c, align 8, !tbaa !8
  %i.an = ptrtoint ptr %i.ae to i64
  %i.ao = sub i64 %i.an, %i.aa                    ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_ET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPSt6vectorIN7CaDiCaL5WatchESaIS2_EES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.aq = udiv exact i64 %i.ao, 24
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSEOS3_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ay, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSEOS3_.exit.i.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.as, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSEOS3_.exit.i.i.i.i.i ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSEOS3_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !156 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.av = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !187
end_hunk_0
