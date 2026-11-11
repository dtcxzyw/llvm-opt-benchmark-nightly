Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/kvm?download=true
inline.NumInlined: 610
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@kvm_arch_init_vcpu:bb.a
  store i32 0, ptr %i.yl, align 4
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store i64 %i.yh, ptr %i.ym, align 8
  %i.yn = add nuw nsw i32 %i.ye, 1
  store i32 %i.yn, ptr %.val.i.i, align 8
  br label %kvm_msr_entry_add_perf.exit.i

kvm_msr_entry_add_perf.exit.i:                    ; preds = %kvm_msr_entry_add.exit.i.i, %kvm_arch_get_supported_msr_feature.exit.i.i, %kvm_arch_get_supported_msr_feature.exit.thread.i.i, %bb.el, %bb.ek
  %i.yo = load ptr, ptr @kvm_feature_msrs, align 8 ; 3 uses
  %.not.i257 = icmp eq ptr %i.yo, null
  br i1 %.not.i257, label %kvm_msr_entry_add_vmx.exit.i, label %bb.er

bb.er:                                            ; preds = %kvm_msr_entry_add_perf.exit.i
  %i.yp = getelementptr i8, ptr %i.f, i64 30216
  %.val.i = load i64, ptr %i.yp, align 8
  %i.yq = and i64 %.val.i, 32
  %.not44.i = icmp eq i64 %i.yq, 0
  br i1 %.not44.i, label %kvm_msr_entry_add_vmx.exit.i, label %.preheader.i.i26.i

.preheader.i.i26.i:                               ; preds = %bb.er
  %i.yr = load ptr, ptr @kvm_state, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  %i.yt = load i32, ptr %i.yo, align 4            ; 2 uses
  %.not56.i.i27.i = icmp eq i32 %i.yt, 0
  br i1 %.not56.i.i27.i, label %kvm_arch_get_supported_msr_feature.exit.thread.i31.i, label %.lr.ph.i.i28.i

.lr.ph.i.i28.i:                                   ; preds = %.preheader.i.i26.i, %bb.es
  %.051.i.i29.i = phi i32 [ %i.yy, %bb.es ], [ 0, %.preheader.i.i26.i ] ; 2 uses
  %i.yu = sext i32 %.051.i.i29.i to i64
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.ys, i64 %i.yu
  %i.yw = load i32, ptr %i.yv, align 4
  %i.yx = icmp eq i32 %i.yw, 1152
  br i1 %i.yx, label %._crit_edge.i.i32.i, label %bb.es

bb.es:                                            ; preds = %.lr.ph.i.i28.i
  %i.yy = add nuw i32 %.051.i.i29.i, 1            ; 2 uses
  %exitcond.not.i.i30.i = icmp eq i32 %i.yy, %i.yt
  br i1 %exitcond.not.i.i30.i, label %kvm_arch_get_supported_msr_feature.exit.thread.i31.i, label %.lr.ph.i.i28.i, !llvm.loop !1

._crit_edge.i.i32.i:                              ; preds = %.lr.ph.i.i28.i
  store i32 1, ptr %3, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1152, ptr %i.yz, align 8
  %i.za = call i32 (ptr, i64, ...) @kvm_ioctl(ptr noundef %i.yr, i64 noundef 3221794440, ptr noundef nonnull %3) #29 ; 2 uses
  %.not.i.i33.i = icmp eq i32 %i.za, 1
  br i1 %.not.i.i33.i, label %kvm_arch_get_supported_msr_feature.exit.i34.i, label %bb.et

bb.et:                                            ; preds = %._crit_edge.i.i32.i
  %i.zb = sub i32 0, %i.za
  %i.zc = call ptr @strerror(i32 noundef %i.zb) #29
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.16, i32 noundef 1152, ptr noundef %i.zc) #29
  call void @exit(i32 noundef 1) #30
  unreachable

kvm_arch_get_supported_msr_feature.exit.thread.i31.i: ; preds = %bb.es, %.preheader.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %kvm_msr_entry_add_vmx.exit.i

kvm_arch_get_supported_msr_feature.exit.i34.i:    ; preds = %._crit_edge.i.i32.i
  %i.zd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ze = load i64, ptr %i.zd, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not.i35.i = icmp eq i64 %i.ze, 0
  br i1 %.not.i35.i, label %kvm_msr_entry_add_vmx.exit.i, label %bb.eu

bb.eu:                                            ; preds = %kvm_arch_get_supported_msr_feature.exit.i34.i
  %i.zf = load ptr, ptr @kvm_state, align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.zg = load ptr, ptr @kvm_feature_msrs, align 8 ; 4 uses
  %i.zh = icmp eq ptr %i.zg, null
  br i1 %i.zh, label %kvm_arch_get_supported_msr_feature.exit64.thread.i.i, label %.preheader.i56.i.i

kvm_arch_get_supported_msr_feature.exit64.thread.i.i: ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  br label %kvm_arch_get_supported_msr_feature.exit73.i.i

.preheader.i56.i.i:                               ; preds = %bb.eu
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zj = load i32, ptr %i.zg, align 4            ; 2 uses
  %.not56.i57.i.i = icmp eq i32 %i.zj, 0
  br i1 %.not56.i57.i.i, label %kvm_arch_get_supported_msr_feature.exit64.thread157.i.i, label %.lr.ph.i58.i.i

.lr.ph.i58.i.i:                                   ; preds = %.preheader.i56.i.i, %bb.ev
  %.051.i59.i.i = phi i32 [ %i.zo, %bb.ev ], [ 0, %.preheader.i56.i.i ] ; 2 uses
  %i.zk = sext i32 %.051.i59.i.i to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zi, i64 %i.zk
  %i.zm = load i32, ptr %i.zl, align 4
  %i.zn = icmp eq i32 %i.zm, 1157
  br i1 %i.zn, label %._crit_edge.i62.i.i, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i58.i.i
  %i.zo = add nuw i32 %.051.i59.i.i, 1            ; 2 uses
  %exitcond.not.i60.i.i = icmp eq i32 %i.zo, %i.zj
  br i1 %exitcond.not.i60.i.i, label %kvm_arch_get_supported_msr_feature.exit64.thread157.i.i, label %.lr.ph.i58.i.i, !llvm.loop !1

._crit_edge.i62.i.i:                              ; preds = %.lr.ph.i58.i.i
  store i32 1, ptr %2, align 8
  %i.zp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1157, ptr %i.zp, align 8
  %i.zq = call i32 (ptr, i64, ...) @kvm_ioctl(ptr noundef %i.zf, i64 noundef 3221794440, ptr noundef nonnull %2) #29 ; 2 uses
  %.not.i63.i.i = icmp eq i32 %i.zq, 1
  br i1 %.not.i63.i.i, label %kvm_arch_get_supported_msr_feature.exit64.i.i, label %bb.ew

bb.ew:                                            ; preds = %._crit_edge.i62.i.i
  %i.zr = sub i32 0, %i.zq
  %i.zs = call ptr @strerror(i32 noundef %i.zr) #29
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.16, i32 noundef 1157, ptr noundef %i.zs) #29
  call void @exit(i32 noundef 1) #30
  unreachable

kvm_arch_get_supported_msr_feature.exit64.thread157.i.i: ; preds = %bb.ev, %.preheader.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %.preheader.i65.i.i

kvm_arch_get_supported_msr_feature.exit64.i.i:    ; preds = %._crit_edge.i62.i.i
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zu = load i64, ptr %i.zt, align 8            ; 2 uses
  %.pr.pre.i.i = load ptr, ptr @kvm_feature_msrs, align 8 ; 2 uses
  %.pre.i.i = load ptr, ptr @kvm_state, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.zv = icmp eq ptr %.pr.pre.i.i, null
  br i1 %i.zv, label %kvm_arch_get_supported_msr_feature.exit73.i.i, label %.preheader.i65.i.i

.preheader.i65.i.i:                               ; preds = %kvm_arch_get_supported_msr_feature.exit64.i.i, %kvm_arch_get_supported_msr_feature.exit64.thread157.i.i
  %.135.i61.ph161.i.i = phi i64 [ 0, %kvm_arch_get_supported_msr_feature.exit64.thread157.i.i ], [ %i.zu, %kvm_arch_get_supported_msr_feature.exit64.i.i ] ; 3 uses
  %.pr160.i.i = phi ptr [ %i.zg, %kvm_arch_get_supported_msr_feature.exit64.thread157.i.i ], [ %.pr.pre.i.i, %kvm_arch_get_supported_msr_feature.exit64.i.i ] ; 2 uses
  %i.zw = phi ptr [ %i.zf, %kvm_arch_get_supported_msr_feature.exit64.thread157.i.i ], [ %.pre.i.i, %kvm_arch_get_supported_msr_feature.exit64.i.i ]
  %i.zx = getelementptr inbounds nuw i8, ptr %.pr160.i.i, i64 4
  %i.zy = load i32, ptr %.pr160.i.i, align 4      ; 2 uses
  %.not56.i66.i.i = icmp eq i32 %i.zy, 0
  br i1 %.not56.i66.i.i, label %kvm_arch_get_supported_msr_feature.exit73.i.i, label %.lr.ph.i67.i.i

.lr.ph.i67.i.i:                                   ; preds = %.preheader.i65.i.i, %bb.ex
  %.051.i68.i.i = phi i32 [ %i.aad, %bb.ex ], [ 0, %.preheader.i65.i.i ] ; 2 uses
  %i.zz = sext i32 %.051.i68.i.i to i64
  %i.aaa = getelementptr inbounds [4 x i8], ptr %i.zx, i64 %i.zz
  %i.aab = load i32, ptr %i.aaa, align 4
  %i.aac = icmp eq i32 %i.aab, 1164
  br i1 %i.aac, label %._crit_edge.i71.i.i, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph.i67.i.i
  %i.aad = add nuw i32 %.051.i68.i.i, 1           ; 2 uses
  %exitcond.not.i69.i.i = icmp eq i32 %i.aad, %i.zy
  br i1 %exitcond.not.i69.i.i, label %kvm_arch_get_supported_msr_feature.exit73.i.i, label %.lr.ph.i67.i.i, !llvm.loop !1

._crit_edge.i71.i.i:                              ; preds = %.lr.ph.i67.i.i
  store i32 1, ptr %1, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1164, ptr %i.aae, align 8
  %i.aaf = call i32 (ptr, i64, ...) @kvm_ioctl(ptr noundef %i.zw, i64 noundef 3221794440, ptr noundef nonnull %1) #29 ; 2 uses
  %.not.i72.i.i = icmp eq i32 %i.aaf, 1
  br i1 %.not.i72.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %._crit_edge.i71.i.i
  %i.aag = sub i32 0, %i.aaf
  %i.aah = call ptr @strerror(i32 noundef %i.aag) #29
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.16, i32 noundef 1164, ptr noundef %i.aah) #29
  call void @exit(i32 noundef 1) #30
  unreachable

bb.ez:                                            ; preds = %._crit_edge.i71.i.i
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aaj = load i64, ptr %i.aai, align 8
  br label %kvm_arch_get_supported_msr_feature.exit73.i.i

kvm_arch_get_supported_msr_feature.exit73.i.i:    ; preds = %bb.ex, %bb.ez, %.preheader.i65.i.i, %kvm_arch_get_supported_msr_feature.exit64.i.i, %kvm_arch_get_supported_msr_feature.exit64.thread.i.i
  %.135.i61125.i.i = phi i64 [ %i.zu, %kvm_arch_get_supported_msr_feature.exit64.i.i ], [ %.135.i61.ph161.i.i, %.preheader.i65.i.i ], [ %.135.i61.ph161.i.i, %bb.ez ], [ 0, %kvm_arch_get_supported_msr_feature.exit64.thread.i.i ], [ %.135.i61.ph161.i.i, %bb.ex ]
  %.135.i70.i.i = phi i64 [ 0, %kvm_arch_get_supported_msr_feature.exit64.i.i ], [ 0, %.preheader.i65.i.i ], [ %i.aaj, %bb.ez ], [ 0, %kvm_arch_get_supported_msr_feature.exit64.thread.i.i ], [ 0, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.aak = load i64, ptr %i.wq, align 16
  %i.aal = shl i64 %i.aak, 12
  %i.aam = and i64 %i.aal, 2199023255552
  %i.aan = and i64 %i.ze, 16923680827244543
  %i.aao = and i64 %.135.i61125.i.i, 234881055
  %i.aap = getelementptr inbounds nuw i8, ptr %i.f, i64 30424 ; 3 uses
  %i.aaq = load i64, ptr %i.aap, align 8
  %i.aar = and i64 %i.aaq, 2
  %.not38.i.i = icmp eq i64 %i.aar, 0
  %i.aas = select i1 %.not38.i.i, i64 0, i64 16640
  %i.aat = and i64 %i.aas, %.135.i70.i.i
  %.val55.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.aau = load i32, ptr %.val55.i.i, align 8     ; 3 uses
  %.not.i75.i.i = icmp ugt i32 %i.aau, 254
  br i1 %.not.i75.i.i, label %bb.fa, label %kvm_msr_entry_add.exit.i36.i

bb.fa:                                            ; preds = %kvm_arch_get_supported_msr_feature.exit73.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit.i36.i:                     ; preds = %kvm_arch_get_supported_msr_feature.exit73.i.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.f, i64 30416
  %i.aaw = load i64, ptr %i.aav, align 16         ; 2 uses
  %.not.i74.i.i = and i64 %i.aaw, 67232114
  %11 = shl i64 %i.aaw, 32
  %.masked.i.i = and i64 %11, -288759735165911040
  %i.aax = or disjoint i64 %.masked.i.i, %.not.i74.i.i
  %i.aay = xor i64 %i.aax, 288759730938175858
  %i.aaz = shl nuw nsw i32 %i.aau, 4
  %.idx.i.i37.i = zext nneg i32 %i.aaz to i64
  %i.aba = getelementptr inbounds nuw i8, ptr %.val55.i.i, i64 %.idx.i.i37.i ; 3 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  store i32 1166, ptr %i.abb, align 8
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aba, i64 12
  store i32 0, ptr %i.abc, align 4
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  store i64 %i.aay, ptr %i.abd, align 8
  %i.abe = add nuw nsw i32 %i.aau, 1
  store i32 %i.abe, ptr %.val55.i.i, align 8
  %.val54.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.abf = load i32, ptr %.val54.i.i, align 8     ; 3 uses
  %.not.i77.i.i = icmp ugt i32 %i.abf, 254
  br i1 %.not.i77.i.i, label %bb.fb, label %kvm_msr_entry_add.exit79.i.i

bb.fb:                                            ; preds = %kvm_msr_entry_add.exit.i36.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit79.i.i:                     ; preds = %kvm_msr_entry_add.exit.i36.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.f, i64 30432
  %i.abh = load i64, ptr %i.abg, align 16         ; 2 uses
  %.not.i76.i.i = and i64 %i.abh, 22
  %12 = shl i64 %i.abh, 32
  %.masked126.i.i = and i64 %12, -98784247808
  %i.abi = or disjoint i64 %.masked126.i.i, %.not.i76.i.i
  %i.abj = xor i64 %i.abi, 94489280534
  %i.abk = shl nuw nsw i32 %i.abf, 4
  %.idx.i78.i.i = zext nneg i32 %i.abk to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 %.idx.i78.i.i ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  store i32 1165, ptr %i.abm, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 12
  store i32 0, ptr %i.abn, align 4
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 16
  store i64 %i.abj, ptr %i.abo, align 8
  %i.abp = add nuw nsw i32 %i.abf, 1
  store i32 %i.abp, ptr %.val54.i.i, align 8
  %i.abq = getelementptr inbounds nuw i8, ptr %i.f, i64 30440 ; 2 uses
  %.val53.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.abr = load i32, ptr %.val53.i.i, align 8     ; 3 uses
  %.not.i81.i.i = icmp ugt i32 %i.abr, 254
  br i1 %.not.i81.i.i, label %bb.fc, label %kvm_msr_entry_add.exit83.i.i

bb.fc:                                            ; preds = %kvm_msr_entry_add.exit79.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit83.i.i:                     ; preds = %kvm_msr_entry_add.exit79.i.i
  %i.abs = load i64, ptr %i.abq, align 8          ; 2 uses
  %13 = shl i64 %i.abs, 32
  %.masked127.i.i = and i64 %13, -965371209187328
  %.masked128.i.i.a = and i64 %i.abs, 224767
  %.masked127.i.i.a = or disjoint i64 %.masked128.i.i.a, %i.aam
  %i.abt = or i64 %.masked127.i.i.a, %.masked127.i.i
  %i.abu = xor i64 %i.abt, 965366914444799
  %i.abv = shl nuw nsw i32 %i.abr, 4
  %.idx.i82.i.i = zext nneg i32 %i.abv to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %.val53.i.i, i64 %.idx.i82.i.i ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  store i32 1167, ptr %i.abx, align 8
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abw, i64 12
  store i32 0, ptr %i.aby, align 4
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store i64 %i.abu, ptr %i.abz, align 8
  %i.aca = add nuw nsw i32 %i.abr, 1
  store i32 %i.aca, ptr %.val53.i.i, align 8
  %.val52.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.acb = load i32, ptr %.val52.i.i, align 8     ; 3 uses
  %.not.i85.i.i = icmp ugt i32 %i.acb, 254
  br i1 %.not.i85.i.i, label %bb.fd, label %kvm_msr_entry_add.exit87.i.i

bb.fd:                                            ; preds = %kvm_msr_entry_add.exit83.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit87.i.i:                     ; preds = %kvm_msr_entry_add.exit83.i.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.f, i64 30448
  %i.acd = load i64, ptr %i.acc, align 16         ; 2 uses
  %.not.i84.i.i = and i64 %i.acd, 4607
  %14 = shl i64 %i.acd, 32
  %.masked129.i.i = and i64 %14, -19791209299968
  %i.ace = or disjoint i64 %.masked129.i.i, %.not.i84.i.i
  %i.acf = xor i64 %i.ace, 19786914337279
  %i.acg = shl nuw nsw i32 %i.acb, 4
  %.idx.i86.i.i = zext nneg i32 %i.acg to i64
  %i.ach = getelementptr inbounds nuw i8, ptr %.val52.i.i, i64 %.idx.i86.i.i ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store i32 1168, ptr %i.aci, align 8
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  store i32 0, ptr %i.acj, align 4
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store i64 %i.acf, ptr %i.ack, align 8
  %i.acl = add nuw nsw i32 %i.acb, 1
  store i32 %i.acl, ptr %.val52.i.i, align 8
  %.val51.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.acm = load i32, ptr %.val51.i.i, align 8     ; 3 uses
  %.not.i89.i.i = icmp ugt i32 %i.acm, 254
  br i1 %.not.i89.i.i, label %bb.fe, label %kvm_msr_entry_add.exit91.i.i

bb.fe:                                            ; preds = %kvm_msr_entry_add.exit87.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit91.i.i:                     ; preds = %kvm_msr_entry_add.exit87.i.i
  %i.acn = load i64, ptr %i.aap, align 8
  %i.aco = shl i64 %i.acn, 32
  %i.acp = shl nuw nsw i32 %i.acm, 4
  %.idx.i90.i.i = zext nneg i32 %i.acp to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %.val51.i.i, i64 %.idx.i90.i.i ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  store i32 1163, ptr %i.acr, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acq, i64 12
  store i32 0, ptr %i.acs, align 4
  %i.act = getelementptr inbounds nuw i8, ptr %i.acq, i64 16
  store i64 %i.aco, ptr %i.act, align 8
  %i.acu = add nuw nsw i32 %i.acm, 1
  store i32 %i.acu, ptr %.val51.i.i, align 8
  %.val50.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.acv = load i32, ptr %.val50.i.i, align 8     ; 3 uses
  %.not.i92.i.i = icmp ugt i32 %i.acv, 254
  br i1 %.not.i92.i.i, label %bb.ff, label %kvm_msr_entry_add.exit94.i.i

bb.ff:                                            ; preds = %kvm_msr_entry_add.exit91.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit94.i.i:                     ; preds = %kvm_msr_entry_add.exit91.i.i
  %i.acw = getelementptr inbounds nuw i8, ptr %i.f, i64 30464
  %i.acx = load i64, ptr %i.acw, align 16
  %i.acy = or i64 %i.acx, %i.aat
  %i.acz = shl nuw nsw i32 %i.acv, 4
  %.idx.i93.i.i = zext nneg i32 %i.acz to i64
  %i.ada = getelementptr inbounds nuw i8, ptr %.val50.i.i, i64 %.idx.i93.i.i ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  store i32 1164, ptr %i.adb, align 8
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ada, i64 12
  store i32 0, ptr %i.adc, align 4
  %i.add = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store i64 %i.acy, ptr %i.add, align 8
  %i.ade = add nuw nsw i32 %i.acv, 1
  store i32 %i.ade, ptr %.val50.i.i, align 8
  %.val49.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.adf = load i32, ptr %.val49.i.i, align 8     ; 3 uses
  %.not.i95.i.i = icmp ugt i32 %i.adf, 254
  br i1 %.not.i95.i.i, label %bb.fg, label %kvm_msr_entry_add.exit97.i.i

bb.fg:                                            ; preds = %kvm_msr_entry_add.exit94.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit97.i.i:                     ; preds = %kvm_msr_entry_add.exit94.i.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.f, i64 30472
  %i.adh = load i64, ptr %i.adg, align 8
  %i.adi = or i64 %i.adh, %i.aan
  %i.adj = shl nuw nsw i32 %i.adf, 4
  %.idx.i96.i.i = zext nneg i32 %i.adj to i64
  %i.adk = getelementptr inbounds nuw i8, ptr %.val49.i.i, i64 %.idx.i96.i.i ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store i32 1152, ptr %i.adl, align 8
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 12
  store i32 0, ptr %i.adm, align 4
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store i64 %i.adi, ptr %i.adn, align 8
  %i.ado = add nuw nsw i32 %i.adf, 1
  store i32 %i.ado, ptr %.val49.i.i, align 8
  %.val48.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.adp = load i32, ptr %.val48.i.i, align 8     ; 3 uses
  %.not.i98.i.i = icmp ugt i32 %i.adp, 254
  br i1 %.not.i98.i.i, label %bb.fh, label %kvm_msr_entry_add.exit100.i.i

bb.fh:                                            ; preds = %kvm_msr_entry_add.exit97.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit100.i.i:                    ; preds = %kvm_msr_entry_add.exit97.i.i
  %i.adq = getelementptr inbounds nuw i8, ptr %i.f, i64 30456
  %i.adr = load i64, ptr %i.adq, align 8
  %i.ads = or i64 %i.adr, %i.aao
  %i.adt = shl nuw nsw i32 %i.adp, 4
  %.idx.i99.i.i = zext nneg i32 %i.adt to i64
  %i.adu = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 %.idx.i99.i.i ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  store i32 1157, ptr %i.adv, align 8
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 12
  store i32 0, ptr %i.adw, align 4
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  store i64 %i.ads, ptr %i.adx, align 8
  %i.ady = add nuw nsw i32 %i.adp, 1
  store i32 %i.ady, ptr %.val48.i.i, align 8
  %.b.i.i = load i1, ptr @has_msr_vmx_vmfunc, align 1
  br i1 %.b.i.i, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %kvm_msr_entry_add.exit100.i.i
  %.val47.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.adz = load i32, ptr %.val47.i.i, align 8     ; 3 uses
  %.not.i101.i.i = icmp ugt i32 %i.adz, 254
  br i1 %.not.i101.i.i, label %bb.fj, label %kvm_msr_entry_add.exit103.i.i

bb.fj:                                            ; preds = %bb.fi
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit103.i.i:                    ; preds = %bb.fi
  %i.aea = getelementptr inbounds nuw i8, ptr %i.f, i64 30480
  %i.aeb = load i64, ptr %i.aea, align 16
  %i.aec = shl nuw nsw i32 %i.adz, 4
  %.idx.i102.i.i = zext nneg i32 %i.aec to i64
  %i.aed = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 %.idx.i102.i.i ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  store i32 1169, ptr %i.aee, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 12
  store i32 0, ptr %i.aef, align 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 16
  store i64 %i.aeb, ptr %i.aeg, align 8
  %i.aeh = add nuw nsw i32 %i.adz, 1
  store i32 %i.aeh, ptr %.val47.i.i, align 8
  br label %bb.fk

bb.fk:                                            ; preds = %kvm_msr_entry_add.exit103.i.i, %kvm_msr_entry_add.exit100.i.i
  %.val46.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.aei = load i32, ptr %.val46.i.i, align 8     ; 3 uses
  %.not.i104.i.i = icmp ugt i32 %i.aei, 254
  br i1 %.not.i104.i.i, label %bb.fl, label %kvm_msr_entry_add.exit106.i.i

bb.fl:                                            ; preds = %bb.fk
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit106.i.i:                    ; preds = %bb.fk
  %i.aej = shl nuw nsw i32 %i.aei, 4
  %.idx.i105.i.i = zext nneg i32 %i.aej to i64
  %i.aek = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 %.idx.i105.i.i ; 3 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  store i32 1158, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 12
  store i32 0, ptr %i.aem, align 4
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  store i64 2147483681, ptr %i.aen, align 8
  %i.aeo = add nuw nsw i32 %i.aei, 1
  store i32 %i.aeo, ptr %.val46.i.i, align 8
  %.val45.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.aep = load i32, ptr %.val45.i.i, align 8     ; 3 uses
  %.not.i107.i.i = icmp ugt i32 %i.aep, 254
  br i1 %.not.i107.i.i, label %bb.fm, label %kvm_msr_entry_add.exit109.i.i

bb.fm:                                            ; preds = %kvm_msr_entry_add.exit106.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit109.i.i:                    ; preds = %kvm_msr_entry_add.exit106.i.i
  %i.aeq = shl nuw nsw i32 %i.aep, 4
  %.idx.i108.i.i = zext nneg i32 %i.aeq to i64
  %i.aer = getelementptr inbounds nuw i8, ptr %.val45.i.i, i64 %.idx.i108.i.i ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  store i32 1160, ptr %i.aes, align 8
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aer, i64 12
  store i32 0, ptr %i.aet, align 4
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  store i64 8192, ptr %i.aeu, align 8
  %i.aev = add nuw nsw i32 %i.aep, 1
  store i32 %i.aev, ptr %.val45.i.i, align 8
  %i.aew = getelementptr inbounds nuw i8, ptr %i.f, i64 30248
  %i.aex = load i64, ptr %i.aew, align 8
  %i.aey = and i64 %i.aex, 131072
  %.not39.i.i = icmp eq i64 %i.aey, 0
  br i1 %.not39.i.i, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %kvm_msr_entry_add.exit109.i.i
  %.val44.i.i = load ptr, ptr %i.wp, align 8      ; 3 uses
  %i.aez = load i32, ptr %.val44.i.i, align 8     ; 3 uses
  %.not.i110.i.i = icmp ugt i32 %i.aez, 254
  br i1 %.not.i110.i.i, label %bb.fo, label %kvm_msr_entry_add.exit112.i.i

bb.fo:                                            ; preds = %bb.fn
  call void @__assert_fail(ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.18, i32 noundef 3859, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_msr_entry_add) #31
  unreachable

kvm_msr_entry_add.exit112.i.i:                    ; preds = %bb.fn
  %i.afa = shl nuw nsw i32 %i.aez, 4
  %.idx.i111.i.i = zext nneg i32 %i.afa to i64
end_hunk_0
