inline.NumInlined: 5769
inline.NumDeleted: 1702
begin_hunk_0_@_ZNK8facebook5velox17SelectivityVector12testSelectedIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKS1_PKiEUlS8_E_EEbS8_:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.av, ptr %i.ba, align 8, !tbaa !143
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.bb, align 8, !tbaa !144
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !145
  store i8 1, ptr %4, align 8, !tbaa !146
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.av, ptr %i.bc, align 8, !tbaa !148
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.bd, align 8, !tbaa !144
  %.sroa.3.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %2, ptr %.sroa.3.0..sroa_idx6.i.i, align 8, !tbaa !145
  %i.be = tail call noundef zeroext i1 @_ZN8facebook5velox4bits9testWordsIZNS1_8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS5_EENSt9enable_ifIXsr3stdE9is_same_vIT_S5_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS9_E_EEbPKmiibS9_EUlimE_ZNS3_ISJ_EEbSL_iibS9_EUliE_EEbiiS9_T0_(i32 noundef %i.ax, i32 noundef %i.az, ptr noundef nonnull byval(%class.anon.403) align 8 %3, ptr noundef nonnull byval(%class.anon.404) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.j
  %.1 = phi i1 [ %i.be, %bb.j ], [ true, %bb.h ], [ %.not.not, %bb.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox17SelectivityVector8isSubsetERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef nonnull align 8 dereferenceable(38) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !94   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !94
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !104  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104
  %.not5 = icmp sgt i32 %i.f, %i.h
  br i1 %.not5, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !132    ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !132    ; 3 uses
  %.not.i.i = icmp slt i32 %i.b, %i.f
  br i1 %.not.i.i, label %bb.d, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.b, 63                         ; 2 uses
  %i.l = srem i32 %i.k, 64
  %i.m = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.n = and i32 %i.f, -64                        ; 3 uses
  %i.o = icmp slt i32 %i.n, %i.m
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = ashr i32 %i.f, 6
  %i.q = and i32 %i.f, 63
  %i.r = zext nneg i32 %i.q to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.r
  %i.s = xor i64 %notmask.i.i.i, -1
  %i.t = sub nsw i32 %i.m, %i.b                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.u
  %i.v = xor i64 %notmask.i.i.i.i, -1
  %i.w = sub nsw i32 64, %i.t
  %i.x = zext nneg i32 %i.w to i64
  %i.y = shl i64 %i.v, %i.x
  %i.z = and i64 %i.y, %i.s
  %i.aa = sext i32 %i.p to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !134
  %i.ad = and i64 %i.z, %i.ac
  br label %.loopexit.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  %.not36.i.i = icmp eq i32 %i.b, %i.m
  br i1 %.not36.i.i, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = sdiv i32 %i.b, 64
  %i.af = sub nsw i32 %i.m, %i.b                  ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  %notmask.i.i39.i.i = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask.i.i39.i.i, -1
  %i.ai = sub nsw i32 64, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl i64 %i.ah, %i.aj
  %i.al = sext i32 %i.ae to i64                   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !134
  %i.ao = and i64 %i.an, %i.ak                    ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.al
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !134
  %i.ar = and i64 %i.aq, %i.ao
  %i.as = icmp eq i64 %i.ar, %i.ao
  br i1 %i.as, label %.preheader, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

.preheader:                                       ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.i
  %.0.i.i = phi i32 [ %i.at, %bb.i ], [ %i.m, %.preheader ] ; 2 uses
  %i.at = add nsw i32 %.0.i.i, 64                 ; 2 uses
  %.not37.i.i = icmp sgt i32 %i.at, %i.n
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = sdiv i32 %.0.i.i, 64
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !134 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.av
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !134
  %i.ba = and i64 %i.az, %i.ax
  %i.bb = icmp eq i64 %i.ba, %i.ax
  br i1 %i.bb, label %bb.h, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, !llvm.loop !149

.critedge.i.i:                                    ; preds = %bb.h
  %.not38.i.i = icmp eq i32 %i.f, %i.n
  br i1 %.not38.i.i, label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bc = ashr i32 %i.f, 6
  %i.bd = and i32 %i.f, 63
  %i.be = zext nneg i32 %i.bd to i64
  %notmask.i40.i.i = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask.i40.i.i, -1
  %i.bg = sext i32 %i.bc to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !134
  %i.bj = and i64 %i.bi, %i.bf
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %bb.j, %bb.e
  %.sink54.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.bg, %bb.j ]
  %.sink53.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.bj, %bb.j ] ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.j, i64 %.sink54.i.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !134
  %i.bm = and i64 %i.bl, %.sink53.i.i
  %i.bn = icmp eq i64 %i.bm, %.sink53.i.i
  br label %_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit

_ZN8facebook5velox4bits8isSubsetEPKmS3_ii.exit:   ; preds = %bb.i, %.loopexit.sink.split.i.i, %.critedge.i.i, %bb.g, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %.critedge.i.i ], [ %i.bn, %.loopexit.sink.split.i.i ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook5velox4bits9testWordsIZNS1_8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS5_EENSt9enable_ifIXsr3stdE9is_same_vIT_S5_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS9_E_EEbPKmiibS9_EUlimE_ZNS3_ISJ_EEbSL_iibS9_EUliE_EEbiiS9_T0_(i32 noundef %0, i32 noundef %1, ptr noundef byval(%class.anon.403) align 8 %2, ptr noundef byval(%class.anon.404) align 8 %3) local_unnamed_addr #14 comdat {
bb.a:
  %.not = icmp slt i32 %0, %1
  br i1 %.not, label %bb.b, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit

bb.b:                                             ; preds = %bb.a
  %i.a = add i32 %0, 63                           ; 2 uses
  %i.b = srem i32 %i.a, 64
  %i.c = sub nsw i32 %i.a, %i.b                   ; 6 uses
  %i.d = and i32 %1, -64                          ; 6 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i32 %1, 6
  %i.g = and i32 %1, 63
  %i.h = zext nneg i32 %i.g to i64
  %notmask.i = shl nsw i64 -1, %i.h
  %i.i = xor i64 %notmask.i, -1
  %i.j = sub nsw i32 %i.c, %0                     ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %notmask.i.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i.i, -1
  %i.m = sub nsw i32 64, %i.j
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = and i64 %i.o, %i.i
  %i.q = load i8, ptr %2, align 8, !tbaa !137, !range !120, !noundef !121
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !143
  %i.t = sext i32 %i.f to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !134
  %i.w = xor i8 %i.q, 1
  %i.x = zext nneg i8 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = xor i64 %i.v, %i.y
  %i.aa = and i64 %i.p, %i.z                      ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !150, !nonnull !121, !align !151
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  %.neg.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 -40
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !152, !nonnull !121, !align !151
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i
  %.014.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.au, %bb.e ] ; 3 uses
  %i.aj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i, i1 true)
  %4 = trunc nuw nsw i64 %i.aj to i32
  %5 = or disjoint i32 %i.d, %4
  %6 = sext i32 %5 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %6
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !134
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %i.ap
  %.not13.not.i.not.not = icmp ne i64 %i.as, 0    ; 3 uses
  br i1 %.not13.not.i.not.not, label %bb.e, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit

bb.e:                                             ; preds = %bb.d
  %i.at = add nsw i64 %.014.i, -1
  %i.au = and i64 %i.at, %.014.i                  ; 2 uses
  %.not12.i = icmp eq i64 %i.au, 0
  br i1 %.not12.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.d, !llvm.loop !153

bb.f:                                             ; preds = %bb.b
  %.not36 = icmp eq i32 %0, %i.c
  br i1 %.not36, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit48.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sdiv i32 %0, 64                         ; 2 uses
  %i.aw = sub nsw i32 %i.c, %0                    ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask.i.i39 = shl nsw i64 -1, %i.ax
  %i.ay = xor i64 %notmask.i.i39, -1
  %i.az = sub nsw i32 64, %i.aw
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl i64 %i.ay, %i.ba
  %i.bc = load i8, ptr %2, align 8, !tbaa !137, !range !120, !noundef !121
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !143
  %i.bf = sext i32 %i.av to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !134
  %i.bi = xor i8 %i.bc, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = xor i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, %i.bb                    ; 2 uses
  %.not.i40 = icmp eq i64 %i.bm, 0
  br i1 %.not.i40, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit48.thread, label %.preheader.i41

.preheader.i41:                                   ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bo = shl nsw i32 %i.av, 6
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !150, !nonnull !121, !align !151
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.bq, null
  %.neg.i.i.i.i43 = select i1 %.not.i.i.i.i42, i64 0, i64 -40
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %.neg.i.i.i.i43
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !152, !nonnull !121, !align !151
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !92
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.preheader.i41
  %.014.i44 = phi i64 [ %i.bm, %.preheader.i41 ], [ %i.ch, %bb.i ] ; 3 uses
  %i.bw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i44, i1 true)
  %7 = trunc nuw nsw i64 %i.bw to i32
  %8 = or disjoint i32 %i.bo, %7
  %9 = sext i32 %8 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %9
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = lshr i64 %i.bz, 6
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !134
  %i.cd = and i64 %i.bz, 63
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = and i64 %i.ce, %i.cc
  %.not13.not.i45 = icmp eq i64 %i.cf, 0
  br i1 %.not13.not.i45, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = add i64 %.014.i44, -1
  %i.ch = and i64 %i.cg, %.014.i44                ; 2 uses
  %.not12.i46 = icmp eq i64 %i.ch, 0
  br i1 %.not12.i46, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit48.thread, label %bb.h, !llvm.loop !153

_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit48.thread: ; preds = %bb.i, %bb.g, %bb.f
  %i.ci = add nsw i32 %i.c, 64                    ; 2 uses
  %.not3769 = icmp sgt i32 %i.ci, %i.d
  br i1 %.not3769, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit48.thread
  %i.cj = load i8, ptr %3, align 8, !tbaa !146, !range !120, !noundef !121
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !148
  %i.cm = xor i8 %i.cj, 1
  %i.cn = zext nneg i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !121, !align !151
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !121, !align !151
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit
  %i.ct = phi i32 [ %i.ci, %.lr.ph ], [ %i.dq, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit ] ; 2 uses
  %.070 = phi i32 [ %i.c, %.lr.ph ], [ %i.ct, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit ]
  %i.cu = sdiv i32 %.070, 64                      ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !134 ; 2 uses
  %.not.i49 = icmp eq i64 %i.cx, %i.co
  br i1 %.not.i49, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit, label %.preheader.i50

.preheader.i50:                                   ; preds = %bb.j
  %i.cy = xor i64 %i.cx, %i.co
  %i.cz = shl nsw i32 %i.cu, 6
  %i.da = load ptr, ptr %i.cq, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.da, null
  %.neg.i.i.i.i52 = select i1 %.not.i.i.i.i51, i64 0, i64 -40
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.neg.i.i.i.i52
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !92
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !132
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.preheader.i50
  %.013.i = phi i64 [ %i.cy, %.preheader.i50 ], [ %i.dp, %bb.l ] ; 3 uses
  %i.de = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.013.i, i1 true)
  %10 = trunc nuw nsw i64 %i.de to i32
  %11 = or disjoint i32 %i.cz, %10
  %12 = sext i32 %11 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !134
  %i.dl = and i64 %i.dh, 63
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = and i64 %i.dm, %i.dk
  %.not12.not.i = icmp eq i64 %i.dn, 0
  br i1 %.not12.not.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.do = add i64 %.013.i, -1
  %i.dp = and i64 %i.do, %.013.i                  ; 2 uses
  %.not11.i = icmp eq i64 %i.dp, 0
  br i1 %.not11.i, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit, label %bb.k, !llvm.loop !154

_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit: ; preds = %bb.l, %bb.j
  %i.dq = add nsw i32 %i.ct, 64                   ; 2 uses
  %.not37 = icmp sgt i32 %i.dq, %i.d
  br i1 %.not37, label %.critedge, label %bb.j, !llvm.loop !155

.critedge:                                        ; preds = %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUliE_clEi.exit, %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit48.thread
  %.not38 = icmp eq i32 %1, %i.d
  br i1 %.not38, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.dr = ashr i32 %1, 6
  %i.ds = and i32 %1, 63
  %i.dt = zext nneg i32 %i.ds to i64
  %notmask.i53 = shl nsw i64 -1, %i.dt
  %i.du = xor i64 %notmask.i53, -1
  %i.dv = load i8, ptr %2, align 8, !tbaa !137, !range !120, !noundef !121
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !143
  %i.dy = sext i32 %i.dr to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !134
  %i.eb = xor i8 %i.dv, 1
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = xor i64 %i.ea, %i.ed
  %i.ef = and i64 %i.ee, %i.du                    ; 2 uses
  %.not.i54 = icmp eq i64 %i.ef, 0
  br i1 %.not.i54, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !150, !nonnull !121, !align !151
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.ei, null
  %.neg.i.i.i.i57 = select i1 %.not.i.i.i.i56, i64 0, i64 -40
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %.neg.i.i.i.i57
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !152, !nonnull !121, !align !151
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !92
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !132
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.preheader.i55
  %.014.i58 = phi i64 [ %i.ef, %.preheader.i55 ], [ %i.ez, %bb.o ] ; 3 uses
  %i.eo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014.i58, i1 true)
  %13 = trunc nuw nsw i64 %i.eo to i32
  %14 = or disjoint i32 %i.d, %13
  %15 = sext i32 %14 to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.em, i64 %15
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 6
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !134
  %i.ev = and i64 %i.er, 63
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = and i64 %i.ew, %i.eu
  %.not13.not.i59.not.not = icmp ne i64 %i.ex, 0  ; 3 uses
  br i1 %.not13.not.i59.not.not, label %bb.o, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit

bb.o:                                             ; preds = %bb.n
  %i.ey = add nsw i64 %.014.i58, -1
  %i.ez = and i64 %i.ey, %.014.i58                ; 2 uses
  %.not12.i60 = icmp eq i64 %i.ez, 0
  br i1 %.not12.i60, label %_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit, label %bb.n, !llvm.loop !153

_ZZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_ENKUlimE_clEim.exit: ; preds = %bb.h, %bb.k, %bb.o, %bb.n, %bb.e, %bb.d, %bb.m, %bb.c, %.critedge, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ %.not13.not.i59.not.not, %bb.o ], [ true, %bb.m ], [ %.not13.not.i.not.not, %bb.e ], [ true, %bb.c ], [ false, %bb.k ], [ %.not13.not.i.not.not, %bb.d ], [ %.not13.not.i59.not.not, %bb.n ], [ false, %bb.h ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0, !11, i64 8}
!9 = !{!"p1 _ZTSN8facebook5velox4TypeE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!12 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!13 = !{!14, !17, i64 16}
!14 = !{!"_ZTSN8facebook5velox4TypeE", !15, i64 0, !16, i64 8, !17, i64 16, !18, i64 17}
!15 = !{!"_ZTSN8facebook5velox4TreeIKSt10shared_ptrIKNS0_4TypeEEEE"}
!16 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!17 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!18 = !{!"bool", !5, i64 0}
!19 = !{!"branch_weights", i32 4001, i32 1}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0, !11, i64 8}
!22 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !10, i64 0}
!23 = !{!11, !12, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !6, i64 0}
!26 = distinct !{null}
!27 = !{!28, !30, i64 28}
!28 = !{!"_ZTSN8facebook5velox10BaseVectorE", !29, i64 8, !17, i64 24, !18, i64 25, !30, i64 28, !31, i64 32, !33, i64 40, !34, i64 48, !4, i64 56, !35, i64 60, !35, i64 68, !35, i64 76, !35, i64 84, !39, i64 92, !18, i64 93}
!29 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !8, i64 0}
!30 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!31 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !32, i64 0}
!32 = !{!"p1 _ZTSN8facebook5velox6BufferE", !10, i64 0}
!33 = !{!"p1 long", !10, i64 0}
!34 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !10, i64 0}
!35 = !{!"_ZTSSt8optionalIiE", !36, i64 0}
!36 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !37, i64 0}
!37 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !38, i64 0}
!38 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !18, i64 4}
!39 = !{!"_ZTSSt6atomicIbE", !40, i64 0}
!40 = !{!"_ZTSSt13__atomic_baseIbE", !18, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !10, i64 0}
!43 = !{!31, !32, i64 0}
!44 = !{!"branch_weights", !"expected", i32 2145101826, i32 2381822}
!45 = !{!28, !17, i64 24}
!46 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!47 = !{!22, !22, i64 0}
!48 = !{!49, !4, i64 8}
!49 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!50 = !{!49, !4, i64 12}
!51 = distinct !{null, null, null, null, null}
!52 = !{!5, !5, i64 0}
!53 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN8facebook5velox4exec7EvalCtxE", !56, i64 0, !57, i64 8, !58, i64 16, !18, i64 24, !18, i64 25, !59, i64 32, !64, i64 56, !18, i64 72, !18, i64 73, !18, i64 74, !18, i64 75, !67, i64 80, !68, i64 88}
!56 = !{!"p1 _ZTSN8facebook5velox4core7ExecCtxE", !10, i64 0}
!57 = !{!"p1 _ZTSN8facebook5velox4exec7ExprSetE", !10, i64 0}
!58 = !{!"p1 _ZTSN8facebook5velox9RowVectorE", !10, i64 0}
!59 = !{!"_ZTSSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !60, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE12_Vector_implE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!63 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox10BaseVectorEE", !10, i64 0}
!64 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec14PeeledEncodingEE", !65, i64 0}
!65 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14PeeledEncodingELN9__gnu_cxx12_Lock_policyE2EE", !66, i64 0, !11, i64 8}
!66 = !{!"p1 _ZTSN8facebook5velox4exec14PeeledEncodingE", !10, i64 0}
!67 = !{!"p1 _ZTSN8facebook5velox17SelectivityVectorE", !10, i64 0}
!68 = !{!"_ZTSSt10shared_ptrIN8facebook5velox4exec10EvalErrorsEE", !69, i64 0}
!69 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !11, i64 8}
!70 = !{!"p1 _ZTSN8facebook5velox4exec10EvalErrorsE", !10, i64 0}
!71 = !{!72, !34, i64 0}
!72 = !{!"_ZTSN8facebook5velox4core7ExecCtxE", !34, i64 0, !73, i64 8, !74, i64 16, !75, i64 32, !80, i64 56, !85, i64 80}
!73 = !{!"p1 _ZTSN8facebook5velox4core8QueryCtxE", !10, i64 0}
!74 = !{!"_ZTSN8facebook5velox4core7ExecCtx18OptimizationParamsE", !18, i64 0, !18, i64 1, !18, i64 2, !18, i64 3, !18, i64 4, !4, i64 8}
!75 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !76, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE", !77, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!79 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !10, i64 0}
!80 = !{!"_ZTSSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !81, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTSSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EE", !10, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox10VectorPoolESt14default_deleteIS2_ELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox10VectorPoolESt14default_deleteIS2_EE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox10VectorPoolESt14default_deleteIS2_EEE", !90, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox10VectorPoolELb0EE", !91, i64 0}
!91 = !{!"p1 _ZTSN8facebook5velox10VectorPoolE", !10, i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"p1 int", !10, i64 0}
!94 = !{!95, !4, i64 28}
!95 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !96, i64 0, !4, i64 24, !4, i64 28, !4, i64 32, !100, i64 36}
!96 = !{!"_ZTSSt6vectorImSaImEE", !97, i64 0}
!97 = !{!"_ZTSSt12_Vector_baseImSaImEE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!100 = !{!"_ZTSSt8optionalIbE", !101, i64 0}
!101 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !102, i64 0}
!102 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !103, i64 0}
!103 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !18, i64 1}
!104 = !{!95, !4, i64 32}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv: argument 0"}
!107 = distinct !{!107, !"_ZNK8facebook5velox9AsciiInfo27readLockedAsciiComputedRowsEv"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv: argument 0"}
!110 = distinct !{!110, !"_ZNK5folly16SynchronizedBaseINS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEELNS_6detail22SynchronizedMutexLevelE2EE5rlockEv"}
!111 = !{!112, !113, i64 0}
!112 = !{!"_ZTSSt11shared_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !113, i64 0, !114, i64 8}
!113 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !10, i64 0}
!114 = !{!"_ZTSN5folly16SharedMutexTokenE", !115, i64 0, !116, i64 2}
!115 = !{!"_ZTSN5folly16SharedMutexToken5StateE", !5, i64 0}
!116 = !{!"short", !5, i64 0}
!117 = !{!109, !106}
!118 = !{!114, !115, i64 0}
!119 = !{!114, !116, i64 2}
!120 = !{i8 0, i8 2}
!121 = !{}
!122 = distinct !{null}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.mustprogress"}
!125 = !{i64 16451968}
!126 = distinct !{!126, !124}
!127 = distinct !{null}
!128 = distinct !{!128, !124}
!129 = !{!103, !18, i64 1}
!130 = !{!18, !18, i64 0}
!131 = !{!95, !4, i64 24}
!132 = !{!99, !33, i64 0}
!133 = distinct !{!133, !124}
!134 = !{!135, !135, i64 0}
!135 = !{!"long", !5, i64 0}
!136 = distinct !{!136, !124}
!137 = !{!138, !18, i64 0}
!138 = !{!"_ZTSZN8facebook5velox4bits8testBitsIZNKS0_12SimpleVectorINS0_10StringViewEE7isAsciiIS4_EENSt9enable_ifIXsr3stdE9is_same_vIT_S4_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS8_E_EEbPKmiibS8_EUlimE_", !18, i64 0, !33, i64 8, !139, i64 16}
!139 = !{!"_ZTSZNK8facebook5velox12SimpleVectorINS0_10StringViewEE7isAsciiIS2_EENSt9enable_ifIXsr3stdE9is_same_vIT_S2_EESt8optionalIbEE4typeERKNS0_17SelectivityVectorEPKiEUlS6_E_", !140, i64 0, !141, i64 8}
!140 = !{!"p1 _ZTSN5folly9LockedPtrIKNS_12SynchronizedIN8facebook5velox17SelectivityVectorENS_15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEEEENS_6detail22SynchronizedLockPolicyILNSB_22SynchronizedMutexLevelE2ELNSB_23SynchronizedMutexMethodE0EEEEE", !10, i64 0}
!141 = !{!"p2 int", !142, i64 0}
!142 = !{!"any p2 pointer", !10, i64 0}
!143 = !{!138, !33, i64 8}
!144 = !{!140, !140, i64 0}
!145 = !{!141, !141, i64 0}
!146 = !{!147, !18, i64 0}
end_hunk_0
