inline.NumInlined: 6810
inline.NumDeleted: 3465
begin_hunk_0_@_ZN6hermes6driver29compileFromCommandLineOptionsEv:bb.a
  %.phi.trans.insert89.i.i = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %.pre90.i.i = load ptr, ptr %.phi.trans.insert89.i.i, align 8, !tbaa !176, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit47.i.i

bb.eu:                                            ; preds = %.critedge26.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.xi, ptr noundef nonnull align 1 dereferenceable(45) @.str.309, i64 45, i1 false), !noalias !237
  %i.xo = load ptr, ptr %i.xh, align 8, !tbaa !176, !noalias !237
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 45 ; 2 uses
  store ptr %i.xp, ptr %i.xh, align 8, !tbaa !176, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit47.i.i

_ZN4llvh11raw_ostreamlsEPKc.exit47.i.i:           ; preds = %bb.eu, %bb.et
  %i.xq = phi ptr [ %.pre90.i.i, %bb.et ], [ %i.xp, %bb.eu ] ; 3 uses
  %.0.i.i46.i.i = phi ptr [ %i.xn, %bb.et ], [ %i.xe, %bb.eu ] ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %91, align 8, !tbaa !57, !noalias !237 ; 2 uses
  %.sroa.2.0.copyload.i.i = load i64, ptr %i.uj, align 8, !tbaa !58, !noalias !237 ; 5 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.0.i.i46.i.i, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !173, !noalias !237
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.i.i46.i.i, i64 24 ; 2 uses
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xq to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = icmp ugt i64 %.sroa.2.0.copyload.i.i, %i.xw
  br i1 %i.xx, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit47.i.i
  %i.xy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i46.i.i, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.2.0.copyload.i.i) #26, !noalias !237 ; 2 uses
  %.phi.trans.insert91.i.i = getelementptr inbounds nuw i8, ptr %i.xy, i64 24
  %.pre92.i.i = load ptr, ptr %.phi.trans.insert91.i.i, align 8, !tbaa !176, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit50.i.i

bb.ew:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit47.i.i
  %.not.i48.i.i = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not.i48.i.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit50.i.i, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xq, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i, i1 false), !noalias !237
  %i.xz = load ptr, ptr %i.xt, align 8, !tbaa !176, !noalias !237
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.sroa.2.0.copyload.i.i ; 2 uses
  store ptr %i.ya, ptr %i.xt, align 8, !tbaa !176, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit50.i.i

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit50.i.i: ; preds = %bb.ex, %bb.ew, %bb.ev
  %i.yb = phi ptr [ %.pre92.i.i, %bb.ev ], [ %i.ya, %bb.ex ], [ %i.xq, %bb.ew ] ; 3 uses
  %.0.i49.i.i = phi ptr [ %i.xy, %bb.ev ], [ %.0.i.i46.i.i, %bb.ex ], [ %.0.i.i46.i.i, %bb.ew ] ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0.i49.i.i, i64 16
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !173, !noalias !237
  %.not.i51.i.i = icmp ult ptr %i.yb, %i.yd
  br i1 %.not.i51.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit50.i.i
  %i.ye = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i49.i.i, i8 noundef zeroext 10) #26, !noalias !237 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit53.i.i

bb.ez:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit50.i.i
  %i.yf = getelementptr inbounds nuw i8, ptr %.0.i49.i.i, i64 24
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 1
  store ptr %i.yg, ptr %i.yf, align 8, !tbaa !176, !noalias !237
  store i8 10, ptr %i.yb, align 1, !tbaa !23, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsEc.exit53.i.i

_ZN4llvh11raw_ostreamlsEc.exit53.i.i:             ; preds = %bb.ez, %bb.ey
  %i.yh = getelementptr inbounds nuw i8, ptr %95, i64 24
  store i8 0, ptr %i.yh, align 8, !tbaa !240, !alias.scope !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26, !noalias !237
  br label %bb.fg

bb.fa:                                            ; preds = %bb.es
  %i.yi = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E20InsertIntoBucketImplIS2_EEPS7_RKS2_RKT_SB_(ptr noundef nonnull align 1 dereferenceable(1) %89, ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef %i.xd), !noalias !254 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yi, ptr noundef nonnull align 8 dereferenceable(16) %91, i64 16, i1 false), !tbaa.struct !259, !noalias !254
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yk = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !254
  store i32 %i.yk, ptr %i.yj, align 4, !tbaa !3, !noalias !254
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #26, !noalias !237
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_9StringRefENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS2_EEEEjS2_S4_S7_E11try_emplaceIJRS2_EEESt4pairINS_16DenseMapIteratorIjS2_S4_S7_Lb0EEEbERKjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.332") align 8 %92, ptr noundef nonnull align 1 dereferenceable(1) %90, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %91), !noalias !237
  %i.yl = load i8, ptr %i.uk, align 8, !tbaa !260, !range !179, !noalias !237, !noundef !61
  %i.ym = trunc nuw i8 %i.yl to i1
  br i1 %i.ym, label %.critedge28.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.yn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26, !noalias !237 ; 4 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !173, !noalias !237
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yn, i64 24 ; 3 uses
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !176, !noalias !237 ; 2 uses
  %i.ys = ptrtoint ptr %i.yp to i64
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = sub i64 %i.ys, %i.yt
  %i.yv = icmp ult i64 %i.yu, 43
  br i1 %i.yv, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.yw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.yn, ptr noundef nonnull @.str.310, i64 noundef 43) #26, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit56.i.i

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.yr, ptr noundef nonnull align 1 dereferenceable(43) @.str.310, i64 43, i1 false), !noalias !237
  %i.yx = load ptr, ptr %i.yq, align 8, !tbaa !176, !noalias !237
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 43
  store ptr %i.yy, ptr %i.yq, align 8, !tbaa !176, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit56.i.i

_ZN4llvh11raw_ostreamlsEPKc.exit56.i.i:           ; preds = %bb.fd, %bb.fc
  %.0.i.i55.i.i = phi ptr [ %i.yw, %bb.fc ], [ %i.yn, %bb.fd ]
  %i.yz = load i32, ptr %i.q, align 4, !tbaa !3, !noalias !237
  %i.za = zext i32 %i.yz to i64
  %i.zb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i55.i.i, i64 noundef %i.za) #26, !noalias !237 ; 3 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !176, !noalias !237 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !173, !noalias !237
  %.not.i57.i.i = icmp ult ptr %i.zd, %i.zf
  br i1 %.not.i57.i.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit56.i.i
  %i.zg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %i.zb, i8 noundef zeroext 10) #26, !noalias !237 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit59.i.i

bb.ff:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit56.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 1
  store ptr %i.zh, ptr %i.zc, align 8, !tbaa !176, !noalias !237
  store i8 10, ptr %i.zd, align 1, !tbaa !23, !noalias !237
  br label %_ZN4llvh11raw_ostreamlsEc.exit59.i.i

_ZN4llvh11raw_ostreamlsEc.exit59.i.i:             ; preds = %bb.ff, %bb.fe
  %i.zi = getelementptr inbounds nuw i8, ptr %95, i64 24
  store i8 0, ptr %i.zi, align 8, !tbaa !240, !alias.scope !237
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26, !noalias !237
  br label %bb.fg

.critedge28.i.i:                                  ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #26, !noalias !237
  %i.zj = add nuw i64 %.sroa.664.082.i.i, 1       ; 2 uses
  %.not.i100.i = icmp eq i64 %i.zj, %i.uh
  br i1 %.not.i100.i, label %.critedge22.loopexit.i.i, label %bb.ef

.critedge22.loopexit.i.i:                         ; preds = %.critedge28.i.i
  %.pre93.i.i = load ptr, ptr %89, align 8, !tbaa !257, !noalias !237
  %.phi.trans.insert94.i.i = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.zk = load <2 x i32>, ptr %.phi.trans.insert94.i.i, align 8, !tbaa !3, !noalias !237
  %.phi.trans.insert98.i.i = getelementptr inbounds nuw i8, ptr %89, i64 16
  %.pre99.i.i = load i32, ptr %.phi.trans.insert98.i.i, align 8, !tbaa !3, !noalias !237
  br label %.critedge22.i.i

.critedge22.i.i:                                  ; preds = %.critedge22.loopexit.i.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i.i
  %i.zl = phi i32 [ %.pre99.i.i, %.critedge22.loopexit.i.i ], [ 0, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i.i ]
  %i.zm = phi ptr [ %.pre93.i.i, %.critedge22.loopexit.i.i ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i.i ]
  %i.zn = phi <2 x i32> [ %i.zk, %.critedge22.loopexit.i.i ], [ zeroinitializer, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i.i ]
  %i.zo = getelementptr inbounds nuw i8, ptr %95, i64 24
  store i8 1, ptr %i.zo, align 8, !tbaa !240, !alias.scope !237
  store ptr %i.zm, ptr %95, align 8, !tbaa !257, !alias.scope !237
  store ptr null, ptr %89, align 8, !tbaa !257, !noalias !237
  %i.zp = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.zq = getelementptr inbounds nuw i8, ptr %89, i64 8
  store i32 0, ptr %i.zq, align 8, !tbaa !3, !noalias !237
  %i.zr = getelementptr inbounds nuw i8, ptr %89, i64 12
  store <2 x i32> %i.zn, ptr %i.zp, align 8, !tbaa !3, !alias.scope !237
  store i32 0, ptr %i.zr, align 4, !tbaa !3, !noalias !237
  %i.zs = getelementptr inbounds nuw i8, ptr %95, i64 16
  %i.zt = getelementptr inbounds nuw i8, ptr %89, i64 16
  store i32 %i.zl, ptr %i.zs, align 8, !tbaa !3, !alias.scope !237
  store i32 0, ptr %i.zt, align 8, !tbaa !3, !noalias !237
  br label %bb.fg

bb.fg:                                            ; preds = %.critedge22.i.i, %_ZN4llvh11raw_ostreamlsEc.exit59.i.i, %_ZN4llvh11raw_ostreamlsEc.exit53.i.i, %_ZN4llvh11raw_ostreamlsEc.exit44.i.i, %_ZN4llvh11raw_ostreamlsEc.exit.i.i
  %i.zu = load ptr, ptr %90, align 8, !tbaa !264, !noalias !237
  call void @_ZdlPv(ptr noundef %i.zu) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #26, !noalias !237
  %i.zv = load ptr, ptr %89, align 8, !tbaa !266, !noalias !237
  call void @_ZdlPv(ptr noundef %i.zv) #26, !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #26, !noalias !237
  br label %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i

_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i: ; preds = %bb.fg, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %96, i8 0, i64 20, i1 false)
  %i.zw = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 2 uses
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !232
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !58 ; 2 uses
  %.not301354.i = icmp eq i64 %i.zy, 0
  br i1 %.not301354.i, label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i, label %.lr.ph357.i

.lr.ph357.i:                                      ; preds = %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i
  %i.zz = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %97, i64 8 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.aac = getelementptr inbounds nuw i8, ptr %99, i64 17
  %i.aad = getelementptr inbounds nuw i8, ptr %101, i64 16
  %i.aae = getelementptr inbounds nuw i8, ptr %101, i64 17
  %i.aaf = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.aag = getelementptr inbounds nuw i8, ptr %95, i64 24
  %i.aah = getelementptr inbounds nuw i8, ptr %95, i64 16
  br label %bb.fh

bb.fh:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i, %.lr.ph357.i
  %.sroa.17.3 = phi ptr [ null, %.lr.ph357.i ], [ %.sroa.17.5, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 11 uses
  %.sroa.10.2 = phi ptr [ null, %.lr.ph357.i ], [ %.sroa.10.4, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 11 uses
  %.sroa.0237.3 = phi ptr [ null, %.lr.ph357.i ], [ %.sroa.0237.5, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 13 uses
  %.0356.i = phi i32 [ 0, %.lr.ph357.i ], [ %.1.lcssa.i, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 2 uses
  %.sroa.5189.0355.i = phi i64 [ 0, %.lr.ph357.i ], [ %i.ajw, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 3 uses
  %i.aai = load ptr, ptr %i.zw, align 8, !tbaa !232
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %.sroa.5189.0355.i
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %.sroa.5189.0355.i
  %i.aam = load ptr, ptr %i.aak, align 8, !tbaa !244 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !246 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #26
  %.sroa.0.0.copyload.i106.i = load ptr, ptr %i.aao, align 8, !tbaa !57
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %.sroa.2.0.copyload.i107.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !58
  %i.aap = call noundef zeroext i1 @_ZN4llvh20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %.sroa.0.0.copyload.i106.i, i64 %.sroa.2.0.copyload.i107.i, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.o) #26
  br i1 %i.aap, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aaq = load i64, ptr %i.o, align 8, !tbaa !268 ; 2 uses
  %.not.i108.i = icmp ult i64 %i.aaq, 4294967296
  br i1 %.not.i108.i, label %bb.fr, label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  %i.aas = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 16
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !173
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aas, i64 24 ; 3 uses
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !176 ; 2 uses
  %i.aax = ptrtoint ptr %i.aau to i64
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  %i.aba = icmp ult i64 %i.aaz, 54
  br i1 %i.aba, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.abb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aas, ptr noundef nonnull @.str.297, i64 noundef 54) #26 ; 2 uses
  %.phi.trans.insert404.i = getelementptr inbounds nuw i8, ptr %i.abb, i64 24
  %.pre405.i = load ptr, ptr %.phi.trans.insert404.i, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit113.i

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.aaw, ptr noundef nonnull align 1 dereferenceable(54) @.str.297, i64 54, i1 false)
  %i.abc = load ptr, ptr %i.aav, align 8, !tbaa !176
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 54 ; 2 uses
  store ptr %i.abd, ptr %i.aav, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit113.i

_ZN4llvh11raw_ostreamlsEPKc.exit113.i:            ; preds = %bb.fl, %bb.fk
  %i.abe = phi ptr [ %.pre405.i, %bb.fk ], [ %i.abd, %bb.fl ] ; 3 uses
  %.0.i.i112.i = phi ptr [ %i.abb, %bb.fk ], [ %i.aas, %bb.fl ] ; 5 uses
  %i.abf = load ptr, ptr %i.aar, align 8, !tbaa !246 ; 2 uses
  %.sroa.028.0.copyload.i = load ptr, ptr %i.abf, align 8, !tbaa !57 ; 2 uses
  %.sroa.229.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %.sroa.229.0.copyload.i = load i64, ptr %.sroa.229.0..sroa_idx.i, align 8, !tbaa !58 ; 5 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.0.i.i112.i, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !173
  %i.abi = getelementptr inbounds nuw i8, ptr %.0.i.i112.i, i64 24 ; 2 uses
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = ptrtoint ptr %i.abe to i64
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = icmp ugt i64 %.sroa.229.0.copyload.i, %i.abl
  br i1 %i.abm, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit113.i
  %i.abn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i112.i, ptr noundef %.sroa.028.0.copyload.i, i64 noundef %.sroa.229.0.copyload.i) #26 ; 2 uses
  %.phi.trans.insert406.i = getelementptr inbounds nuw i8, ptr %i.abn, i64 24
  %.pre407.i = load ptr, ptr %.phi.trans.insert406.i, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i

bb.fn:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit113.i
  %.not.i114.i = icmp eq i64 %.sroa.229.0.copyload.i, 0
  br i1 %.not.i114.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abe, ptr align 1 %.sroa.028.0.copyload.i, i64 %.sroa.229.0.copyload.i, i1 false)
  %i.abo = load ptr, ptr %i.abi, align 8, !tbaa !176
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %.sroa.229.0.copyload.i ; 2 uses
  store ptr %i.abp, ptr %i.abi, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.fo, %bb.fn, %bb.fm
  %i.abq = phi ptr [ %.pre407.i, %bb.fm ], [ %i.abp, %bb.fo ], [ %i.abe, %bb.fn ] ; 3 uses
  %.0.i115.i = phi ptr [ %i.abn, %bb.fm ], [ %.0.i.i112.i, %bb.fo ], [ %.0.i.i112.i, %bb.fn ] ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %.0.i115.i, i64 16
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !173
  %.not.i116.i = icmp ult ptr %i.abq, %i.abs
  br i1 %.not.i116.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i
  %i.abt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i115.i, i8 noundef zeroext 10) #26 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i

bb.fq:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i
  %i.abu = getelementptr inbounds nuw i8, ptr %.0.i115.i, i64 24
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abq, i64 1
  store ptr %i.abv, ptr %i.abu, align 8, !tbaa !176
  store i8 10, ptr %i.abq, align 1, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i

bb.fr:                                            ; preds = %bb.fi
  %i.abw = trunc nuw i64 %i.aaq to i32            ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #26
  %i.abx = load ptr, ptr %i.aal, align 8, !tbaa !235 ; 5 uses
  %.not.i118.i = icmp eq ptr %i.abx, null
  br i1 %.not.i118.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !229
  %i.abz = icmp eq i32 %i.aby, 1
  br i1 %i.abz, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.aca = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !173
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aca, i64 24 ; 3 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !176 ; 2 uses
  %i.acf = ptrtoint ptr %i.acc to i64
  %i.acg = ptrtoint ptr %i.ace to i64
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = icmp ult i64 %i.ach, 46
  br i1 %i.aci, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.acj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aca, ptr noundef nonnull @.str.298, i64 noundef 46) #26 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.ace, ptr noundef nonnull align 1 dereferenceable(46) @.str.298, i64 46, i1 false)
  %i.ack = load ptr, ptr %i.acd, align 8, !tbaa !176
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 46
  store ptr %i.acl, ptr %i.acd, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i: ; preds = %bb.fs
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abx, i64 16 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !270 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.aco, 3
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 %.idx.i
  %.not91344.i = icmp eq i64 %i.aco, 0
  br i1 %.not91344.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i, %bb.gr
  %.072349.i = phi ptr [ %i.agp, %bb.gr ], [ %i.acm, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ] ; 2 uses
  %.1348.i = phi i32 [ %.4.i31, %bb.gr ], [ %.0356.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ] ; 6 uses
  %.sroa.0178.0347.i = phi ptr [ %.sroa.0178.1.i, %bb.gr ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ] ; 11 uses
  %.sroa.10.0346.i = phi ptr [ %.sroa.10.1.i, %bb.gr ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ] ; 13 uses
  %.sroa.15.0345.i = phi ptr [ %.sroa.15.1.i, %bb.gr ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ] ; 7 uses
  %i.acq = load ptr, ptr %.072349.i, align 8, !tbaa !235 ; 3 uses
  %.not.i124.i = icmp eq ptr %i.acq, null
  br i1 %.not.i124.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !229
  %i.acs = icmp eq i32 %i.acr, 2
  br i1 %i.acs, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.lr.ph.i
  %i.act = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !173
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 24 ; 3 uses
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !176 ; 2 uses
  %i.acy = ptrtoint ptr %i.acv to i64
  %i.acz = ptrtoint ptr %i.acx to i64
  %i.ada = sub i64 %i.acy, %i.acz
  %i.adb = icmp ult i64 %i.ada, 30
  br i1 %i.adb, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.adc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.act, ptr noundef nonnull @.str.299, i64 noundef 30) #26 ; 0 uses
  br label %.critedge94.i

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.acx, ptr noundef nonnull align 1 dereferenceable(30) @.str.299, i64 30, i1 false)
  %i.add = load ptr, ptr %i.acw, align 8, !tbaa !176
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 30
  store ptr %i.ade, ptr %i.acw, align 8, !tbaa !176
  br label %.critedge94.i

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i: ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #26
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !246 ; 2 uses
  %.sroa.015.0.copyload.i = load ptr, ptr %i.adg, align 8, !tbaa !57
  %.sroa.216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %.sroa.216.0.copyload.i = load i64, ptr %.sroa.216.0..sroa_idx.i, align 8, !tbaa !58
  %i.adh = call { ptr, i64 } @_ZN4llvh3sys4path23remove_leading_dotslashENS_9StringRefENS1_5StyleE(ptr %.sroa.015.0.copyload.i, i64 %.sroa.216.0.copyload.i, i32 noundef 2) #26 ; 2 uses
  %i.adi = extractvalue { ptr, i64 } %i.adh, 0
  store ptr %i.adi, ptr %97, align 8
  %i.adj = extractvalue { ptr, i64 } %i.adh, 1
  store i64 %i.adj, ptr %i.aaa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #26
  store i8 5, ptr %i.aab, align 8, !tbaa !105
  store i8 1, ptr %i.aac, align 1, !tbaa !102
  store ptr %97, ptr %99, align 8, !tbaa !23
  call fastcc void @_ZN12_GLOBAL__N_125getFileFromDirectoryOrZipEP5zip_tN4llvh9StringRefENS2_5TwineEb(ptr dead_on_unwind noalias writable align 8 %98, ptr noundef %i.rg, ptr %i.rs, i64 %i.ru, ptr noundef nonnull byval(%"class.llvh::Twine") align 8 %99, i1 noundef zeroext false)
  %i.adk = load ptr, ptr %98, align 8             ; 2 uses
  %.not302.i = icmp eq ptr %i.adk, null
  %i.adl = ptrtoint ptr %i.adk to i64             ; 2 uses
  br i1 %.not302.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit129.thread232.i, label %bb.ga

_ZN4llvh11raw_ostreamlsEPKc.exit129.thread232.i:  ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  br label %.critedge94.i

bb.ga:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #26
  store i8 5, ptr %i.aad, align 8, !tbaa !105
  store i8 3, ptr %i.aae, align 1, !tbaa !102
  store ptr %97, ptr %101, align 8, !tbaa !23
  store ptr @.str.300, ptr %i.aaf, align 8, !tbaa !23
  call fastcc void @_ZN12_GLOBAL__N_125getFileFromDirectoryOrZipEP5zip_tN4llvh9StringRefENS2_5TwineEb(ptr dead_on_unwind noalias writable align 8 %100, ptr noundef %i.rg, ptr %i.rs, i64 %i.ru, ptr noundef nonnull byval(%"class.llvh::Twine") align 8 %101, i1 noundef zeroext true)
  %i.adm = load i8, ptr %i.aag, align 8, !tbaa !272, !range !179, !noundef !61
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %bb.gb, label %bb.gk

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #26
  %i.ado = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %95, ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.adp = load ptr, ptr %i.n, align 8, !tbaa !257 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #26
  %i.adq = load ptr, ptr %95, align 8, !tbaa !266
  %i.adr = load i32, ptr %i.aah, align 8, !tbaa !274
  %i.ads = zext i32 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [24 x i8], ptr %i.adq, i64 %i.ads
  %i.adu = icmp ne ptr %i.adp, %i.adt
  %.not304.i = select i1 %i.ado, i1 %i.adu, i1 false
  br i1 %.not304.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit140.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.adv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 4 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !173
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 24 ; 3 uses
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !176 ; 2 uses
  %i.aea = ptrtoint ptr %i.adx to i64
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  %i.aed = icmp ult i64 %i.aec, 40
  br i1 %i.aed, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.aee = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.adv, ptr noundef nonnull @.str.301, i64 noundef 40) #26 ; 2 uses
  %.phi.trans.insert.i33 = getelementptr inbounds nuw i8, ptr %i.aee, i64 24
  %.pre.i34 = load ptr, ptr %.phi.trans.insert.i33, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit133.i

bb.ge:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.adz, ptr noundef nonnull align 1 dereferenceable(40) @.str.301, i64 40, i1 false)
  %i.aef = load ptr, ptr %i.ady, align 8, !tbaa !176
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 40 ; 2 uses
  store ptr %i.aeg, ptr %i.ady, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit133.i

_ZN4llvh11raw_ostreamlsEPKc.exit133.i:            ; preds = %bb.ge, %bb.gd
  %i.aeh = phi ptr [ %.pre.i34, %bb.gd ], [ %i.aeg, %bb.ge ] ; 3 uses
  %.0.i.i132.i = phi ptr [ %i.aee, %bb.gd ], [ %i.adv, %bb.ge ] ; 5 uses
  %.sroa.09.0.copyload.i = load ptr, ptr %97, align 8, !tbaa !57 ; 2 uses
  %.sroa.210.0.copyload.i = load i64, ptr %i.aaa, align 8, !tbaa !58 ; 5 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %.0.i.i132.i, i64 16
  %i.aej = load ptr, ptr %i.aei, align 8, !tbaa !173
  %i.aek = getelementptr inbounds nuw i8, ptr %.0.i.i132.i, i64 24 ; 2 uses
  %i.ael = ptrtoint ptr %i.aej to i64
  %i.aem = ptrtoint ptr %i.aeh to i64
  %i.aen = sub i64 %i.ael, %i.aem
  %i.aeo = icmp ugt i64 %.sroa.210.0.copyload.i, %i.aen
  br i1 %i.aeo, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit133.i
  %i.aep = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i132.i, ptr noundef %.sroa.09.0.copyload.i, i64 noundef %.sroa.210.0.copyload.i) #26 ; 2 uses
  %.phi.trans.insert402.i = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %.pre403.i = load ptr, ptr %.phi.trans.insert402.i, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit136.i

bb.gg:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit133.i
  %.not.i134.i = icmp eq i64 %.sroa.210.0.copyload.i, 0
  br i1 %.not.i134.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit136.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aeh, ptr align 1 %.sroa.09.0.copyload.i, i64 %.sroa.210.0.copyload.i, i1 false)
  %i.aeq = load ptr, ptr %i.aek, align 8, !tbaa !176
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 %.sroa.210.0.copyload.i ; 2 uses
  store ptr %i.aer, ptr %i.aek, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit136.i

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit136.i: ; preds = %bb.gh, %bb.gg, %bb.gf
  %i.aes = phi ptr [ %.pre403.i, %bb.gf ], [ %i.aer, %bb.gh ], [ %i.aeh, %bb.gg ] ; 2 uses
  %.0.i135.i = phi ptr [ %i.aep, %bb.gf ], [ %.0.i.i132.i, %bb.gh ], [ %.0.i.i132.i, %bb.gg ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.0.i135.i, i64 16
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !173
  %i.aev = icmp eq ptr %i.aeu, %i.aes
  br i1 %i.aev, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit136.i
  %i.aew = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i135.i, ptr noundef nonnull @.str.266, i64 noundef 1) #26 ; 0 uses
  br label %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i

bb.gj:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit136.i
  %i.aex = getelementptr inbounds nuw i8, ptr %.0.i135.i, i64 24 ; 2 uses
  store i8 10, ptr %i.aes, align 1
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !176
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 1
  store ptr %i.aez, ptr %i.aex, align 8, !tbaa !176
  br label %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i

bb.gk:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26, !noalias !275
  %i.afa = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(8) %i.m), !noalias !275
  %i.afb = load ptr, ptr %i.m, align 8, !tbaa !257, !noalias !275 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26, !noalias !275
  br i1 %i.afa, label %_ZN4llvh11raw_ostreamlsEPKc.exit140.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.afc = call noundef ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E20InsertIntoBucketImplIS2_EEPS7_RKS2_RKT_SB_(ptr noundef nonnull align 1 dereferenceable(1) %96, ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef %i.afb), !noalias !275 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afc, ptr noundef nonnull align 8 dereferenceable(16) %97, i64 16, i1 false), !tbaa.struct !259, !noalias !275
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  store i32 %.1348.i, ptr %i.afd, align 4, !tbaa !3, !noalias !275
  %i.afe = add i32 %.1348.i, 1
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit140.i

_ZN4llvh11raw_ostreamlsEPKc.exit140.i:            ; preds = %bb.gl, %bb.gk, %bb.gb
  %.3.i30 = phi i32 [ %.1348.i, %bb.gb ], [ %i.afe, %bb.gl ], [ %.1348.i, %bb.gk ] ; 2 uses
  %.pn.i = phi ptr [ %i.adp, %bb.gb ], [ %i.afc, %bb.gl ], [ %i.afb, %bb.gk ]
  %.376.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.376.i = load i32, ptr %.376.in.i, align 8, !tbaa !278 ; 2 uses
  store ptr null, ptr %98, align 8, !tbaa !227
  %i.aff = load i64, ptr %100, align 8, !tbaa !227 ; 2 uses
  store ptr null, ptr %100, align 8, !tbaa !227
  %.not.i.i141.i = icmp eq ptr %.sroa.10.0346.i, %.sroa.15.0345.i
  br i1 %.not.i.i141.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit140.i
  store i32 %.376.i, ptr %.sroa.10.0346.i, align 8, !tbaa !280
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.10.0346.i, i64 8
  store i64 %i.adl, ptr %i.afg, align 8, !tbaa !227
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.10.0346.i, i64 16
  store i64 %i.aff, ptr %i.afh, align 8, !tbaa !227
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.10.0346.i, i64 24
  br label %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i

bb.gn:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit140.i
  %i.afj = ptrtoint ptr %.sroa.10.0346.i to i64
  %i.afk = ptrtoint ptr %.sroa.0178.0347.i to i64
  %i.afl = sub i64 %i.afj, %i.afk                 ; 4 uses
  %i.afm = icmp eq i64 %i.afl, 9223372036854775800
  br i1 %i.afm, label %bb.go, label %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.gn
  %i.afn = sdiv exact i64 %i.afl, 24              ; 3 uses
  %i.afo = icmp eq ptr %.sroa.10.0346.i, %.sroa.0178.0347.i ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.afo, i64 1, i64 %i.afn
  %i.afp = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.afn ; 2 uses
  %i.afq = icmp ult i64 %i.afp, %i.afn
  %i.afr = call i64 @llvm.umin.i64(i64 %i.afp, i64 384307168202282325)
  %i.afs = select i1 %i.afq, i64 384307168202282325, i64 %i.afr ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.afs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aft = mul nuw nsw i64 %i.afs, 24
  %i.afu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aft) #28 ; 5 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 %i.afl ; 3 uses
  store i32 %.376.i, ptr %i.afv, align 8, !tbaa !280
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store i64 %i.adl, ptr %i.afw, align 8, !tbaa !227
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  store i64 %i.aff, ptr %i.afx, align 8, !tbaa !227
  br i1 %i.afo, label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.age, %.lr.ph.i.i.i.i.i.i.i ], [ %i.afu, %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.agd, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0178.0347.i, %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.afy = load i32, ptr %.092.i.i.i.i.i.i.i, align 8, !tbaa !280, !alias.scope !291, !noalias !288
  store i32 %i.afy, ptr %.03.i.i.i.i.i.i.i, align 8, !tbaa !280, !alias.scope !288, !noalias !291
  %i.afz = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 8
  %i.aga = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 16
  %i.agc = load <2 x i64>, ptr %i.aga, align 8, !tbaa !227, !alias.scope !291, !noalias !288
  store ptr null, ptr %i.aga, align 8, !tbaa !227, !alias.scope !291, !noalias !288
  store <2 x i64> %i.agc, ptr %i.afz, align 8, !tbaa !227, !alias.scope !288, !noalias !291
  store ptr null, ptr %i.agb, align 8, !tbaa !227, !alias.scope !291, !noalias !288
  %i.agd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.agd, %.sroa.10.0346.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !293

_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.afu, %_ZNKSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.age, %.lr.ph.i.i.i.i.i.i.i ]
  %i.agf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 24
  %.not.i27.i.i.i.i = icmp eq ptr %.sroa.0178.0347.i, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.0347.i, i64 noundef %i.afl) #25
  br label %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.gp, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i
  %i.agg = getelementptr inbounds nuw [24 x i8], ptr %i.afu, i64 %i.afs
  br label %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i

_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i:    ; preds = %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.gm, %bb.gj, %bb.gi
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0345.i, %bb.gm ], [ %i.agg, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.15.0345.i, %bb.gj ], [ %.sroa.15.0345.i, %bb.gi ] ; 4 uses
  %.sroa.10.1.i = phi ptr [ %i.afi, %bb.gm ], [ %i.agf, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.10.0346.i, %bb.gj ], [ %.sroa.10.0346.i, %bb.gi ] ; 4 uses
  %.sroa.0178.1.i = phi ptr [ %.sroa.0178.0347.i, %bb.gm ], [ %i.afu, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.0178.0347.i, %bb.gj ], [ %.sroa.0178.0347.i, %bb.gi ] ; 4 uses
  %.4.i31 = phi i32 [ %.3.i30, %bb.gm ], [ %.3.i30, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.1348.i, %bb.gj ], [ %.1348.i, %bb.gi ] ; 2 uses
  %i.agh = phi i1 [ true, %bb.gm ], [ true, %_ZNSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ false, %bb.gj ], [ false, %bb.gi ] ; 2 uses
  %i.agi = load ptr, ptr %100, align 8, !tbaa !227 ; 3 uses
  %.not.i143.i = icmp eq ptr %i.agi, null
  br i1 %.not.i143.i, label %bb.gq, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !7
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8
  call void %i.agl(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.agi) #26, !inline_history !294
  br label %bb.gq

bb.gq:                                            ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i, %_ZN12_GLOBAL__N_115ModuleInSegmentD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #26
  %.pr.i32 = load ptr, ptr %98, align 8, !tbaa !227 ; 3 uses
  %.not.i144.i = icmp eq ptr %.pr.i32, null
  br i1 %.not.i144.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit129.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i: ; preds = %bb.gq
  %i.agm = load ptr, ptr %.pr.i32, align 8, !tbaa !7
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8
  call void %i.ago(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.pr.i32) #26, !inline_history !294
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  br i1 %i.agh, label %bb.gr, label %.critedge94.i

_ZN4llvh11raw_ostreamlsEPKc.exit129.i:            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #26
  br i1 %i.agh, label %bb.gr, label %.critedge94.i

bb.gr:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit129.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i
  %i.agp = getelementptr inbounds nuw i8, ptr %.072349.i, i64 8 ; 2 uses
  %.not91.i = icmp eq ptr %i.agp, %i.acp
  br i1 %.not91.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.gr, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i
  %.sroa.15.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.15.1.i, %bb.gr ] ; 2 uses
  %.sroa.10.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.10.1.i, %bb.gr ] ; 5 uses
  %.sroa.0178.0.lcssa.i = phi ptr [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.sroa.0178.1.i, %bb.gr ] ; 9 uses
  %.1.lcssa.i = phi i32 [ %.0356.i, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i ], [ %.4.i31, %bb.gr ]
  %.val.i.i.i147.i = load ptr, ptr %i.qo, align 8, !tbaa !295 ; 2 uses
  %.not2.i.i.i.i.i = icmp eq ptr %.val.i.i.i147.i, null
  br i1 %.not2.i.i.i.i.i, label %.critedge.i151.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i
  %.04.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val.i.i.i147.i, %._crit_edge.i ] ; 4 uses
  %.083.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.qn, %._crit_edge.i ] ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 32
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !3
  %i.ags = icmp ult i32 %i.agr, %i.abw            ; 3 uses
  %.19.i.i.i.i.i = select i1 %i.ags, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ags, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !296 ; 2 uses
  %.not.i.i.i.i148.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i148.i, label %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !297

_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.agt = icmp eq ptr %.19.i.i.i.i.i, %i.qn
  br i1 %i.agt, label %.critedge.i151.i, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i
  %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ags, ptr %.083.i.i.i.i.i, ptr %.04.i.i.i.i.i
  %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.agu = load i32, ptr %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !3
  %i.agv = icmp ugt i32 %i.agu, %i.abw
  br i1 %i.agv, label %.critedge.i151.i, label %bb.gx

.critedge.i151.i:                                 ; preds = %bb.gs, %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i28.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.gs ], [ %.19.i.i.i.i.i, %_ZNSt3mapIjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS2_EESt4lessIjESaISt4pairIKjS4_EEE11lower_boundERS8_.exit.i.i ], [ %i.qn, %._crit_edge.i ]
  %i.agw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 6 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 32
  store i32 %i.abw, ptr %i.agx, align 8, !tbaa !298
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agw, i64 40 ; 2 uses
  store ptr %.sroa.0178.0.lcssa.i, ptr %i.agy, align 8, !tbaa !305
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agw, i64 48
  store ptr %.sroa.10.0.lcssa.i, ptr %i.agz, align 8, !tbaa !306
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 56 ; 2 uses
  store ptr %.sroa.15.0.lcssa.i, ptr %i.aha, align 8, !tbaa !307
  %i.ahb = call fastcc { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %103, ptr %.08.lcssa.i.i.i28.i.i, i32 %i.abw) ; 2 uses
  %i.ahc = extractvalue { ptr, ptr } %i.ahb, 1    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ahc, null
  br i1 %.not.i.i.i.i, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %.critedge.i151.i
  %i.ahd = extractvalue { ptr, ptr } %i.ahb, 0
  %.not.i.i.i.i.i.i = icmp ne ptr %i.ahd, null
  %i.ahe = icmp eq ptr %i.ahc, %i.qn
  %or.cond.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.ahe
  br i1 %or.cond.i.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 32
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !3
  %i.ahh = icmp ugt i32 %i.ahg, %i.abw
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.gu, %bb.gt
  %i.ahi = phi i1 [ %i.ahh, %bb.gu ], [ true, %bb.gt ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahi, ptr noundef nonnull %i.agw, ptr noundef nonnull %i.ahc, ptr noundef nonnull align 8 dereferenceable(32) %i.qn) #26
  %i.ahj = load i64, ptr %i.qr, align 8, !tbaa !203
  %i.ahk = add i64 %i.ahj, 1
  store i64 %i.ahk, ptr %i.qr, align 8, !tbaa !203
  br label %bb.hc

bb.gv:                                            ; preds = %.critedge.i151.i
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0178.0.lcssa.i, %.sroa.10.0.lcssa.i
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.gv, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ahv, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0178.0.lcssa.i, %bb.gv ] ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !7
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahp = load ptr, ptr %i.aho, align 8
  call void %i.ahp(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ahm) #26, !inline_history !308
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ahq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !227 ; 3 uses
  %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahr, null
  br i1 %.not.i1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !7
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  %i.ahu = load ptr, ptr %i.aht, align 8
  call void %i.ahu(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ahr) #26, !inline_history !308
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ahv, %.sroa.10.0.lcssa.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !309

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i.i.i.i.i.i.i.i
  %.val.pr.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.agy, align 8, !tbaa !305
  br label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i, %bb.gv
  %.val.i.i.i.i.i.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i.i.i.i ], [ %.sroa.0178.0.lcssa.i, %bb.gv ] ; 3 uses
  %.not.i.i2.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aha, align 8, !tbaa !307
  %i.ahw = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i to i64
  %i.ahx = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.ahy = sub i64 %i.ahw, %i.ahx
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.ahy) #25
  br label %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i

_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i: ; preds = %bb.gw, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.agw, i64 noundef 64) #25
  br label %bb.hc

bb.gx:                                            ; preds = %bb.gs
  %i.ahz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 4 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !173
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24 ; 3 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !176 ; 2 uses
  %i.aie = ptrtoint ptr %i.aib to i64
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = sub i64 %i.aie, %i.aif
  %i.aih = icmp ult i64 %i.aig, 37
  br i1 %i.aih, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.aii = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ahz, ptr noundef nonnull @.str.302, i64 noundef 37) #26
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit155.i

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.aid, ptr noundef nonnull align 1 dereferenceable(37) @.str.302, i64 37, i1 false)
  %i.aij = load ptr, ptr %i.aic, align 8, !tbaa !176
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 37
  store ptr %i.aik, ptr %i.aic, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit155.i

_ZN4llvh11raw_ostreamlsEPKc.exit155.i:            ; preds = %bb.gz, %bb.gy
  %.0.i.i154.i = phi ptr [ %i.aii, %bb.gy ], [ %i.ahz, %bb.gz ]
  %i.ail = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i154.i, ptr noundef nonnull %i.abx) #26 ; 3 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !173
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ail, i64 24 ; 3 uses
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !176 ; 2 uses
  %i.aiq = icmp eq ptr %i.ain, %i.aip
  br i1 %i.aiq, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit155.i
  %i.air = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ail, ptr noundef nonnull @.str.266, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit159.i

bb.hb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit155.i
  store i8 10, ptr %i.aip, align 1
  %i.ais = load ptr, ptr %i.aio, align 8, !tbaa !176
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 1
  store ptr %i.ait, ptr %i.aio, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit159.i

bb.hc:                                            ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN12_GLOBAL__N_115ModuleInSegmentESaIS4_EEESt10_Select1stIS7_ESt4lessIjESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i.i.i.i, %.thread.i.i.i.i
  %.not.i160.i = icmp eq ptr %.sroa.10.2, %.sroa.17.3
  br i1 %.not.i160.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  store i32 %i.abw, ptr %.sroa.10.2, align 4, !tbaa !3
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i

bb.he:                                            ; preds = %bb.hc
  %i.aiu = ptrtoint ptr %.sroa.17.3 to i64
  %i.aiv = ptrtoint ptr %.sroa.0237.3 to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv                 ; 6 uses
  %i.aix = icmp eq i64 %i.aiw, 9223372036854775804
  br i1 %i.aix, label %bb.hf, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.hf:                                            ; preds = %bb.he
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.256) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.he
  %i.aiy = ashr exact i64 %i.aiw, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aiy, i64 1)
  %i.aiz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aiy ; 2 uses
  %i.aja = icmp ult i64 %i.aiz, %i.aiy
  %i.ajb = call i64 @llvm.umin.i64(i64 %i.aiz, i64 2305843009213693951)
  %i.ajc = select i1 %i.aja, i64 2305843009213693951, i64 %i.ajb ; 3 uses
  %.not.i.i.i161.i = icmp ne i64 %i.ajc, 0
  call void @llvm.assume(i1 %.not.i.i.i161.i)
  %i.ajd = shl nuw nsw i64 %i.ajc, 2
  %i.aje = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajd) #28 ; 4 uses
  %i.ajf = getelementptr inbounds i8, ptr %i.aje, i64 %i.aiw ; 2 uses
  store i32 %i.abw, ptr %i.ajf, align 4, !tbaa !3
  %i.ajg = icmp sgt i64 %i.aiw, 0
  br i1 %i.ajg, label %bb.hg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.hg:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aje, ptr align 4 %.sroa.0237.3, i64 %i.aiw, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.hg, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0237.3, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.hh

bb.hh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.3, i64 noundef %i.aiw) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.hh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.ajc
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i

_ZN4llvh11raw_ostreamlsEPKc.exit159.i:            ; preds = %bb.hb, %bb.ha
  %.not4.i.i.i.i = icmp eq ptr %.sroa.0178.0.lcssa.i, %.sroa.10.0.lcssa.i
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit159.i, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ajs, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i ], [ %.sroa.0178.0.lcssa.i, %_ZN4llvh11raw_ostreamlsEPKc.exit159.i ] ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i.i.i162.i = icmp eq ptr %i.ajj, null
  br i1 %.not.i.i.i.i.i.i162.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !7
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8
  call void %i.ajm(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ajj) #26, !inline_history !310
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ajn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !227 ; 3 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.ajo, null
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !7
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %i.ajr = load ptr, ptr %i.ajq, align 8
  call void %i.ajr(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ajo) #26, !inline_history !310
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i163.i = icmp eq ptr %i.ajs, %.sroa.10.0.lcssa.i
  br i1 %.not.i.i.i163.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !309

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit159.i
  %.not.i.i2.i.i = icmp eq ptr %.sroa.0178.0.lcssa.i, null
  br i1 %.not.i.i2.i.i, label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i, label %bb.hi

bb.hi:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i
  %i.ajt = ptrtoint ptr %.sroa.15.0.lcssa.i to i64
  %i.aju = ptrtoint ptr %.sroa.0178.0.lcssa.i to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0178.0.lcssa.i, i64 noundef %i.ajv) #25
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i

_ZN4llvh11raw_ostreamlsEc.exit.thread287.i:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.hd
  %.sroa.17.5 = phi ptr [ %i.ajh, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.17.3, %bb.hd ] ; 2 uses
  %.pn = phi ptr [ %i.ajf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.10.2, %bb.hd ]
  %.sroa.0237.5 = phi ptr [ %i.aje, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0237.3, %bb.hd ] ; 2 uses
  %.sroa.10.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ajw = add nuw i64 %.sroa.5189.0355.i, 1      ; 2 uses
  %.not301.i = icmp eq i64 %i.ajw, %i.zy
  br i1 %.not301.i, label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i, label %bb.fh

.critedge94.i:                                    ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit129.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.thread232.i, %bb.fz, %bb.fy
  %.sroa.19.4.ph.i = phi ptr [ %.sroa.15.0345.i, %bb.fy ], [ %.sroa.15.0345.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.thread232.i ], [ %.sroa.15.0345.i, %bb.fz ], [ %.sroa.15.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i ], [ %.sroa.15.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.i ]
  %.sroa.13.4.ph.i = phi ptr [ %.sroa.10.0346.i, %bb.fy ], [ %.sroa.10.0346.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.thread232.i ], [ %.sroa.10.0346.i, %bb.fz ], [ %.sroa.10.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i ], [ %.sroa.10.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.i ] ; 2 uses
  %.sroa.0197.4.ph.i = phi ptr [ %.sroa.0178.0347.i, %bb.fy ], [ %.sroa.0178.0347.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.thread232.i ], [ %.sroa.0178.0347.i, %bb.fz ], [ %.sroa.0178.1.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i145.i ], [ %.sroa.0178.1.i, %_ZN4llvh11raw_ostreamlsEPKc.exit129.i ] ; 5 uses
  %.not4.i.i.i166.i = icmp eq ptr %.sroa.0197.4.ph.i, %.sroa.13.4.ph.i
  br i1 %.not4.i.i.i166.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, label %.lr.ph.i.i.i167.i

.lr.ph.i.i.i167.i:                                ; preds = %.critedge94.i, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i
  %.05.i.i.i168.i = phi ptr [ %124, %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i ], [ %.sroa.0197.4.ph.i, %.critedge94.i ] ; 3 uses
  %114 = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 16
  %115 = load ptr, ptr %114, align 8, !tbaa !227  ; 3 uses
  %.not.i.i.i.i.i.i169.i = icmp eq ptr %115, null
  br i1 %.not.i.i.i.i.i.i169.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i: ; preds = %.lr.ph.i.i.i167.i
  %116 = load ptr, ptr %115, align 8, !tbaa !7
  %117 = getelementptr inbounds nuw i8, ptr %116, i64 8
  %118 = load ptr, ptr %117, align 8
  call void %118(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %115) #26, !inline_history !310
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i.i170.i, %.lr.ph.i.i.i167.i
  %119 = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 8
  %120 = load ptr, ptr %119, align 8, !tbaa !227  ; 3 uses
  %.not.i1.i.i.i.i.i172.i = icmp eq ptr %120, null
  br i1 %.not.i1.i.i.i.i.i172.i, label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i: ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i
  %121 = load ptr, ptr %120, align 8, !tbaa !7
  %122 = getelementptr inbounds nuw i8, ptr %121, i64 8
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %120) #26, !inline_history !310
  br label %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i

_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i2.i.i.i.i.i173.i, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i171.i
  %124 = getelementptr inbounds nuw i8, ptr %.05.i.i.i168.i, i64 24 ; 2 uses
  %.not.i.i.i175.i = icmp eq ptr %124, %.sroa.13.4.ph.i
  br i1 %.not.i.i.i175.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, label %.lr.ph.i.i.i167.i, !llvm.loop !309

_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_115ModuleInSegmentEEvPT_.exit.i.i.i174.i, %.critedge94.i
  %.not.i.i2.i180.i = icmp eq ptr %.sroa.0197.4.ph.i, null
  br i1 %.not.i.i2.i180.i, label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i, label %125

125:                                              ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i
  %126 = ptrtoint ptr %.sroa.19.4.ph.i to i64
  %127 = ptrtoint ptr %.sroa.0197.4.ph.i to i64
  %128 = sub i64 %126, %127
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0197.4.ph.i, i64 noundef %128) #25
  br label %_ZN4llvh11raw_ostreamlsEc.exit.thread.i

_ZN4llvh11raw_ostreamlsEc.exit.thread.i:          ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i, %125, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i, %bb.hi, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i, %bb.fv, %bb.fu, %bb.fq, %bb.fp, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i
  %.sroa.17.4 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.17.3, %bb.fq ], [ %.sroa.17.3, %bb.fp ], [ %.sroa.17.3, %bb.fu ], [ %.sroa.17.3, %bb.fv ], [ %.sroa.17.3, %125 ], [ %.sroa.17.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.17.3, %bb.hi ], [ %.sroa.17.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.17.5, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 2 uses
  %.sroa.10.3 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.10.2, %bb.fq ], [ %.sroa.10.2, %bb.fp ], [ %.sroa.10.2, %bb.fu ], [ %.sroa.10.2, %bb.fv ], [ %.sroa.10.2, %125 ], [ %.sroa.10.2, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.10.2, %bb.hi ], [ %.sroa.10.2, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.10.4, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 2 uses
  %.sroa.0240.4 = phi ptr [ null, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ %.sroa.0237.3, %bb.fq ], [ %.sroa.0237.3, %bb.fp ], [ %.sroa.0237.3, %bb.fu ], [ %.sroa.0237.3, %bb.fv ], [ %.sroa.0237.3, %125 ], [ %.sroa.0237.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ %.sroa.0237.3, %bb.hi ], [ %.sroa.0237.3, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %.sroa.0237.5, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 2 uses
  %spec.select.i = phi ptr [ %i.sk, %_ZN12_GLOBAL__N_113readModuleIDsEPN6hermes6parser10JSONObjectE.exit.i ], [ null, %bb.fq ], [ null, %bb.fp ], [ null, %bb.fu ], [ null, %bb.fv ], [ null, %125 ], [ null, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i.i ], [ null, %bb.hi ], [ null, %_ZSt8_DestroyIPN12_GLOBAL__N_115ModuleInSegmentEEvT_S3_.exit.i178.i ], [ %i.sk, %_ZN4llvh11raw_ostreamlsEc.exit.thread287.i ] ; 2 uses
  %i.ajx = load ptr, ptr %96, align 8, !tbaa !266
  call void @_ZdlPv(ptr noundef %i.ajx) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #26
  %i.ajy = getelementptr inbounds nuw i8, ptr %95, i64 24
  %i.ajz = load i8, ptr %i.ajy, align 8, !tbaa !240, !range !179, !noundef !61
  %i.aka = trunc nuw i8 %i.ajz to i1
  br i1 %i.aka, label %bb.hj, label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.hj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit.thread.i
  %i.akb = load ptr, ptr %95, align 8, !tbaa !266
  call void @_ZdlPv(ptr noundef %i.akb) #26
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.hj, %_ZN4llvh11raw_ostreamlsEc.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #26
  %.pr293.pre.i = load ptr, ptr %93, align 8, !tbaa !227 ; 2 uses
  %.not.i164.i = icmp eq ptr %.pr293.pre.i, null
  br i1 %.not.i164.i, label %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %bb.ed, %bb.ec, %bb.dz, %bb.dy, %bb.dv
  %.sroa.17.2 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.17.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.sroa.10.1 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.10.3, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.sroa.0237.2 = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %.sroa.0240.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %.17296.i = phi ptr [ null, %bb.dv ], [ null, %bb.ec ], [ null, %bb.ed ], [ %spec.select.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ null, %bb.dy ], [ null, %bb.dz ]
  %i.akc = phi ptr [ %i.rx, %bb.dv ], [ %i.rx, %bb.ec ], [ %i.rx, %bb.ed ], [ %.pr293.pre.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ], [ %i.rx, %bb.dy ], [ %i.rx, %bb.dz ] ; 2 uses
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !7
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8
  call void %i.akf(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.akc) #26, !inline_history !294
  br label %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit

_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit: ; preds = %bb.dt, %bb.du, %_ZN4llvh11raw_ostreamlsEPKc.exit.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i
  %.sroa.17.6 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.17.2, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i ], [ %.sroa.17.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %.sroa.10.5 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.10.1, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i ], [ %.sroa.10.3, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  %.sroa.0237.6 = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.sroa.0237.2, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i ], [ %.sroa.0240.4, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 4 uses
  %.17297.i = phi ptr [ null, %bb.dt ], [ null, %bb.du ], [ %.17296.i, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i165.i ], [ %spec.select.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %94)
  call void @llvm.lifetime.end.p0(ptr nonnull %99)
  call void @llvm.lifetime.end.p0(ptr nonnull %101)
  br i1 %i.rp, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit
  call void @zip_close(ptr noundef nonnull %i.rg) #26
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %_ZN12_GLOBAL__N_136readInputFilenamesFromDirectoryOrZipEN4llvh9StringRefERSt3mapIjSt6vectorINS_15ModuleInSegmentESaIS4_EESt4lessIjESaISt4pairIKjS6_EEERS3_IjSaIjEERN6hermes28BacktrackingBumpPtrAllocatorEP5zip_t.exit
  %.not19.not = icmp eq ptr %.17297.i, null
  br i1 %.not19.not, label %_ZNSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EED2Ev.exit.thread, label %bb.hm

_ZNSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EED2Ev.exit.thread: ; preds = %bb.hl
  store i32 5, ptr %0, align 8, !tbaa !186
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.akg, i8 0, i64 64, i1 false)
  store ptr %i.aki, ptr %i.akh, align 8, !tbaa !178
  br label %_ZNSt12__shared_ptrIN6hermes7ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit187

bb.hm:                                            ; preds = %bb.hl
  %i.akj = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28, !noalias !311 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.akj, i8 0, i64 20, i1 false), !noalias !311
  %i.akk = getelementptr inbounds nuw i8, ptr %.17297.i, i64 8
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !232, !noalias !316
  %i.akm = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.akl, ptr nonnull @.str.311, i64 15), !noalias !316 ; 2 uses
  %i.akn = extractvalue { i64, i8 } %i.akm, 1
  %i.ako = trunc nuw i8 %i.akn to i1
  br i1 %i.ako, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i40, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i40: ; preds = %bb.hm
  %i.akp = extractvalue { i64, i8 } %i.akm, 0
  %i.akq = getelementptr inbounds nuw i8, ptr %.17297.i, i64 16
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akq, i64 %i.akp
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !235, !noalias !316 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.aks, null
  br i1 %.not.i.i41, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38, label %bb.hn

bb.hn:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.i40
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !229, !noalias !316
  %i.aku = icmp eq i32 %i.akt, 0
  br i1 %i.aku, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i42, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i42: ; preds = %bb.hn
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aks, i64 8 ; 2 uses
  %i.akw = load ptr, ptr %i.akv, align 8, !tbaa !232, !noalias !316
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !58, !noalias !316 ; 2 uses
  %.not163.i = icmp eq i64 %i.akx, 0
  br i1 %.not163.i, label %_ZNSt10unique_ptrIN4llvh8DenseMapINS0_9StringRefENS1_IS2_S2_NS0_12DenseMapInfoIS2_EENS0_6detail12DenseMapPairIS2_S2_EEEES4_NS6_IS2_S8_EEEESt14default_deleteISA_EED2Ev.exit, label %.lr.ph165.i

.lr.ph165.i:                                      ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.i42
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aks, i64 16
  %i.akz = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 5 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %88, i64 12
  %i.alc = getelementptr inbounds nuw i8, ptr %88, i64 16 ; 2 uses
  br label %bb.ho

bb.ho:                                            ; preds = %.critedge58.i, %.lr.ph165.i
  %.sroa.6135.0164.i = phi i64 [ 0, %.lr.ph165.i ], [ %i.asu, %.critedge58.i ] ; 3 uses
  %i.ald = load ptr, ptr %i.akv, align 8, !tbaa !232, !noalias !316
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 8
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.ale, i64 %.sroa.6135.0164.i
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.aky, i64 %.sroa.6135.0164.i
  %i.alh = load ptr, ptr %i.alf, align 8, !tbaa !244, !noalias !316
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #26, !noalias !316
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 16
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !246, !noalias !316 ; 2 uses
  %.sroa.028.0.copyload.i43 = load ptr, ptr %i.alj, align 8, !tbaa !57, !noalias !316
  %.sroa.229.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  %.sroa.229.0.copyload.i45 = load i64, ptr %.sroa.229.0..sroa_idx.i44, align 8, !tbaa !58, !noalias !316
  %i.alk = call { ptr, i64 } @_ZN4llvh3sys4path23remove_leading_dotslashENS_9StringRefENS1_5StyleE(ptr %.sroa.028.0.copyload.i43, i64 %.sroa.229.0.copyload.i45, i32 noundef 2) #26, !noalias !316 ; 2 uses
  %i.all = extractvalue { ptr, i64 } %i.alk, 0
  store ptr %i.all, ptr %87, align 8, !noalias !316
  %i.alm = extractvalue { ptr, i64 } %i.alk, 1
  store i64 %i.alm, ptr %i.akz, align 8, !noalias !316
  %i.aln = load ptr, ptr %i.alg, align 8, !tbaa !235, !noalias !316 ; 3 uses
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !229, !noalias !316
  %.not150.i = icmp eq i32 %i.alo, 0
  br i1 %.not150.i, label %bb.hw, label %.critedge50.i

.critedge50.i:                                    ; preds = %bb.ho
  %i.alp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26, !noalias !316 ; 4 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !173, !noalias !316
  %i.als = getelementptr inbounds nuw i8, ptr %i.alp, i64 24 ; 3 uses
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !176, !noalias !316 ; 2 uses
  %i.alu = ptrtoint ptr %i.alr to i64
  %i.alv = ptrtoint ptr %i.alt to i64
  %i.alw = sub i64 %i.alu, %i.alv
  %i.alx = icmp ult i64 %i.alw, 44
  br i1 %i.alx, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %.critedge50.i
  %i.aly = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.alp, ptr noundef nonnull @.str.312, i64 noundef 44) #26, !noalias !316 ; 2 uses
  %.phi.trans.insert.i48 = getelementptr inbounds nuw i8, ptr %i.aly, i64 24
  %.pre.i49 = load ptr, ptr %.phi.trans.insert.i48, align 8, !tbaa !176, !noalias !316
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i46

bb.hq:                                            ; preds = %.critedge50.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.alt, ptr noundef nonnull align 1 dereferenceable(44) @.str.312, i64 44, i1 false), !noalias !316
  %i.alz = load ptr, ptr %i.als, align 8, !tbaa !176, !noalias !316
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 44 ; 2 uses
  store ptr %i.ama, ptr %i.als, align 8, !tbaa !176, !noalias !316
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i46

_ZN4llvh11raw_ostreamlsEPKc.exit.i46:             ; preds = %bb.hq, %bb.hp
  %i.amb = phi ptr [ %.pre.i49, %bb.hp ], [ %i.ama, %bb.hq ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.aly, %bb.hp ], [ %i.alp, %bb.hq ] ; 5 uses
  %.sroa.024.0.copyload.i = load ptr, ptr %87, align 8, !tbaa !57, !noalias !316 ; 2 uses
  %.sroa.225.0.copyload.i = load i64, ptr %i.akz, align 8, !tbaa !58, !noalias !316 ; 5 uses
  %i.amc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !173, !noalias !316
  %i.ame = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.amf = ptrtoint ptr %i.amd to i64
  %i.amg = ptrtoint ptr %i.amb to i64
  %i.amh = sub i64 %i.amf, %i.amg
  %i.ami = icmp ugt i64 %.sroa.225.0.copyload.i, %i.amh
  br i1 %i.ami, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i46
  %i.amj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i, ptr noundef %.sroa.024.0.copyload.i, i64 noundef %.sroa.225.0.copyload.i) #26, !noalias !316 ; 2 uses
  %.phi.trans.insert168.i = getelementptr inbounds nuw i8, ptr %i.amj, i64 24
  %.pre169.i = load ptr, ptr %.phi.trans.insert168.i, align 8, !tbaa !176, !noalias !316
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i47

bb.hs:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i46
  %.not.i65.i = icmp eq i64 %.sroa.225.0.copyload.i, 0
  br i1 %.not.i65.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i47, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.amb, ptr align 1 %.sroa.024.0.copyload.i, i64 %.sroa.225.0.copyload.i, i1 false), !noalias !316
  %i.amk = load ptr, ptr %i.ame, align 8, !tbaa !176, !noalias !316
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 %.sroa.225.0.copyload.i ; 2 uses
  store ptr %i.aml, ptr %i.ame, align 8, !tbaa !176, !noalias !316
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i47

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i47:  ; preds = %bb.ht, %bb.hs, %bb.hr
  %i.amm = phi ptr [ %.pre169.i, %bb.hr ], [ %i.aml, %bb.ht ], [ %i.amb, %bb.hs ] ; 3 uses
  %.0.i66.i = phi ptr [ %i.amj, %bb.hr ], [ %.0.i.i.i, %bb.ht ], [ %.0.i.i.i, %bb.hs ] ; 3 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.0.i66.i, i64 16
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !173, !noalias !316
  %.not.i67.i = icmp ult ptr %i.amm, %i.amo
  br i1 %.not.i67.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i47
  %i.amp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i66.i, i8 noundef zeroext 10) #26, !noalias !316 ; 0 uses
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38.sink.split

bb.hv:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i47
  %i.amq = getelementptr inbounds nuw i8, ptr %.0.i66.i, i64 24
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 1
  store ptr %i.amr, ptr %i.amq, align 8, !tbaa !176, !noalias !316
  store i8 10, ptr %i.amm, align 1, !tbaa !23, !noalias !316
  br label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread.i38.sink.split

bb.hw:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #26, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %88, i8 0, i64 20, i1 false), !noalias !316
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aln, i64 8 ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !232, !noalias !316
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !58, !noalias !316 ; 2 uses
  %.not151161.i = icmp eq i64 %i.amu, 0
  br i1 %.not151161.i, label %.critedge48.i, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.hw
  %i.amv = getelementptr inbounds nuw i8, ptr %i.aln, i64 16
  br label %bb.hx

bb.hx:                                            ; preds = %.critedge54.i, %.lr.ph.i50
  %.sroa.6.0162.i = phi i64 [ 0, %.lr.ph.i50 ], [ %i.arg, %.critedge54.i ] ; 3 uses
  %i.amw = load ptr, ptr %i.ams, align 8, !tbaa !232, !noalias !316
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 8
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.amx, i64 %.sroa.6.0162.i
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.amv, i64 %.sroa.6.0162.i
  %i.ana = load ptr, ptr %i.amy, align 8, !tbaa !244, !noalias !316 ; 3 uses
  %i.anb = load ptr, ptr %i.amz, align 8, !tbaa !235, !noalias !316 ; 2 uses
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !229, !noalias !316
  %.not153.i = icmp eq i32 %i.anc, 2
  br i1 %.not153.i, label %bb.ik, label %.critedge.i

.critedge.i:                                      ; preds = %bb.hx
  %i.and = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26, !noalias !316 ; 4 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 16
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !173, !noalias !316
  %i.ang = getelementptr inbounds nuw i8, ptr %i.and, i64 24 ; 3 uses
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !176, !noalias !316 ; 2 uses
  %i.ani = ptrtoint ptr %i.anf to i64
  %i.anj = ptrtoint ptr %i.anh to i64
  %i.ank = sub i64 %i.ani, %i.anj
  %i.anl = icmp ult i64 %i.ank, 35
  br i1 %i.anl, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.critedge.i
  %i.anm = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.and, ptr noundef nonnull @.str.313, i64 noundef 35) #26, !noalias !316 ; 2 uses
  %.phi.trans.insert170.i = getelementptr inbounds nuw i8, ptr %i.anm, i64 24
end_hunk_0
begin_hunk_1_@_ZN6hermes6ModuleC2ESt10shared_ptrINS_7ContextEE:bb.a
  store i32 458754, ptr %i.at, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 490
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %i.bc, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 2, ptr %i.bd, align 4, !tbaa !56
  store i8 113, ptr %i.ay, align 8, !tbaa !1103
  store i32 458756, ptr %i.az, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 530
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.bi, align 8, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 2, ptr %i.bj, align 4, !tbaa !56
  store i8 117, ptr %i.be, align 8, !tbaa !1103
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i8 0, ptr %i.bk, align 8, !tbaa !1133
  store i32 458760, ptr %i.bf, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 578
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 0, ptr %i.bp, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 596
  store i32 2, ptr %i.bq, align 4, !tbaa !56
  store i8 117, ptr %i.bl, align 8, !tbaa !1103
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i8 1, ptr %i.br, align 8, !tbaa !1133
  store i32 458760, ptr %i.bm, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 626
  store i16 1023, ptr %i.bt, align 2, !tbaa !1099
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 628
  store i16 7, ptr %i.bu, align 4, !tbaa !1102
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 0, ptr %i.bx, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 2, ptr %i.by, align 4, !tbaa !56
  store i8 121, ptr %i.bs, align 8, !tbaa !1103
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  tail call void @_ZN4llvh14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i32 noundef 6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvh10FoldingSetIN6hermes13LiteralNumberEEE, i64 16), ptr %i.bz, align 8, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @_ZN4llvh14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i32 noundef 6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvh10FoldingSetIN6hermes13LiteralBigIntEEE, i64 16), ptr %i.ca, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  tail call void @_ZN4llvh14FoldingSetBaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i32 noundef 6) #26
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvh10FoldingSetIN6hermes13LiteralStringEEE, i64 16), ptr %i.cb, align 8, !tbaa !7
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cc, i8 0, i64 20, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i64 8, ptr %i.ce, align 8, !tbaa !1136
  %i.cf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28 ; 2 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !1141
  %.06.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 3 uses
  %i.cg = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #28 ; 6 uses
  store ptr %i.cg, ptr %.06.i.i.ptr.i.i, align 8, !tbaa !1142
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 800
  store ptr %.06.i.i.ptr.i.i, ptr %i.ci, align 8, !tbaa !1143
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 784
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !1144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 504 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 792
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !1145
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 832
  store ptr %.06.i.i.ptr.i.i, ptr %i.cn, align 8, !tbaa !1143
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 816
  store ptr %i.cg, ptr %i.co, align 8, !tbaa !1144
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 824
  store ptr %i.ck, ptr %i.cp, align 8, !tbaa !1145
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !1146
  store ptr %i.cg, ptr %i.cm, align 8, !tbaa !1147
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cq, i8 0, i64 20, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cr, i8 0, i64 20, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cs, i8 0, i64 20, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i8 0, ptr %i.ct, align 8, !tbaa !1148
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 952
  store i64 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !1193
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 1, ptr %i.cx, align 8, !tbaa !1194
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 952
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !1195
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !1196
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 984
  store i64 1, ptr %i.dd, align 8, !tbaa !1197
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.df, align 8, !tbaa !1195
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1016
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.dg, i8 0, i64 17, i1 false)
  ret void
}

declare noundef i32 @_ZN6hermes18SourceMapGenerator9addSourceEN4llvh9StringRefENS1_8OptionalINS_6parser15JSONSharedValueEEE(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef) local_unnamed_addr #6

declare void @_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.671") align 8, ptr noundef byval(%"class.llvh::MemoryBufferRef") align 8, ptr noundef nonnull align 8 dereferenceable(464)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12_GLOBAL__N_17parseJSERSt10shared_ptrIN6hermes7ContextEERNS1_3sem10SemContextESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteISA_EES8_INS1_9SourceMapESB_ISE_EES0_INS1_19SourceMapTranslatorEEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull captures(none) %3, ptr noundef nonnull readonly captures(none) %4, i1 noundef zeroext %5) unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.std::unique_ptr.173", align 8 ; 3 uses
  %7 = alloca %"class.std::unique_ptr.671", align 8 ; 3 uses
  %8 = alloca %"class.std::unique_ptr.827", align 8 ; 7 uses
  %9 = alloca %"class.hermes::parser::JSParser", align 8 ; 9 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !353
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !351
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = load ptr, ptr %0, align 8, !tbaa !567    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load i32, ptr %i.j, align 8, !tbaa !556
  %i.l = zext i32 %i.k to i64
  %i.m = icmp uge i64 %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !489, !nonnull !61, !align !68
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %6, align 8, !tbaa !227
  store ptr null, ptr %2, align 8, !tbaa !227
  %i.q = call noundef i32 @_ZN6hermes18SourceErrorManager18addNewSourceBufferESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(464) %i.o, ptr noundef nonnull %6) #26 ; 3 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !227    ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.a
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #26, !inline_history !343
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %.not55 = icmp eq ptr %i.v, null
  %i.w = ptrtoint ptr %i.v to i64
  br i1 %.not55, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.x = load ptr, ptr %4, align 8, !tbaa !707    ; 2 uses
  %.not56 = icmp eq ptr %i.x, null
  br i1 %.not56, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.w, ptr %7, align 8, !tbaa !624
  store ptr null, ptr %3, align 8, !tbaa !624
  call void @_ZN6hermes19SourceMapTranslator12addSourceMapEjSt10unique_ptrINS_9SourceMapESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i32 noundef %i.q, ptr noundef nonnull %7) #26
  %i.y = load ptr, ptr %7, align 8, !tbaa !624    ; 3 uses
  %.not.i41 = icmp eq ptr %i.y, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i: ; preds = %bb.c
  call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.y) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i, %bb.c, %bb.b, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.z = load ptr, ptr %0, align 8, !tbaa !567    ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 170
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !558, !range !179, !noundef !61
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond = and i1 %i.m, %i.ac                   ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZN6hermes6parser8JSParser14preParseBufferERNS_7ContextEj(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.827") align 8 %8, ptr noundef nonnull align 8 dereferenceable(656) %i.z, i32 noundef %i.q) #26
  %i.ad = load ptr, ptr %8, align 8, !tbaa !1198  ; 2 uses
  %.not57 = icmp eq ptr %i.ad, null
  br i1 %.not57, label %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = call noundef zeroext i1 @_ZNK6hermes6parser8JSParser19getUseStaticBuiltinEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26
  %i.af = load ptr, ptr %8, align 8, !tbaa !1198
  call void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 noundef zeroext 3) #26
  %.pr.a = load ptr, ptr %8, align 8, !tbaa !1198 ; 3 uses
  %.not.i42 = icmp eq ptr %.pr.a, null
  br i1 %.not.i42, label %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread, label %_ZNKSt14default_deleteIN6hermes6parser8JSParserEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6hermes6parser8JSParserEEclEPS2_.exit.i: ; preds = %bb.e
  call void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.pr.a) #26
  call void @_ZdlPvm(ptr noundef nonnull %.pr.a, i64 noundef 16) #25
  br label %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread

_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt14default_deleteIN6hermes6parser8JSParserEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.pre = load ptr, ptr %0, align 8, !tbaa !567
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit
  %i.ag = phi ptr [ %.pre, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread ], [ %i.z, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit ]
  %.139 = phi i32 [ 1, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread ], [ 2, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit ]
  %.135 = phi i1 [ %i.ae, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit.thread ], [ false, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit ]
  %i.ah = xor i1 %or.cond, true
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN6hermes6parser8JSParserC1ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(656) %i.ag, i32 noundef %i.q, i32 noundef %.139) #26
  %i.ai = call { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #26 ; 2 uses
  %i.aj = extractvalue { i64, i8 } %i.ai, 0
  %i.ak = extractvalue { i64, i8 } %i.ai, 1
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  %or.cond3 = and i1 %i.ah, %i.al
  br i1 %or.cond3, label %.thread51, label %bb.g

.thread51:                                        ; preds = %bb.f
  %i.am = call noundef zeroext i1 @_ZNK6hermes6parser8JSParser19getUseStaticBuiltinEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #26
  call void @_ZNK6hermes6parser8JSParser17registerMagicURLsEh(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 3) #26
  call void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br i1 %i.al, label %bb.h, label %bb.t

bb.h:                                             ; preds = %.thread51, %bb.g
  %.23653 = phi i1 [ %i.am, %.thread51 ], [ %.135, %bb.g ]
  %i.an = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cl14StaticBuiltinsE, i64 152), align 8, !tbaa !72
  %i.ap = icmp eq i32 %i.ao, 2
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %0, align 8, !tbaa !567
  %i.ar = zext i1 %.23653 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 635
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !717
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %5, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = call noundef ptr @_ZN6hermes13wrapCJSModuleERSt10shared_ptrINS_7ContextEEPNS_6ESTree11ProgramNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.an) #26 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.at, %bb.k ], [ %i.an, %bb.j ] ; 9 uses
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10DumpTargetE, i64 152), align 8, !tbaa !84
  switch i32 %i.au, label %bb.o [
    i32 0, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.av = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #26
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6PrettyE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL20IncludeEmptyASTNodesE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = select i1 %i.az, i32 2, i32 1
  %i.bb = load ptr, ptr %0, align 8, !tbaa !567
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !489, !nonnull !61, !align !68
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL18DumpSourceLocationE, i64 152), align 8, !tbaa !405
  %i.bf = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL17IncludeRawASTPropE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.bg = zext nneg i8 %i.bf to i32
  call void @_ZN6hermes14dumpESTreeJSONERN4llvh11raw_ostreamEPNS_6ESTree4NodeEbNS_14ESTreeDumpModeERNS_18SourceErrorManagerENS_16LocationDumpModeENS_13ESTreeRawPropE(ptr noundef nonnull align 8 dereferenceable(36) %i.av, ptr noundef %.0, i1 noundef zeroext %i.ax, i32 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(464) %i.bd, i32 noundef %i.be, i32 noundef %i.bg) #26
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bh = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #26
  %i.bi = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6PrettyE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.bj = trunc nuw i8 %i.bi to i1
  call void @_ZN6hermes10generateJSERN4llvh11raw_ostreamEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(36) %i.bh, ptr noundef %.0, i1 noundef zeroext %i.bj) #26
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %0, align 8, !tbaa !567
  %i.bl = call noundef zeroext i1 @_ZN6hermes3sem11validateASTERNS_7ContextERNS0_10SemContextEPNS_6ESTree4NodeE(ptr noundef nonnull align 8 dereferenceable(656) %i.bk, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %.0) #26
  br i1 %i.bl, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10DumpTargetE, i64 152), align 8, !tbaa !84 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #26
  %i.bp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6PrettyE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL20IncludeEmptyASTNodesE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = select i1 %i.bs, i32 2, i32 1
  %i.bu = load ptr, ptr %0, align 8, !tbaa !567
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !489, !nonnull !61, !align !68
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL18DumpSourceLocationE, i64 152), align 8, !tbaa !405
  %i.by = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL17IncludeRawASTPropE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.bz = zext nneg i8 %i.by to i32
  call void @_ZN6hermes14dumpESTreeJSONERN4llvh11raw_ostreamEPNS_6ESTree4NodeEbNS_14ESTreeDumpModeERNS_18SourceErrorManagerENS_16LocationDumpModeENS_13ESTreeRawPropE(ptr noundef nonnull align 8 dereferenceable(36) %i.bo, ptr noundef %.0, i1 noundef zeroext %i.bq, i32 noundef %i.bt, ptr noundef nonnull align 8 dereferenceable(464) %i.bw, i32 noundef %i.bx, i32 noundef %i.bz) #26
  %.pr54 = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL10DumpTargetE, i64 152), align 8, !tbaa !84
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ca = phi i32 [ %.pr54, %bb.q ], [ %i.bm, %bb.p ]
  %i.cb = icmp eq i32 %i.ca, 3
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #26
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2clL6PrettyE, i64 152), align 8, !tbaa !156, !range !179, !noundef !61
  %i.ce = trunc nuw i8 %i.cd to i1
  call void @_ZN6hermes10generateJSERN4llvh11raw_ostreamEPNS_6ESTree4NodeEb(ptr noundef nonnull align 8 dereferenceable(36) %i.cc, ptr noundef %.0, i1 noundef zeroext %i.ce) #26
  br label %bb.t

_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.g, %bb.r, %bb.s, %bb.o, %bb.k, %bb.n, %bb.m, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45
  %.3 = phi ptr [ null, %_ZNSt10unique_ptrIN6hermes6parser8JSParserESt14default_deleteIS2_EED2Ev.exit45 ], [ null, %bb.g ], [ %.0, %bb.m ], [ %.0, %bb.n ], [ null, %bb.o ], [ null, %bb.k ], [ %.0, %bb.s ], [ %.0, %bb.r ]
  ret ptr %.3
}

declare noundef zeroext i1 @_ZN6hermes20generateIRFromESTreeEPNS_6ESTree4NodeEPNS_6ModuleERKSt6vectorIPNS0_11ProgramNodeESaIS7_EERKNS_10ScopeChainE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IN9__gnu_cxx17__normal_iteratorIPS5_S7_EEvEET_SD_RKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = icmp ugt i64 %i.d, 9223372036854775776
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.335) #29
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr null, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvT_SD_St20forward_iterator_tag.exit

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #28 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !26
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i
  %.09.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.preheader.i ] ; 7 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.k, ptr %.09.i.i.i.i.i, align 8, !tbaa !178
  %i.l = load ptr, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !18 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !155  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.n, ptr %i.a, align 8, !tbaa !58
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.p, ptr %.09.i.i.i.i.i, align 8, !tbaa !18
  %i.q = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.q, ptr %i.k, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.r = phi ptr [ %i.p, %bb.c ], [ %i.k, %.lr.ph.i.i.i.i.i ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.s = load i8, ptr %i.l, align 1, !tbaa !23
  store i8 %i.s, ptr %i.r, align 1, !tbaa !23
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i
  %i.t = load i64, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !155
  %i.v = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvT_SD_St20forward_iterator_tag.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1200

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvT_SD_St20forward_iterator_tag.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.thread.i ], [ %i.y, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.z, align 8, !tbaa !17
  ret void
}

declare noundef zeroext i1 @_ZN6hermes27runCustomOptimizationPassesERNS_6ModuleERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(1033), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN6hermes23runNoOptimizationPassesERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1033)) local_unnamed_addr #6

declare void @_ZN6hermes26runDebugOptimizationPassesERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1033)) local_unnamed_addr #6

declare void @_ZN6hermes25runFullOptimizationPassesERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1033)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6hermes12verifyModuleERKNS_6ModuleEPN4llvh11raw_ostreamENS_16VerificationModeE(ptr noundef nonnull align 8 dereferenceable(1033), ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZNK6hermes6Module4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1033), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_128generateBytecodeForExecutionERN6hermes6ModuleERKNS0_25BytecodeGenerationOptionsE(ptr dead_on_unwind noalias writable align 8 initializes((0, 4), (8, 40)) %0, ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 4 dereferenceable(17) %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.842", align 8 ; 5 uses
  %4 = alloca %"struct.hermes::driver::CompileResult", align 8 ; 11 uses
  %5 = alloca %"class.std::unique_ptr.842", align 8 ; 8 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !567, !noalias !1201
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !570, !noalias !1201 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK6hermes6Module12shareContextEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !1201
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !1201
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3, !noalias !1201
  br label %_ZNK6hermes6Module12shareContextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4, !noalias !1201 ; 0 uses
  br label %_ZNK6hermes6Module12shareContextEv.exit

_ZNK6hermes6Module12shareContextEv.exit:          ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i32 0, ptr %4, align 8, !tbaa !186
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1204 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i, ptr %i.p, ptr %i.n
  store ptr null, ptr %6, align 8, !tbaa !377
  call void @_ZN6hermes3hbc22generateBytecodeModuleEPNS_6ModuleEPNS_8FunctionERKNS_25BytecodeGenerationOptionsENS_8OptValueIjEEPNS_18SourceMapGeneratorESt10unique_ptrINS0_14BCProviderBaseESt14default_deleteISD_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.842") align 8 %5, ptr noundef nonnull %1, ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(17) %2, i64 0, ptr noundef null, ptr noundef nonnull %6) #26
  %i.r = load ptr, ptr %6, align 8, !tbaa !378    ; 3 uses
  %.not.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i: ; preds = %_ZNK6hermes6Module12shareContextEv.exit
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.r) #26, !inline_history !965
  br label %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK6hermes6Module12shareContextEv.exit, %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !489, !nonnull !61, !align !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.y = load i32, ptr %i.x, align 8, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.critedge, label %.critedge10

.critedge10:                                      ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #26 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !173
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !176 ; 2 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 8
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge10
  %i.ai = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.z, ptr noundef nonnull @.str.325, i64 noundef 8) #26
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %.critedge10
  store i64 2334102057728437573, ptr %i.ad, align 1
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !176
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.z, %bb.f ]
  %i.al = zext i32 %i.y to i64
  %i.am = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i64 noundef %i.al) #26 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
end_hunk_1
