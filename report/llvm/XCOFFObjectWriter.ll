Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCOFFObjectWriter?download=true
inline.NumInlined: 2256
inline.NumDeleted: 1071
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj:bb.a
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #28 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !277
  store ptr %i.y, ptr %i.q, align 8, !tbaa !283
  store i32 0, ptr %i.p, align 16, !tbaa !282
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !221
  %i.aa = load ptr, ptr %0, align 8, !tbaa !706
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !221
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !221
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !221
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !423 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !423
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !423
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !423
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !423
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !277    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !276  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !283  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !277
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !276
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !423  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !346  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !423
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !423
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !712

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !346
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !423
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !423
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !423
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !423
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !713

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !714

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !276
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !282
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !282
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #28
  store i32 0, ptr %i.d, align 4, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MCSymbolEjNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_115XCOFFRelocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i32 range(i32 0, 65536) %2) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 12) #28
  %.val = load ptr, ptr %0, align 8, !tbaa !37
  %.val4 = load i32, ptr %i.a, align 8, !tbaa !38
  %i.f = zext i32 %.val4 to i64
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.f ; 2 uses
  store i64 %1, ptr %i.g, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !38
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !38
  ret void
}

declare void @_ZNK4llvm18StringTableBuilder5writeERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(62), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter22finalizeRelocationInfoEPNS_12SectionEntryEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2040) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i8, ptr %i.b, align 8, !tbaa !122, !range !125, !noundef !126
  %i.c = trunc nuw i8 %.val.val to i1
  %i.d = icmp ult i64 %2, 65535
  %or.cond.not = or i1 %i.d, %i.c
  br i1 %or.cond.not, label %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE9push_backEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i16, ptr %i.e, align 8, !tbaa !149
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = load i16, ptr %i.h, align 8, !tbaa !117
  %i.j = add i16 %i.i, 1                          ; 3 uses
  store i16 %i.j, ptr %i.h, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !205  ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208
  %.not.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_112SectionEntryE, i64 16), ptr %i.m, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 31362909677711150, ptr %i.p, align 8
  %.sroa.3.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %.sroa.3.sroa.6.0..sroa_idx, align 8
  %.sroa.3.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.7.0..sroa_idx, i8 0, i64 24, i1 false)
  %.sroa.3.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 %i.g, ptr %.sroa.3.sroa.716.0..sroa_idx, align 8
  %.sroa.3.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  store i32 32768, ptr %.sroa.3.sroa.8.0..sroa_idx, align 4
  %.sroa.3.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i16 %i.j, ptr %.sroa.3.sroa.9.0..sroa_idx, align 8
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !205
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.r, ptr %i.l, align 8, !tbaa !205
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !204 ; 5 uses
  %i.s = ptrtoint ptr %i.m to i64
  %i.t = ptrtoint ptr %.val.i.i.i to i64          ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775744
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #30
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 6                   ; 3 uses
  %i.x = icmp eq ptr %i.m, %.val.i.i.i            ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.x, i64 1, i64 %i.w
  %i.y = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.w
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 144115188075855871)
  %i.ab = select i1 %i.z, i64 144115188075855871, i64 %i.aa ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 6
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #27 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_112SectionEntryE, i64 16), ptr %i.ae, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 31362909677711150, ptr %i.af, align 8
  %.sroa.3.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %2, ptr %.sroa.3.sroa.6.0..sroa_idx13, align 8
  %.sroa.3.sroa.7.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.7.0..sroa_idx15, i8 0, i64 24, i1 false)
  %.sroa.3.sroa.716.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i32 %i.g, ptr %.sroa.3.sroa.716.0..sroa_idx17, align 8
  %.sroa.3.sroa.8.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  store i32 32768, ptr %.sroa.3.sroa.8.0..sroa_idx19, align 4
  %.sroa.3.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i16 %i.j, ptr %.sroa.3.sroa.9.0..sroa_idx21, align 8
  br i1 %i.x, label %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 3 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.val.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12_GLOBAL__N_112SectionEntryE, i64 16), ptr %.03.i.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !715, !noalias !718
  %i.ag = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(50) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(50) %i.ah, i64 50, i1 false), !alias.scope !720
  %i.ai = load ptr, ptr %.092.i.i.i.i.i.i, align 8, !tbaa !43, !alias.scope !718, !noalias !715
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !720
  tail call void %i.ak(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(58) %.092.i.i.i.i.i.i) #28, !noalias !715, !inline_history !721
  %i.al = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !722

_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 64
  %.not.i27.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !208
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.aq) #29
  br label %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !204
  store ptr %i.an, ptr %i.l, align 8, !tbaa !205
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !208
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 65535, ptr %3, align 8, !tbaa !540
  br label %5

_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.a
  %4 = trunc i64 %2 to i32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %4, ptr %i.as, align 8, !tbaa !540
  br label %5

5:                                                ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112SectionEntryESaIS1_EE9push_backEOS1_.exit, %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_111XCOFFWriter18writeSectionHeaderEPKNS_12SectionEntryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2040) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i8, align 1                       ; 32 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !148  ; 3 uses
  %i.v = and i32 %i.u, 32768
  %.not20 = icmp ne i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i16, ptr %i.w, align 8, !tbaa !149
  %i.y = icmp eq i16 %i.x, -3
  br i1 %i.y, label %bb.t, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 19 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !550, !nonnull !126, !align !543 ; 8 uses
  %.010.i.i.ptr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i8, ptr %.010.i.i.ptr, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !42
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ad = load i8, ptr %.010.i.i.ptr.1, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.ad, ptr %i.s, align 1, !tbaa !42
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.af = load i8, ptr %.010.i.i.ptr.2, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.af, ptr %i.s, align 1, !tbaa !42
  %i.ag = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %.010.i.i.ptr.3, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.ah, ptr %i.s, align 1, !tbaa !42
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i8, ptr %.010.i.i.ptr.4, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.aj, ptr %i.s, align 1, !tbaa !42
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.al = load i8, ptr %.010.i.i.ptr.5, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.al, ptr %i.s, align 1, !tbaa !42
  %i.am = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.an = load i8, ptr %.010.i.i.ptr.6, align 2, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.an, ptr %i.s, align 1, !tbaa !42
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.010.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ap = load i8, ptr %.010.i.i.ptr.7, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 %i.ap, ptr %i.s, align 1, !tbaa !42
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull %i.s, i64 noundef 1) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ar = and i32 %i.u, 16
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !455
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i, %bb.b
  %i.au = phi i64 [ %i.at, %bb.b ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %.val.i = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.aw = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load i8, ptr %i.aw, align 8, !tbaa !122, !range !125, !noundef !126
  %i.ax = trunc nuw i8 %.val.val.i to i1
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.z, align 8, !tbaa !550, !nonnull !126, !align !543
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.not.i.i.i.i = icmp eq i32 %i.ba, 1
  %i.bb = call i64 @llvm.bswap.i64(i64 %i.au)
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.au, i64 %i.bb
  store i64 %spec.select.i.i.i.i, ptr %i.r, align 8, !tbaa !301
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull %i.r, i64 noundef 8) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit

bb.e:                                             ; preds = %bb.c
  %i.bd = trunc i64 %i.au to i32                  ; 2 uses
  %i.be = load ptr, ptr %i.z, align 8, !tbaa !550, !nonnull !126, !align !543
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.not.i.i.i2.i = icmp eq i32 %i.bg, 1
  %i.bh = call i32 @llvm.bswap.i32(i32 %i.bd)
  %spec.select.i.i.i3.i = select i1 %.not.i.i.i2.i, i32 %i.bd, i32 %i.bh
  store i32 %spec.select.i.i.i3.i, ptr %i.q, align 4, !tbaa !423
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull %i.q, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit

_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit:  ; preds = %bb.d, %bb.e
  %i.bj = and i32 %i.u, 32784
  %or.cond.not = icmp eq i32 %i.bj, 0
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !455
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit, %bb.f
  %i.bm = phi i64 [ %i.bl, %bb.f ], [ 0, %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit ] ; 3 uses
  %.val.i21 = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.bn = getelementptr i8, ptr %.val.i21, i64 16
  %.val.val.i22 = load i8, ptr %i.bn, align 8, !tbaa !122, !range !125, !noundef !126
  %i.bo = trunc nuw i8 %.val.val.i22 to i1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = load ptr, ptr %i.z, align 8, !tbaa !550, !nonnull !126, !align !543
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.not.i.i.i.i25 = icmp eq i32 %i.br, 1
  %i.bs = call i64 @llvm.bswap.i64(i64 %i.bm)
  %spec.select.i.i.i.i26 = select i1 %.not.i.i.i.i25, i64 %i.bm, i64 %i.bs
  store i64 %spec.select.i.i.i.i26, ptr %i.p, align 8, !tbaa !301
  %i.bt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull %i.p, i64 noundef 8) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit27

bb.i:                                             ; preds = %bb.g
  %i.bu = trunc i64 %i.bm to i32                  ; 2 uses
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !550, !nonnull !126, !align !543
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.not.i.i.i2.i23 = icmp eq i32 %i.bx, 1
  %i.by = call i32 @llvm.bswap.i32(i32 %i.bu)
  %spec.select.i.i.i3.i24 = select i1 %.not.i.i.i2.i23, i32 %i.bu, i32 %i.by
  store i32 %spec.select.i.i.i3.i24, ptr %i.o, align 4, !tbaa !423
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull %i.o, i64 noundef 4) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit27

_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit27: ; preds = %bb.h, %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !456 ; 3 uses
  %.val.i28 = load ptr, ptr %i.av, align 8, !tbaa !11
  %i.cc = getelementptr i8, ptr %.val.i28, i64 16
  %.val.val.i29 = load i8, ptr %i.cc, align 8, !tbaa !122, !range !125, !noundef !126
  %i.cd = trunc nuw i8 %.val.val.i29 to i1
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_111XCOFFWriter9writeWordEm.exit27
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !550, !nonnull !126, !align !543
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
end_hunk_0
