inline.NumInlined: 3027
inline.NumDeleted: 1523
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReader8MayMatchERKNS_5SliceE:bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !176
  %i.d = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.a, i64 noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load i32, ptr %i.f, align 8, !tbaa !197
  %i.g = tail call fastcc noundef zeroext i1 @_ZNK7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE11FilterQueryINS0_14StandardHasherIS5_EEEEbRKmRKT_(ptr noundef nonnull align 8 dereferenceable(28) %i.e, i64 %i.d, i32 %.val2)
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReader8MayMatchEiPPNS_5SliceEPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.178", align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

.lr.ph26:                                         ; preds = %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count33 = zext nneg i32 %1 to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !540  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !176
  %i.m = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.j, i64 noundef %i.l)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val20 = load i32, ptr %i.b, align 8, !tbaa !197
  %i.r = zext i32 %.val20 to i64
  %i.s = xor i64 %i.m, %i.r
  %i.t = mul i64 %i.s, 7031196922566818317        ; 3 uses
  %.val26.i = load i32, ptr %i.d, align 8, !tbaa !193
  %i.u = zext i32 %.val26.i to i64                ; 2 uses
  %i.v = and i64 %i.t, 4294967295
  %i.w = mul nuw i64 %i.v, %i.u
  %i.x = lshr i64 %i.w, 32
  %i.y = lshr i64 %i.t, 32
  %i.z = mul nuw i64 %i.y, %i.u
  %i.aa = add nuw i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = trunc nuw i64 %i.ab to i32              ; 2 uses
  %.val27.i = load i32, ptr %i.e, align 8, !tbaa !195 ; 2 uses
  %.val28.i = load i32, ptr %i.f, align 4, !tbaa !194 ; 2 uses
  %i.ad = lshr i32 %i.ac, 7                       ; 3 uses
  %i.ae = mul i32 %i.ad, %.val28.i
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.val27.i, i32 %i.ad)
  %i.af = sub i32 %i.ae, %.sroa.speculated.i      ; 3 uses
  %i.ag = icmp ult i32 %i.ad, %.val27.i
  %.neg.i = sext i1 %i.ag to i32
  %i.ah = add i32 %.val28.i, %.neg.i              ; 3 uses
  %i.ai = and i32 %i.ac, 127                      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = select i1 %i.aj, i32 0, i32 %i.ah
  %i.al = add i32 %i.ak, %i.ah                    ; 2 uses
  %.val29.i = load ptr, ptr %i.c, align 8         ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = zext i32 %i.af to i64
  %i.ao = shl nuw nsw i64 %i.an, 4                ; 2 uses
  %i.ap = add i32 %i.af, -1
  %i.aq = add i32 %i.ap, %i.al
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 4                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.as ; 2 uses
  %i.au = icmp samesign ult i64 %i.ao, %i.as
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.ao
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.01.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.av, %.lr.ph.preheader.i.i ] ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.01.i.i, i32 0, i32 1, i32 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 64 ; 2 uses
  %i.ax = icmp ult ptr %i.aw, %i.at
  br i1 %i.ax, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !546

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.c
  tail call void @llvm.prefetch.p0(ptr readonly %i.at, i32 0, i32 1, i32 1)
  br label %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit

_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit: ; preds = %bb.b, %._crit_edge.i.i
  store i64 %i.t, ptr %i.n, align 8, !tbaa !361
  store i32 %i.af, ptr %i.o, align 8, !tbaa !129
  store i32 %i.ah, ptr %i.p, align 4, !tbaa !129
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph26, label %bb.b, !llvm.loop !547

._crit_edge:                                      ; preds = %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.d:                                             ; preds = %.lr.ph26, %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit
  %indvars.iv30 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next31, %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv30 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !548 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !550 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !551 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !552 ; 4 uses
  %.val21 = load ptr, ptr %i.g, align 8           ; 3 uses
  %i.bg = mul i64 %i.az, -4427176413096506387     ; 6 uses
  %i.bh = and i64 %i.bg, -2
  %i.bi = xor i64 %i.bh, -4366375858499063011     ; 5 uses
  %i.bj = tail call noundef i64 @llvm.bswap.i64(i64 %i.bg)
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = icmp eq i32 %i.bf, 0
  br i1 %i.bl, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.d
  %.not4523.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not4523.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count35.i = zext i32 %i.bd to i64
  br label %.lr.ph25.i

bb.e:                                             ; preds = %.lr.ph25.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph25.i, !llvm.loop !553

.lr.ph25.i:                                       ; preds = %bb.e, %.lr.ph25.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next33.i, %bb.e ] ; 2 uses
  %i.bm = trunc nuw i64 %indvars.iv32.i to i32    ; 2 uses
  %i.bn = add i32 %i.bb, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.br, align 1
  %.0.copyload.i2.i.i.i.i = load i64, ptr %i.bq, align 1
  %i.bs = and i64 %.0.copyload.i2.i.i.i.i, %i.bi
  %i.bt = and i64 %.0.copyload.i.i.i.i.i, %i.bg
  %i.bu = xor i64 %i.bs, %i.bt
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bu)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = lshr i32 %i.bk, %i.bm
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = and i32 %i.by, 1
  %.not44.i = icmp eq i32 %i.bz, 0
  br i1 %.not44.i, label %bb.e, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit

bb.f:                                             ; preds = %bb.d
  %i.ca = and i32 %i.bf, 127                      ; 3 uses
  %i.cb = icmp samesign ugt i32 %i.ca, 63
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = and i32 %i.bf, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl i64 %i.bi, %i.cd
  br label %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i

bb.h:                                             ; preds = %bb.f
  %i.cf = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cg = shl i64 %i.bi, %i.cf
  %i.ch = lshr i64 %i.bi, 1
  %i.ci = sub nuw nsw i32 63, %i.ca
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.ch, %i.cj
  %i.cl = shl i64 %i.bg, %i.cf
  %i.cm = or i64 %i.ck, %i.cl
  br label %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i

_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i:        ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.g ], [ %i.cg, %bb.h ]
  %.sroa.4.0.i.i = phi i64 [ %i.ce, %bb.g ], [ %i.cm, %bb.h ]
  %i.cn = sub i32 128, %i.bf                      ; 2 uses
  %i.co = and i32 %i.cn, 127                      ; 3 uses
  %i.cp = icmp samesign ugt i32 %i.co, 63
  br i1 %i.cp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i
  %i.cq = and i32 %i.cn, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = lshr i64 %i.bg, %i.cr
  br label %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i

bb.j:                                             ; preds = %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i
  %i.ct = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cu = lshr i64 %i.bg, %i.ct
  %i.cv = mul i64 %i.az, -8854352826193012774
  %i.cw = sub nuw nsw i32 63, %i.co
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl i64 %i.cv, %i.cx
  %i.cz = lshr i64 %i.bi, %i.ct
  %i.da = or i64 %i.cy, %i.cz
  br label %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i

_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i:        ; preds = %bb.j, %bb.i
  %.sroa.2.0.i.i = phi i64 [ 0, %bb.i ], [ %i.cu, %bb.j ]
  %storemerge.i.i = phi i64 [ %i.cs, %bb.i ], [ %i.da, %bb.j ]
  %.not4319.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not4319.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i
  %i.db = add i32 %i.bd, %i.bb
  %wide.trip.count.i = zext i32 %i.bd to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %bb.l, !llvm.loop !554

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.dc = trunc nuw i64 %indvars.iv.i to i32      ; 3 uses
  %i.dd = add i32 %i.bb, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 4
  %5 = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.df ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.0.copyload.i.i.i.i56.i = load i64, ptr %i.dg, align 1
  %.0.copyload.i2.i.i.i57.i = load i64, ptr %5, align 1
  %6 = and i64 %.0.copyload.i2.i.i.i57.i, %.sroa.0.0.i.i
  %7 = and i64 %.0.copyload.i.i.i.i56.i, %.sroa.4.0.i.i
  %i.dh = add i32 %i.db, %i.dc
  %i.di = zext i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 4
  %8 = getelementptr inbounds nuw i8, ptr %.val21, i64 %i.dj ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.0.copyload.i.i.i.i62.i = load i64, ptr %i.dk, align 1
  %.0.copyload.i2.i.i.i63.i = load i64, ptr %8, align 1
  %9 = and i64 %.0.copyload.i2.i.i.i63.i, %storemerge.i.i
  %10 = and i64 %.0.copyload.i.i.i.i62.i, %.sroa.2.0.i.i
  %11 = xor i64 %6, %7
  %12 = xor i64 %11, %10
  %13 = xor i64 %12, %9
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %13)
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = lshr i32 %i.bk, %i.dc
  %i.do = xor i32 %i.dn, %i.dm
  %i.dp = and i32 %i.do, 1
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %bb.k, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit

_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit: ; preds = %bb.k, %bb.l, %bb.e, %.lr.ph25.i, %.preheader.i, %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i
  %.4.i = phi i8 [ 1, %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i ], [ 0, %.lr.ph25.i ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 1, %bb.k ], [ 0, %bb.l ]
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv30
  store i8 %.4.i, ptr %i.dq, align 1, !tbaa !308
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge, label %bb.d, !llvm.loop !555
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_127Standard128RibbonBitsReader12HashMayMatchEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, i64 noundef %1) unnamed_addr #29 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load i32, ptr %i.b, align 8, !tbaa !197
  %i.c = tail call fastcc noundef zeroext i1 @_ZNK7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE11FilterQueryINS0_14StandardHasherIS5_EEEEbRKmRKT_(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i64 %1, i32 %.val1)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZNK7rocksdb6ribbon31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEE11FilterQueryINS0_14StandardHasherIS5_EEEEbRKmRKT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 %.0.val, i32 %.0.val1) unnamed_addr #29 align 2 {
bb.a:
  %i.a = zext i32 %.0.val1 to i64
  %i.b = xor i64 %.0.val, %i.a                    ; 3 uses
  %i.c = mul i64 %i.b, 7031196922566818317        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26.i = load i32, ptr %i.d, align 8, !tbaa !193
  %i.e = zext i32 %.val26.i to i64                ; 2 uses
  %i.f = and i64 %i.c, 4294967295
  %i.g = mul nuw i64 %i.f, %i.e
  %i.h = lshr i64 %i.g, 32
  %i.i = lshr i64 %i.c, 32
  %i.j = mul nuw i64 %i.i, %i.e
  %i.k = add nuw i64 %i.h, %i.j
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27.i = load i32, ptr %i.n, align 8, !tbaa !195 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.val28.i = load i32, ptr %i.o, align 4, !tbaa !194 ; 2 uses
  %i.p = lshr i32 %i.m, 7                         ; 3 uses
  %i.q = mul i32 %i.p, %.val28.i
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.val27.i, i32 %i.p)
  %i.r = sub i32 %i.q, %.sroa.speculated.i        ; 5 uses
  %i.s = icmp ult i32 %i.p, %.val27.i
  %.neg.i = sext i1 %i.s to i32
  %i.t = add i32 %.val28.i, %.neg.i               ; 7 uses
  %i.u = and i32 %i.m, 127                        ; 7 uses
  %i.v = icmp eq i32 %i.u, 0                      ; 2 uses
  %i.w = select i1 %i.v, i32 0, i32 %i.t
  %i.x = add i32 %i.w, %i.t                       ; 2 uses
  %.val29.i = load ptr, ptr %0, align 8           ; 5 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = zext i32 %i.r to i64
  %i.aa = shl nuw nsw i64 %i.z, 4                 ; 2 uses
  %i.ab = add i32 %i.r, -1
  %i.ac = add i32 %i.ab, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 4                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.ae ; 2 uses
  %i.ag = icmp samesign ult i64 %i.aa, %i.ae
  br i1 %i.ag, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.aa
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.01.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ah, %.lr.ph.preheader.i.i ] ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %.01.i.i, i32 0, i32 1, i32 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %.01.i.i, i64 64 ; 2 uses
  %i.aj = icmp ult ptr %i.ai, %i.af
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !546

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  tail call void @llvm.prefetch.p0(ptr readonly %i.af, i32 0, i32 1, i32 1)
  br label %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit

_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit: ; preds = %bb.a, %._crit_edge.i.i
  %i.ak = mul i64 %i.b, -6572915358331089655      ; 6 uses
  %i.al = and i64 %i.ak, -2
  %i.am = xor i64 %i.al, -4366375858499063011     ; 5 uses
  %i.an = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.v, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit
  %.not4523.not.i = icmp eq i32 %i.t, 0
  br i1 %.not4523.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph25.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count35.i = zext i32 %i.t to i64
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i, %.lr.ph25.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph25.preheader.i ], [ %indvars.iv.next33.i, %.lr.ph25.i ] ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv32.i to i32    ; 2 uses
  %i.aq = add i32 %i.r, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.au, align 1
  %.0.copyload.i2.i.i.i.i = load i64, ptr %i.at, align 1
  %i.av = and i64 %.0.copyload.i2.i.i.i.i, %i.am
  %i.aw = and i64 %.0.copyload.i.i.i.i.i, %i.ak
  %i.ax = xor i64 %i.av, %i.aw
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = lshr i32 %i.ao, %i.ap
  %i.bb = xor i32 %i.ba, %i.az
  %i.bc = and i32 %i.bb, 1
  %.not44.i = icmp eq i32 %i.bc, 0                ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i = icmp ne i64 %indvars.iv.next33.i, %wide.trip.count35.i
  %or.cond.not = select i1 %.not44.i, i1 %exitcond36.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph25.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, !llvm.loop !553

bb.c:                                             ; preds = %_ZN7rocksdb6ribbon23InterleavedPrepareQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEvRKNT0_3KeyERKSA_RKT_PNSA_4HashEPNSG_5IndexESM_SM_.exit
  %i.bd = icmp samesign ugt i32 %i.u, 63
  br i1 %i.bd, label %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i, label %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread

_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread: ; preds = %bb.c
  %i.be = and i64 %i.l, 127                       ; 2 uses
  %i.bf = shl i64 %i.am, %i.be
  %i.bg = lshr i64 %i.am, 1
  %i.bh = sub nuw nsw i32 63, %i.u
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.bg, %i.bi
  %i.bk = shl i64 %i.ak, %i.be
  %i.bl = or i64 %i.bj, %i.bk
  %i.bm = sub nuw nsw i32 128, %i.u
  br label %bb.d

_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i:        ; preds = %bb.c
  %i.bn = and i64 %i.l, 63
  %i.bo = shl i64 %i.am, %i.bn                    ; 2 uses
  %i.bp = sub nuw nsw i32 128, %i.u               ; 2 uses
  %i.bq = icmp eq i32 %i.u, 64
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i
  %i.br = phi i32 [ %i.bm, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread ], [ %i.bp, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i ]
  %.sroa.4.0.i.i18 = phi i64 [ %i.bl, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread ], [ %i.bo, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i ]
  %.sroa.0.0.i.i16 = phi i64 [ %i.bf, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i.thread ], [ 0, %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i ]
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = lshr i64 %i.ak, %i.bt
  br label %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i

bb.e:                                             ; preds = %_ZN7rocksdblsERKNS_11Unsigned128Ej.exit.i
  %i.bv = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.bw = lshr i64 %i.ak, %i.bv
  %i.bx = mul i64 %i.b, 5300913357047372306
  %i.by = add nsw i32 %i.u, -65
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl i64 %i.bx, %i.bz
  %i.cb = lshr i64 %i.am, %i.bv
  %i.cc = or i64 %i.ca, %i.cb
  br label %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i

_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i:        ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i17 = phi i64 [ %.sroa.4.0.i.i18, %bb.d ], [ %i.bo, %bb.e ]
  %.sroa.0.0.i.i15 = phi i64 [ %.sroa.0.0.i.i16, %bb.d ], [ 0, %bb.e ]
  %.sroa.2.0.i.i = phi i64 [ 0, %bb.d ], [ %i.bw, %bb.e ]
  %storemerge.i.i = phi i64 [ %i.bu, %bb.d ], [ %i.cc, %bb.e ]
  %.not4319.not.i = icmp eq i32 %i.t, 0
  br i1 %.not4319.not.i, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i
  %i.cd = add i32 %i.t, %i.r
  %wide.trip.count.i = zext i32 %i.t to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.i to i32      ; 3 uses
  %i.cf = add i32 %i.r, %i.ce
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 4
  %1 = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i.i.i56.i = load i64, ptr %i.ci, align 1
  %.0.copyload.i2.i.i.i57.i = load i64, ptr %1, align 1
  %2 = and i64 %.0.copyload.i2.i.i.i57.i, %.sroa.0.0.i.i15
  %3 = and i64 %.0.copyload.i.i.i.i56.i, %.sroa.4.0.i.i17
  %i.cj = add i32 %i.cd, %i.ce
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 4
  %4 = getelementptr inbounds nuw i8, ptr %.val29.i, i64 %i.cl ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.0.copyload.i.i.i.i62.i = load i64, ptr %i.cm, align 1
  %.0.copyload.i2.i.i.i63.i = load i64, ptr %4, align 1
  %5 = and i64 %.0.copyload.i2.i.i.i63.i, %storemerge.i.i
  %6 = and i64 %.0.copyload.i.i.i.i62.i, %.sroa.2.0.i.i
  %7 = xor i64 %2, %3
  %8 = xor i64 %7, %6
  %9 = xor i64 %8, %5
  %i.cn = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %9)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = lshr i32 %i.ao, %i.ce
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = and i32 %i.cq, 1
  %.not.i = icmp eq i32 %i.cr, 0                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp ne i64 %indvars.iv.next.i, %wide.trip.count.i
  %or.cond23.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond23.not, label %bb.f, label %_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit, !llvm.loop !554

_ZN7rocksdb6ribbon22InterleavedFilterQueryINS0_31SerializableInterleavedSolutionINS0_23StandardRehasherAdapterINS_12_GLOBAL__N_141Standard128RibbonRehasherTypesAndSettingsEEEEENS0_14StandardHasherIS6_EEEEbNT0_4HashENT_5IndexESD_SD_RKSA_RKSC_.exit: ; preds = %bb.f, %.lr.ph25.i, %.preheader.i, %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i
  %.4.i = phi i1 [ true, %_ZN7rocksdbrsERKNS_11Unsigned128Ej.exit.i ], [ %.not44.i, %.lr.ph25.i ], [ true, %.preheader.i ], [ %.not.i, %bb.f ]
  ret i1 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb16FilterBitsReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader8MayMatchERKNS_5SliceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #30 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !178
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !176
  %i.d = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.a, i64 noundef %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !187
  %i.i = lshr i32 %i.f, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = and i64 %i.d, 4294967295
  %i.l = mul nuw nsw i64 %i.k, %i.j
  %sh.diff.i = lshr i64 %i.l, 26
  %i.m = and i64 %sh.diff.i, 4294967232
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.m ; 4 uses
  tail call void @llvm.prefetch.p0(ptr %i.n, i32 0, i32 1, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 63
  tail call void @llvm.prefetch.p0(ptr nonnull %i.o, i32 0, i32 1, i32 1)
  %i.p = lshr i64 %i.d, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !189
  %i.t = load <8 x i32>, ptr %i.n, align 1, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.v = load <8 x i32>, ptr %i.u, align 1, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.033.i = phi i32 [ %i.s, %bb.a ], [ %i.au, %bb.c ] ; 3 uses
  %.031.i = phi i32 [ %i.q, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %i.w = insertelement <8 x i32> poison, i32 %.031.i, i64 0
  %i.x = shufflevector <8 x i32> %i.w, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.y = mul <8 x i32> %i.x, <i32 1, i32 -1640531527, i32 -480352335, i32 1933744105, i32 905701473, i32 -558381287, i32 71873041, i32 878294857> ; 2 uses
  %i.z = lshr <8 x i32> %i.y, splat (i32 28)      ; 2 uses
  %i.aa = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.t, <8 x i32> %i.z)
  %i.ab = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.v, <8 x i32> %i.z)
  %i.ac = ashr <8 x i32> %i.y, splat (i32 31)
  %i.ad = bitcast <8 x i32> %i.aa to <32 x i8>
  %i.ae = bitcast <8 x i32> %i.ab to <32 x i8>
  %i.af = bitcast <8 x i32> %i.ac to <32 x i8>
  %i.ag = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.ad, <32 x i8> %i.ae, <32 x i8> %i.af)
  %i.ah = bitcast <32 x i8> %i.ag to <4 x i64>
  %i.ai = insertelement <8 x i32> poison, i32 %.033.i, i64 0
  %i.aj = shufflevector <8 x i32> %i.ai, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ak = sub <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %i.aj
  %i.al = lshr <8 x i32> %i.ak, splat (i32 31)
  %i.am = mul <8 x i32> %i.x, <i32 16, i32 -478700656, i32 904297232, i32 875134608, i32 1606321680, i32 -344166000, i32 1149968656, i32 1167815824>
  %i.an = lshr <8 x i32> %i.am, splat (i32 27)
  %i.ao = shl nuw <8 x i32> %i.al, %i.an
  %i.ap = bitcast <8 x i32> %i.ao to <4 x i64>
  %i.aq = tail call noundef i32 @llvm.x86.avx.ptestc.256(<4 x i64> %i.ah, <4 x i64> %i.ap)
  %i.ar = icmp ne i32 %i.aq, 0                    ; 2 uses
  %i.as = icmp sgt i32 %.033.i, 8
  %brmerge.not.i = and i1 %i.as, %i.ar
  br i1 %brmerge.not.i, label %bb.c, label %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.at = mul i32 %.031.i, -1423575871
  %i.au = add nsw i32 %.033.i, -8
  br label %bb.b, !llvm.loop !556

_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit: ; preds = %bb.b
  ret i1 %i.ar
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_124FastLocalBloomBitsReader8MayMatchEiPPNS_5SliceEPb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #30 align 2 {
bb.a:
  %4 = alloca %"struct.std::array.177", align 4   ; 4 uses
  %5 = alloca %"struct.std::array.177", align 4   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

.lr.ph20:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187
  %wide.trip.count25 = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !540  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !176
  %i.m = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.j, i64 noundef %i.l) ; 2 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !190
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.q = lshr i32 %i.n, 6
  %i.r = zext nneg i32 %i.q to i64
  %i.s = and i64 %i.m, 4294967295
  %i.t = mul nuw nsw i64 %i.s, %i.r
  %sh.diff.i = lshr i64 %i.t, 26                  ; 2 uses
  %tr.sh.diff.i = trunc nuw i64 %sh.diff.i to i32
  %i.u = and i32 %tr.sh.diff.i, -64
  %i.v = and i64 %sh.diff.i, 4294967232
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 1, i32 1)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 63
  tail call void @llvm.prefetch.p0(ptr nonnull %i.x, i32 0, i32 1, i32 1)
  store i32 %i.u, ptr %i.p, align 4, !tbaa !129
  %i.y = lshr i64 %i.m, 32
  %i.z = trunc nuw i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !129
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph20, label %bb.b, !llvm.loop !557

._crit_edge:                                      ; preds = %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

bb.c:                                             ; preds = %.lr.ph20, %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit
  %indvars.iv22 = phi i64 [ 0, %.lr.ph20 ], [ %indvars.iv.next23, %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv22
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !129
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv22
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.af ; 2 uses
  %i.ah = load <8 x i32>, ptr %i.ag, align 1, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.aj = load <8 x i32>, ptr %i.ai, align 1, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.033.i = phi i32 [ %i.e, %bb.c ], [ %i.bi, %bb.e ] ; 3 uses
  %.031.i = phi i32 [ %i.ac, %bb.c ], [ %i.bh, %bb.e ] ; 2 uses
  %i.ak = insertelement <8 x i32> poison, i32 %.031.i, i64 0
  %i.al = shufflevector <8 x i32> %i.ak, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.am = mul <8 x i32> %i.al, <i32 1, i32 -1640531527, i32 -480352335, i32 1933744105, i32 905701473, i32 -558381287, i32 71873041, i32 878294857> ; 2 uses
  %i.an = lshr <8 x i32> %i.am, splat (i32 28)    ; 2 uses
  %i.ao = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.ah, <8 x i32> %i.an)
  %i.ap = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %i.aj, <8 x i32> %i.an)
  %i.aq = ashr <8 x i32> %i.am, splat (i32 31)
  %i.ar = bitcast <8 x i32> %i.ao to <32 x i8>
  %i.as = bitcast <8 x i32> %i.ap to <32 x i8>
  %i.at = bitcast <8 x i32> %i.aq to <32 x i8>
  %i.au = tail call <32 x i8> @llvm.x86.avx2.pblendvb(<32 x i8> %i.ar, <32 x i8> %i.as, <32 x i8> %i.at)
  %i.av = bitcast <32 x i8> %i.au to <4 x i64>
  %i.aw = insertelement <8 x i32> poison, i32 %.033.i, i64 0
  %i.ax = shufflevector <8 x i32> %i.aw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ay = sub <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %i.ax
  %i.az = lshr <8 x i32> %i.ay, splat (i32 31)
  %i.ba = mul <8 x i32> %i.al, <i32 16, i32 -478700656, i32 904297232, i32 875134608, i32 1606321680, i32 -344166000, i32 1149968656, i32 1167815824>
  %i.bb = lshr <8 x i32> %i.ba, splat (i32 27)
  %i.bc = shl nuw <8 x i32> %i.az, %i.bb
  %i.bd = bitcast <8 x i32> %i.bc to <4 x i64>
  %i.be = tail call noundef i32 @llvm.x86.avx.ptestc.256(<4 x i64> %i.av, <4 x i64> %i.bd)
  %i.bf = icmp ne i32 %i.be, 0                    ; 2 uses
  %i.bg = icmp sgt i32 %.033.i, 8
  %brmerge.not.i = and i1 %i.bg, %i.bf
  br i1 %brmerge.not.i, label %bb.e, label %_ZN7rocksdb18FastLocalBloomImpl20HashMayMatchPreparedEjiPKc.exit

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !9
  %i.o = icmp eq i64 %.fr22, %i.n
  br i1 %i.o, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.016, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.h, ptr %i.q, i64 %.fr22)
  %i.r = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.r, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.016, align 8, !tbaa !225 ; 2 uses
  %i.s = icmp eq ptr %.sroa.06.0, null
  br i1 %i.s, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !731

bb.c:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9
  %i.w = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.t, i64 noundef %i.v, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #38
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !620 ; 3 uses
  %i.ab = urem i64 %i.w, %i.aa                    ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !622
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !570 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !225 ; 3 uses
  %i.ag = load i64, ptr %i.u, align 8
  %.fr22.i.i = freeze i64 %i.ag                   ; 3 uses
  %i.ah = icmp eq i64 %.fr22.i.i, 0
  %i.ai = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8, !tbaa !571 ; 2 uses
  br i1 %i.ah, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.aj = phi i64 [ %i.aq, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.af, %bb.e ] ; 3 uses
  %i.ak = icmp eq i64 %i.w, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !9
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.ao = load ptr, ptr %.0.us.i.i, align 8, !tbaa !225 ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.ao, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !571 ; 2 uses
  %i.ar = urem i64 %i.aq, %i.aa
  %.not19.us.i.i = icmp eq i64 %i.ar, %i.ab
  br i1 %.not19.us.i.i, label %.split.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !623

.split.i.i:                                       ; preds = %bb.e, %bb.i
  %i.as = phi i64 [ %i.bc, %bb.i ], [ %.pre26.i.i, %bb.e ]
  %.0.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.af, %bb.e ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.au = icmp eq i64 %i.w, %i.as
  br i1 %i.au, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i

bb.h:                                             ; preds = %.split.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !9
  %i.ax = icmp eq i64 %.fr22.i.i, %i.aw
  br i1 %i.ax, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i: ; preds = %bb.h
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !15
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ai, ptr %i.ay, i64 %.fr22.i.i)
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.az, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i, %bb.h, %.split.i.i
  %i.ba = load ptr, ptr %.0.i.i, align 8, !tbaa !225 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !571 ; 2 uses
  %i.bd = urem i64 %i.bc, %i.aa
  %.not19.i.i = icmp eq i64 %i.bd, %i.ab
  br i1 %.not19.i.i, label %.split.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, !llvm.loop !623

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISC_EESaISF_EEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us, %.lr.ph.split.us, %bb.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i, %bb.g, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i, %bb.f, %bb.b, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %.sroa.06.1 = phi ptr [ null, %bb.b ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10.us ], [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread.us.i.i ], [ %.0.us.i.i, %bb.f ], [ null, %bb.g ], [ %.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISJ_Lb1EEE.exit.i.i ], [ null, %bb.i ], [ %.sroa.06.016.us, %.lr.ph.split.us ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorISt10unique_ptrIN7rocksdb13ObjectLibrary5EntryESt14default_deleteISD_EESaISG_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISJ_Lb1EEE.exit ]
  ret ptr %.sroa.06.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !718  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #15 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { cold nofree noreturn }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #30 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #37 = { nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { builtin nounwind }
attributes #40 = { builtin allocsize(0) }
attributes #41 = { noreturn }
attributes #42 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 4}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !14, i64 8}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !7, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!10, !12, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSSt13__atomic_baseIbE", !20, i64 0}
!20 = !{!"bool", !7, i64 0}
!21 = !{!22, !14, i64 0}
!22 = !{!"_ZTSSt13__atomic_baseIlE", !14, i64 0}
!23 = !{!24, !6, i64 32}
!24 = !{!"_ZTSN7rocksdb21BloomLikeFilterPolicyE", !25, i64 0, !6, i64 32, !6, i64 36, !34, i64 40, !35, i64 48, !36, i64 56}
!25 = !{!"_ZTSN7rocksdb19BuiltinFilterPolicyE", !26, i64 0}
!26 = !{!"_ZTSN7rocksdb12FilterPolicyE", !27, i64 0}
!27 = !{!"_ZTSN7rocksdb12CustomizableE", !28, i64 0}
!28 = !{!"_ZTSN7rocksdb12ConfigurableE", !29, i64 8}
!29 = !{!"_ZTSSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !30, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12_Vector_implE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSN7rocksdb12Configurable17RegisteredOptionsE", !13, i64 0}
!34 = !{!"double", !7, i64 0}
!35 = !{!"_ZTSSt6atomicIbE", !19, i64 0}
!36 = !{!"_ZTSSt6atomicIlE", !22, i64 0}
!37 = !{!24, !34, i64 40}
!38 = !{!24, !6, i64 36}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!41 = distinct !{!41, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!42 = !{!11, !12, i64 0}
!43 = !{!7, !7, i64 0}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!46 = distinct !{!46, !"_ZNSt7__cxx119to_stringEi"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!52 = distinct !{!52, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTSN7rocksdb21FilterBuildingContextE", !55, i64 0, !56, i64 8, !6, i64 12, !57, i64 16, !10, i64 24, !6, i64 56, !20, i64 60, !58, i64 64}
!55 = !{!"p1 _ZTSN7rocksdb22BlockBasedTableOptionsE", !13, i64 0}
!56 = !{!"_ZTSN7rocksdb15CompactionStyleE", !7, i64 0}
!57 = !{!"p1 _ZTSN7rocksdb6LoggerE", !13, i64 0}
!58 = !{!"_ZTSN7rocksdb23TableFileCreationReasonE", !7, i64 0}
!59 = !{}
!60 = !{i64 8}
!61 = !{!62, !6, i64 228}
!62 = !{!"_ZTSN7rocksdb22BlockBasedTableOptionsE", !63, i64 0, !20, i64 16, !20, i64 17, !20, i64 18, !20, i64 19, !68, i64 20, !70, i64 32, !71, i64 33, !72, i64 34, !34, i64 40, !73, i64 48, !20, i64 49, !74, i64 56, !77, i64 72, !14, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !14, i64 112, !80, i64 120, !20, i64 176, !20, i64 177, !20, i64 178, !20, i64 179, !92, i64 184, !95, i64 200, !20, i64 216, !20, i64 217, !20, i64 218, !20, i64 219, !20, i64 220, !6, i64 224, !6, i64 228, !20, i64 232, !34, i64 240, !20, i64 248, !20, i64 249, !14, i64 256, !14, i64 264, !98, i64 272, !14, i64 280, !99, i64 288, !14, i64 296, !14, i64 304}
!63 = !{!"_ZTSSt10shared_ptrIN7rocksdb23FlushBlockPolicyFactoryEE", !64, i64 0}
!64 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23FlushBlockPolicyFactoryELN9__gnu_cxx12_Lock_policyE2EE", !65, i64 0, !66, i64 8}
!65 = !{!"p1 _ZTSN7rocksdb23FlushBlockPolicyFactoryE", !13, i64 0}
!66 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0}
!67 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!68 = !{!"_ZTSN7rocksdb20MetadataCacheOptionsE", !69, i64 0, !69, i64 4, !69, i64 8}
!69 = !{!"_ZTSN7rocksdb11PinningTierE", !7, i64 0}
!70 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions9IndexTypeE", !7, i64 0}
!71 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions15BlockSearchTypeE", !7, i64 0}
!72 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions18DataBlockIndexTypeE", !7, i64 0}
!73 = !{!"_ZTSN7rocksdb12ChecksumTypeE", !7, i64 0}
!74 = !{!"_ZTSSt10shared_ptrIN7rocksdb5CacheEE", !75, i64 0}
!75 = !{!"_ZTSSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EE", !76, i64 0, !66, i64 8}
!76 = !{!"p1 _ZTSN7rocksdb5CacheE", !13, i64 0}
!77 = !{!"_ZTSSt10shared_ptrIN7rocksdb15PersistentCacheEE", !78, i64 0}
!78 = !{!"_ZTSSt12__shared_ptrIN7rocksdb15PersistentCacheELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !66, i64 8}
!79 = !{!"p1 _ZTSN7rocksdb15PersistentCacheE", !13, i64 0}
!80 = !{!"_ZTSN7rocksdb17CacheUsageOptionsE", !81, i64 0, !83, i64 8}
!81 = !{!"_ZTSN7rocksdb21CacheEntryRoleOptionsE", !82, i64 0}
!82 = !{!"_ZTSN7rocksdb21CacheEntryRoleOptions8DecisionE", !7, i64 0}
!83 = !{!"_ZTSSt3mapIN7rocksdb14CacheEntryRoleENS0_21CacheEntryRoleOptionsESt4lessIS1_ESaISt4pairIKS1_S2_EEE", !84, i64 0}
!84 = !{!"_ZTSSt8_Rb_treeIN7rocksdb14CacheEntryRoleESt4pairIKS1_NS0_21CacheEntryRoleOptionsEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE", !85, i64 0}
!85 = !{!"_ZTSNSt8_Rb_treeIN7rocksdb14CacheEntryRoleESt4pairIKS1_NS0_21CacheEntryRoleOptionsEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !86, i64 0, !88, i64 8}
!86 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN7rocksdb14CacheEntryRoleEEE", !87, i64 0}
!87 = !{!"_ZTSSt4lessIN7rocksdb14CacheEntryRoleEE"}
!88 = !{!"_ZTSSt15_Rb_tree_header", !89, i64 0, !14, i64 32}
!89 = !{!"_ZTSSt18_Rb_tree_node_base", !90, i64 0, !91, i64 8, !91, i64 16, !91, i64 24}
!90 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!91 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!92 = !{!"_ZTSSt10shared_ptrIKN7rocksdb12FilterPolicyEE", !93, i64 0}
!93 = !{!"_ZTSSt12__shared_ptrIKN7rocksdb12FilterPolicyELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !66, i64 8}
!94 = !{!"p1 _ZTSN7rocksdb12FilterPolicyE", !13, i64 0}
!95 = !{!"_ZTSSt10shared_ptrIN7rocksdb23UserDefinedIndexFactoryEE", !96, i64 0}
!96 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23UserDefinedIndexFactoryELN9__gnu_cxx12_Lock_policyE2EE", !97, i64 0, !66, i64 8}
!97 = !{!"p1 _ZTSN7rocksdb23UserDefinedIndexFactoryE", !13, i64 0}
!98 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions19IndexShorteningModeE", !7, i64 0}
!99 = !{!"_ZTSN7rocksdb22BlockBasedTableOptions21PrepopulateBlockCacheE", !7, i64 0}
!100 = !{!54, !57, i64 16}
!101 = !{i8 0, i8 2}
!102 = !{!103, !6, i64 8}
!103 = !{!"_ZTSN7rocksdb12_GLOBAL__N_122LegacyBloomBitsBuilderE", !104, i64 0, !6, i64 8, !6, i64 12, !105, i64 16, !14, i64 40, !57, i64 48}
!104 = !{!"_ZTSN7rocksdb17FilterBitsBuilderE"}
!105 = !{!"_ZTSSt6vectorIjSaIjEE", !106, i64 0}
!106 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !109, i64 0, !109, i64 8, !109, i64 16}
!109 = !{!"p1 int", !13, i64 0}
!110 = !{!103, !6, i64 12}
!111 = !{!103, !14, i64 40}
!112 = !{!103, !57, i64 48}
!113 = !{!62, !20, i64 178}
!114 = !{!88, !91, i64 8}
!115 = !{!116, !116, i64 0}
!116 = !{!"_ZTSN7rocksdb14CacheEntryRoleE", !7, i64 0}
!117 = !{!91, !91, i64 0}
!118 = distinct !{!118, !48}
!119 = !{!82, !82, i64 0}
!120 = !{!75, !76, i64 0}
!121 = !{!122, !67, i64 0}
!122 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !67, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"p1 _ZTSN7rocksdb23CacheReservationManagerE", !13, i64 0}
!125 = !{!66, !67, i64 0}
!126 = !{!127, !128, i64 0}
!127 = !{!"_ZTSSt10__weak_ptrIN7rocksdb27CacheReservationManagerImplILNS0_14CacheEntryRoleE8EEELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !122, i64 8}
!128 = !{!"p1 _ZTSN7rocksdb27CacheReservationManagerImplILNS_14CacheEntryRoleE8EEE", !13, i64 0}
!129 = !{!6, !6, i64 0}
!130 = distinct !{null, null, null, null, null, null}
!131 = !{!132, !6, i64 8}
!132 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!133 = !{!132, !6, i64 12}
!134 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!135 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!136 = !{!137, !124, i64 0}
!137 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EE", !124, i64 0, !66, i64 8}
!138 = !{!62, !20, i64 219}
!139 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb23CacheReservationManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!142 = distinct !{!142, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!143 = !{!144, !6, i64 312}
!144 = !{!"_ZTSN7rocksdb12_GLOBAL__N_125FastLocalBloomBitsBuilderE", !145, i64 0, !6, i64 312}
!145 = !{!"_ZTSN7rocksdb12_GLOBAL__N_122XXPH3FilterBitsBuilderE", !104, i64 0, !146, i64 8, !147, i64 16, !148, i64 32, !20, i64 112, !156, i64 120}
!146 = !{!"p1 _ZTSSt6atomicIlE", !13, i64 0}
!147 = !{!"_ZTSSt10shared_ptrIN7rocksdb23CacheReservationManagerEE", !137, i64 0}
!148 = !{!"_ZTSSt5dequeISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE", !149, i64 0}
!149 = !{!"_ZTSSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE", !150, i64 0}
!150 = !{!"_ZTSNSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE11_Deque_implE", !151, i64 0}
!151 = !{!"_ZTSNSt11_Deque_baseISt10unique_ptrIN7rocksdb23CacheReservationManager22CacheReservationHandleESt14default_deleteIS3_EESaIS6_EE16_Deque_impl_dataE", !152, i64 0, !14, i64 8, !154, i64 16, !154, i64 48}
end_hunk_1
