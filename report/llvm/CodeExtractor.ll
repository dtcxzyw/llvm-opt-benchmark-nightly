Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeExtractor?download=true
inline.NumInlined: 4759
inline.NumDeleted: 2653
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4llvm13CodeExtractor11findAllocasERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_RPNS_10BasicBlockE:bb.a
  %i.ld = load i32, ptr %i.x, align 8, !tbaa !64  ; 2 uses
  %i.le = load i32, ptr %i.y, align 4, !tbaa !65
  %.not.i.i.i130 = icmp ult i32 %i.ld, %i.le
  br i1 %.not.i.i.i130, label %bb.ay, label %bb.ax, !prof !78

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef %i.lc)
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i129

bb.ay:                                            ; preds = %bb.aw
  %i.lf = zext i32 %i.ld to i64
  %i.lg = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.lf
  store ptr %i.lc, ptr %i.lh, align 1
  %i.li = load i32, ptr %i.x, align 8, !tbaa !64
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.x, align 8, !tbaa !64
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i129

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i129: ; preds = %bb.ay, %bb.ax, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.az

bb.az:                                            ; preds = %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit.i129, %bb.au
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !302, !range !18, !noundef !19
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.ba, label %"_ZZNK4llvm13CodeExtractor11findAllocasERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_RPNS_10BasicBlockEENK3$_0clERKNS0_18LifetimeMarkerInfoE.exit131"

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !331
  store ptr %i.lo, ptr %i.b, align 8, !tbaa !168
  %i.lp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !447
  %.fca.1.extract.i.i.i.i7.i125 = extractvalue { ptr, i8 } %i.lp, 1
  %i.lq = trunc nuw i8 %.fca.1.extract.i.i.i.i7.i125 to i1
  br i1 %i.lq, label %bb.bb, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit9.i126

bb.bb:                                            ; preds = %bb.ba
  %i.lr = load ptr, ptr %i.b, align 8, !tbaa !168 ; 2 uses
  %i.ls = load i32, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %i.lt = load i32, ptr %i.ad, align 4, !tbaa !65
  %.not.i.i8.i127 = icmp ult i32 %i.ls, %i.lt
  br i1 %.not.i.i8.i127, label %bb.bd, label %bb.bc, !prof !78

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef %i.lr)
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit9.i126

bb.bd:                                            ; preds = %bb.bb
  %i.lu = zext i32 %i.ls to i64
  %i.lv = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lu
  store ptr %i.lr, ptr %i.lw, align 1
  %i.lx = load i32, ptr %i.ac, align 8, !tbaa !64
  %i.ly = add i32 %i.lx, 1
  store i32 %i.ly, ptr %i.ac, align 8, !tbaa !64
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit9.i126

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit9.i126: ; preds = %bb.bd, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %"_ZZNK4llvm13CodeExtractor11findAllocasERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_RPNS_10BasicBlockEENK3$_0clERKNS0_18LifetimeMarkerInfoE.exit131"

"_ZZNK4llvm13CodeExtractor11findAllocasERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_RPNS_10BasicBlockEENK3$_0clERKNS0_18LifetimeMarkerInfoE.exit131": ; preds = %.lr.ph203, %bb.az, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit9.i126
  %i.lz = load i8, ptr %i.kt, align 8, !tbaa !119
  %i.ma = icmp ult i8 %i.lz, 30
  br i1 %i.ma, label %.loopexit177, label %bb.be

bb.be:                                            ; preds = %"_ZZNK4llvm13CodeExtractor11findAllocasERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_RPNS_10BasicBlockEENK3$_0clERKNS0_18LifetimeMarkerInfoE.exit131"
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !120 ; 2 uses
  %i.md = load ptr, ptr %i.h, align 8, !tbaa !151, !noalias !454
  %i.me = load ptr, ptr %i.t, align 8, !tbaa !157, !noalias !454 ; 2 uses
  %i.mf = load i32, ptr %i.u, align 4, !tbaa !158, !noalias !454 ; 2 uses
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %.loopexit177, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mh = add i32 %i.mf, -1                       ; 2 uses
  %i.mi = ptrtoint ptr %i.mc to i64
  %i.mj = mul i64 %i.mi, -4658895280553007687     ; 2 uses
  %i.mk = lshr i64 %i.mj, 31
  %i.ml = xor i64 %i.mk, %i.mj
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = and i32 %i.mh, %i.mm                    ; 3 uses
  %i.mo = zext i32 %i.mn to i64                   ; 2 uses
  %i.mp = lshr i64 %i.mo, 5
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !125
  %i.ms = and i32 %i.mn, 31
  %i.mt = lshr i32 %i.mr, %i.ms
  %i.mu = trunc i32 %i.mt to i1
  br i1 %i.mu, label %.lr.ph.i.i.i.i.i.i.i133, label %.loopexit177, !prof !126

.lr.ph.i.i.i.i.i.i.i133:                          ; preds = %bb.bf, %bb.bg
  %i.mv = phi i64 [ %i.nb, %bb.bg ], [ %i.mo, %bb.bf ]
  %.019.i.i.i.i.i.i.i134 = phi i32 [ %i.na, %bb.bg ], [ %i.mn, %bb.bf ]
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mv
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !70
  %i.my = icmp eq ptr %i.mc, %i.mx
  br i1 %i.my, label %_ZL15definedInRegionRKN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEEPNS_5ValueE.exit135, label %bb.bg, !prof !78

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i133
  %i.mz = add nuw i32 %.019.i.i.i.i.i.i.i134, 1
  %i.na = and i32 %i.mz, %i.mh                    ; 3 uses
  %i.nb = zext i32 %i.na to i64                   ; 2 uses
  %i.nc = lshr i64 %i.nb, 5
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !125
  %i.nf = and i32 %i.na, 31
  %i.ng = lshr i32 %i.ne, %i.nf
  %i.nh = trunc i32 %i.ng to i1
  br i1 %i.nh, label %.lr.ph.i.i.i.i.i.i.i133, label %.loopexit177, !prof !127

.loopexit177:                                     ; preds = %bb.bg, %bb.bf, %"_ZZNK4llvm13CodeExtractor11findAllocasERKNS_26CodeExtractorAnalysisCacheERNS_9SetVectorIPNS_5ValueENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEESE_RPNS_10BasicBlockEENK3$_0clERKNS0_18LifetimeMarkerInfoE.exit131", %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  store ptr %i.kt, ptr %i.g, align 8, !tbaa !168
  %i.ni = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !459
  %.fca.1.extract.i.i.i.i136 = extractvalue { ptr, i8 } %i.ni, 1
  %i.nj = trunc nuw i8 %.fca.1.extract.i.i.i.i136 to i1
  br i1 %i.nj, label %bb.bh, label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit138

bb.bh:                                            ; preds = %.loopexit177
  %i.nk = load ptr, ptr %i.g, align 8, !tbaa !168 ; 2 uses
  %i.nl = load i32, ptr %i.x, align 8, !tbaa !64  ; 2 uses
  %i.nm = load i32, ptr %i.y, align 4, !tbaa !65
  %.not.i.i137 = icmp ult i32 %i.nl, %i.nm
  br i1 %.not.i.i137, label %bb.bj, label %bb.bi, !prof !78

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef %i.nk)
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit138

bb.bj:                                            ; preds = %bb.bh
  %i.nn = zext i32 %i.nl to i64
  %i.no = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nn
  store ptr %i.nk, ptr %i.np, align 1
  %i.nq = load i32, ptr %i.x, align 8, !tbaa !64
  %i.nr = add i32 %i.nq, 1
  store i32 %i.nr, ptr %i.x, align 8, !tbaa !64
  br label %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit138

_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit138: ; preds = %.loopexit177, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  br label %_ZL15definedInRegionRKN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEEPNS_5ValueE.exit135

_ZL15definedInRegionRKN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEEPNS_5ValueE.exit135: ; preds = %.lr.ph.i.i.i.i.i.i.i133, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not90 = icmp eq i64 %indvars.iv.next, %i.kq
  br i1 %.not90, label %.loopexit180, label %.lr.ph203, !llvm.loop !466

.loopexit180:                                     ; preds = %_ZL15definedInRegionRKN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEEPNS_5ValueE.exit135, %._crit_edge194, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit123, %.thread, %._crit_edge200
  %i.ns = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.nt = icmp eq ptr %i.ns, %i.am
  br i1 %i.nt, label %_ZN4llvm11SmallVectorINS_13CodeExtractor18LifetimeMarkerInfoELj2EED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %.loopexit180
  call void @free(ptr noundef %i.ns) #21
  br label %_ZN4llvm11SmallVectorINS_13CodeExtractor18LifetimeMarkerInfoELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_13CodeExtractor18LifetimeMarkerInfoELj2EED2Ev.exit: ; preds = %.loopexit180, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.nu = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.aj
  br i1 %i.nv, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm11SmallVectorINS_13CodeExtractor18LifetimeMarkerInfoELj2EED2Ev.exit
  call void @free(ptr noundef %i.nu) #21
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_13CodeExtractor18LifetimeMarkerInfoELj2EED2Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.nw = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.ae
  br i1 %i.nx, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit139, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit
  call void @free(ptr noundef %i.nw) #21
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit139

_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit139: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj2EED2Ev.exit139, %_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE6insertERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit

_ZNK4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EE5countEPKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bn, %.loopexit182
  %i.ny = getelementptr inbounds nuw i8, ptr %.081205, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ny, %i.s
  br i1 %.not, label %._crit_edge208, label %bb.b
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef ptr @_ZL18getCommonExitBlockRKN4llvm9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4 = load i32, ptr %i.b, align 8, !tbaa !64
  %i.c = zext i32 %.val4 to i64                   ; 3 uses
  %1 = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.c ; 6 uses
  %2 = ptrtoint ptr %1 to i64
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = load ptr, ptr %i.e, align 8              ; 8 uses
  %i.i = load i32, ptr %i.f, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, 0                      ; 4 uses
  %i.k = add i32 %i.i, -1                         ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit184.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012 = phi ptr [ null, %.lr.ph.i.i.i.i.i.i ], [ %.12, %.loopexit184.i.i.i.i.i.i ] ; 4 uses
  %.0225.i.i.i.i.i.i = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.i ], [ %i.fh, %.loopexit184.i.i.i.i.i.i ] ; 2 uses
  %.029224.i.i.i.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i.i.i.i ], [ %i.fg, %.loopexit184.i.i.i.i.i.i ] ; 13 uses
  %.029.val46.i.i.i.i.i.i = load ptr, ptr %.029224.i.i.i.i.i.i, align 8, !tbaa !70
  %i.l = getelementptr i8, ptr %.029.val46.i.i.i.i.i.i, i64 48
  %.029.val46.val.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !250
  %i.m = getelementptr inbounds i8, ptr %.029.val46.val.i.i.i.i.i.i, i64 -24
  %i.n = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.m) #22 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 3 uses
  %.not14.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not14.not.i.i.i.i.i.i.i.i, label %.loopexit196.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  br i1 %i.j, label %.lr.ph.split.us.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %select.unfold.us.i.i.i.i.i.i.i.i
  %.36 = phi ptr [ %.37, %select.unfold.us.i.i.i.i.i.i.i.i ], [ %.012, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.s, %select.unfold.us.i.i.i.i.i.i.i.i ], [ %.012, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.015.us.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %select.unfold.us.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.01.015.us.i.i.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %.not12.us.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not12.us.i.i.i.i.i.i.i.i, label %select.unfold.us.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i
  %.not13.us.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not13.us.i.i.i.i.i.i.i.i, label %select.unfold.us.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit"

select.unfold.us.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i, %bb.c
  %.37 = phi ptr [ %.36, %bb.c ], [ %i.r, %.lr.ph.split.us.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.s = phi ptr [ %i.q, %bb.c ], [ %i.r, %.lr.ph.split.us.i.i.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.015.us.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.us.not.i.i.i.i.i.i.i.i, label %.loopexit196.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i
  %.1 = phi ptr [ %.2, %select.unfold.i.i.i.i.i.i.i.i ], [ %.012, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.015.i.i.i.i.i.i.i.i = phi ptr [ %i.av, %select.unfold.i.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.01.015.i.i.i.i.i.i.i.i, align 8, !tbaa !122 ; 4 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !125
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i, %bb.d
  %i.ai = phi i64 [ %i.ao, %bb.d ], [ %i.ab, %.lr.ph.split.i.i.i.i.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.an, %bb.d ], [ %i.aa, %.lr.ph.split.i.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70
  %i.al = icmp eq ptr %i.u, %i.ak
  br i1 %i.al, label %select.unfold.i.i.i.i.i.i.i.i, label %bb.d, !prof !78

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.am = add nuw i32 %.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.an = and i32 %i.am, %i.k                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !125
  %i.as = and i32 %i.an, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, !prof !127

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.d, %.lr.ph.split.i.i.i.i.i.i.i.i
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %.1, null
  br i1 %.not12.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %.not13.i.i.i.i.i.i.i.i = icmp eq ptr %.1, %i.u
  br i1 %.not13.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit"

select.unfold.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i, %bb.e
  %.2 = phi ptr [ %i.u, %.loopexit.i.i.i.i.i.i.i.i ], [ %.1, %bb.e ], [ %.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.p
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.loopexit196.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

.loopexit196.i.i.i.i.i.i:                         ; preds = %select.unfold.i.i.i.i.i.i.i.i, %select.unfold.us.i.i.i.i.i.i.i.i, %bb.b
  %.3 = phi ptr [ %.012, %bb.b ], [ %.37, %select.unfold.us.i.i.i.i.i.i.i.i ], [ %.2, %select.unfold.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.029224.i.i.i.i.i.i, i64 8
  %.val43.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.ax = getelementptr i8, ptr %.val43.i.i.i.i.i.i, i64 48
  %.val43.val.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !250
  %i.ay = getelementptr inbounds i8, ptr %.val43.val.i.i.i.i.i.i, i64 -24
  %i.az = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ay) #22 ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.az, 0      ; 3 uses
  %i.bb = extractvalue { ptr, ptr } %i.az, 1      ; 3 uses
  %.not14.not.i.i47.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not14.not.i.i47.i.i.i.i.i.i, label %.loopexit192.i.i.i.i.i.i, label %.lr.ph.i.i48.i.i.i.i.i.i

.lr.ph.i.i48.i.i.i.i.i.i:                         ; preds = %.loopexit196.i.i.i.i.i.i
  br i1 %i.j, label %.lr.ph.split.us.i.i59.i.i.i.i.i.i, label %.lr.ph.split.i.i49.i.i.i.i.i.i

.lr.ph.split.us.i.i59.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i48.i.i.i.i.i.i, %select.unfold.us.i.i64.i.i.i.i.i.i
  %.34 = phi ptr [ %.35, %select.unfold.us.i.i64.i.i.i.i.i.i ], [ %.3, %.lr.ph.i.i48.i.i.i.i.i.i ] ; 2 uses
  %i.bc = phi ptr [ %i.be, %select.unfold.us.i.i64.i.i.i.i.i.i ], [ %.3, %.lr.ph.i.i48.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.015.us.i.i61.i.i.i.i.i.i = phi ptr [ %i.bf, %select.unfold.us.i.i64.i.i.i.i.i.i ], [ %i.ba, %.lr.ph.i.i48.i.i.i.i.i.i ] ; 2 uses
  %i.bd = load ptr, ptr %.sroa.01.015.us.i.i61.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %.not12.us.i.i62.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not12.us.i.i62.i.i.i.i.i.i, label %select.unfold.us.i.i64.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i.i59.i.i.i.i.i.i
  %.not13.us.i.i63.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.bd
  br i1 %.not13.us.i.i63.i.i.i.i.i.i, label %select.unfold.us.i.i64.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit.loopexit161"

select.unfold.us.i.i64.i.i.i.i.i.i:               ; preds = %.lr.ph.split.us.i.i59.i.i.i.i.i.i, %bb.f
  %.35 = phi ptr [ %.34, %bb.f ], [ %i.bd, %.lr.ph.split.us.i.i59.i.i.i.i.i.i ] ; 2 uses
  %i.be = phi ptr [ %i.bc, %bb.f ], [ %i.bd, %.lr.ph.split.us.i.i59.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.01.015.us.i.i61.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i65.i.i.i.i.i.i = icmp eq ptr %i.bf, %i.bb
  br i1 %.not.us.not.i.i65.i.i.i.i.i.i, label %.loopexit192.i.i.i.i.i.i, label %.lr.ph.split.us.i.i59.i.i.i.i.i.i

.lr.ph.split.i.i49.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i48.i.i.i.i.i.i, %select.unfold.i.i55.i.i.i.i.i.i
  %.4 = phi ptr [ %.5, %select.unfold.i.i55.i.i.i.i.i.i ], [ %.3, %.lr.ph.i.i48.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.015.i.i50.i.i.i.i.i.i = phi ptr [ %i.ch, %select.unfold.i.i55.i.i.i.i.i.i ], [ %i.ba, %.lr.ph.i.i48.i.i.i.i.i.i ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.01.015.i.i50.i.i.i.i.i.i, align 8, !tbaa !122 ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = mul i64 %i.bh, -4658895280553007687     ; 2 uses
  %i.bj = lshr i64 %i.bi, 31
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.k, %i.bl                     ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = lshr i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !125
  %i.br = and i32 %i.bm, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i57.i.i.i.i.i.i, label %.loopexit.i.i51.i.i.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i.i.i57.i.i.i.i.i.i:             ; preds = %.lr.ph.split.i.i49.i.i.i.i.i.i, %bb.g
  %i.bu = phi i64 [ %i.ca, %bb.g ], [ %i.bn, %.lr.ph.split.i.i49.i.i.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i58.i.i.i.i.i.i = phi i32 [ %i.bz, %bb.g ], [ %i.bm, %.lr.ph.split.i.i49.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !70
  %i.bx = icmp eq ptr %i.bg, %i.bw
  br i1 %i.bx, label %select.unfold.i.i55.i.i.i.i.i.i, label %bb.g, !prof !78

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i57.i.i.i.i.i.i
  %i.by = add nuw i32 %.019.i.i.i.i.i.i.i.i58.i.i.i.i.i.i, 1
  %i.bz = and i32 %i.by, %i.k                     ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !125
  %i.ce = and i32 %i.bz, 31
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i57.i.i.i.i.i.i, label %.loopexit.i.i51.i.i.i.i.i.i, !prof !127

.loopexit.i.i51.i.i.i.i.i.i:                      ; preds = %bb.g, %.lr.ph.split.i.i49.i.i.i.i.i.i
  %.not12.i.i52.i.i.i.i.i.i = icmp eq ptr %.4, null
  br i1 %.not12.i.i52.i.i.i.i.i.i, label %select.unfold.i.i55.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i51.i.i.i.i.i.i
  %.not13.i.i53.i.i.i.i.i.i = icmp eq ptr %.4, %i.bg
  br i1 %.not13.i.i53.i.i.i.i.i.i, label %select.unfold.i.i55.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit.loopexit162"

select.unfold.i.i55.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i57.i.i.i.i.i.i, %.loopexit.i.i51.i.i.i.i.i.i, %bb.h
  %.5 = phi ptr [ %i.bg, %.loopexit.i.i51.i.i.i.i.i.i ], [ %.4, %bb.h ], [ %.4, %.lr.ph.i.i.i.i.i.i.i.i57.i.i.i.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.i50.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i56.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.bb
  br i1 %.not.not.i.i56.i.i.i.i.i.i, label %.loopexit192.i.i.i.i.i.i, label %.lr.ph.split.i.i49.i.i.i.i.i.i

.loopexit192.i.i.i.i.i.i:                         ; preds = %select.unfold.i.i55.i.i.i.i.i.i, %select.unfold.us.i.i64.i.i.i.i.i.i, %.loopexit196.i.i.i.i.i.i
  %.6 = phi ptr [ %.3, %.loopexit196.i.i.i.i.i.i ], [ %.35, %select.unfold.us.i.i64.i.i.i.i.i.i ], [ %.5, %select.unfold.i.i55.i.i.i.i.i.i ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.029224.i.i.i.i.i.i, i64 16
  %.val40.i.i.i.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !70
  %i.cj = getelementptr i8, ptr %.val40.i.i.i.i.i.i, i64 48
  %.val40.val.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !250
  %i.ck = getelementptr inbounds i8, ptr %.val40.val.i.i.i.i.i.i, i64 -24
  %i.cl = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ck) #22 ; 2 uses
  %i.cm = extractvalue { ptr, ptr } %i.cl, 0      ; 3 uses
  %i.cn = extractvalue { ptr, ptr } %i.cl, 1      ; 3 uses
  %.not14.not.i.i67.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not14.not.i.i67.i.i.i.i.i.i, label %.loopexit188.i.i.i.i.i.i, label %.lr.ph.i.i68.i.i.i.i.i.i

.lr.ph.i.i68.i.i.i.i.i.i:                         ; preds = %.loopexit192.i.i.i.i.i.i
  br i1 %i.j, label %.lr.ph.split.us.i.i79.i.i.i.i.i.i, label %.lr.ph.split.i.i69.i.i.i.i.i.i

.lr.ph.split.us.i.i79.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i68.i.i.i.i.i.i, %select.unfold.us.i.i84.i.i.i.i.i.i
  %.32 = phi ptr [ %.33, %select.unfold.us.i.i84.i.i.i.i.i.i ], [ %.6, %.lr.ph.i.i68.i.i.i.i.i.i ] ; 2 uses
  %i.co = phi ptr [ %i.cq, %select.unfold.us.i.i84.i.i.i.i.i.i ], [ %.6, %.lr.ph.i.i68.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.015.us.i.i81.i.i.i.i.i.i = phi ptr [ %i.cr, %select.unfold.us.i.i84.i.i.i.i.i.i ], [ %i.cm, %.lr.ph.i.i68.i.i.i.i.i.i ] ; 2 uses
  %i.cp = load ptr, ptr %.sroa.01.015.us.i.i81.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %.not12.us.i.i82.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not12.us.i.i82.i.i.i.i.i.i, label %select.unfold.us.i.i84.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.i.i79.i.i.i.i.i.i
  %.not13.us.i.i83.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not13.us.i.i83.i.i.i.i.i.i, label %select.unfold.us.i.i84.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit.loopexit158"

select.unfold.us.i.i84.i.i.i.i.i.i:               ; preds = %.lr.ph.split.us.i.i79.i.i.i.i.i.i, %bb.i
  %.33 = phi ptr [ %.32, %bb.i ], [ %i.cp, %.lr.ph.split.us.i.i79.i.i.i.i.i.i ] ; 2 uses
  %i.cq = phi ptr [ %i.co, %bb.i ], [ %i.cp, %.lr.ph.split.us.i.i79.i.i.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.01.015.us.i.i81.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i85.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cn
  br i1 %.not.us.not.i.i85.i.i.i.i.i.i, label %.loopexit188.i.i.i.i.i.i, label %.lr.ph.split.us.i.i79.i.i.i.i.i.i

.lr.ph.split.i.i69.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i68.i.i.i.i.i.i, %select.unfold.i.i75.i.i.i.i.i.i
  %.7 = phi ptr [ %.8, %select.unfold.i.i75.i.i.i.i.i.i ], [ %.6, %.lr.ph.i.i68.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.015.i.i70.i.i.i.i.i.i = phi ptr [ %i.dt, %select.unfold.i.i75.i.i.i.i.i.i ], [ %i.cm, %.lr.ph.i.i68.i.i.i.i.i.i ] ; 2 uses
  %i.cs = load ptr, ptr %.sroa.01.015.i.i70.i.i.i.i.i.i, align 8, !tbaa !122 ; 4 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = mul i64 %i.ct, -4658895280553007687     ; 2 uses
  %i.cv = lshr i64 %i.cu, 31
  %i.cw = xor i64 %i.cv, %i.cu
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = and i32 %i.k, %i.cx                     ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = lshr i64 %i.cz, 5
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !125
  %i.dd = and i32 %i.cy, 31
  %i.de = lshr i32 %i.dc, %i.dd
  %i.df = trunc i32 %i.de to i1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i.i.i, label %.loopexit.i.i71.i.i.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i.i.i:             ; preds = %.lr.ph.split.i.i69.i.i.i.i.i.i, %bb.j
  %i.dg = phi i64 [ %i.dm, %bb.j ], [ %i.cz, %.lr.ph.split.i.i69.i.i.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i78.i.i.i.i.i.i = phi i32 [ %i.dl, %bb.j ], [ %i.cy, %.lr.ph.split.i.i69.i.i.i.i.i.i ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !70
  %i.dj = icmp eq ptr %i.cs, %i.di
  br i1 %i.dj, label %select.unfold.i.i75.i.i.i.i.i.i, label %bb.j, !prof !78

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i.i.i
  %i.dk = add nuw i32 %.019.i.i.i.i.i.i.i.i78.i.i.i.i.i.i, 1
  %i.dl = and i32 %i.dk, %i.k                     ; 3 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = lshr i64 %i.dm, 5
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !125
  %i.dq = and i32 %i.dl, 31
  %i.dr = lshr i32 %i.dp, %i.dq
  %i.ds = trunc i32 %i.dr to i1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i.i.i, label %.loopexit.i.i71.i.i.i.i.i.i, !prof !127

.loopexit.i.i71.i.i.i.i.i.i:                      ; preds = %bb.j, %.lr.ph.split.i.i69.i.i.i.i.i.i
  %.not12.i.i72.i.i.i.i.i.i = icmp eq ptr %.7, null
  br i1 %.not12.i.i72.i.i.i.i.i.i, label %select.unfold.i.i75.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i71.i.i.i.i.i.i
  %.not13.i.i73.i.i.i.i.i.i = icmp eq ptr %.7, %i.cs
  br i1 %.not13.i.i73.i.i.i.i.i.i, label %select.unfold.i.i75.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit.loopexit159"

select.unfold.i.i75.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i.i.i, %.loopexit.i.i71.i.i.i.i.i.i, %bb.k
  %.8 = phi ptr [ %i.cs, %.loopexit.i.i71.i.i.i.i.i.i ], [ %.7, %bb.k ], [ %.7, %.lr.ph.i.i.i.i.i.i.i.i77.i.i.i.i.i.i ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.i70.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i76.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.cn
  br i1 %.not.not.i.i76.i.i.i.i.i.i, label %.loopexit188.i.i.i.i.i.i, label %.lr.ph.split.i.i69.i.i.i.i.i.i

.loopexit188.i.i.i.i.i.i:                         ; preds = %select.unfold.i.i75.i.i.i.i.i.i, %select.unfold.us.i.i84.i.i.i.i.i.i, %.loopexit192.i.i.i.i.i.i
  %.9 = phi ptr [ %.6, %.loopexit192.i.i.i.i.i.i ], [ %.33, %select.unfold.us.i.i84.i.i.i.i.i.i ], [ %.8, %select.unfold.i.i75.i.i.i.i.i.i ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.029224.i.i.i.i.i.i, i64 24
  %.val37.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !70
  %i.dv = getelementptr i8, ptr %.val37.i.i.i.i.i.i, i64 48
  %.val37.val.i.i.i.i.i.i = load ptr, ptr %i.dv, align 8, !tbaa !250
  %i.dw = getelementptr inbounds i8, ptr %.val37.val.i.i.i.i.i.i, i64 -24
  %i.dx = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dw) #22 ; 2 uses
  %i.dy = extractvalue { ptr, ptr } %i.dx, 0      ; 3 uses
  %i.dz = extractvalue { ptr, ptr } %i.dx, 1      ; 3 uses
  %.not14.not.i.i87.i.i.i.i.i.i = icmp eq ptr %i.dy, %i.dz
  br i1 %.not14.not.i.i87.i.i.i.i.i.i, label %.loopexit184.i.i.i.i.i.i, label %.lr.ph.i.i88.i.i.i.i.i.i

.lr.ph.i.i88.i.i.i.i.i.i:                         ; preds = %.loopexit188.i.i.i.i.i.i
  br i1 %i.j, label %.lr.ph.split.us.i.i99.i.i.i.i.i.i, label %.lr.ph.split.i.i89.i.i.i.i.i.i

.lr.ph.split.us.i.i99.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i88.i.i.i.i.i.i, %select.unfold.us.i.i104.i.i.i.i.i.i
  %.30 = phi ptr [ %.31, %select.unfold.us.i.i104.i.i.i.i.i.i ], [ %.9, %.lr.ph.i.i88.i.i.i.i.i.i ] ; 2 uses
  %i.ea = phi ptr [ %i.ec, %select.unfold.us.i.i104.i.i.i.i.i.i ], [ %.9, %.lr.ph.i.i88.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.015.us.i.i101.i.i.i.i.i.i = phi ptr [ %i.ed, %select.unfold.us.i.i104.i.i.i.i.i.i ], [ %i.dy, %.lr.ph.i.i88.i.i.i.i.i.i ] ; 2 uses
  %i.eb = load ptr, ptr %.sroa.01.015.us.i.i101.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %.not12.us.i.i102.i.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not12.us.i.i102.i.i.i.i.i.i, label %select.unfold.us.i.i104.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.i.i99.i.i.i.i.i.i
  %.not13.us.i.i103.i.i.i.i.i.i = icmp eq ptr %i.ea, %i.eb
  br i1 %.not13.us.i.i103.i.i.i.i.i.i, label %select.unfold.us.i.i104.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit.loopexit155"

select.unfold.us.i.i104.i.i.i.i.i.i:              ; preds = %.lr.ph.split.us.i.i99.i.i.i.i.i.i, %bb.l
  %.31 = phi ptr [ %.30, %bb.l ], [ %i.eb, %.lr.ph.split.us.i.i99.i.i.i.i.i.i ] ; 2 uses
  %i.ec = phi ptr [ %i.ea, %bb.l ], [ %i.eb, %.lr.ph.split.us.i.i99.i.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.01.015.us.i.i101.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i105.i.i.i.i.i.i = icmp eq ptr %i.ed, %i.dz
  br i1 %.not.us.not.i.i105.i.i.i.i.i.i, label %.loopexit184.i.i.i.i.i.i, label %.lr.ph.split.us.i.i99.i.i.i.i.i.i

.lr.ph.split.i.i89.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i88.i.i.i.i.i.i, %select.unfold.i.i95.i.i.i.i.i.i
  %.10 = phi ptr [ %.11, %select.unfold.i.i95.i.i.i.i.i.i ], [ %.9, %.lr.ph.i.i88.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.015.i.i90.i.i.i.i.i.i = phi ptr [ %i.ff, %select.unfold.i.i95.i.i.i.i.i.i ], [ %i.dy, %.lr.ph.i.i88.i.i.i.i.i.i ] ; 2 uses
  %i.ee = load ptr, ptr %.sroa.01.015.i.i90.i.i.i.i.i.i, align 8, !tbaa !122 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = mul i64 %i.ef, -4658895280553007687     ; 2 uses
  %i.eh = lshr i64 %i.eg, 31
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = and i32 %i.k, %i.ej                     ; 3 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = lshr i64 %i.el, 5
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !125
  %i.ep = and i32 %i.ek, 31
  %i.eq = lshr i32 %i.eo, %i.ep
  %i.er = trunc i32 %i.eq to i1
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i.i.i97.i.i.i.i.i.i, label %.loopexit.i.i91.i.i.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i.i.i97.i.i.i.i.i.i:             ; preds = %.lr.ph.split.i.i89.i.i.i.i.i.i, %bb.m
  %i.es = phi i64 [ %i.ey, %bb.m ], [ %i.el, %.lr.ph.split.i.i89.i.i.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i98.i.i.i.i.i.i = phi i32 [ %i.ex, %bb.m ], [ %i.ek, %.lr.ph.split.i.i89.i.i.i.i.i.i ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !70
  %i.ev = icmp eq ptr %i.ee, %i.eu
  br i1 %i.ev, label %select.unfold.i.i95.i.i.i.i.i.i, label %bb.m, !prof !78

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i97.i.i.i.i.i.i
  %i.ew = add nuw i32 %.019.i.i.i.i.i.i.i.i98.i.i.i.i.i.i, 1
  %i.ex = and i32 %i.ew, %i.k                     ; 3 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = lshr i64 %i.ey, 5
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !125
  %i.fc = and i32 %i.ex, 31
  %i.fd = lshr i32 %i.fb, %i.fc
  %i.fe = trunc i32 %i.fd to i1
  br i1 %i.fe, label %.lr.ph.i.i.i.i.i.i.i.i97.i.i.i.i.i.i, label %.loopexit.i.i91.i.i.i.i.i.i, !prof !127

.loopexit.i.i91.i.i.i.i.i.i:                      ; preds = %bb.m, %.lr.ph.split.i.i89.i.i.i.i.i.i
  %.not12.i.i92.i.i.i.i.i.i = icmp eq ptr %.10, null
  br i1 %.not12.i.i92.i.i.i.i.i.i, label %select.unfold.i.i95.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.loopexit.i.i91.i.i.i.i.i.i
  %.not13.i.i93.i.i.i.i.i.i = icmp eq ptr %.10, %i.ee
  br i1 %.not13.i.i93.i.i.i.i.i.i, label %select.unfold.i.i95.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit.loopexit156"

select.unfold.i.i95.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i97.i.i.i.i.i.i, %.loopexit.i.i91.i.i.i.i.i.i, %bb.n
  %.11 = phi ptr [ %i.ee, %.loopexit.i.i91.i.i.i.i.i.i ], [ %.10, %bb.n ], [ %.10, %.lr.ph.i.i.i.i.i.i.i.i97.i.i.i.i.i.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.i90.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i96.i.i.i.i.i.i = icmp eq ptr %i.ff, %i.dz
  br i1 %.not.not.i.i96.i.i.i.i.i.i, label %.loopexit184.i.i.i.i.i.i, label %.lr.ph.split.i.i89.i.i.i.i.i.i

.loopexit184.i.i.i.i.i.i:                         ; preds = %select.unfold.i.i95.i.i.i.i.i.i, %select.unfold.us.i.i104.i.i.i.i.i.i, %.loopexit188.i.i.i.i.i.i
  %.12 = phi ptr [ %.9, %.loopexit188.i.i.i.i.i.i ], [ %.31, %select.unfold.us.i.i104.i.i.i.i.i.i ], [ %.11, %select.unfold.i.i95.i.i.i.i.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.029224.i.i.i.i.i.i, i64 32 ; 3 uses
  %i.fh = add nsw i64 %.0225.i.i.i.i.i.i, -1
  %i.fi = icmp sgt i64 %.0225.i.i.i.i.i.i, 1
  br i1 %i.fi, label %bb.b, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !467

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %.loopexit184.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.fg to i64
  %gepdiff = sub i64 %2, %.pre.i.i.i.i.i.i
  %i.fj = ashr exact i64 %gepdiff, 3
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.a
  %.13 = phi ptr [ null, %bb.a ], [ %.12, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 7 uses
  %.pre-phi249.i.i.i.i.i.i = phi i64 [ %i.c, %bb.a ], [ %i.fj, %._crit_edge.loopexit.i.i.i.i.i.i ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %.val, %bb.a ], [ %i.fg, %._crit_edge.loopexit.i.i.i.i.i.i ] ; 6 uses
  switch i64 %.pre-phi249.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit" [
    i64 3, label %bb.o
    i64 2, label %bb.s
    i64 1, label %bb.w
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %.029.val.i.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !70
  %i.fk = getelementptr i8, ptr %.029.val.i.i.i.i.i.i, i64 48
  %.029.val.val.i.i.i.i.i.i = load ptr, ptr %i.fk, align 8, !tbaa !250
  %i.fl = getelementptr inbounds i8, ptr %.029.val.val.i.i.i.i.i.i, i64 -24
  %i.fm = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.fl) #22 ; 2 uses
  %i.fn = extractvalue { ptr, ptr } %i.fm, 0      ; 3 uses
  %i.fo = extractvalue { ptr, ptr } %i.fm, 1      ; 3 uses
  %.not14.not.i.i107.i.i.i.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not14.not.i.i107.i.i.i.i.i.i, label %.loopexit180.i.i.i.i.i.i, label %.lr.ph.i.i108.i.i.i.i.i.i

.lr.ph.i.i108.i.i.i.i.i.i:                        ; preds = %bb.o
  %i.fp = load ptr, ptr %0, align 8, !tbaa !151, !noalias !468
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !157, !noalias !468 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !158, !noalias !468 ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  %i.fv = add i32 %i.ft, -1                       ; 2 uses
  br i1 %i.fu, label %.lr.ph.split.us.i.i119.i.i.i.i.i.i, label %.lr.ph.split.i.i109.i.i.i.i.i.i

.lr.ph.split.us.i.i119.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i108.i.i.i.i.i.i, %select.unfold.us.i.i124.i.i.i.i.i.i
  %.28 = phi ptr [ %.29, %select.unfold.us.i.i124.i.i.i.i.i.i ], [ %.13, %.lr.ph.i.i108.i.i.i.i.i.i ] ; 2 uses
  %i.fw = phi ptr [ %i.fy, %select.unfold.us.i.i124.i.i.i.i.i.i ], [ %.13, %.lr.ph.i.i108.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.015.us.i.i121.i.i.i.i.i.i = phi ptr [ %i.fz, %select.unfold.us.i.i124.i.i.i.i.i.i ], [ %i.fn, %.lr.ph.i.i108.i.i.i.i.i.i ] ; 2 uses
  %i.fx = load ptr, ptr %.sroa.01.015.us.i.i121.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %.not12.us.i.i122.i.i.i.i.i.i = icmp eq ptr %i.fw, null
  br i1 %.not12.us.i.i122.i.i.i.i.i.i, label %select.unfold.us.i.i124.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.i.i119.i.i.i.i.i.i
  %.not13.us.i.i123.i.i.i.i.i.i = icmp eq ptr %i.fw, %i.fx
  br i1 %.not13.us.i.i123.i.i.i.i.i.i, label %select.unfold.us.i.i124.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit"

select.unfold.us.i.i124.i.i.i.i.i.i:              ; preds = %.lr.ph.split.us.i.i119.i.i.i.i.i.i, %bb.p
  %.29 = phi ptr [ %.28, %bb.p ], [ %i.fx, %.lr.ph.split.us.i.i119.i.i.i.i.i.i ] ; 2 uses
  %i.fy = phi ptr [ %i.fw, %bb.p ], [ %i.fx, %.lr.ph.split.us.i.i119.i.i.i.i.i.i ]
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.01.015.us.i.i121.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i125.i.i.i.i.i.i = icmp eq ptr %i.fz, %i.fo
  br i1 %.not.us.not.i.i125.i.i.i.i.i.i, label %.loopexit180.i.i.i.i.i.i, label %.lr.ph.split.us.i.i119.i.i.i.i.i.i

.lr.ph.split.i.i109.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i108.i.i.i.i.i.i, %select.unfold.i.i115.i.i.i.i.i.i
  %.25 = phi ptr [ %.26, %select.unfold.i.i115.i.i.i.i.i.i ], [ %.13, %.lr.ph.i.i108.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.015.i.i110.i.i.i.i.i.i = phi ptr [ %i.hb, %select.unfold.i.i115.i.i.i.i.i.i ], [ %i.fn, %.lr.ph.i.i108.i.i.i.i.i.i ] ; 2 uses
  %i.ga = load ptr, ptr %.sroa.01.015.i.i110.i.i.i.i.i.i, align 8, !tbaa !122 ; 4 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = mul i64 %i.gb, -4658895280553007687     ; 2 uses
  %i.gd = lshr i64 %i.gc, 31
  %i.ge = xor i64 %i.gd, %i.gc
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = and i32 %i.fv, %i.gf                    ; 3 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = lshr i64 %i.gh, 5
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !125
  %i.gl = and i32 %i.gg, 31
  %i.gm = lshr i32 %i.gk, %i.gl
  %i.gn = trunc i32 %i.gm to i1
  br i1 %i.gn, label %.lr.ph.i.i.i.i.i.i.i.i117.i.i.i.i.i.i, label %.loopexit.i.i111.i.i.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i.i.i117.i.i.i.i.i.i:            ; preds = %.lr.ph.split.i.i109.i.i.i.i.i.i, %bb.q
  %i.go = phi i64 [ %i.gu, %bb.q ], [ %i.gh, %.lr.ph.split.i.i109.i.i.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i118.i.i.i.i.i.i = phi i32 [ %i.gt, %bb.q ], [ %i.gg, %.lr.ph.split.i.i109.i.i.i.i.i.i ]
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !70
  %i.gr = icmp eq ptr %i.ga, %i.gq
  br i1 %i.gr, label %select.unfold.i.i115.i.i.i.i.i.i, label %bb.q, !prof !78

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i117.i.i.i.i.i.i
  %i.gs = add nuw i32 %.019.i.i.i.i.i.i.i.i118.i.i.i.i.i.i, 1
  %i.gt = and i32 %i.gs, %i.fv                    ; 3 uses
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %i.gv = lshr i64 %i.gu, 5
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !125
  %i.gy = and i32 %i.gt, 31
  %i.gz = lshr i32 %i.gx, %i.gy
  %i.ha = trunc i32 %i.gz to i1
  br i1 %i.ha, label %.lr.ph.i.i.i.i.i.i.i.i117.i.i.i.i.i.i, label %.loopexit.i.i111.i.i.i.i.i.i, !prof !127

.loopexit.i.i111.i.i.i.i.i.i:                     ; preds = %bb.q, %.lr.ph.split.i.i109.i.i.i.i.i.i
  %.not12.i.i112.i.i.i.i.i.i = icmp eq ptr %.25, null
  br i1 %.not12.i.i112.i.i.i.i.i.i, label %select.unfold.i.i115.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.loopexit.i.i111.i.i.i.i.i.i
  %.not13.i.i113.i.i.i.i.i.i = icmp eq ptr %.25, %i.ga
  br i1 %.not13.i.i113.i.i.i.i.i.i, label %select.unfold.i.i115.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit"

select.unfold.i.i115.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i117.i.i.i.i.i.i, %.loopexit.i.i111.i.i.i.i.i.i, %bb.r
  %.26 = phi ptr [ %i.ga, %.loopexit.i.i111.i.i.i.i.i.i ], [ %.25, %bb.r ], [ %.25, %.lr.ph.i.i.i.i.i.i.i.i117.i.i.i.i.i.i ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.i110.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i116.i.i.i.i.i.i = icmp eq ptr %i.hb, %i.fo
  br i1 %.not.not.i.i116.i.i.i.i.i.i, label %.loopexit180.i.i.i.i.i.i, label %.lr.ph.split.i.i109.i.i.i.i.i.i

.loopexit180.i.i.i.i.i.i:                         ; preds = %select.unfold.i.i115.i.i.i.i.i.i, %select.unfold.us.i.i124.i.i.i.i.i.i, %bb.o
  %.27 = phi ptr [ %.13, %bb.o ], [ %.29, %select.unfold.us.i.i124.i.i.i.i.i.i ], [ %.26, %select.unfold.i.i115.i.i.i.i.i.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.loopexit180.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %.19 = phi ptr [ %.27, %.loopexit180.i.i.i.i.i.i ], [ %.13, %._crit_edge.i.i.i.i.i.i ] ; 4 uses
  %.1.i.i.i.i.i.i = phi ptr [ %i.hc, %.loopexit180.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !70
  %i.hd = getelementptr i8, ptr %.1.val.i.i.i.i.i.i, i64 48
  %.1.val.val.i.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !tbaa !250
  %i.he = getelementptr inbounds i8, ptr %.1.val.val.i.i.i.i.i.i, i64 -24
  %i.hf = tail call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.he) #22 ; 2 uses
  %i.hg = extractvalue { ptr, ptr } %i.hf, 0      ; 3 uses
  %i.hh = extractvalue { ptr, ptr } %i.hf, 1      ; 3 uses
  %.not14.not.i.i127.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.hh
  br i1 %.not14.not.i.i127.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i128.i.i.i.i.i.i

.lr.ph.i.i128.i.i.i.i.i.i:                        ; preds = %bb.s
  %i.hi = load ptr, ptr %0, align 8, !tbaa !151, !noalias !473
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !157, !noalias !473 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !158, !noalias !473 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  %i.ho = add i32 %i.hm, -1                       ; 2 uses
  br i1 %i.hn, label %.lr.ph.split.us.i.i139.i.i.i.i.i.i, label %.lr.ph.split.i.i129.i.i.i.i.i.i

.lr.ph.split.us.i.i139.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i128.i.i.i.i.i.i, %select.unfold.us.i.i144.i.i.i.i.i.i
  %.23 = phi ptr [ %.24, %select.unfold.us.i.i144.i.i.i.i.i.i ], [ %.19, %.lr.ph.i.i128.i.i.i.i.i.i ] ; 2 uses
  %i.hp = phi ptr [ %i.hr, %select.unfold.us.i.i144.i.i.i.i.i.i ], [ %.19, %.lr.ph.i.i128.i.i.i.i.i.i ] ; 3 uses
  %.sroa.01.015.us.i.i141.i.i.i.i.i.i = phi ptr [ %i.hs, %select.unfold.us.i.i144.i.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i128.i.i.i.i.i.i ] ; 2 uses
  %i.hq = load ptr, ptr %.sroa.01.015.us.i.i141.i.i.i.i.i.i, align 8, !tbaa !122 ; 3 uses
  %.not12.us.i.i142.i.i.i.i.i.i = icmp eq ptr %i.hp, null
  br i1 %.not12.us.i.i142.i.i.i.i.i.i, label %select.unfold.us.i.i144.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i.i139.i.i.i.i.i.i
  %.not13.us.i.i143.i.i.i.i.i.i = icmp eq ptr %i.hp, %i.hq
  br i1 %.not13.us.i.i143.i.i.i.i.i.i, label %select.unfold.us.i.i144.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit"

select.unfold.us.i.i144.i.i.i.i.i.i:              ; preds = %.lr.ph.split.us.i.i139.i.i.i.i.i.i, %bb.t
  %.24 = phi ptr [ %.23, %bb.t ], [ %i.hq, %.lr.ph.split.us.i.i139.i.i.i.i.i.i ] ; 2 uses
  %i.hr = phi ptr [ %i.hp, %bb.t ], [ %i.hq, %.lr.ph.split.us.i.i139.i.i.i.i.i.i ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.01.015.us.i.i141.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.us.not.i.i145.i.i.i.i.i.i = icmp eq ptr %i.hs, %i.hh
  br i1 %.not.us.not.i.i145.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.split.us.i.i139.i.i.i.i.i.i

.lr.ph.split.i.i129.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i128.i.i.i.i.i.i, %select.unfold.i.i135.i.i.i.i.i.i
  %.20 = phi ptr [ %.21, %select.unfold.i.i135.i.i.i.i.i.i ], [ %.19, %.lr.ph.i.i128.i.i.i.i.i.i ] ; 5 uses
  %.sroa.01.015.i.i130.i.i.i.i.i.i = phi ptr [ %i.iu, %select.unfold.i.i135.i.i.i.i.i.i ], [ %i.hg, %.lr.ph.i.i128.i.i.i.i.i.i ] ; 2 uses
  %i.ht = load ptr, ptr %.sroa.01.015.i.i130.i.i.i.i.i.i, align 8, !tbaa !122 ; 4 uses
  %i.hu = ptrtoint ptr %i.ht to i64
  %i.hv = mul i64 %i.hu, -4658895280553007687     ; 2 uses
  %i.hw = lshr i64 %i.hv, 31
  %i.hx = xor i64 %i.hw, %i.hv
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = and i32 %i.ho, %i.hy                    ; 3 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = lshr i64 %i.ia, 5
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !125
  %i.ie = and i32 %i.hz, 31
  %i.if = lshr i32 %i.id, %i.ie
  %i.ig = trunc i32 %i.if to i1
  br i1 %i.ig, label %.lr.ph.i.i.i.i.i.i.i.i137.i.i.i.i.i.i, label %.loopexit.i.i131.i.i.i.i.i.i, !prof !126

.lr.ph.i.i.i.i.i.i.i.i137.i.i.i.i.i.i:            ; preds = %.lr.ph.split.i.i129.i.i.i.i.i.i, %bb.u
  %i.ih = phi i64 [ %i.in, %bb.u ], [ %i.ia, %.lr.ph.split.i.i129.i.i.i.i.i.i ]
  %.019.i.i.i.i.i.i.i.i138.i.i.i.i.i.i = phi i32 [ %i.im, %bb.u ], [ %i.hz, %.lr.ph.split.i.i129.i.i.i.i.i.i ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !70
  %i.ik = icmp eq ptr %i.ht, %i.ij
  br i1 %i.ik, label %select.unfold.i.i135.i.i.i.i.i.i, label %bb.u, !prof !78

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i137.i.i.i.i.i.i
  %i.il = add nuw i32 %.019.i.i.i.i.i.i.i.i138.i.i.i.i.i.i, 1
  %i.im = and i32 %i.il, %i.ho                    ; 3 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = lshr i64 %i.in, 5
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !125
  %i.ir = and i32 %i.im, 31
  %i.is = lshr i32 %i.iq, %i.ir
  %i.it = trunc i32 %i.is to i1
  br i1 %i.it, label %.lr.ph.i.i.i.i.i.i.i.i137.i.i.i.i.i.i, label %.loopexit.i.i131.i.i.i.i.i.i, !prof !127

.loopexit.i.i131.i.i.i.i.i.i:                     ; preds = %bb.u, %.lr.ph.split.i.i129.i.i.i.i.i.i
  %.not12.i.i132.i.i.i.i.i.i = icmp eq ptr %.20, null
  br i1 %.not12.i.i132.i.i.i.i.i.i, label %select.unfold.i.i135.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.loopexit.i.i131.i.i.i.i.i.i
  %.not13.i.i133.i.i.i.i.i.i = icmp eq ptr %.20, %i.ht
  br i1 %.not13.i.i133.i.i.i.i.i.i, label %select.unfold.i.i135.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRKNS_9SetVectorIPNS_10BasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEEZL18getCommonExitBlockSC_E3$_0EEbOT_T0_.exit"

select.unfold.i.i135.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i137.i.i.i.i.i.i, %.loopexit.i.i131.i.i.i.i.i.i, %bb.v
  %.21 = phi ptr [ %i.ht, %.loopexit.i.i131.i.i.i.i.i.i ], [ %.20, %bb.v ], [ %.20, %.lr.ph.i.i.i.i.i.i.i.i137.i.i.i.i.i.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.015.i.i130.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.not.i.i136.i.i.i.i.i.i = icmp eq ptr %i.iu, %i.hh
  br i1 %.not.not.i.i136.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.split.i.i129.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %select.unfold.i.i135.i.i.i.i.i.i, %select.unfold.us.i.i144.i.i.i.i.i.i, %bb.s
end_hunk_0
