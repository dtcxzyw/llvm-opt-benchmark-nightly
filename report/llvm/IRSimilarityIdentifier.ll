Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRSimilarityIdentifier?download=true
inline.NumInlined: 6177
inline.NumDeleted: 3080
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm12IRSimilarity22IRSimilarityIdentifier14findCandidatesERSt6vectorIPNS0_17IRInstructionDataESaIS4_EERS2_IjSaIjEE:bb.a
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !108, !noalias !1153
  %i.vh = and i32 %.0.i.i254, 31
  %i.vi = lshr i32 %i.vg, %i.vh
  %i.vj = trunc i32 %i.vi to i1
  br i1 %i.vj, label %.lr.ph.i.i252, label %.loopexit.i242, !prof !112, !llvm.loop !1137

.lr.ph.i.i252:                                    ; preds = %bb.aw, %bb.ax
  %i.vk = phi ptr [ %i.vd, %bb.ax ], [ %i.uu, %bb.aw ]
  %.025.i.i253 = phi i32 [ %.0.i.i254, %bb.ax ], [ %.024.i.i241, %bb.aw ]
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !108, !noalias !1153
  %i.vm = icmp eq i32 %.037.i, %i.vl
  br i1 %i.vm, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit, label %bb.ax, !prof !73

.loopexit.i242:                                   ; preds = %bb.ax, %bb.aw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit270
  %.lcssa30.sink.i.ph.i243 = phi ptr [ %i.uu, %bb.aw ], [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit270 ], [ %i.vd, %bb.ax ]
  %i.vn = load i32, ptr %i.ro, align 8, !tbaa !1138, !noalias !1153
  %i.vo = shl i32 %i.vn, 2
  %i.vp = add i32 %i.vo, 4
  %i.vq = mul i32 %i.up, 3
  %.not.i.i244 = icmp ult i32 %i.vp, %i.vq
  br i1 %.not.i.i244, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i, label %bb.ay, !prof !73

bb.ay:                                            ; preds = %.loopexit.i242
  %i.vr = shl i32 %i.up, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.ri, i32 noundef %i.vr), !noalias !1153
  %i.vs = load ptr, ptr %i.ri, align 8, !tbaa !814, !noalias !1154 ; 5 uses
  %i.vt = load ptr, ptr %i.rm, align 8, !tbaa !824, !noalias !1154 ; 5 uses
  %i.vu = load i32, ptr %i.rn, align 4, !tbaa !825, !noalias !1154 ; 2 uses
  %i.vv = icmp ne i32 %i.vu, 0
  call void @llvm.assume(i1 %i.vv)
  %i.vw = add i32 %i.vu, -1                       ; 2 uses
  %i.vx = mul i32 %.037.i, 37
  %.024.i299 = and i32 %i.vw, %i.vx               ; 3 uses
  %i.vy = zext i32 %.024.i299 to i64              ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.vy ; 2 uses
  %i.wa = lshr i64 %i.vy, 5
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.wa
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !108, !noalias !1153
  %i.wd = and i32 %.024.i299, 31
  %i.we = lshr i32 %i.wc, %i.wd
  %i.wf = trunc i32 %i.we to i1
  br i1 %i.wf, label %.lr.ph.i302, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i, !prof !110

bb.az:                                            ; preds = %.lr.ph.i302
  %i.wg = add nuw i32 %.025.i303, 1
  %.0.i304 = and i32 %i.wg, %i.vw                 ; 3 uses
  %i.wh = zext i32 %.0.i304 to i64                ; 2 uses
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.wh ; 2 uses
  %i.wj = lshr i64 %i.wh, 5
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !108, !noalias !1153
  %i.wm = and i32 %.0.i304, 31
  %i.wn = lshr i32 %i.wl, %i.wm
  %i.wo = trunc i32 %i.wn to i1
  br i1 %i.wo, label %.lr.ph.i302, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i, !prof !112, !llvm.loop !1137

.lr.ph.i302:                                      ; preds = %bb.ay, %bb.az
  %i.wp = phi ptr [ %i.wi, %bb.az ], [ %i.vz, %bb.ay ] ; 2 uses
  %.025.i303 = phi i32 [ %.0.i304, %bb.az ], [ %.024.i299, %bb.ay ]
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !108, !noalias !1153
  %i.wr = icmp eq i32 %.037.i, %i.wq
  br i1 %i.wr, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i, label %bb.az, !prof !73

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i: ; preds = %.lr.ph.i302, %bb.az, %bb.ay, %.loopexit.i242
  %i.ws = phi ptr [ %i.un, %.loopexit.i242 ], [ %i.vs, %bb.ay ], [ %i.vs, %bb.az ], [ %i.vs, %.lr.ph.i302 ]
  %i.wt = phi ptr [ %i.uo, %.loopexit.i242 ], [ %i.vt, %bb.ay ], [ %i.vt, %bb.az ], [ %i.vt, %.lr.ph.i302 ]
  %i.wu = phi ptr [ %.lcssa30.sink.i.ph.i243, %.loopexit.i242 ], [ %i.vz, %bb.ay ], [ %i.wp, %.lr.ph.i302 ], [ %i.wi, %bb.az ] ; 3 uses
  %i.wv = ptrtoint ptr %i.wu to i64
  %i.ww = ptrtoint ptr %i.ws to i64
  %i.wx = sub i64 %i.wv, %i.ww
  %i.wy = ashr exact i64 %i.wx, 3                 ; 2 uses
  %i.wz = trunc i64 %i.wy to i32
  %i.xa = and i32 %i.wz, 31
  %i.xb = shl nuw i32 1, %i.xa
  %i.xc = lshr i64 %i.wy, 5
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %i.xc ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !108, !noalias !1153
  %i.xf = or i32 %i.xb, %i.xe
  store i32 %i.xf, ptr %i.xd, align 4, !tbaa !108, !noalias !1153
  %i.xg = load i32, ptr %i.ro, align 8, !tbaa !1138, !noalias !1153
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %i.ro, align 8, !tbaa !1138, !noalias !1153
  store i32 %.037.i, ptr %i.wu, align 4, !tbaa !108, !noalias !1153
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  store i32 %i.um, ptr %i.xi, align 4, !tbaa !108, !noalias !1153
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i252, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i
  %i.xj = add i32 %.037.i, 1
  %i.xk = add i64 %.pn.i, 16
  %i.xl = ashr exact i64 %i.xk, 4                 ; 3 uses
  %.not.i.i.i161 = icmp ult i64 %i.xl, %i.qr
  br i1 %.not.i.i.i161, label %bb.ba, label %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit

bb.ba:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit
  %i.xm = lshr i64 %i.xl, 5                       ; 3 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !108
  %i.xp = trunc nuw i64 %i.xl to i32
  %i.xq = and i32 %i.xp, 31
  %i.xr = shl nsw i32 -1, %i.xq
  %i.xs = and i32 %i.xo, %i.xr                    ; 2 uses
  %i.xt = icmp eq i32 %i.xs, 0
  br i1 %i.xt, label %.lr.ph.i.i.i166.preheader, label %_ZN4llvm16DenseMapIteratorIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i

.lr.ph.i.i.i166.preheader:                        ; preds = %bb.ba
  %i.xu = add nuw nsw i64 %i.xm, 1                ; 2 uses
  %i.xv = icmp eq i64 %i.xu, %i.qt
  br i1 %i.xv, label %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit, label %.lr.ph1082

.lr.ph.i.i.i166:                                  ; preds = %.lr.ph1082
  %i.xw = add i64 %i.xy, 1                        ; 2 uses
  %i.xx = icmp eq i64 %i.xw, %i.qt
  br i1 %i.xx, label %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit, label %.lr.ph1082, !llvm.loop !996

.lr.ph1082:                                       ; preds = %.lr.ph.i.i.i166.preheader, %.lr.ph.i.i.i166
  %i.xy = phi i64 [ %i.xw, %.lr.ph.i.i.i166 ], [ %i.xu, %.lr.ph.i.i.i166.preheader ] ; 3 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.xy
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !108 ; 2 uses
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %.lr.ph.i.i.i166, label %_ZN4llvm16DenseMapIteratorIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i, !llvm.loop !996

_ZN4llvm16DenseMapIteratorIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i: ; preds = %.lr.ph1082, %bb.ba
  %.012.lcssa.i.i.i163 = phi i64 [ %i.xm, %bb.ba ], [ %i.xy, %.lr.ph1082 ]
  %.0.lcssa.i.i.i164 = phi i32 [ %i.xs, %bb.ba ], [ %i.ya, %.lr.ph1082 ]
  %i.yc = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i164, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i163, 9
  %i.yd = shl nuw nsw i32 %i.yc, 4
  %.idx60.i = zext nneg i32 %i.yd to i64
  %i.ye = or disjoint i64 %.idx.i.i.i, %.idx60.i  ; 2 uses
  %.not.i165 = icmp eq i64 %i.ye, %.idx59.i
  br i1 %.not.i165, label %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit, label %bb.ar

_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit: ; preds = %.lr.ph.i.i.i.i168, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_.exit, %_ZN4llvm16DenseMapIteratorIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EELb0EEppEv.exit.i, %.lr.ph.i.i.i166.preheader, %.lr.ph.i.i.i166, %.lr.ph.i.i.i.i168.preheader, %.lr.ph.i.i.i.i.i100.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E5beginEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %10, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0246.0340.i, i64 24, i1 false)
  %i.yf = getelementptr inbounds nuw i8, ptr %.sroa.0246.0340.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.yf)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.qi)
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0246.0340.i, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8copyFromERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.yg)
  %i.yh = getelementptr inbounds nuw i8, ptr %.sroa.0246.0340.i, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8copyFromERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.yh)
  %i.yi = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #30 ; 12 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 120 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.yi, ptr noundef nonnull align 8 dereferenceable(120) %10, i64 24, i1 false)
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yk, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5ValueEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.yk, ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yl, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.yl, ptr noundef nonnull align 8 dereferenceable(24) %i.cn)
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ym, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8copyFromERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ym, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yi, i64 96 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yn, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E8copyFromERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.yn, ptr noundef nonnull align 8 dereferenceable(24) %i.cp)
  %i.yo = load ptr, ptr %16, align 8, !tbaa !1076, !noalias !1159 ; 3 uses
  %i.yp = load ptr, ptr %i.ck, align 8, !tbaa !1119, !noalias !1159 ; 3 uses
  %i.yq = load i32, ptr %i.cl, align 4, !tbaa !1073, !noalias !1159 ; 4 uses
  %i.yr = icmp eq i32 %i.yq, 0
  br i1 %i.yr, label %.loopexit.i145, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit
  %i.ys = add i32 %i.yq, -1                       ; 2 uses
  %i.yt = mul i32 %i.pe, 37
  %.024.i.i144 = and i32 %i.ys, %i.yt             ; 3 uses
  %i.yu = zext i32 %.024.i.i144 to i64            ; 2 uses
  %i.yv = getelementptr inbounds nuw [32 x i8], ptr %i.yo, i64 %i.yu ; 2 uses
  %i.yw = lshr i64 %i.yu, 5
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !108, !noalias !1168
  %i.yz = and i32 %.024.i.i144, 31
  %i.za = lshr i32 %i.yy, %i.yz
  %i.zb = trunc i32 %i.za to i1
  br i1 %i.zb, label %.lr.ph.i.i155, label %.loopexit.i145, !prof !110

bb.bc:                                            ; preds = %.lr.ph.i.i155
  %i.zc = add nuw i32 %.025.i.i156, 1
  %.0.i.i157 = and i32 %i.zc, %i.ys               ; 3 uses
  %i.zd = zext i32 %.0.i.i157 to i64              ; 2 uses
  %i.ze = getelementptr inbounds nuw [32 x i8], ptr %i.yo, i64 %i.zd ; 2 uses
  %i.zf = lshr i64 %i.zd, 5
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %i.zf
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !108, !noalias !1168
  %i.zi = and i32 %.0.i.i157, 31
  %i.zj = lshr i32 %i.zh, %i.zi
  %i.zk = trunc i32 %i.zj to i1
  br i1 %i.zk, label %.lr.ph.i.i155, label %.loopexit.i145, !prof !112, !llvm.loop !1169

.lr.ph.i.i155:                                    ; preds = %bb.bb, %bb.bc
  %i.zl = phi ptr [ %i.ze, %bb.bc ], [ %i.yv, %bb.bb ] ; 2 uses
  %.025.i.i156 = phi i32 [ %.0.i.i157, %bb.bc ], [ %.024.i.i144, %bb.bb ]
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !108, !noalias !1168
  %i.zn = icmp eq i32 %i.pe, %i.zm
  br i1 %i.zn, label %.lr.ph.i.i.i.i29.i, label %bb.bc, !prof !73

.loopexit.i145:                                   ; preds = %bb.bc, %bb.bb, %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit
  %.lcssa30.sink.i.ph.i146 = phi ptr [ %i.yv, %bb.bb ], [ null, %_ZN4llvm12IRSimilarity21IRSimilarityCandidate25createCanonicalMappingForERS1_.exit ], [ %i.ze, %bb.bc ]
  %i.zo = load i32, ptr %i.dp, align 8, !tbaa !1170, !noalias !1168
  %i.zp = shl i32 %i.zo, 2
  %i.zq = add i32 %i.zp, 4
  %i.zr = mul i32 %i.yq, 3
  %.not.i.i147 = icmp ult i32 %i.zq, %i.zr
  br i1 %.not.i.i147, label %_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread, label %bb.bd, !prof !73

bb.bd:                                            ; preds = %.loopexit.i145
  %i.zs = shl i32 %i.yq, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_12IRSimilarity21IRSimilarityCandidateESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4growEj(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef %i.zs), !noalias !1168
  %i.zt = load ptr, ptr %16, align 8, !tbaa !1076, !noalias !1171 ; 5 uses
  %i.zu = load ptr, ptr %i.ck, align 8, !tbaa !1119, !noalias !1171 ; 5 uses
  %i.zv = load i32, ptr %i.cl, align 4, !tbaa !1073, !noalias !1171 ; 2 uses
  %i.zw = icmp ne i32 %i.zv, 0
  call void @llvm.assume(i1 %i.zw)
  %i.zx = add i32 %i.zv, -1                       ; 2 uses
  %i.zy = mul i32 %i.pe, 37
  %.024.i235 = and i32 %i.zx, %i.zy               ; 3 uses
  %i.zz = zext i32 %.024.i235 to i64              ; 2 uses
  %i.aaa = getelementptr inbounds nuw [32 x i8], ptr %i.zt, i64 %i.zz ; 2 uses
  %i.aab = lshr i64 %i.zz, 5
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !108, !noalias !1168
  %i.aae = and i32 %.024.i235, 31
  %i.aaf = lshr i32 %i.aad, %i.aae
  %i.aag = trunc i32 %i.aaf to i1
  br i1 %i.aag, label %.lr.ph.i238, label %_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread, !prof !110

bb.be:                                            ; preds = %.lr.ph.i238
  %i.aah = add nuw i32 %.025.i239, 1
  %.0.i240 = and i32 %i.aah, %i.zx                ; 3 uses
  %i.aai = zext i32 %.0.i240 to i64               ; 2 uses
  %i.aaj = getelementptr inbounds nuw [32 x i8], ptr %i.zt, i64 %i.aai ; 2 uses
  %i.aak = lshr i64 %i.aai, 5
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !108, !noalias !1168
  %i.aan = and i32 %.0.i240, 31
  %i.aao = lshr i32 %i.aam, %i.aan
  %i.aap = trunc i32 %i.aao to i1
  br i1 %i.aap, label %.lr.ph.i238, label %_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread, !prof !112, !llvm.loop !1169

.lr.ph.i238:                                      ; preds = %bb.bd, %bb.be
  %i.aaq = phi ptr [ %i.aaj, %bb.be ], [ %i.aaa, %bb.bd ] ; 2 uses
  %.025.i239 = phi i32 [ %.0.i240, %bb.be ], [ %.024.i235, %bb.bd ]
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !108, !noalias !1168
  %i.aas = icmp eq i32 %i.pe, %i.aar
  br i1 %i.aas, label %_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread, label %bb.be, !prof !73

_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread: ; preds = %.lr.ph.i238, %bb.be, %bb.bd, %.loopexit.i145
  %i.aat = phi ptr [ %i.yo, %.loopexit.i145 ], [ %i.zt, %bb.bd ], [ %i.zt, %bb.be ], [ %i.zt, %.lr.ph.i238 ]
  %i.aau = phi ptr [ %i.yp, %.loopexit.i145 ], [ %i.zu, %bb.bd ], [ %i.zu, %bb.be ], [ %i.zu, %.lr.ph.i238 ]
  %i.aav = phi ptr [ %.lcssa30.sink.i.ph.i146, %.loopexit.i145 ], [ %i.aaa, %bb.bd ], [ %i.aaq, %.lr.ph.i238 ], [ %i.aaj, %bb.be ] ; 6 uses
  %i.aaw = ptrtoint ptr %i.aav to i64
  %i.aax = ptrtoint ptr %i.aat to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = ashr exact i64 %i.aay, 5               ; 2 uses
  %i.aba = trunc i64 %i.aaz to i32
  %i.abb = and i32 %i.aba, 31
  %i.abc = shl nuw i32 1, %i.abb
  %i.abd = lshr i64 %i.aaz, 5
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %i.abd ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !108, !noalias !1168
  %i.abg = or i32 %i.abc, %i.abf
  store i32 %i.abg, ptr %i.abe, align 4, !tbaa !108, !noalias !1168
  %i.abh = load i32, ptr %i.dp, align 8, !tbaa !1170, !noalias !1168
  %i.abi = add i32 %i.abh, 1
  store i32 %i.abi, ptr %i.dp, align 8, !tbaa !1170, !noalias !1168
  store i32 %i.pe, ptr %i.aav, align 4, !tbaa !108, !noalias !1168
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  store ptr %i.yi, ptr %i.abj, align 8, !tbaa !1077, !noalias !1168
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aav, i64 16
  store ptr %i.yj, ptr %i.abk, align 8, !tbaa !1079, !noalias !1168
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  store ptr %i.yj, ptr %i.abl, align 8, !tbaa !1081, !noalias !1168
  br label %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EED2Ev.exit.i

.lr.ph.i.i.i.i29.i:                               ; preds = %.lr.ph.i.i155
  %22 = getelementptr inbounds nuw i8, ptr %i.yi, i64 116
  %23 = load i32, ptr %22, align 4, !tbaa !825    ; 2 uses
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i102.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i29.i
  %i.abm = load ptr, ptr %i.yn, align 8, !tbaa !814
  %i.abn = zext i32 %23 to i64                    ; 2 uses
  %i.abo = shl nuw nsw i64 %i.abn, 3
  %i.abp = add nuw nsw i64 %i.abn, 31
  %i.abq = lshr i64 %i.abp, 3
  %i.abr = and i64 %i.abq, 1073741820
  %i.abs = add nuw nsw i64 %i.abr, %i.abo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.abm, i64 noundef %i.abs, i64 noundef 4) #26
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i102.i

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i102.i: ; preds = %bb.bf, %.lr.ph.i.i.i.i29.i
  %i.abt = getelementptr inbounds nuw i8, ptr %i.yi, i64 92
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !825 ; 2 uses
  %i.abv = icmp eq i32 %i.abu, 0
  br i1 %i.abv, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i103.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i102.i
  %i.abw = load ptr, ptr %i.ym, align 8, !tbaa !814
  %i.abx = zext i32 %i.abu to i64                 ; 2 uses
  %i.aby = shl nuw nsw i64 %i.abx, 3
  %i.abz = add nuw nsw i64 %i.abx, 31
  %i.aca = lshr i64 %i.abz, 3
  %i.acb = and i64 %i.aca, 1073741820
  %i.acc = add nuw nsw i64 %i.acb, %i.aby
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.abw, i64 noundef %i.acc, i64 noundef 4) #26
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i103.i

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i103.i: ; preds = %bb.bg, %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i102.i
  %i.acd = getelementptr inbounds nuw i8, ptr %i.yi, i64 68
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !340 ; 2 uses
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i104.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i103.i
  %i.acg = load ptr, ptr %i.yl, align 8, !tbaa !329
  %i.ach = zext i32 %i.ace to i64                 ; 2 uses
  %i.aci = shl nuw nsw i64 %i.ach, 4
  %i.acj = add nuw nsw i64 %i.ach, 31
  %i.ack = lshr i64 %i.acj, 3
  %i.acl = and i64 %i.ack, 1073741820
  %i.acm = add nuw nsw i64 %i.acl, %i.aci
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.acg, i64 noundef %i.acm, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i104.i

_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i104.i: ; preds = %bb.bh, %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i103.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.yi, i64 44
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !320 ; 2 uses
  %i.acp = icmp eq i32 %i.aco, 0
  br i1 %i.acp, label %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit105.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i104.i
  %i.acq = load ptr, ptr %i.yk, align 8, !tbaa !309
  %i.acr = zext i32 %i.aco to i64                 ; 2 uses
  %i.acs = shl nuw nsw i64 %i.acr, 4
  %i.act = add nuw nsw i64 %i.acr, 31
  %i.acu = lshr i64 %i.act, 3
  %i.acv = and i64 %i.acu, 1073741820
  %i.acw = add nuw nsw i64 %i.acv, %i.acs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.acq, i64 noundef %i.acw, i64 noundef 8) #26
  br label %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit105.i

_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit105.i: ; preds = %bb.bi, %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i104.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yi, i64 noundef 120) #27
  br label %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EED2Ev.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread, %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit105.i
  %.sroa.0.0.i151401406 = phi ptr [ %i.aav, %_ZSt8_DestroyIPN4llvm12IRSimilarity21IRSimilarityCandidateEEvT_S4_.exit.i.i.i.thread ], [ %i.zl, %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit105.i ]
  %i.acx = load i32, ptr %i.dl, align 4, !tbaa !825 ; 2 uses
  %i.acy = icmp eq i32 %i.acx, 0
  br i1 %i.acy, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EED2Ev.exit.i
  %i.acz = load ptr, ptr %i.cp, align 8, !tbaa !814
  %i.ada = zext i32 %i.acx to i64                 ; 2 uses
  %i.adb = shl nuw nsw i64 %i.ada, 3
  %i.adc = add nuw nsw i64 %i.ada, 31
  %i.add = lshr i64 %i.adc, 3
  %i.ade = and i64 %i.add, 1073741820
  %i.adf = add nuw nsw i64 %i.ade, %i.adb
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.acz, i64 noundef %i.adf, i64 noundef 4) #26
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i.i

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EED2Ev.exit.i
  %i.adg = load i32, ptr %i.dm, align 4, !tbaa !825 ; 2 uses
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i.i
  %i.adi = load ptr, ptr %i.co, align 8, !tbaa !814
  %i.adj = zext i32 %i.adg to i64                 ; 2 uses
  %i.adk = shl nuw nsw i64 %i.adj, 3
  %i.adl = add nuw nsw i64 %i.adj, 31
  %i.adm = lshr i64 %i.adl, 3
  %i.adn = and i64 %i.adm, 1073741820
  %i.ado = add nuw nsw i64 %i.adn, %i.adk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.adi, i64 noundef %i.ado, i64 noundef 4) #26
  br label %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i.i

_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i.i: ; preds = %bb.bk, %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit.i.i
  %i.adp = load i32, ptr %i.dn, align 4, !tbaa !340 ; 2 uses
  %i.adq = icmp eq i32 %i.adp, 0
  br i1 %i.adq, label %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i.i
  %i.adr = load ptr, ptr %i.cn, align 8, !tbaa !329
  %i.ads = zext i32 %i.adp to i64                 ; 2 uses
  %i.adt = shl nuw nsw i64 %i.ads, 4
  %i.adu = add nuw nsw i64 %i.ads, 31
  %i.adv = lshr i64 %i.adu, 3
  %i.adw = and i64 %i.adv, 1073741820
  %i.adx = add nuw nsw i64 %i.adw, %i.adt
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.adr, i64 noundef %i.adx, i64 noundef 8) #26
  br label %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i.i: ; preds = %bb.bl, %_ZN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEED2Ev.exit1.i.i
  %i.ady = load i32, ptr %i.do, align 4, !tbaa !320 ; 2 uses
  %i.adz = icmp eq i32 %i.ady, 0
  br i1 %i.adz, label %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i.i
  %i.aea = load ptr, ptr %i.cm, align 8, !tbaa !309
  %i.aeb = zext i32 %i.ady to i64                 ; 2 uses
  %i.aec = shl nuw nsw i64 %i.aeb, 4
  %i.aed = add nuw nsw i64 %i.aeb, 31
  %i.aee = lshr i64 %i.aed, 3
  %i.aef = and i64 %i.aee, 1073741820
  %i.aeg = add nuw nsw i64 %i.aef, %i.aec
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aea, i64 noundef %i.aeg, i64 noundef 8) #26
  br label %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit.i

_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit.i: ; preds = %bb.bm, %_ZN4llvm8DenseMapIjPNS_5ValueENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_12IRSimilarity21IRSimilarityCandidateESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.i
  %.sroa.0264.0.i = phi ptr [ %.sroa.0.0.i151401406, %_ZN4llvm12IRSimilarity21IRSimilarityCandidateD2Ev.exit.i ], [ %.lcssa.sink.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorINS_12IRSimilarity21IRSimilarityCandidateESaIS4_EENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E4findERKj.exit.i ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.sroa.0246.0340.i, i64 120 ; 4 uses
  %i.aei = load ptr, ptr %i.cg, align 8, !tbaa !671 ; 2 uses
  %.not267337.i = icmp eq ptr %i.aeh, %i.aei
  br i1 %.not267337.i, label %.loopexit.i, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.bn
  %i.aej = getelementptr i8, ptr %.sroa.0246.0340.i, i64 4
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.0264.0.i, i64 16 ; 6 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.0264.0.i, i64 24 ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.sroa.0264.0.i, i64 8 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EE9push_backERKS2_.exit.i, %.lr.ph.i35
  %.sroa.0234.0338.i = phi ptr [ %i.aeh, %.lr.ph.i35 ], [ %i.bwk, %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EE9push_backERKS2_.exit.i ] ; 30 uses
  %i.aen = load ptr, ptr %7, align 8, !tbaa !1061, !noalias !1176 ; 3 uses
  %i.aeo = load ptr, ptr %i.ci, align 8, !tbaa !1099, !noalias !1176 ; 2 uses
  %i.aep = load i32, ptr %i.cj, align 4, !tbaa !1058, !noalias !1176 ; 4 uses
  %i.aeq = icmp eq i32 %i.aep, 0
  br i1 %i.aeq, label %.loopexit.i.i30.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aer = add i32 %i.aep, -1                     ; 2 uses
  %i.aes = ptrtoint ptr %.sroa.0234.0338.i to i64
  %i.aet = mul i64 %i.aes, -4658895280553007687   ; 2 uses
  %i.aeu = lshr i64 %i.aet, 31
  %i.aev = xor i64 %i.aeu, %i.aet
  %i.aew = trunc i64 %i.aev to i32
  %i.aex = and i32 %i.aer, %i.aew                 ; 3 uses
  %i.aey = zext i32 %i.aex to i64                 ; 2 uses
  %i.aez = lshr i64 %i.aey, 5
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.aez
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !108, !noalias !1185
  %i.afc = and i32 %i.aex, 31
  %i.afd = lshr i32 %i.afb, %i.afc
  %i.afe = trunc i32 %i.afd to i1
  br i1 %i.afe, label %.lr.ph.i.i.i.i33.i, label %.loopexit.i.i30.i, !prof !110

.lr.ph.i.i.i.i33.i:                               ; preds = %bb.bp, %bb.bq
  %i.aff = phi i64 [ %i.afl, %bb.bq ], [ %i.aey, %bb.bp ]
  %.017.i.i.i.i34.i = phi i32 [ %i.afk, %bb.bq ], [ %i.aex, %bb.bp ]
  %i.afg = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %i.aff ; 2 uses
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !671, !noalias !1185
  %i.afi = icmp eq ptr %.sroa.0234.0338.i, %i.afh
  br i1 %i.afi, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i, label %bb.bq, !prof !73

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i33.i
  %i.afj = add nuw i32 %.017.i.i.i.i34.i, 1
  %i.afk = and i32 %i.afj, %i.aer                 ; 3 uses
  %i.afl = zext i32 %i.afk to i64                 ; 2 uses
  %i.afm = lshr i64 %i.afl, 5
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.afm
  %i.afo = load i32, ptr %i.afn, align 4, !tbaa !108, !noalias !1185
  %i.afp = and i32 %i.afk, 31
  %i.afq = lshr i32 %i.afo, %i.afp
  %i.afr = trunc i32 %i.afq to i1
  br i1 %i.afr, label %.lr.ph.i.i.i.i33.i, label %.loopexit.i.i30.i, !prof !112

.loopexit.i.i30.i:                                ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.afs = zext i32 %i.aep to i64                 ; 2 uses
  %i.aft = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %i.afs
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i33.i
  %.pre413.i = zext i32 %i.aep to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i, %.loopexit.i.i30.i
  %.pre-phi414.i = phi i64 [ %.pre413.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.afs, %.loopexit.i.i30.i ]
  %.lcssa.sink.i.i31.i = phi ptr [ %i.afg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.loopexit.i ], [ %i.aft, %.loopexit.i.i30.i ]
  %i.afu = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %.pre-phi414.i
  %.not268.i = icmp eq ptr %.lcssa.sink.i.i31.i, %i.afu
  br i1 %.not268.i, label %bb.br, label %_ZNSt6vectorIN4llvm12IRSimilarity21IRSimilarityCandidateESaIS2_EE9push_backERKS2_.exit.i

bb.br:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12IRSimilarity21IRSimilarityCandidateEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4findEPKS3_.exit.i
  %.val.i = load i32, ptr %.sroa.0246.0340.i, align 8, !tbaa !270 ; 4 uses
end_hunk_0
