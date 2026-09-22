Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN11procfs_core3net12DeviceStatus8from_str17hf068e3ca0a16f562E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !449
  store ptr @31, ptr %i.g, align 8, !noalias !450
  %.sroa.4397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4397.0..sroa_idx, align 8, !noalias !450
  %.sroa.5398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.aq, ptr %.sroa.5398.0..sroa_idx, align 8, !noalias !450
  %.sroa.6399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6399.0..sroa_idx, align 8, !noalias !450
  %.sroa.7400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7400.0..sroa_idx, align 8, !noalias !450
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.by unwind label %bb.bx

bb.aj:                                            ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4
  invoke fastcc void @_ZN11procfs_core9from_iter17he4a3c70bf1efc902E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ap, ptr noalias noundef align 8 dereferenceable(64) %i.ci)
          to label %bb.ak unwind label %bb.f

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i64, ptr %i.ap, align 8, !range !13, !noundef !4
  %.not302 = icmp eq i64 %i.ds, -9223372036854775803
  br i1 %.not302, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.ao, ptr %i.am, align 8
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4258.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !451
  store ptr @31, ptr %i.f, align 8, !noalias !452
  %.sroa.4403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4403.0..sroa_idx, align 8, !noalias !452
  %.sroa.5404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.am, ptr %.sroa.5404.0..sroa_idx, align 8, !noalias !452
  %.sroa.6405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6405.0..sroa_idx, align 8, !noalias !452
  %.sroa.7406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7406.0..sroa_idx, align 8, !noalias !452
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.bv unwind label %bb.bu

bb.am:                                            ; preds = %bb.ak
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !noundef !4
  invoke fastcc void @_ZN11procfs_core9from_iter17he4a3c70bf1efc902E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.al, ptr noalias noundef align 8 dereferenceable(64) %i.ci)
          to label %bb.an unwind label %bb.f

bb.an:                                            ; preds = %bb.am
  %i.dv = load i64, ptr %i.al, align 8, !range !13, !noundef !4
  %.not303 = icmp eq i64 %i.dv, -9223372036854775803
  br i1 %.not303, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %i.ak, ptr %i.ai, align 8
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4264.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !453
  store ptr @31, ptr %i.e, align 8, !noalias !454
  %.sroa.4409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4409.0..sroa_idx, align 8, !noalias !454
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ai, ptr %.sroa.5410.0..sroa_idx, align 8, !noalias !454
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6411.0..sroa_idx, align 8, !noalias !454
  %.sroa.7412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7412.0..sroa_idx, align 8, !noalias !454
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.bs unwind label %bb.br

bb.ap:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !4
  invoke fastcc void @_ZN11procfs_core9from_iter17he4a3c70bf1efc902E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ah, ptr noalias noundef align 8 dereferenceable(64) %i.ci)
          to label %bb.aq unwind label %bb.f

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load i64, ptr %i.ah, align 8, !range !13, !noundef !4
  %.not304 = icmp eq i64 %i.dy, -9223372036854775803
  br i1 %.not304, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.ag, ptr %i.ae, align 8
  %.sroa.4270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4270.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !455
  store ptr @31, ptr %i.d, align 8, !noalias !456
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4415.0..sroa_idx, align 8, !noalias !456
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ae, ptr %.sroa.5416.0..sroa_idx, align 8, !noalias !456
  %.sroa.6417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6417.0..sroa_idx, align 8, !noalias !456
  %.sroa.7418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7418.0..sroa_idx, align 8, !noalias !456
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.bp unwind label %bb.bo

bb.as:                                            ; preds = %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !4
  invoke fastcc void @_ZN11procfs_core9from_iter17he4a3c70bf1efc902E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef align 8 dereferenceable(64) %i.ci)
          to label %bb.at unwind label %bb.f

bb.at:                                            ; preds = %bb.as
  %i.eb = load i64, ptr %i.ad, align 8, !range !13, !noundef !4
  %.not305 = icmp eq i64 %i.eb, -9223372036854775803
  br i1 %.not305, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ac, ptr %i.aa, align 8
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4276.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !457
  store ptr @31, ptr %i.c, align 8, !noalias !458
  %.sroa.4421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4421.0..sroa_idx, align 8, !noalias !458
  %.sroa.5422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aa, ptr %.sroa.5422.0..sroa_idx, align 8, !noalias !458
  %.sroa.6423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6423.0..sroa_idx, align 8, !noalias !458
  %.sroa.7424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7424.0..sroa_idx, align 8, !noalias !458
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.bm unwind label %bb.bl

bb.av:                                            ; preds = %bb.at
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !4
  invoke fastcc void @_ZN11procfs_core9from_iter17he4a3c70bf1efc902E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.z, ptr noalias noundef align 8 dereferenceable(64) %i.ci)
          to label %bb.aw unwind label %bb.f

bb.aw:                                            ; preds = %bb.av
  %i.ee = load i64, ptr %i.z, align 8, !range !13, !noundef !4
  %.not306 = icmp eq i64 %i.ee, -9223372036854775803
  br i1 %.not306, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.y, ptr %i.w, align 8
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4282.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !459
  store ptr @31, ptr %i.b, align 8, !noalias !460
  %.sroa.4427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4427.0..sroa_idx, align 8, !noalias !460
  %.sroa.5428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.w, ptr %.sroa.5428.0..sroa_idx, align 8, !noalias !460
  %.sroa.6429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6429.0..sroa_idx, align 8, !noalias !460
  %.sroa.7430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7430.0..sroa_idx, align 8, !noalias !460
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.bj unwind label %bb.bi

bb.ay:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !noundef !4
  invoke fastcc void @_ZN11procfs_core9from_iter17he4a3c70bf1efc902E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.v, ptr noalias noundef align 8 dereferenceable(64) %i.ci)
          to label %bb.az unwind label %bb.f

bb.az:                                            ; preds = %bb.ay
  %i.eh = load i64, ptr %i.v, align 8, !range !13, !noundef !4
  %.not307 = icmp eq i64 %i.eh, -9223372036854775803
  br i1 %.not307, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.u, ptr %i.s, align 8
  %.sroa.4288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4288.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !461
  store ptr @31, ptr %i.a, align 8, !noalias !462
  %.sroa.4433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4433.0..sroa_idx, align 8, !noalias !462
  %.sroa.5434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.s, ptr %.sroa.5434.0..sroa_idx, align 8, !noalias !462
  %.sroa.6435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6435.0..sroa_idx, align 8, !noalias !462
  %.sroa.7436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7436.0..sroa_idx, align 8, !noalias !462
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bf unwind label %bb.be

bb.bb:                                            ; preds = %bb.az
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !4
  %i.ek = tail call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$16trim_end_matches17h9d64ea04c3104941E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload) ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ek, 0
  %i.em = extractvalue { ptr, i64 } %i.ek, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.el, i64 noundef %i.em)
          to label %bb.bc unwind label %bb.f

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %.sroa.4167.0..sroa_idx, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ct, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cw, ptr %.sroa.6169.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.cz, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dc, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.df, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.di, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.dl, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.do, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.dr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.du, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.dx, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ea, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ed, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.eg, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.ej, ptr %.sroa.19.0..sroa_idx, align 8
  %i.en = icmp eq i64 %.sroa.0336.0.copyload, 0
  br i1 %i.en, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit333", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0336.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit333"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit333": ; preds = %bb.bd, %bb.bc, %bb.de, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  ret void

bb.be:                                            ; preds = %bb.ba
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.u) #39
          to label %bb.d unwind label %bb.bh

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @33, ptr %.sroa.4162.0..sroa_idx, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 98, ptr %.sroa.5163.0..sroa_idx, align 8
  %.sroa.6164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 558, ptr %.sroa.6164.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.u)
          to label %bb.bg unwind label %bb.f

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.cy

bb.bh:                                            ; preds = %bb.dd, %bb.da, %bb.cv, %bb.cs, %bb.cp, %bb.cm, %bb.cj, %bb.cg, %bb.cd, %bb.ca, %bb.bx, %bb.bu, %bb.br, %bb.bo, %bb.bl, %bb.bi, %bb.be
  %i.eq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #40
  unreachable

bb.bi:                                            ; preds = %bb.ax
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.y) #39
          to label %bb.d unwind label %bb.bh

bb.bj:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @33, ptr %.sroa.4152.0..sroa_idx, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 98, ptr %.sroa.5153.0..sroa_idx, align 8
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 557, ptr %.sroa.6154.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.y)
          to label %bb.bk unwind label %bb.f

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.cy

bb.bl:                                            ; preds = %bb.au
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ac) #39
          to label %bb.d unwind label %bb.bh

bb.bm:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @33, ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 98, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 556, ptr %.sroa.6144.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ac)
          to label %bb.bn unwind label %bb.f

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cy

bb.bo:                                            ; preds = %bb.ar
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ag) #39
          to label %bb.d unwind label %bb.bh

bb.bp:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @33, ptr %.sroa.4132.0..sroa_idx, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 98, ptr %.sroa.5133.0..sroa_idx, align 8
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 555, ptr %.sroa.6134.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ag)
          to label %bb.bq unwind label %bb.f

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cy

bb.br:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ak) #39
          to label %bb.d unwind label %bb.bh

bb.bs:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %.sroa.4122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @33, ptr %.sroa.4122.0..sroa_idx, align 8
  %.sroa.5123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 98, ptr %.sroa.5123.0..sroa_idx, align 8
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 554, ptr %.sroa.6124.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
          to label %bb.bt unwind label %bb.f

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.cy

bb.bu:                                            ; preds = %bb.al
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE"(ptr noalias noundef align 8 dereferenceable(48) %i.ao) #39
          to label %bb.d unwind label %bb.bh

bb.bv:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @33, ptr %.sroa.4112.0..sroa_idx, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 98, ptr %.sroa.5113.0..sroa_idx, align 8
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@_ZN11procfs_core5locks4Lock9from_line17h22edc811bebde9cfE:bb.a
    i64 -9223372036854775808, label %bb.dk
    i64 0, label %bb.dk
  ]

bb.dh:                                            ; preds = %.thread873
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9690.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9690.0, i64 noundef %.sroa.0689.0, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.dk

.thread853:                                       ; preds = %bb.db, %bb.da, %bb.cu, %bb.ct, %bb.co, %bb.cn, %bb.ci, %bb.ch, %.thread861
  %.pn547856 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread861 ], [ %i.js, %bb.cu ], [ %i.jc, %bb.ci ], [ %i.jk, %bb.co ], [ %i.jc, %bb.ch ], [ %i.jk, %bb.cn ], [ %i.js, %bb.ct ], [ %i.kb, %bb.da ], [ %i.kb, %bb.db ] ; 4 uses
  switch i64 %.sroa.0689.0, label %bb.di [
    i64 -9223372036854775807, label %bb.dm
    i64 -9223372036854775808, label %bb.dm
    i64 0, label %bb.dm
  ]

bb.di:                                            ; preds = %.thread853
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9690.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9690.0, i64 noundef %.sroa.0689.0, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.dm

bb.dj:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @83, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 100, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 164, ptr %.sroa.684.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.thread873, %.thread873, %.thread873, %bb.dh
  switch i64 %.sroa.0680.0, label %bb.dl [
    i64 -9223372036854775807, label %bb.dp
    i64 -9223372036854775808, label %bb.dp
    i64 0, label %bb.dp
  ]

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.0680.0, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.dp

bb.dm:                                            ; preds = %bb.s, %.thread853, %.thread853, %.thread853, %bb.di
  %.pn549.ph = phi { ptr, i32 } [ %i.el, %bb.s ], [ %.pn547856, %.thread853 ], [ %.pn547856, %.thread853 ], [ %.pn547856, %.thread853 ], [ %.pn547856, %bb.di ] ; 4 uses
  switch i64 %.sroa.0680.0, label %bb.dn [
    i64 -9223372036854775807, label %bb.dr
    i64 -9223372036854775808, label %bb.dr
    i64 0, label %bb.dr
  ]

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.0680.0, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.dr

bb.do:                                            ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kl, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @83, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 100, ptr %.sroa.565.0..sroa_idx, align 8
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 163, ptr %.sroa.666.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dk, %bb.dk, %bb.dk, %bb.dl
  %.val594 = load i64, ptr %i.co, align 8, !range !1074, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val594, 0
  br i1 %switch, label %bb.dq, label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..locks..LockType$GT$17hf4dedd69e8bf42f9E.exit"

bb.dq:                                            ; preds = %bb.dp
  %i.km = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.val595 = load ptr, ptr %i.km, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val595, i64 noundef %.val594, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr49drop_in_place$LT$procfs_core..locks..LockType$GT$17hf4dedd69e8bf42f9E.exit"

.thread857:                                       ; preds = %"_ZN4core3ptr49drop_in_place$LT$procfs_core..locks..LockMode$GT$17h2180622096747f8fE.exit", %bb.dr
  %.pn551845 = phi { ptr, i32 } [ %.pn551.ph, %bb.dr ], [ %.pn, %"_ZN4core3ptr49drop_in_place$LT$procfs_core..locks..LockMode$GT$17h2180622096747f8fE.exit" ]
  resume { ptr, i32 } %.pn551845

bb.dr:                                            ; preds = %bb.l, %bb.dm, %bb.dm, %bb.dm, %bb.dn
  %.pn551.ph = phi { ptr, i32 } [ %i.dp, %bb.l ], [ %.pn549.ph, %bb.dm ], [ %.pn549.ph, %bb.dm ], [ %.pn549.ph, %bb.dm ], [ %.pn549.ph, %bb.dn ]
  %.val592 = load i64, ptr %i.co, align 8, !range !1074, !noundef !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.val593 = load ptr, ptr %i.kn, align 8
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$procfs_core..locks..LockType$GT$17hf4dedd69e8bf42f9E"(i64 %.val592, ptr %.val593) #39
  br label %.thread857
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core6mounts14unmangle_octal17h5e9b16983b09f5dfE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [144 x i8], align 8               ; 21 uses
  %i.d = icmp slt i64 %2, 0
  br i1 %i.d, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1171
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !1171 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !1172
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 4, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr @96, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 4, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @97, ptr %.sroa.744.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 1, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @98, ptr %.sroa.946.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 4, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr @99, ptr %.sroa.1148.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 1, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.1350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @100, ptr %.sroa.1350.0..sroa_idx, align 8
  %.sroa.1451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i64 4, ptr %.sroa.1451.0..sroa_idx, align 8
  %.sroa.1552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr @101, ptr %.sroa.1552.0..sroa_idx, align 8
  %.sroa.1653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 1, ptr %.sroa.1653.0..sroa_idx, align 8
  %.sroa.1754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr @102, ptr %.sroa.1754.0..sroa_idx, align 8
  %.sroa.1855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i64 4, ptr %.sroa.1855.0..sroa_idx, align 8
  %.sroa.1956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @103, ptr %.sroa.1956.0..sroa_idx, align 8
  %.sroa.2057.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 1, ptr %.sroa.2057.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.30134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.35135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  br label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit"

bb.c:                                             ; preds = %.invoke
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76"
  %i.i = phi i64 [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ %i.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ] ; 2 uses
  %.sroa.0.0329 = phi i64 [ %2, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ %.sroa.0121.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ] ; 5 uses
  %.sroa.8.0326 = phi ptr [ %.sroa.10.0.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ %.sroa.6122.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ] ; 10 uses
  %.sroa.11.0325 = phi i64 [ %2, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit" ], [ %.sroa.9.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76" ] ; 25 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.j = add nuw nsw i64 %i.i, 1                  ; 3 uses
  store i64 %i.j, ptr %i.c, align 8, !alias.scope !1175, !noalias !1174
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.542.0..sroa_idx, i64 %i.i ; 4 uses
  %.sroa.0119.0.copyload = load ptr, ptr %i.k, align 8, !alias.scope !1176 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1176 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1176 ; 3 uses
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.8120.0.copyload = load i64, ptr %.sroa.8120.0..sroa_idx, align 8, !alias.scope !1176 ; 6 uses
  %.not = icmp eq ptr %.sroa.0119.0.copyload, null
  br i1 %.not, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit.thread", label %bb.d

bb.d:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h6ae0b7bad84b037dE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload), "nonnull"(ptr %.sroa.8.0326) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.l = icmp eq i64 %.sroa.6.0.copyload, 1
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %.sroa.0119.0.copyload, align 1, !alias.scope !1178, !noalias !1180, !noundef !4 ; 3 uses
  %i.n = icmp eq i64 %.sroa.8120.0.copyload, 1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %.sroa.7.0.copyload, align 1, !alias.scope !1179, !noalias !1181, !noundef !4 ; 3 uses
  %i.p = icmp slt i64 %.sroa.11.0325, 0
  br i1 %i.p, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.q = icmp samesign eq i64 %.sroa.11.0325, 0
  br i1 %i.q, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1182
  %i.r = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.11.0325, i64 noundef range(i64 1, 9) 1) #38, !noalias !1182 ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.invoke, label %iter.check

iter.check:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %.sroa.11.0325, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check785 = icmp ult i64 %.sroa.11.0325, 32
  br i1 %min.iters.check785, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %.sroa.11.0325, 24
  %n.vec = and i64 %.sroa.11.0325, 9223372036854775776 ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert786 = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %broadcast.splat787 = shufflevector <16 x i8> %broadcast.splatinsert786, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.8.0326, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !alias.scope !1177, !noalias !1183 ; 2 uses
  %wide.load788 = load <16 x i8>, ptr %i.v, align 1, !alias.scope !1177, !noalias !1183 ; 2 uses
  %i.w = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.x = icmp eq <16 x i8> %wide.load788, %broadcast.splat
  %i.y = select <16 x i1> %i.w, <16 x i8> %broadcast.splat787, <16 x i8> %wide.load
  %i.z = select <16 x i1> %i.x, <16 x i8> %broadcast.splat787, <16 x i8> %wide.load788
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %i.y, ptr %i.aa, align 1, !noalias !1184
  store <16 x i8> %i.z, ptr %i.ab, align 1, !noalias !1184
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.11.0325, %n.vec
  br i1 %cmp.n, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1185

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec789 = and i64 %.sroa.11.0325, 9223372036854775800 ; 3 uses
  %broadcast.splatinsert790 = insertelement <8 x i8> poison, i8 %i.m, i64 0
  %broadcast.splat791 = shufflevector <8 x i8> %broadcast.splatinsert790, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert792 = insertelement <8 x i8> poison, i8 %i.o, i64 0
  %broadcast.splat793 = shufflevector <8 x i8> %broadcast.splatinsert792, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index794 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next796, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.8.0326, i64 %index794
  %wide.load795 = load <8 x i8>, ptr %i.ad, align 1, !alias.scope !1177, !noalias !1183 ; 2 uses
  %i.ae = icmp eq <8 x i8> %wide.load795, %broadcast.splat791
  %i.af = select <8 x i1> %i.ae, <8 x i8> %broadcast.splat793, <8 x i8> %wide.load795
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %index794
  store <8 x i8> %i.af, ptr %i.ag, align 1, !noalias !1184
  %index.next796 = add nuw i64 %index794, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next796, %n.vec789
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n797 = icmp eq i64 %.sroa.11.0325, %n.vec789
  br i1 %cmp.n797, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit", label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph809 = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec789, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i
  %i.ai = phi i64 [ %i.am, %.preheader.i.i.i.i.i.i.i ], [ %.ph809, %.preheader.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.8.0326, i64 %i.ai
  %.val21.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.aj, align 1, !alias.scope !1177, !noalias !1183, !noundef !4 ; 2 uses
  %i.ak = icmp eq i8 %.val21.i.i.i.i.i.i.i.i.i.i, %i.m
  %spec.select.i = select i1 %i.ak, i8 %i.o, i8 %.val21.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ai
  store i8 %spec.select.i, ptr %i.al, align 1, !noalias !1184
  %i.am = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.an = icmp eq i64 %i.am, %.sroa.11.0325
  br i1 %i.an, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h6c570ec40df27d10E.exit", label %.preheader.i.i.i.i.i.i.i, !llvm.loop !1128

bb.g:                                             ; preds = %bb.e, %bb.d
  %.not18.i = icmp ugt i64 %.sroa.6.0.copyload, %.sroa.8120.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1186
  br i1 %.not18.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp slt i64 %.sroa.11.0325, 0
  br i1 %i.ao, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i70, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i70: ; preds = %bb.h
  %i.ap = icmp eq i64 %.sroa.11.0325, 0
  br i1 %i.ap, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i70
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !1187
  %i.aq = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.sroa.11.0325, i64 noundef range(i64 1, 9) 1) #38, !noalias !1187 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i"

.invoke:                                          ; preds = %bb.h, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71", %bb.f, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.as = phi i64 [ 0, %bb.f ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71" ], [ 0, %bb.h ]
  %i.at = phi ptr [ @271, %bb.f ], [ @271, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ @159, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71" ], [ @159, %bb.h ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.as, i64 %.sroa.11.0325, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at) #37
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i70, %bb.g
  %.sroa.06.06164.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i70 ], [ %.sroa.11.0325, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71" ], [ 0, %bb.g ]
  %.sroa.10.0.i.i72 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i70 ], [ %i.aq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i71" ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 2 uses
  store i64 %.sroa.06.06164.i, ptr %i.b, align 8, !noalias !1186
  store ptr %.sroa.10.0.i.i72, ptr %.sroa.4.0..sroa_idx.i73, align 8, !noalias !1186
  store i64 0, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1186
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h2e461a66dd9667e2E(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0326, i64 noundef %.sroa.11.0325, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0119.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" unwind label %bb.k, !noalias !1188

bb.i:                                             ; preds = %.loopexit176, %.loopexit.split-lp, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.k ], [ %lpad.loopexit, %.loopexit176 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !noalias !1186 ; 2 uses
  %i.au = icmp eq i64 %.val.i, 0
  br i1 %i.au, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val26.i = load ptr, ptr %.sroa.4.0..sroa_idx.i73, align 8, !noalias !1186, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !1188
  br label %.body

bb.k:                                             ; preds = %bb.ax, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i"
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h4b1e302b57c17dc7E.exit.i"
  %.sroa.0126.0.copyload = load i64, ptr %i.a, align 8, !noalias !1186
  %.sroa.4127.0.copyload = load i64, ptr %.sroa.4127.0..sroa_idx, align 8, !noalias !1186
  %.sroa.8130.0.copyload = load i64, ptr %.sroa.8130.0..sroa_idx, align 8, !noalias !1186 ; 3 uses
  %.sroa.8130.sroa.0.0.extract.trunc = trunc i64 %.sroa.8130.0.copyload to i8
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !1186 ; 2 uses
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !noalias !1186
  %.sroa.30134.0.copyload = load i64, ptr %.sroa.30134.0..sroa_idx, align 8, !noalias !1186
  %.sroa.35135.0.copyload = load ptr, ptr %.sroa.35135.0..sroa_idx, align 8, !noalias !1186 ; 13 uses
  %.sroa.37.0.copyload = load i64, ptr %.sroa.37.0..sroa_idx, align 8, !noalias !1186 ; 33 uses
  %.sroa.39.0.copyload = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !noalias !1186 ; 5 uses
  %.sroa.40.0.copyload = load i64, ptr %.sroa.40.0..sroa_idx, align 8, !noalias !1186 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1186
  %i.aw = trunc nuw i64 %.sroa.0126.0.copyload to i1
  %i.ax = and i64 %.sroa.8130.0.copyload, 65536
  %.not171 = icmp eq i64 %i.ax, 0
  %i.ay = add i64 %.sroa.40.0.copyload, -1        ; 3 uses
  %.sroa.8130.sroa.9.0.insert.insert144 = and i64 %.sroa.8130.0.copyload, -256 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.bb, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i"
  %.sroa.8130.sroa.0.0 = phi i8 [ %.sroa.8130.sroa.0.0.extract.trunc, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %.sroa.8130.sroa.0.3, %bb.bb ] ; 5 uses
  %.sroa.30134.0 = phi i64 [ %.sroa.30134.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %.sroa.30134.1, %bb.bb ] ; 9 uses
  %.sroa.18.0 = phi i64 [ %.sroa.18.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %.sroa.18.1, %bb.bb ] ; 10 uses
  %.sroa.4127.0 = phi i64 [ %.sroa.4127.0.copyload, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %.sroa.4127.3, %bb.bb ] ; 29 uses
  %i.az = phi ptr [ %.sroa.10.0.i.i72, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %i.hg, %bb.bb ] ; 2 uses
  %i.ba = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %i.hi, %bb.bb ] ; 6 uses
  %.sroa.08.0.i = phi i64 [ 0, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hd8e29eddd8da5a41E.exit.i" ], [ %.sroa.11157.1, %bb.bb ] ; 4 uses
  br i1 %i.aw, label %bb.v, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  br i1 %.not171, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35135.0.copyload) ]
  %i.bb = trunc nuw i8 %.sroa.8130.sroa.0.0 to i1 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.4127.0, 0
  br i1 %i.bc, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.sroa.4127.0, %.sroa.37.0.copyload
  br i1 %.not.i.i.i.peel, label %bb.n, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.m
  %i.bd = icmp eq i64 %.sroa.4127.0, %.sroa.37.0.copyload
  br i1 %i.bd, label %bb.o, label %.loopexit472

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %.sroa.4127.0
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !1189, !noalias !1190, !noundef !4
  %i.bg = icmp sgt i8 %i.bf, -65
  br i1 %i.bg, label %bb.o, label %.loopexit472

bb.o:                                             ; preds = %bb.n, %.split.i.i.i.peel, %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %.sroa.4127.0 ; 4 uses
  %i.bi = icmp samesign eq i64 %.sroa.4127.0, %.sroa.37.0.copyload
  br i1 %i.bi, label %.loopexit473, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = load i8, ptr %i.bh, align 1, !noalias !1191, !noundef !4 ; 5 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.q, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel": ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bm = and i8 %i.bj, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = add nuw nsw i64 %.sroa.4127.0, 1
  %i.bp = icmp samesign ne i64 %i.bo, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.bp), !noalias !1188
  %i.bq = load i8, ptr %i.bl, align 1, !noalias !1191, !noundef !4
  %i.br = shl nuw nsw i32 %i.bn, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32               ; 2 uses
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = icmp samesign ugt i8 %i.bj, -33
  br i1 %i.bv, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel", label %bb.r

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel"
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bx = add nuw nsw i64 %.sroa.4127.0, 2
  %i.by = icmp samesign ne i64 %i.bx, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.by), !noalias !1188
  %i.bz = load i8, ptr %i.bw, align 1, !noalias !1191, !noundef !4
  %i.ca = shl nuw nsw i32 %i.bt, 6
  %i.cb = and i8 %i.bz, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = shl nuw nsw i32 %i.bn, 12
  %i.cf = or disjoint i32 %i.cd, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bj, -17
  br i1 %i.cg, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.peel", label %bb.r

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel"
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.ci = add nuw nsw i64 %.sroa.4127.0, 3
  %i.cj = icmp samesign ne i64 %i.ci, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.cj), !noalias !1188
  %i.ck = load i8, ptr %i.ch, align 1, !noalias !1191, !noundef !4
  %i.cl = shl nuw nsw i32 %i.bn, 18
  %i.cm = and i32 %i.cl, 1835008
  %i.cn = shl nuw nsw i32 %i.cd, 6
  %i.co = and i8 %i.ck, 63
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.cm
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = zext nneg i8 %i.bj to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.cf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.peel" ], [ %i.cr, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.peel" ], [ %i.bu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.peel" ], [ %i.cs, %bb.q ] ; 4 uses
  %i.ct = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.ct), !noalias !1188
  br i1 %i.bb, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.cu, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.cv, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.cw, i64 3, i64 4
  br label %bb.w

bb.v:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35135.0.copyload), "nonnull"(ptr %.sroa.39.0.copyload) ]
  %3 = icmp eq i64 %.sroa.30134.0, -1
  %i.cx = add i64 %.sroa.18.0, %i.ay              ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %.sroa.37.0.copyload ; 2 uses
  br i1 %3, label %bb.am, label %bb.ab

bb.w:                                             ; preds = %bb.s, %bb.t, %bb.u
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.t ], [ %..i.i.peel, %bb.u ], [ 1, %bb.s ]
  %i.cz = add i64 %.sroa.01.0.i.i.peel, %.sroa.4127.0 ; 23 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i = icmp ult i64 %i.cz, %.sroa.37.0.copyload
  br i1 %.not.i.i.i, label %bb.y, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.x
  %i.db = icmp eq i64 %i.cz, %.sroa.37.0.copyload
  br i1 %i.db, label %bb.z, label %.loopexit472

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.cz
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !1189, !noalias !1190, !noundef !4
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %bb.z, label %.loopexit472

bb.z:                                             ; preds = %bb.y, %.split.i.i.i, %bb.w
  %i.df = icmp samesign eq i64 %i.cz, %.sroa.37.0.copyload
  br i1 %i.df, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.cz
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !1191, !noundef !4 ; 3 uses
  %i.di = icmp sgt i8 %i.dh, -1
  br i1 %i.di, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i": ; preds = %bb.aa
  %i.dj = add nuw nsw i64 %i.cz, 1
  %i.dk = icmp samesign ne i64 %i.dj, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.dk), !noalias !1188
  %i.dl = icmp samesign ugt i8 %i.dh, -33
  br i1 %i.dl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i"
  %i.dm = add nuw nsw i64 %i.cz, 2
  %i.dn = icmp samesign ne i64 %i.dm, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.dn), !noalias !1188
  %i.do = icmp samesign ugt i8 %i.dh, -17
  br i1 %i.do, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i"
  %i.dp = add nuw nsw i64 %i.cz, 3
  %i.dq = icmp samesign ne i64 %i.dp, %.sroa.37.0.copyload
  call void @llvm.assume(i1 %i.dq), !noalias !1188
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

.loopexit472:                                     ; preds = %bb.n, %.split.i.i.i.peel, %bb.y, %.split.i.i.i
  %.sroa.4127.1.lcssa = phi i64 [ %i.cz, %bb.y ], [ %i.cz, %.split.i.i.i ], [ %.sroa.4127.0, %.split.i.i.i.peel ], [ %.sroa.4127.0, %bb.n ]
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.35135.0.copyload, i64 noundef %.sroa.37.0.copyload, i64 noundef %.sroa.4127.1.lcssa, i64 noundef %.sroa.37.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @329) #37
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %.loopexit472
  unreachable

.loopexit473:                                     ; preds = %bb.o
  br i1 %i.bb, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit", label %.loopexit

bb.ab:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  br i1 %i.cy, label %.lr.ph.i90, label %.loopexit

.lr.ph.i90:                                       ; preds = %bb.ab
  %.sroa.8130.sroa.0.0.insert.ext138 = zext i8 %.sroa.8130.sroa.0.0 to i64
  %.sroa.8130.sroa.0.0.insert.insert140 = or disjoint i64 %.sroa.8130.sroa.9.0.insert.insert144, %.sroa.8130.sroa.0.0.insert.ext138 ; 2 uses
  %i.dr = sub i64 %.sroa.40.0.copyload, %.sroa.8130.sroa.0.0.insert.insert140
  %invariant.op = sub i64 1, %.sroa.4127.0
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i, %.lr.ph.i90
  %i.ds = phi i64 [ %.sroa.30134.0, %.lr.ph.i90 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.dt = phi i64 [ %i.cx, %.lr.ph.i90 ], [ %i.ed, %.sink.split.i ]
  %i.du = phi i64 [ %.sroa.18.0, %.lr.ph.i90 ], [ %.ph72.i, %.sink.split.i ] ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !1192, !noalias !1194, !noundef !4
  %i.dx = and i8 %i.dw, 63
  %i.dy = zext nneg i8 %i.dx to i64
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %.sroa.16.0.copyload
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ec = add i64 %i.du, %.sroa.40.0.copyload
  br label %.sink.split.i

bb.ae:                                            ; preds = %bb.ac
  %.sroa.0.0.i.i92 = call i64 @llvm.umax.i64(i64 %i.ds, i64 %.sroa.4127.0) ; 4 uses
  %umax50.i93 = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i92, i64 %.sroa.40.0.copyload)
  %exitcond.not.i95772.not = icmp ult i64 %.sroa.0.0.i.i92, %.sroa.40.0.copyload
  br i1 %exitcond.not.i95772.not, label %.lr.ph, label %.preheader173.preheader

.sink.split.i:                                    ; preds = %bb.al, %bb.ai, %bb.ad
  %.sink.i = phi i64 [ %i.dr, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ad ]
  %.ph72.i = phi i64 [ %i.et, %bb.ai ], [ %i.ez, %bb.al ], [ %i.ec, %bb.ad ] ; 2 uses
  %i.ed = add i64 %.ph72.i, %i.ay                 ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %.sroa.37.0.copyload
  br i1 %i.ee, label %bb.ac, label %.loopexit

bb.af:                                            ; preds = %bb.aj
  %i.ef = add i64 %.sroa.02.0.i94773, 1           ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %i.ef, %umax50.i93
  br i1 %exitcond.not.i95, label %.preheader173.preheader, label %.lr.ph

.preheader173.preheader:                          ; preds = %bb.af, %bb.ae
  %i.eg = icmp ult i64 %i.ds, %.sroa.4127.0
  br i1 %i.eg, label %.lr.ph775, label %.preheader173.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.02.0.i94773 = phi i64 [ %i.ef, %bb.af ], [ %.sroa.0.0.i.i92, %bb.ae ] ; 4 uses
  %i.eh = add i64 %.sroa.02.0.i94773, %i.du       ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %.sroa.37.0.copyload
  br i1 %i.ei, label %bb.aj, label %bb.ak

.preheader173:                                    ; preds = %bb.ah
  %i.ej = icmp ult i64 %i.ds, %i.el
  br i1 %i.ej, label %.lr.ph775, label %.preheader173.preheader._crit_edge

.preheader173.preheader._crit_edge:               ; preds = %.preheader173.preheader, %.preheader173
  %i.ek = add i64 %i.du, %.sroa.40.0.copyload     ; 2 uses
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hb2017821d4657afdE.exit"

.lr.ph775:                                        ; preds = %.preheader173.preheader, %.preheader173
  %.sroa.57.0.i98774 = phi i64 [ %i.el, %.preheader173 ], [ %.sroa.4127.0, %.preheader173.preheader ]
  %i.el = add i64 %.sroa.57.0.i98774, -1          ; 6 uses
  %i.em = icmp ult i64 %i.el, %.sroa.40.0.copyload
  br i1 %i.em, label %bb.ag, label %.invoke798

bb.ag:                                            ; preds = %.lr.ph775
  %i.en = add i64 %i.el, %i.du                    ; 3 uses
  %i.eo = icmp ult i64 %i.en, %.sroa.37.0.copyload
  br i1 %i.eo, label %bb.ah, label %.invoke798

bb.ah:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 %i.el
  %i.eq = load i8, ptr %i.ep, align 1, !alias.scope !1193, !noalias !1195, !noundef !4
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.en
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !1192, !noalias !1194, !noundef !4
  %.not.i99 = icmp eq i8 %i.eq, %i.es
  br i1 %.not.i99, label %.preheader173, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = add i64 %i.du, %.sroa.8130.sroa.0.0.insert.insert140
  br label %.sink.split.i

bb.aj:                                            ; preds = %.lr.ph
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 %.sroa.02.0.i94773
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !1193, !noalias !1195, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.eh
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !1192, !noalias !1194, !noundef !4
  %.not22.i97 = icmp eq i8 %i.ev, %i.ex
  br i1 %.not22.i97, label %bb.af, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.ey = add i64 %i.du, %.sroa.0.0.i.i92
  %umax.i96 = call i64 @llvm.umax.i64(i64 %.sroa.37.0.copyload, i64 %i.ey)
  br label %.invoke798

bb.al:                                            ; preds = %bb.aj
  %.reass.reass = add i64 %i.du, %invariant.op
  %i.ez = add i64 %.reass.reass, %.sroa.02.0.i94773
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  br i1 %i.cy, label %.lr.ph.i82, label %.loopexit

.lr.ph.i82:                                       ; preds = %bb.am
  %.sroa.8130.sroa.0.0.insert.ext = zext i8 %.sroa.8130.sroa.0.0 to i64
  %.sroa.8130.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8130.sroa.9.0.insert.insert144, %.sroa.8130.sroa.0.0.insert.ext
  %umax50.i = call i64 @llvm.umax.i64(i64 %.sroa.4127.0, i64 %.sroa.40.0.copyload)
  %i.fa = add i64 %.sroa.4127.0, -1
  %.first_iter = icmp ult i64 %i.fa, %.sroa.40.0.copyload
  %exitcond.not.i777.not = icmp ult i64 %.sroa.4127.0, %.sroa.40.0.copyload
  %invariant.op997 = sub i64 1, %.sroa.4127.0
  %.not172780 = icmp eq i64 %.sroa.4127.0, 0
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i82
  %i.fb = phi i64 [ %i.cx, %.lr.ph.i82 ], [ %i.fm, %bb.ap ]
  %i.fc = phi i64 [ %.sroa.18.0, %.lr.ph.i82 ], [ %i.fl, %bb.ap ] ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.35135.0.copyload, i64 %i.fb
  %i.fe = load i8, ptr %i.fd, align 1, !alias.scope !1196, !noalias !1198, !noundef !4
  %i.ff = and i8 %i.fe, 63
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = shl nuw i64 1, %i.fg
  %i.fi = and i64 %i.fh, %.sroa.16.0.copyload
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.ao, label %.preheader333.preheader

.preheader333.preheader:                          ; preds = %bb.an
end_hunk_1
begin_hunk_2_@_ZN11procfs_core7process4stat4Stat5flags17hcacf6de0965e713aE:bb.a
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2580
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.c, !noalias !2576

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.val17.i = load i64, ptr %i.d, align 8, !noalias !2576 ; 2 uses
  %i.l = icmp eq i64 %.val17.i, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val18.i = load ptr, ptr %i.m, align 8, !noalias !2576, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i, i64 noundef %.val17.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !2576
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i"

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2579
  %.val.i = load i64, ptr %i.d, align 8, !noalias !2576 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %"_ZN11procfs_core7process4stat4Stat5flags28_$u7b$$u7b$closure$u7d$$u7d$17h8a42e0afc0ffacc7E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val16.i = load ptr, ptr %i.o, align 8, !noalias !2576, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !2576
  br label %"_ZN11procfs_core7process4stat4Stat5flags28_$u7b$$u7b$closure$u7d$$u7d$17h8a42e0afc0ffacc7E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.k

"_ZN11procfs_core7process4stat4Stat5flags28_$u7b$$u7b$closure$u7d$$u7d$17h8a42e0afc0ffacc7E.exit": ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @195, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 107, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 388, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.p, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN11procfs_core7process4stat4Stat5flags28_$u7b$$u7b$closure$u7d$$u7d$17h8a42e0afc0ffacc7E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process4stat4Stat5state17hde8fe368b87ecf7aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(480) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !range !2597, !noundef !4
  %switch.tableidx = add nsw i32 %i.h, -68        ; 3 uses
  %i.i = icmp ult i32 %switch.tableidx, 53
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 4785074609967265, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2598
  store ptr %i.g, ptr %i.c, align 8, !noalias !2598
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17h29b3470f828dfb36E", ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2599
  store ptr @197, ptr %i.b, align 8, !noalias !2600
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !2600
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !2600
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !2600
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.79.0..sroa_idx.i, align 8, !noalias !2600
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !2598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2598
  store ptr %i.d, ptr %i.e, align 8, !noalias !2598
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !2598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2601
  store ptr @31, ptr %i.a, align 8, !noalias !2602
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx2.i, align 8, !noalias !2602
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !2602
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !2602
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2602
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.c, !noalias !2598

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val15.i = load i64, ptr %i.d, align 8, !noalias !2598 ; 2 uses
  %i.k = icmp eq i64 %.val15.i, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val16.i = load ptr, ptr %i.l, align 8, !noalias !2598, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i, i64 noundef %.val15.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !2598
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i"

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2601
  %.val.i = load i64, ptr %i.d, align 8, !noalias !2598 ; 2 uses
  %i.m = icmp eq i64 %.val.i, 0
  br i1 %i.m, label %"_ZN11procfs_core7process4stat4Stat5state28_$u7b$$u7b$closure$u7d$$u7d$17h2e483102d42e5e33E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val14.i = load ptr, ptr %i.n, align 8, !noalias !2598, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !2598
  br label %"_ZN11procfs_core7process4stat4Stat5state28_$u7b$$u7b$closure$u7d$$u7d$17h2e483102d42e5e33E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

"_ZN11procfs_core7process4stat4Stat5state28_$u7b$$u7b$closure$u7d$$u7d$17h2e483102d42e5e33E.exit": ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @195, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 107, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 369, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.g

switch.lookup:                                    ; preds = %bb.a
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN78_$LT$procfs_core..process..ProcState$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h95df40464c4048d9E", i64 %i.o
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %switch.load, ptr %i.p, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup, %"_ZN11procfs_core7process4stat4Stat5state28_$u7b$$u7b$closure$u7d$$u7d$17h2e483102d42e5e33E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process5limit5Limit9from_pair17hc0c08dae2024b179E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.084.0.copyload = load i64, ptr %i.c, align 8 ; 10 uses
  %.sroa.1085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.1085.0.copyload = load ptr, ptr %.sroa.1085.0..sroa_idx, align 8 ; 9 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN86_$LT$procfs_core..process..limit..LimitValue$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hcd6a39a1cae149c4E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.11.0.copyload, i64 noundef %.sroa.18.0.copyload)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = icmp eq i64 %.sroa.084.0.copyload, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1085.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1085.0.copyload, i64 noundef %.sroa.084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !13, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.f, -9223372036854775803
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.435.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.731.0..sroa_idx, i64 24, i1 false)
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load <2 x i64>, ptr %.sroa.529.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %0, align 8
  store <2 x i64> %2, ptr %.sroa.233.0..sroa_idx, align 8
  %i.g = icmp eq i64 %.sroa.084.0.copyload, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit74", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1085.0.copyload) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1085.0.copyload, i64 noundef %.sroa.084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit74"

bb.g:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1085.0.copyload) ]
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %4 = load <2 x i64>, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN86_$LT$procfs_core..process..limit..LimitValue$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hcd6a39a1cae149c4E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.1085.0.copyload, i64 noundef %.sroa.16.0.copyload)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = icmp eq i64 %.sroa.084.0.copyload, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1085.0.copyload, i64 noundef %.sroa.084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75"

bb.j:                                             ; preds = %bb.g
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noundef !4 ; 2 uses
  %.not50 = icmp eq i64 %i.j, -9223372036854775803
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.743.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.j, ptr %0, align 8
  %.sroa.245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %.sroa.245.0..sroa_idx, align 8
  %.sroa.346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.346.0..sroa_idx, align 8
  %i.o = icmp eq i64 %.sroa.084.0.copyload, 0
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76", label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1085.0.copyload, i64 noundef %.sroa.084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76"

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %4, ptr %i.p, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.l, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.n, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  %i.q = icmp eq i64 %.sroa.084.0.copyload, 0
  br i1 %i.q, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit77", label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1085.0.copyload, i64 noundef %.sroa.084.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit77"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit77": ; preds = %bb.n, %bb.m
  %i.r = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.r, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82.sink.split": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit77", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit74", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82.sink.split", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit77", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit74"
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit76": ; preds = %bb.l, %bb.k
  %i.s = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.s, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81.sink.split": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75"
  %.pn.pn.ph = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75" ], [ %i.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81.sink.split", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75"
  %.pn.pn = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75" ], [ %i.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit" ], [ %.pn.pn.ph, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81.sink.split" ]
  resume { ptr, i32 } %.pn.pn

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit75": ; preds = %bb.i, %bb.h
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit74": ; preds = %bb.f, %bb.e
  %i.u = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.u, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit82.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.c, %bb.b
  %i.v = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.v, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit81.sink.split"
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process5mount14NFSByteCounter8from_str17h3a0594acce0c748bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 2 uses
  %i.ad = alloca [1 x i8], align 1                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [1 x i8], align 1                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 4 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 2 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %i.av = alloca [1 x i8], align 1                ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [16 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 2 uses
  %i.az = alloca [16 x i8], align 8               ; 7 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [24 x i8], align 8               ; 2 uses
  %i.be = alloca [1 x i8], align 1                ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 2 uses
  %i.bi = alloca [16 x i8], align 8               ; 7 uses
  %i.bj = alloca [32 x i8], align 8               ; 7 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 8 uses
  %i.bm = alloca [24 x i8], align 8               ; 2 uses
  %i.bn = alloca [1 x i8], align 1                ; 4 uses
  %i.bo = alloca [16 x i8], align 8               ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 2 uses
  %i.br = alloca [16 x i8], align 8               ; 7 uses
  %i.bs = alloca [32 x i8], align 8               ; 7 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %i.bv = alloca [24 x i8], align 8               ; 2 uses
  %i.bw = alloca [1 x i8], align 1                ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 2 uses
  %i.bz = alloca [16 x i8], align 8               ; 7 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [24 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 2 uses
  %i.ce = alloca [1 x i8], align 1                ; 4 uses
  %i.cf = alloca [16 x i8], align 8               ; 5 uses
  %i.cg = alloca [24 x i8], align 8               ; 2 uses
  %i.ch = alloca [16 x i8], align 8               ; 7 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [16 x i8], align 8               ; 5 uses
  %i.ck = alloca [24 x i8], align 8               ; 8 uses
  %i.cl = alloca [24 x i8], align 8               ; 2 uses
  %i.cm = alloca [1 x i8], align 1                ; 4 uses
  %i.cn = alloca [16 x i8], align 8               ; 5 uses
  %i.co = alloca [24 x i8], align 8               ; 2 uses
  %i.cp = alloca [16 x i8], align 8               ; 7 uses
  %i.cq = alloca [64 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.cq, align 8
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %2, ptr %.sroa.4233.0..sroa_idx, align 8
  %.sroa.5234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %1, ptr %.sroa.5234.0..sroa_idx, align 8
  %.sroa.5234.sroa.4.0..sroa.5234.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 %2, ptr %.sroa.5234.sroa.4.0..sroa.5234.0..sroa_idx.sroa_idx, align 8
  %.sroa.5234.sroa.5.0..sroa.5234.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store ptr %1, ptr %.sroa.5234.sroa.5.0..sroa.5234.0..sroa_idx.sroa_idx, align 8
  %.sroa.5234.sroa.6.0..sroa.5234.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  store ptr %i.cr, ptr %.sroa.5234.sroa.6.0..sroa.5234.0..sroa_idx.sroa_idx, align 8
  %.sroa.5234.sroa.7.0..sroa.5234.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store i64 0, ptr %.sroa.5234.sroa.7.0..sroa.5234.0..sroa_idx.sroa_idx, align 8
  %.sroa.6235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  store i8 1, ptr %.sroa.6235.0..sroa_idx, align 8
  %.sroa.7236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 57
  store i8 0, ptr %.sroa.7236.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.cs = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cq) ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 8 uses
  %.not = icmp eq ptr %i.ct, null
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1      ; 7 uses
  %.sink788.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sink788.sroa.gep827 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sink788.sroa.gep828 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sink788.sroa.gep829 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sink788.sroa.gep830 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sink788.sroa.gep831 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sink788.sroa.gep832 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sink788.sroa.gep833 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store ptr %i.a, ptr %i.cn, align 8
  %.sroa.4245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4245.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2780
  store ptr @31, ptr %i.y, align 8, !noalias !2781
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2781
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.cn, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2781
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2781
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2781
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_ZN11procfs_core7process9MemoryMap9from_line17hecf8740dfdcb4bebE:.lr.ph.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.aq

bb.av:                                            ; preds = %.thread576, %.thread581, %.thread586, %.thread591, %.thread596
  %.sink896 = phi ptr [ %i.aj, %.thread576 ], [ %i.ah, %.thread581 ], [ %i.af, %.thread586 ], [ %i.ad, %.thread591 ], [ %i.ab, %.thread596 ]
  %.sink = phi i32 [ 614, %.thread576 ], [ 615, %.thread581 ], [ 616, %.thread586 ], [ 617, %.thread591 ], [ 618, %.thread596 ]
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ip, ptr noundef nonnull align 8 dereferenceable(24) %.sink896, i64 24, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @249, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 106, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sink, ptr %.sroa.630.0..sroa_idx, align 8
  store i32 11, ptr %0, align 8
  br label %bb.al
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core8pressure21parse_pressure_record17hed58b7283223087eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 12 uses
  %i.g = alloca [64 x i8], align 8                ; 13 uses
  %i.h = alloca [48 x i8], align 8                ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !8, !noalias !4677, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i", !prof !9

._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.i, align 8, !noalias !4678
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !4678
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbfc2e4a141a00926E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i": ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !4679 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !4679
  store i8 1, ptr %i.j, align 8, !noalias !4679
  br label %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbfc2e4a141a00926E.exit"

"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbfc2e4a141a00926E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i"
  %.pre-phi231 = phi i64 [ %.pre1.i.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i ], [ %i.o, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i" ]
  %i.q = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h4ceea2b75b480abcE.exit_crit_edge.i.i ], [ %i.n, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hae0f59a9b9f60dabE.exit.i.i" ] ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.i, align 8, !noalias !4678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %.sroa.4.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx45, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  store i64 %.pre-phi231, ptr %.sroa.546.0..sroa_idx, align 8
  %.not.i = icmp ult i64 %2, 4
  br i1 %.not.i, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"

.loopexit211:                                     ; preds = %bb.ad
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

.loopexit.split-lp:                               ; preds = %bb.d, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit": ; preds = %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbfc2e4a141a00926E.exit"
  %i.s = load i32, ptr %1, align 1
  %i.t = icmp ne i32 1701670771, %i.s
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.b, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit156"

bb.b:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit156", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"
  %.not.i157 = icmp ugt i64 %2, 5
  br i1 %.not.i157, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.w = icmp eq i64 %2, 5
  br i1 %i.w, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !4680, !noundef !4
  %i.z = icmp sgt i8 %i.y, -65
  br i1 %i.z, label %bb.f, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit156": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"
  %i.aa = load i32, ptr %1, align 1
  %i.ab = icmp ne i32 1819047270, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit"

"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit156", %"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hbfc2e4a141a00926E.exit"
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx, align 8
  br label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167"

"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167": ; preds = %bb.m, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164, %.loopexit, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162, %bb.q, %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit161.sink.split", %bb.h, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i158, %bb.i, %bb.ac, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i166, %.loopexit207, %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.d:                                             ; preds = %bb.c, %.split.i
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 5, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #37
          to label %bb.e unwind label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %.split.i, %bb.c
  %i.ae = add i64 %2, -5                          ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.ag = getelementptr i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.ae, ptr %.sroa.270.0..sroa_idx, align 8
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.af, ptr %.sroa.371.0..sroa_idx, align 8
  %.sroa.371.sroa.2.0..sroa.371.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ae, ptr %.sroa.371.sroa.2.0..sroa.371.0..sroa_idx.sroa_idx, align 8
  %.sroa.371.sroa.3.0..sroa.371.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.af, ptr %.sroa.371.sroa.3.0..sroa.371.0..sroa_idx.sroa_idx, align 8
  %.sroa.371.sroa.4.0..sroa.371.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.ag, ptr %.sroa.371.sroa.4.0..sroa.371.0..sroa_idx.sroa_idx, align 8
  %.sroa.371.sroa.5.0..sroa.371.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %.sroa.371.sroa.5.0..sroa.371.0..sroa_idx.sroa_idx, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i8 1, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 57
  store i8 0, ptr %.sroa.573.0..sroa_idx, align 1
  %i.ah = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.g) ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %.not122218 = icmp eq ptr %i.ai, null
  br i1 %.not122218, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  store i64 0, ptr %i.f, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.581.sroa.4.0..sroa.581.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.581.sroa.5.0..sroa.581.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %.sroa.581.sroa.5.0..sroa.581.0..sroa_idx.sroa_idx, align 8
  %.sroa.581.sroa.6.0..sroa.581.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.581.sroa.7.0..sroa.581.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 61, ptr %.sroa.581.sroa.7.0..sroa.581.0..sroa_idx.sroa_idx, align 8
  %.sroa.581.sroa.8.0..sroa.581.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 61, ptr %.sroa.581.sroa.8.0..sroa.581.0..sroa_idx.sroa_idx, align 4
  %.sroa.581.sroa.9.0..sroa.581.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i8 1, ptr %.sroa.581.sroa.9.0..sroa.581.0..sroa_idx.sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 1, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.783.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 65
  store i8 0, ptr %.sroa.783.0..sroa_idx, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.ad

._crit_edge:                                      ; preds = %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit180", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN11procfs_core8pressure7get_f3217h682a879336491a9aE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @256, i64 noundef 5)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %._crit_edge
  %i.ao = load i64, ptr %i.d, align 8, !range !13, !noundef !4 ; 2 uses
  %.not124 = icmp eq i64 %i.ao, -9223372036854775803
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load float, ptr %i.ap, align 8          ; 2 uses
  br i1 %.not124, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.393.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.393.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.690.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.ao, ptr %0, align 8
  %.sroa.292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.aq, ptr %.sroa.292.0..sroa_idx, align 8
  %.val147 = load ptr, ptr %i.h, align 8          ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val148 = load i64, ptr %i.ar, align 8, !noundef !4 ; 3 uses
  %i.as = icmp eq i64 %.val148, 0
  br i1 %i.as, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i158

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i158: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val147) ]
  %i.at = shl i64 %.val148, 5                     ; 2 uses
  %i.au = add i64 %i.at, 32                       ; 2 uses
  %i.av = add i64 %.val148, 17
  %i.aw = add i64 %i.av, %i.au                    ; 4 uses
  %i.ax = icmp uge i64 %i.aw, %i.au
  %i.ay = icmp ult i64 %i.aw, 9223372036854775793
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %i.ay)
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %bb.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i158
  %i.ba = sub nuw nsw i64 -32, %i.at
  %i.bb = getelementptr inbounds i8, ptr %.val147, i64 %i.ba
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 16) #38
  br label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167"

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke fastcc void @_ZN11procfs_core8pressure7get_f3217h682a879336491a9aE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @257, i64 noundef 5)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.l:                                             ; preds = %bb.j
  %i.bd = load i64, ptr %i.c, align 8, !range !13, !noundef !4 ; 2 uses
  %.not125 = icmp eq i64 %i.bd, -9223372036854775803
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bf = load float, ptr %i.be, align 8          ; 2 uses
  br i1 %.not125, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.3102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3102.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.699.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.bd, ptr %0, align 8
  %.sroa.2101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bf, ptr %.sroa.2101.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val144 = load i64, ptr %i.bg, align 8, !noundef !4 ; 3 uses
  %i.bh = icmp eq i64 %.val144, 0
  br i1 %i.bh, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160: ; preds = %bb.m
  %.val143 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.bi = shl i64 %.val144, 5                     ; 2 uses
  %i.bj = add i64 %i.bi, 32                       ; 2 uses
  %i.bk = add i64 %.val144, 17
  %i.bl = add i64 %i.bk, %i.bj                    ; 4 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  %i.bn = icmp ult i64 %i.bl, 9223372036854775793
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.assume(i1 %i.bn)
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit161.sink.split"

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_ZN11procfs_core8pressure7get_f3217h682a879336491a9aE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @258, i64 noundef 6)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.p:                                             ; preds = %bb.n
  %i.bq = load i64, ptr %i.b, align 8, !range !13, !noundef !4 ; 2 uses
  %.not126 = icmp eq i64 %i.bq, -9223372036854775803
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bs = load float, ptr %i.br, align 8          ; 2 uses
  br i1 %.not126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.3111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3111.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6108.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bq, ptr %0, align 8
  %.sroa.2110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bs, ptr %.sroa.2110.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val140 = load i64, ptr %i.bt, align 8, !noundef !4 ; 3 uses
  %i.bu = icmp eq i64 %.val140, 0
  br i1 %i.bu, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162: ; preds = %bb.q
  %.val139 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.bv = shl i64 %.val140, 5                     ; 2 uses
  %i.bw = add i64 %i.bv, 32                       ; 2 uses
  %i.bx = add i64 %.val140, 17
  %i.by = add i64 %i.bx, %i.bw                    ; 4 uses
  %i.bz = icmp uge i64 %i.by, %i.bw
  %i.ca = icmp ult i64 %i.by, 9223372036854775793
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp eq i64 %i.by, 0
  br i1 %i.cb, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit161.sink.split"

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !4683, !noalias !4684, !noundef !4
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %..loopexit_crit_edge, label %bb.s

..loopexit_crit_edge:                             ; preds = %bb.r
  %.val135.pre = load ptr, ptr %i.h, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val136.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx45, align 8, !alias.scope !4683, !noalias !4684, !noundef !4
  %.val5.i.i = load i64, ptr %.sroa.546.0..sroa_idx, align 8, !alias.scope !4683, !noalias !4684, !noundef !4
  %i.cf = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h3ee00a82475ab215E(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @259, i64 noundef 5), !noalias !4685 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4686)
  call void @llvm.experimental.noalias.scope.decl(metadata !4687)
  %i.cg = lshr i64 %i.cf, 57
  %i.ch = trunc nuw nsw i64 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !4688, !noalias !4689, !noundef !4 ; 12 uses
  %i.ck = load ptr, ptr %i.h, align 8, !alias.scope !4688, !noalias !4689, !nonnull !4, !noundef !4 ; 10 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.ch, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.dl, %bb.u ]
  %.pn.i.i.i = phi i64 [ %i.cf, %bb.s ], [ %i.dm, %bb.u ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.cl, align 1, !noalias !4690 ; 2 uses
  %i.cm = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %.not.i.not33.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.not33.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.thread.i.i.i"
  %.sroa.06.0.i34.i.i.i = phi i16 [ %i.dk, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.thread.i.i.i" ], [ %i.cn, %bb.t ] ; 3 uses
  %i.co = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i.i, i1 true)
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = add i64 %.sroa.01.0.i.i.i.i, %i.cp
  %i.cr = and i64 %i.cq, %i.cj
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = getelementptr inbounds [32 x i8], ptr %i.ck, i64 %i.cs ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %.val5.i.i.i.i = load i64, ptr %i.cu, align 8, !noalias !4691, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val5.i.i.i.i, 5
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.thread.i.i.i", !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -32
  %.val4.i.i.i.i = load ptr, ptr %i.cv, align 8, !noalias !4691, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.cw = load i32, ptr %.val4.i.i.i.i, align 1
  %i.cx = xor i32 1635020660, %i.cw
  %i.cy = getelementptr i8, ptr %.val4.i.i.i.i, i64 4
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cz to i32
  %i.db = xor i32 108, %i.da
  %i.dc = or i32 %i.cx, %i.db
  %i.dd = icmp ne i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.v, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.thread.i.i.i", !prof !12

._crit_edge.i.i.i:                                ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.thread.i.i.i", %bb.t
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.dh = bitcast <16 x i1> %i.dg to i16
  %i.di = icmp eq i16 %i.dh, 0
  br i1 %i.di, label %bb.u, label %.loopexit, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.thread.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.i.i.i", %.lr.ph.i.i.i
  %i.dj = add i16 %.sroa.06.0.i34.i.i.i, -1
  %i.dk = and i16 %i.dj, %.sroa.06.0.i34.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.dl = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.dm = add i64 %.sroa.01.0.i.i.i.i, %i.dl
  br label %bb.t

bb.v:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h3a4f70a843544021E.exit.i.i.i"
  %i.dn = getelementptr inbounds i8, ptr %i.ct, i64 -16
  call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  %.val.i4.i = load ptr, ptr %i.dn, align 8, !alias.scope !4692, !noalias !4693, !nonnull !4, !align !6, !noundef !4 ; 6 uses
  %i.do = getelementptr i8, ptr %i.ct, i64 -8
  %.val5.i5.i = load i64, ptr %i.do, align 8, !alias.scope !4692, !noalias !4693, !noundef !4 ; 6 uses
  switch i64 %.val5.i5.i, label %bb.z [
    i64 0, label %.loopexit
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  %i.dp = load i8, ptr %.val.i4.i, align 1, !alias.scope !4694, !noalias !4695, !noundef !4
  switch i8 %i.dp, label %.lr.ph.split.us.i.i.i.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.x:                                             ; preds = %bb.z
  %i.dq = icmp ult i64 %.val5.i5.i, 17
  br i1 %i.dq, label %.lr.ph.split.us.i.i.i.i.preheader, label %.preheader57.i.i.i.i

.lr.ph.split.us.i.i.i.i.preheader:                ; preds = %bb.aa, %bb.x, %bb.w
  %.sroa.01.170.us.i.i.i.i.ph = phi ptr [ %i.ea, %bb.aa ], [ %.val.i4.i, %bb.x ], [ %.val.i4.i, %bb.w ]
  %.sroa.16.169.us.i.i.i.i.ph = phi i64 [ %i.eb, %bb.aa ], [ %.val5.i5.i, %bb.x ], [ 1, %bb.w ]
  br label %.lr.ph.split.us.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.y
  %.sroa.01.170.us.i.i.i.i = phi ptr [ %i.dx, %bb.y ], [ %.sroa.01.170.us.i.i.i.i.ph, %.lr.ph.split.us.i.i.i.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i.i.i.i = phi i64 [ %i.dw, %bb.y ], [ %.sroa.16.169.us.i.i.i.i.ph, %.lr.ph.split.us.i.i.i.i.preheader ]
  %.sroa.017.168.us.i.i.i.i = phi i64 [ %i.dz, %bb.y ], [ 0, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.dr = load i8, ptr %.sroa.01.170.us.i.i.i.i, align 1, !alias.scope !4694, !noalias !4695, !noundef !4
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nsw i32 %i.ds, -48                  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 10
  br i1 %i.du, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph.split.us.i.i.i.i
  %i.dv = mul i64 %.sroa.017.168.us.i.i.i.i, 10
  %i.dw = add i64 %.sroa.16.169.us.i.i.i.i, -1    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i.i.i.i, i64 1
  %i.dy = zext nneg i32 %i.dt to i64
  %i.dz = add i64 %i.dv, %i.dy                    ; 2 uses
  %.not51.us.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not51.us.i.i.i.i, label %.loopexit207, label %.lr.ph.split.us.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %.pr.i.i.i.i = load i8, ptr %.val.i4.i, align 1, !alias.scope !4694, !noalias !4695
  %cond.i.i.i.i = icmp eq i8 %.pr.i.i.i.i, 43
  br i1 %cond.i.i.i.i, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i4.i, i64 1 ; 2 uses
  %i.eb = add i64 %.val5.i5.i, -1                 ; 2 uses
  %i.ec = icmp ult i64 %.val5.i5.i, 18
  br i1 %i.ec, label %.lr.ph.split.us.i.i.i.i.preheader, label %.preheader57.i.i.i.i

.preheader57.i.i.i.i:                             ; preds = %bb.aa, %bb.x
  %.sroa.16.0.ph.i.i.i.i = phi i64 [ %i.eb, %bb.aa ], [ %.val5.i5.i, %bb.x ] ; 2 uses
  %.sroa.01.0.ph.i.i.i.i = phi ptr [ %i.ea, %bb.aa ], [ %.val.i4.i, %bb.x ]
  %.not.us.i.i.i.i274 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i, 0
  br i1 %.not.us.i.i.i.i274, label %.loopexit207, label %.lr.ph278

.preheader57.split.us.i.i.i.i:                    ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i.i.i.i277, i64 1
  %i.ee = add i64 %.sroa.16.0.us.i.i.i.i276, -1   ; 2 uses
  %.not.us.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.us.i.i.i.i, label %.loopexit207, label %.lr.ph278

.lr.ph278:                                        ; preds = %.preheader57.i.i.i.i, %.preheader57.split.us.i.i.i.i
  %.sroa.01.0.us.i.i.i.i277 = phi ptr [ %i.ed, %.preheader57.split.us.i.i.i.i ], [ %.sroa.01.0.ph.i.i.i.i, %.preheader57.i.i.i.i ] ; 2 uses
  %.sroa.16.0.us.i.i.i.i276 = phi i64 [ %i.ee, %.preheader57.split.us.i.i.i.i ], [ %.sroa.16.0.ph.i.i.i.i, %.preheader57.i.i.i.i ]
  %.sroa.017.0.us.i.i.i.i275 = phi i64 [ %i.en, %.preheader57.split.us.i.i.i.i ], [ 0, %.preheader57.i.i.i.i ]
  %i.ef = load i8, ptr %.sroa.01.0.us.i.i.i.i277, align 1, !alias.scope !4694, !noalias !4695, !noundef !4
  %i.eg = zext i8 %i.ef to i32
  %i.eh = add nsw i32 %i.eg, -48                  ; 2 uses
  %i.ei = icmp ult i32 %i.eh, 10
  br i1 %i.ei, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %.lr.ph278
  %i.ej = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i.i.i.i275, i64 10) ; 2 uses
  %i.ek = extractvalue { i64, i1 } %i.ej, 0       ; 2 uses
  %i.el = extractvalue { i64, i1 } %i.ej, 1
  %i.em = zext nneg i32 %i.eh to i64
  %i.en = add i64 %i.ek, %i.em                    ; 3 uses
  %.not50.us.i.i.i.i = icmp ult i64 %i.en, %i.ek
  %or.cond.i.i.i = select i1 %i.el, i1 true, i1 %.not50.us.i.i.i.i
  br i1 %or.cond.i.i.i, label %.loopexit, label %.preheader57.split.us.i.i.i.i

.loopexit:                                        ; preds = %._crit_edge.i.i.i, %bb.ab, %.lr.ph278, %.lr.ph.split.us.i.i.i.i, %..loopexit_crit_edge, %bb.v, %bb.w, %bb.w
  %.val136 = phi i64 [ %.val136.pre, %..loopexit_crit_edge ], [ %i.cj, %bb.ab ], [ %i.cj, %.lr.ph.split.us.i.i.i.i ], [ %i.cj, %bb.w ], [ %i.cj, %bb.v ], [ %i.cj, %bb.w ], [ %i.cj, %.lr.ph278 ], [ %i.cj, %._crit_edge.i.i.i ] ; 3 uses
  %.val135 = phi ptr [ %.val135.pre, %..loopexit_crit_edge ], [ %i.ck, %bb.ab ], [ %i.ck, %.lr.ph.split.us.i.i.i.i ], [ %i.ck, %bb.w ], [ %i.ck, %bb.v ], [ %i.ck, %bb.w ], [ %i.ck, %.lr.ph278 ], [ %i.ck, %._crit_edge.i.i.i ] ; 2 uses
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.2119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.2119.0..sroa_idx, align 8
  %i.eo = icmp eq i64 %.val136, 0
  br i1 %i.eo, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164: ; preds = %.loopexit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val135) ]
  %i.ep = shl i64 %.val136, 5                     ; 2 uses
  %i.eq = add i64 %i.ep, 32                       ; 2 uses
  %i.er = add i64 %.val136, 17
  %i.es = add i64 %i.er, %i.eq                    ; 4 uses
  %i.et = icmp uge i64 %i.es, %i.eq
  %i.eu = icmp ult i64 %i.es, 9223372036854775793
  call void @llvm.assume(i1 %i.et)
  call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.es, 0
  br i1 %i.ev, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit161.sink.split"

.loopexit207:                                     ; preds = %.preheader57.split.us.i.i.i.i, %bb.y, %.preheader57.i.i.i.i
  %.sroa.7.0195 = phi i64 [ %i.dz, %bb.y ], [ 0, %.preheader57.i.i.i.i ], [ %i.en, %.preheader57.split.us.i.i.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0195, ptr %i.ew, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.aq, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.bf, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bs, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  %i.ex = icmp eq i64 %i.cj, 0
  br i1 %i.ex, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i166

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i166: ; preds = %.loopexit207
  %i.ey = shl i64 %i.cj, 5                        ; 2 uses
  %i.ez = add i64 %i.ey, 32                       ; 2 uses
  %i.fa = add i64 %i.cj, 17
  %i.fb = add i64 %i.fa, %i.ez                    ; 4 uses
  %i.fc = icmp uge i64 %i.fb, %i.ez
  %i.fd = icmp ult i64 %i.fb, 9223372036854775793
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.assume(i1 %i.fd)
  %i.fe = icmp eq i64 %i.fb, 0
  br i1 %i.fe, label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167", label %bb.ac

bb.ac:                                            ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i166
  %i.ff = sub nuw nsw i64 -32, %i.ey
  %i.fg = getelementptr inbounds i8, ptr %i.ck, i64 %i.ff
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fg, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 16) #38
  br label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167"

"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit": ; preds = %bb.ao, %bb.ap, %.loopexit.split-lp, %.loopexit211, %bb.o, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.o ], [ %i.bc, %bb.k ], [ %i.ic, %bb.ap ], [ %i.ic, %bb.ao ], [ %lpad.loopexit, %.loopexit211 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val141 = load ptr, ptr %i.h, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val142 = load i64, ptr %i.fh, align 8, !noundef !4
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E"(ptr %.val141, i64 %.val142) #39
  resume { ptr, i32 } %.pn.pn

"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit161.sink.split": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160
  %.sink.sink = phi i64 [ %i.bi, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160 ], [ %i.bv, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162 ], [ %i.ep, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164 ]
  %.val135.sink.sink = phi ptr [ %.val143, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160 ], [ %.val139, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162 ], [ %.val135, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164 ]
  %.sink263.sink = phi i64 [ %i.bl, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i160 ], [ %i.by, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i162 ], [ %i.es, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i164 ]
  %i.fi = sub nuw nsw i64 -32, %.sink.sink
  %i.fj = getelementptr inbounds i8, ptr %.val135.sink.sink, i64 %i.fi
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fj, i64 noundef %.sink263.sink, i64 noundef range(i64 1, -9223372036854775807) 16) #38
  br label %"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E.exit167"

bb.ad:                                            ; preds = %.lr.ph, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit180"
  %i.fk = phi ptr [ %i.ai, %.lr.ph ], [ %i.ii, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit180" ]
  %i.fl = phi { ptr, i64 } [ %i.ah, %.lr.ph ], [ %i.ih, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit180" ]
  %i.fm = extractvalue { ptr, i64 } %i.fl, 1      ; 3 uses
  store i64 %i.fm, ptr %.sroa.480.0..sroa_idx, align 8
  store ptr %i.fk, ptr %.sroa.581.0..sroa_idx, align 8
  store i64 %i.fm, ptr %.sroa.581.sroa.4.0..sroa.581.0..sroa_idx.sroa_idx, align 8
  store i64 %i.fm, ptr %.sroa.581.sroa.6.0..sroa.581.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h4e7f0f2f59017d58E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f)
          to label %bb.ae unwind label %.loopexit211

bb.ae:                                            ; preds = %bb.ad
  %i.fn = load i64, ptr %i.aj, align 8, !noundef !4 ; 2 uses
  %i.fo = icmp ult i64 %i.fn, 576460752303423488
  call void @llvm.assume(i1 %i.fo)
  %i.fp = icmp eq i64 %i.fn, 2
  br i1 %i.fp, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %bb.ae
  %i.fq = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4 ; 4 uses
  %i.ft = load ptr, ptr %i.fq, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fx = load i64, ptr %i.fw, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ft, ptr %i.a, align 8, !noalias !4697
  store i64 %i.fs, ptr %i.al, align 8, !noalias !4697
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx45, align 8, !alias.scope !4696, !noalias !4698, !noundef !4
  %.val8.i = load i64, ptr %.sroa.546.0..sroa_idx, align 8, !alias.scope !4696, !noalias !4698, !noundef !4
  %i.fy = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h1cf9e105f0a290eeE(i64 %.val.i, i64 %.val8.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !4699 ; 2 uses
  %i.fz = load i64, ptr %i.am, align 8, !alias.scope !4700, !noalias !4701, !noundef !4
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ag, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i", !prof !10

bb.ag:                                            ; preds = %bb.af
  %i.gb = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h8b384cec0bd456f2E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx45, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i" unwind label %bb.ao ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i": ; preds = %bb.ag, %bb.af
  %.val.i.i168 = load ptr, ptr %i.h, align 8, !alias.scope !4702, !noalias !4703, !nonnull !4, !noundef !4 ; 8 uses
  %.val7.i.i = load i64, ptr %i.an, align 8, !alias.scope !4702, !noalias !4703, !noundef !4 ; 4 uses
  %i.gc = lshr i64 %i.fy, 57
  %i.gd = trunc nuw nsw i64 %i.gc to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i169 = insertelement <16 x i8> poison, i8 %i.gd, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i170 = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i169, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i"
  %.pn.i.i.i171 = phi i64 [ %i.fy, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i" ], [ %i.hd, %bb.aj ]
  %.sroa.6.0.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i" ], [ %.sroa.6.120.i.i.i, %bb.aj ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i" ], [ %.sroa.01.122.i.i.i, %bb.aj ]
  %i.ge = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h1a180cd76e23fdfdE.exit.i.i" ], [ %i.hc, %bb.aj ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i171, %.val7.i.i ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i168, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.gf, align 1, !noalias !4704 ; 3 uses
  %i.gg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i170
  %i.gh = bitcast <16 x i1> %i.gg to i16          ; 2 uses
  %.not25.i.i.i = icmp eq i16 %i.gh, 0
  br i1 %.not25.i.i.i, label %._crit_edge.i.i.i174, label %.lr.ph.i.i.i172

.lr.ph.i.i.i172:                                  ; preds = %bb.ah, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i"
  %.sroa.05.026.i.i.i = phi i16 [ %i.gs, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i" ], [ %i.gh, %bb.ah ] ; 3 uses
  %i.gi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i, i1 true)
  %i.gj = zext nneg i16 %i.gi to i64
  %i.gk = add i64 %.sroa.0.017.i.i.i, %i.gj
  %i.gl = and i64 %i.gk, %.val7.i.i
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [32 x i8], ptr %.val.i.i168, i64 %i.gm ; 4 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %.val4.i.i.i = load i64, ptr %i.go, align 8, !noalias !4705, !noundef !4
  %.not.i.i.i.i.i.i.i173 = icmp eq i64 %i.fs, %.val4.i.i.i
  br i1 %.not.i.i.i.i.i.i.i173, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i", !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i": ; preds = %.lr.ph.i.i.i172
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -32
  %.val3.i.i.i = load ptr, ptr %i.gp, align 8, !noalias !4705, !nonnull !4, !align !6, !noundef !4
  %bcmp.i.i.i.i.i.i.i179 = call i32 @bcmp(ptr nonnull readonly align 1 %i.ft, ptr nonnull readonly align 1 %.val3.i.i.i, i64 %i.fs), !alias.scope !4706, !noalias !4705
  %i.gq = icmp eq i32 %bcmp.i.i.i.i.i.i.i179, 0
  br i1 %i.gq, label %bb.an, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i", !prof !12

._crit_edge.i.i.i174:                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i", %bb.ah
  %.not13.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not13.i.i.i, label %.thread.i.i.i, label %bb.ai, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h05cb9cf9ab764be8E.exit.i.i", %.lr.ph.i.i.i172
  %i.gr = add i16 %.sroa.05.026.i.i.i, -1
  %i.gs = and i16 %i.gr, %.sroa.05.026.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gs, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i174, label %.lr.ph.i.i.i172

bb.ai:                                            ; preds = %._crit_edge.i.i.i174
  %i.gt = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, zeroinitializer
  %i.gu = bitcast <16 x i1> %i.gt to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.gu, 0    ; 2 uses
  %i.gv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gu, i1 true)
  %i.gw = zext nneg i16 %i.gv to i64
  %.sroa.6.0.i.i.i.i = select i1 %.not.not.i.not.i.i.i, i64 undef, i64 %i.gw
  %i.gx = add i64 %.sroa.6.0.i.i.i.i, %.sroa.0.017.i.i.i
  %i.gy = and i64 %i.gx, %.val7.i.i
  br i1 %.not.not.i.not.i.i.i, label %bb.aj, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ai, %._crit_edge.i.i.i174
  %.sroa.6.121.i.i.i = phi i64 [ %i.gy, %bb.ai ], [ %.sroa.6.0.i.i.i, %._crit_edge.i.i.i174 ] ; 3 uses
  %i.gz = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.ha = bitcast <16 x i1> %i.gz to i16
  %i.hb = icmp eq i16 %i.ha, 0
  br i1 %i.hb, label %bb.aj, label %bb.ak, !prof !10

bb.aj:                                            ; preds = %.thread.i.i.i, %bb.ai
  %.sroa.01.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.ai ]
  %.sroa.6.120.i.i.i = phi i64 [ %.sroa.6.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.ai ]
  %i.hc = add i64 %i.ge, 16                       ; 2 uses
  %i.hd = add i64 %i.hc, %.sroa.0.017.i.i.i
  br label %bb.ah

bb.ak:                                            ; preds = %.thread.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.val.i.i168, i64 %.sroa.6.121.i.i.i
  %i.hf = load i8, ptr %i.he, align 1, !noalias !4707, !noundef !4 ; 2 uses
  %i.hg = icmp sgt i8 %i.hf, -1
  br i1 %i.hg, label %bb.al, label %bb.am, !prof !10

bb.al:                                            ; preds = %bb.ak
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i168, align 16, !noalias !4707
  %i.hh = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %i.hj = icmp ne i16 %i.hi, 0
  call void @llvm.assume(i1 %i.hj)
  %i.hk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hi, i1 true)
  %i.hl = zext nneg i16 %i.hk to i64              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i168, i64 %i.hl
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !4708
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hm = phi i8 [ %.pre.i, %bb.al ], [ %i.hf, %bb.ak ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.hl, %bb.al ], [ %.sroa.6.121.i.i.i, %bb.ak ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i.i168, i64 %.sroa.3.0.i.ph.i.i
  %i.ho = and i8 %i.hm, 1
  %i.hp = zext nneg i8 %i.ho to i64
  %i.hq = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.hr = and i64 %i.hq, %.val7.i.i
  store i8 %i.gd, ptr %i.hn, align 1, !noalias !4708
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr110drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17h6fabb4571e057c04E":bb.a
  %i.aa = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17h8d94e0ebcf5a9f3eE.exit.i.i.i.i.i", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i"
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !5331, !noalias !5328, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5332
  br label %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17h8d94e0ebcf5a9f3eE.exit.i.i.i.i.i"

"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17h8d94e0ebcf5a9f3eE.exit.i.i.i.i.i": ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i"
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hd968b434fde622dbE.exit.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17hd968b434fde622dbE.exit.i.i.i.i: ; preds = %"_ZN4core3ptr74drop_in_place$LT$$LP$alloc..string..String$C$alloc..string..String$RP$$GT$17h8d94e0ebcf5a9f3eE.exit.i.i.i.i.i", %bb.b
  %i.ad = mul i64 %i.b, 48                        ; 2 uses
  %i.ae = add i64 %i.ad, 48                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %"_ZN4core3ptr130drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h78b177120b54a013E.exit", label %bb.g

bb.g:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hd968b434fde622dbE.exit.i.i.i.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !5326, !nonnull !4, !noundef !4
  %i.al = sub i64 -48, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !5326
  br label %"_ZN4core3ptr130drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h78b177120b54a013E.exit"

"_ZN4core3ptr130drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17h78b177120b54a013E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hd968b434fde622dbE.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr138drop_in_place$LT$std..collections..hash..map..HashMap$LT$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h222bcc3cc43e767dE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5352)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5353, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$C$std..hash..random..RandomState$GT$$GT$17h49d115ce77f40e50E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5354)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5355, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h2b72bd5dbc99496fE.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !5355, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !5356
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2d4323b7b7b51448E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !5357
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2d4323b7b7b51448E.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2d4323b7b7b51448E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [48 x i8], ptr %.sroa.07.1.i.i.i.i.i, i64 %i.t ; 4 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5358)
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !5358, !noalias !5355 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2d4323b7b7b51448E.exit.i.i.i.i.i"
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -40
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !5358, !noalias !5355, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5359
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h2d4323b7b7b51448E.exit.i.i.i.i.i"
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val2.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !14, !alias.scope !5358, !noalias !5355, !noundef !4 ; 2 uses
  %switch.i.i.i.i.i.i = icmp sgt i64 %.val2.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i, label %bb.f, label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i"

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i"
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.val3.i6.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !5358, !noalias !5355, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i6.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5359
  br label %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i"

"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i": ; preds = %bb.f, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.i.i.i.i.i.i"
  %i.ab = icmp eq i64 %i.v, 0
  br i1 %i.ab, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h2b72bd5dbc99496fE.exit.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h2b72bd5dbc99496fE.exit.i.i.i.i: ; preds = %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$RP$$GT$17h8434cc1a2910b05fE.exit.i.i.i.i.i", %bb.b
  %i.ac = mul i64 %i.b, 48                        ; 2 uses
  %i.ad = add i64 %i.ac, 48                       ; 2 uses
  %i.ae = add i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$C$std..hash..random..RandomState$GT$$GT$17h49d115ce77f40e50E.exit", label %bb.g

bb.g:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h2b72bd5dbc99496fE.exit.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !5353, !nonnull !4, !noundef !4
  %i.ak = sub i64 -48, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !5353
  br label %"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$C$std..hash..random..RandomState$GT$$GT$17h49d115ce77f40e50E.exit"

"_ZN4core3ptr158drop_in_place$LT$hashbrown..map..HashMap$LT$alloc..string..String$C$core..option..Option$LT$alloc..string..String$GT$$C$std..hash..random..RandomState$GT$$GT$17h49d115ce77f40e50E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h2b72bd5dbc99496fE.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hac341a09afc61b7cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5363)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5363, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5363
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !5363 ; 10 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39d6386465d3cf6fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !5363, !noundef !4 ; 2 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39d6386465d3cf6fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.f, %bb.e ] ; 5 uses
  %i.f = add nuw i64 %.sroa.0.03.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !5363, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !5363, !noundef !4
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.k = add i64 %.sroa.0.03.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !5363, !noundef !4
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !5363
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !5363, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !5363
  %i.q = load ptr, ptr %.val2.i, align 8, !noalias !5363, !nonnull !4, !noundef !4
  %.neg4.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %.neg4.i.i
  tail call void %.val.i(ptr noundef nonnull %i.r), !noalias !5363, !inline_history !5362
  %i.s = load i64, ptr %i.e, align 8, !noalias !5363, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8, !noalias !5363
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39d6386465d3cf6fE.exit", label %bb.c

"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h39d6386465d3cf6fE.exit": ; preds = %bb.e, %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !5363, !noundef !4 ; 3 uses
  %i.w = icmp ult i64 %i.v, 8
  %i.x = add i64 %i.v, 1
  %i.y = lshr i64 %i.x, 3
  %i.z = mul nuw i64 %i.y, 7
  %.sroa.03.0.i.i = select i1 %i.w, i64 %i.v, i64 %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !5363, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2.i, i64 16
  %i.ad = sub i64 %.sroa.03.0.i.i, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8, !noalias !5363
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZN4core3ptr19swap_nonoverlapping17h1f66a9594460a60dE(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 24, 49) %2) unnamed_addr #12 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5387)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 1, !alias.scope !5386, !noalias !5387
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %1, align 1, !alias.scope !5387, !noalias !5386
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %0, align 1, !alias.scope !5386, !noalias !5387
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %1, align 1, !alias.scope !5387, !noalias !5386
  %exitcond.not.i.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5389)
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !5388, !noalias !5389
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !5389, !noalias !5388
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.b, align 1, !alias.scope !5388, !noalias !5389
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.c, align 1, !alias.scope !5389, !noalias !5388
  %exitcond.not.i.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5391)
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !5390, !noalias !5391
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !5391, !noalias !5390
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.d, align 1, !alias.scope !5390, !noalias !5391
  store i64 %.sroa.0.0.copyload.i.i.i.2, ptr %i.e, align 1, !alias.scope !5391, !noalias !5390
  %exitcond.not.i.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.i.2, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5393)
  %.sroa.0.0.copyload.i.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !5392, !noalias !5393
  %.sroa.02.0.copyload.i.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !5393, !noalias !5392
  store i64 %.sroa.02.0.copyload.i.i.i.3, ptr %i.f, align 1, !alias.scope !5392, !noalias !5393
  store i64 %.sroa.0.0.copyload.i.i.i.3, ptr %i.g, align 1, !alias.scope !5393, !noalias !5392
  %exitcond.not.i.i.3 = icmp eq i64 %i.a, 4
  br i1 %exitcond.not.i.i.3, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5395)
  %.sroa.0.0.copyload.i.i.i.4 = load i64, ptr %i.h, align 1, !alias.scope !5394, !noalias !5395
  %.sroa.02.0.copyload.i.i.i.4 = load i64, ptr %i.i, align 1, !alias.scope !5395, !noalias !5394
  store i64 %.sroa.02.0.copyload.i.i.i.4, ptr %i.h, align 1, !alias.scope !5394, !noalias !5395
  store i64 %.sroa.0.0.copyload.i.i.i.4, ptr %i.i, align 1, !alias.scope !5395, !noalias !5394
  %exitcond.not.i.i.4 = icmp eq i64 %i.a, 5
  br i1 %exitcond.not.i.i.4, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5397)
  %.sroa.0.0.copyload.i.i.i.5 = load i64, ptr %i.j, align 1, !alias.scope !5396, !noalias !5397
  %.sroa.02.0.copyload.i.i.i.5 = load i64, ptr %i.k, align 1, !alias.scope !5397, !noalias !5396
  store i64 %.sroa.02.0.copyload.i.i.i.5, ptr %i.j, align 1, !alias.scope !5396, !noalias !5397
  store i64 %.sroa.0.0.copyload.i.i.i.5, ptr %i.k, align 1, !alias.scope !5397, !noalias !5396
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.l = and i64 %2, 7                            ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i
  %i.m = and i64 %2, 56                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 4 uses
  %i.p = icmp samesign ult i64 %i.l, 4
  br i1 %i.p, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5399)
  %.sroa.0.0.copyload.i.i4.i = load i32, ptr %i.n, align 1, !alias.scope !5398, !noalias !5399
  %.sroa.02.0.copyload.i.i5.i = load i32, ptr %i.o, align 1, !alias.scope !5399, !noalias !5398
  store i32 %.sroa.02.0.copyload.i.i5.i, ptr %i.n, align 1, !alias.scope !5398, !noalias !5399
  store i32 %.sroa.0.0.copyload.i.i4.i, ptr %i.o, align 1, !alias.scope !5399, !noalias !5398
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.g ], [ 4, %bb.h ] ; 4 uses
  %i.q = and i64 %2, 2
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5401)
  %.sroa.0.0.copyload.i9.i.i = load i16, ptr %i.s, align 1, !alias.scope !5400, !noalias !5401
  %.sroa.02.0.copyload.i10.i.i = load i16, ptr %i.t, align 1, !alias.scope !5401, !noalias !5400
  store i16 %.sroa.02.0.copyload.i10.i.i, ptr %i.s, align 1, !alias.scope !5400, !noalias !5401
  store i16 %.sroa.0.0.copyload.i9.i.i, ptr %i.t, align 1, !alias.scope !5401, !noalias !5400
  %i.u = or disjoint i64 %.sroa.0.0.i.i, 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.i ], [ %i.u, %bb.j ] ; 2 uses
  %i.v = and i64 %2, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.1.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.1.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5403)
  %.sroa.0.0.copyload.i11.i.i = load i8, ptr %i.x, align 1, !alias.scope !5402, !noalias !5403
  %.sroa.02.0.copyload.i12.i.i = load i8, ptr %i.y, align 1, !alias.scope !5403, !noalias !5402
  store i8 %.sroa.02.0.copyload.i12.i.i, ptr %i.x, align 1, !alias.scope !5402, !noalias !5403
  store i8 %.sroa.0.0.copyload.i11.i.i, ptr %i.y, align 1, !alias.scope !5403, !noalias !5402
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17hde9c300da473ed8fE.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc5047b703eff607dE"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h9ca67b3d52560094E.exit"
    i64 3, label %bb.b
    i64 0, label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h9ca67b3d52560094E.exit"
    i64 1, label %bb.c
  ], !prof !23

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17h9ca67b3d52560094E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !24, !invariant.load !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h942dc9c4a4184e71E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #38
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h942dc9c4a4184e71E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !24, !invariant.load !4 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr43drop_in_place$LT$procfs_core..ProcError$GT$17h64dd61e19abc9f4aE":bb.a
  %.val12 = load i64, ptr %i.f, align 8, !range !14, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val12, 0
  br i1 %switch, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit"

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load i64, ptr %i.g, align 8, !range !14, !noundef !4 ; 2 uses
  %switch19 = icmp sgt i64 %.val10, 0
  br i1 %switch19, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit"

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.h, align 8, !range !14, !noundef !4 ; 2 uses
  %switch20 = icmp sgt i64 %.val8, 0
  br i1 %switch20, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit"

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val14 = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hc5047b703eff607dE"(ptr nonnull %.val14)
          to label %bb.j unwind label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %i.k = icmp eq i64 %.val, 0
  br i1 %i.k, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split"

"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split": ; preds = %bb.g, %bb.e, %bb.d, %bb.c, %bb.b, %bb.j
  %.sink23 = phi i64 [ 16, %bb.j ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 8, %bb.b ], [ 16, %bb.g ]
  %.val4.sink = phi i64 [ %.val4, %bb.j ], [ %.val8, %bb.e ], [ %.val10, %bb.d ], [ %.val12, %bb.c ], [ %i.a, %bb.b ], [ %.val, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sink23
  %.val5 = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %.val4.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit"

"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit": ; preds = %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split", %bb.j, %bb.e, %bb.d, %bb.c, %bb.g, %bb.b
  ret void

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.n, align 8, !range !14, !noundef !4 ; 2 uses
  %switch21 = icmp sgt i64 %.val6, 0
  br i1 %switch21, label %bb.i, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit17"

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %.val6, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit17"

bb.j:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load i64, ptr %i.p, align 8, !range !14, !noundef !4 ; 2 uses
  %switch22 = icmp sgt i64 %.val4, 0
  br i1 %switch22, label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit.sink.split", label %"_ZN4core3ptr47drop_in_place$LT$procfs_core..InternalError$GT$17h3d3f8dea2ba83d53E.exit"

"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h29a3e2b3a6450969E.exit17": ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr49drop_in_place$LT$procfs_core..locks..LockType$GT$17hf4dedd69e8bf42f9E"(i64 %.0.val, ptr %.8.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %bb.b [
    i64 -9223372036854775806, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 -9223372036854775807, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr50drop_in_place$LT$procfs_core..keyring..KeyType$GT$17h6ea4403dc1161673E"(i64 %.0.val, ptr %.8.val) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %.0.val, label %bb.b [
    i64 -9223372036854775805, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 -9223372036854775806, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 -9223372036854775807, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i64 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef %.0.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$procfs_core..process..MMapPath$GT$17h02be214fee4b371fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !5404, !noundef !4
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 2, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 3, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 4, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 5, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 6, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 7, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 8, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
    i32 9, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.d, align 8            ; 2 uses
  %i.e = icmp eq i64 %.val2, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split": ; preds = %bb.c, %bb.b
  %.val2.sink = phi i64 [ %.val, %bb.b ], [ %.val2, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split", %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$GT$$GT$17hc6782c113ce2ba4aE"(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !24, !invariant.load !4 ; 2 uses
  %i.f = icmp ult i64 %i.e, -9223372036854775807
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2d966db57d5d3f26E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.e) #38
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2d966db57d5d3f26E.exit"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2d966db57d5d3f26E.exit": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i"
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !15, !invariant.load !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !24, !invariant.load !4 ; 2 uses
  %i.m = icmp ult i64 %i.l, -9223372036854775807
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2d966db57d5d3f26E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #38
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2d966db57d5d3f26E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2d966db57d5d3f26E.exit5": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4", %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr82drop_in_place$LT$std..collections..hash..map..HashMap$LT$$RF$str$C$$RF$str$GT$$GT$17h0791fdbd45dbd003E"(ptr %.0.val, i64 %.8.val) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %"_ZN4core3ptr102drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$$RF$str$C$std..hash..random..RandomState$GT$$GT$17h0296bee10282a8beE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = shl i64 %.8.val, 5                       ; 2 uses
  %i.c = add i64 %i.b, 32                         ; 2 uses
  %i.d = add i64 %.8.val, 17
  %i.e = add i64 %i.d, %i.c                       ; 4 uses
  %i.f = icmp uge i64 %i.e, %i.c
  %i.g = icmp ult i64 %i.e, 9223372036854775793
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.e, 0
  br i1 %i.h, label %"_ZN4core3ptr102drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$$RF$str$C$std..hash..random..RandomState$GT$$GT$17h0296bee10282a8beE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %i.i = sub nuw nsw i64 -32, %i.b
  %i.j = getelementptr inbounds i8, ptr %.0.val, i64 %i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 16) #38
  br label %"_ZN4core3ptr102drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$$RF$str$C$std..hash..random..RandomState$GT$$GT$17h0296bee10282a8beE.exit"

"_ZN4core3ptr102drop_in_place$LT$hashbrown..map..HashMap$LT$$RF$str$C$$RF$str$C$std..hash..random..RandomState$GT$$GT$17h0296bee10282a8beE.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr86drop_in_place$LT$std..collections..hash..set..HashSet$LT$alloc..string..String$GT$$GT$17h35699aac6566ae35E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5425)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5426, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17hd9e3aff4ad9edf82E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5427)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5428, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !5428, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !5429
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !5430
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.07.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !5428 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i"
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !5428, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !5428
  br label %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i"

"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h616e064aaf4e26e3E.exit.i.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr61drop_in_place$LT$$LP$alloc..string..String$C$$LP$$RP$$RP$$GT$17hb365422902e97771E.exit.i.i.i.i.i.i", %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17hd9e3aff4ad9edf82E.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !5426, !nonnull !4, !noundef !4
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !5426
  br label %"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17hd9e3aff4ad9edf82E.exit"

"_ZN4core3ptr106drop_in_place$LT$hashbrown..set..HashSet$LT$alloc..string..String$C$std..hash..random..RandomState$GT$$GT$17hd9e3aff4ad9edf82E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h9f34447ee0957e26E.exit.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h4fc9474bce370149E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hc7096a3296476820E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
  %i.c = phi i64 [ %i.aq, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i" ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %.sroa.4.0, %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i" ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !5457, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !5457, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i", label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i"
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !5457, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i", label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i"
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !5457, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i"
  %.sroa.4.0 = phi ptr [ %i.f, %bb.b ], [ %i.ae, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i" ], [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i" ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i.i.i.i.i" ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i.i.i.i" ], [ %i.q, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i.i.i.i" ] ; 8 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.4.0 to i64
  %i.ap = sub i64 %i.ao, %i.e
  %i.aq = add i64 %i.ap, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
    i32 13, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
    i32 12, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
    i32 11, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
    i32 10, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
    i32 9, label %"_ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h733182877fee2c81E.exit.i.i"
  ]

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %i.ar, label %bb.e, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hc7096a3296476820E.exit"

bb.e:                                             ; preds = %bb.d
  %i.as = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.as, label %"_ZN99_$LT$core..str..pattern..CharPredicateSearcher$LT$F$GT$$u20$as$u20$core..str..pattern..Searcher$GT$11next_reject17hc7096a3296476820E.exit" [
    i32 0, label %bb.h
    i32 22, label %bb.f
end_hunk_5
begin_hunk_6_@"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8c85920c345884f3E":bb.a
  store i64 1, ptr %.sroa.6449.0..sroa_idx, align 8, !noalias !6114
  %.sroa.7450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7450.0..sroa_idx, align 8, !noalias !6114
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5162.0..sroa_idx, align 8
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 742, ptr %.sroa.6163.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5146)
  br label %bb.r

bb.al:                                            ; preds = %bb.aj
  %i.fd = extractvalue { ptr, i64 } %i.fb, 1
  call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.5146, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fc, i64 noundef %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.fe, align 8
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146, i64 24, i1 false)
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5146)
  br label %bb.q

bb.am:                                            ; preds = %bb.ai, %bb.aa, %bb.s, %bb.i, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6115)
  br i1 %i.bz, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ff = icmp ult i64 %2, %.promoted.i.i371
  br i1 %i.ff, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378", label %.lr.ph.split.i.i374

.lr.ph.split.i.i374:                              ; preds = %bb.an
  %rhsc625 = load i8, ptr %.sroa.5224.sroa.7.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.split.i.i374
  %i.fg = phi i64 [ %.promoted.i.i371, %.lr.ph.split.i.i374 ], [ %i.ft, %bb.aq ] ; 6 uses
  %i.fh = sub nuw i64 %2, %i.fg                   ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 %i.fg ; 2 uses
  %i.fj = icmp ult i64 %i.fh, 16
  br i1 %i.fj, label %.preheader.i.i.i395, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376

.preheader.i.i.i395:                              ; preds = %bb.ao
  %.not.i.i.i396 = icmp eq i64 %2, %i.fg
  br i1 %.not.i.i.i396, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", label %.lr.ph.i.i.i397

.lr.ph.i.i.i397:                                  ; preds = %.preheader.i.i.i395, %bb.ap
  %.sroa.01.05.i.i.i398 = phi i64 [ %i.fn, %bb.ap ], [ 0, %.preheader.i.i.i395 ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.sroa.01.05.i.i.i398
  %i.fl = load i8, ptr %i.fk, align 1, !alias.scope !6116, !noalias !6117, !noundef !4
  %i.fm = icmp eq i8 %i.fl, 58
  br i1 %i.fm, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i397
  %i.fn = add nuw nsw i64 %.sroa.01.05.i.i.i398, 1 ; 2 uses
  %exitcond.not.i.i.i399 = icmp eq i64 %i.fn, %i.fh
  br i1 %exitcond.not.i.i.i399, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", label %.lr.ph.i.i.i397

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376: ; preds = %bb.ao
  %i.fo = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fi, i64 noundef %i.fh), !noalias !6117 ; 2 uses
  %i.fp = extractvalue { i64, i64 } %i.fo, 0
  %i.fq = extractvalue { i64, i64 } %i.fo, 1
  %i.fr = trunc nuw i64 %i.fp to i1
  br i1 %i.fr, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388: ; preds = %.lr.ph.i.i.i397, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376
  %.sroa.4.0.i27.i.i389 = phi i64 [ %i.fq, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376 ], [ %.sroa.01.05.i.i.i398, %.lr.ph.i.i.i397 ] ; 3 uses
  %i.fs = add i64 %i.fg, 1
  %i.ft = add i64 %i.fs, %.sroa.4.0.i27.i.i389    ; 5 uses
  %.not21.i.i391 = icmp ugt i64 %i.ft, %2
  %i.fu = add i64 %i.fg, %.sroa.4.0.i27.i.i389
  %or.cond.i.i392.not = icmp ult i64 %i.fu, %2
  br i1 %or.cond.i.i392.not, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388
  br i1 %.not21.i.i391, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", label %bb.ao

bb.ar:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388
  %i.fv = add i64 %i.fg, %.sroa.4.0.i27.i.i389    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %i.fv
  %lhsc624 = load i8, ptr %i.fw, align 1
  %i.fx = icmp eq i8 %lhsc624, %rhsc625
  br i1 %i.fx, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394", label %bb.aq

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394": ; preds = %bb.ar
  store i64 %i.ft, ptr %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  store i64 %i.ft, ptr %i.am, align 8, !alias.scope !6115
  br label %bb.au

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split": ; preds = %bb.aq, %.preheader.i.i.i395, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376, %bb.ap
  %.sink = phi i64 [ %2, %bb.ap ], [ %2, %.preheader.i.i.i395 ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376 ], [ %i.ft, %bb.aq ]
  store i64 %.sink, ptr %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", %bb.an
  store i8 1, ptr %.sroa.7226.0..sroa_idx, align 1, !alias.scope !6118
  br label %bb.au

bb.as:                                            ; preds = %bb.h
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4166.0..sroa_idx, align 8
  br label %bb.q

bb.at:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4314.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6119
  store ptr @324, ptr %i.c, align 8, !noalias !6120
  %.sroa.4453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4453.0..sroa_idx, align 8, !noalias !6120
  %.sroa.5454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %.sroa.5454.0..sroa_idx, align 8, !noalias !6120
  %.sroa.6455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6455.0..sroa_idx, align 8, !noalias !6120
  %.sroa.7456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7456.0..sroa_idx, align 8, !noalias !6120
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4184.0..sroa_idx, align 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5185.0..sroa_idx, align 8
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 745, ptr %.sroa.6186.0..sroa_idx, align 8
  br label %bb.r

bb.au:                                            ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378"
  %.pn = phi i64 [ %2, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378" ], [ %i.fv, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394" ] ; 2 uses
  %.sroa.4.1.i386.ph = sub nuw i64 %.pn, %.pre.i2.i379
  %.sroa.0.1.i387.ph = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i379 ; 4 uses
  %i.fy = icmp ugt i64 %.sroa.4.1.i386.ph, 2
  br i1 %i.fy, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 %.pn ; 6 uses
  %i.ga = load i8, ptr %.sroa.0.1.i387.ph, align 1, !alias.scope !6121, !noalias !6122, !noundef !4 ; 3 uses
  %i.gb = icmp sgt i8 %i.ga, -1
  br i1 %i.gb, label %bb.aw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i": ; preds = %bb.av
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i387.ph, i64 2
  %i.gd = icmp samesign ugt i8 %i.ga, -33
  br i1 %i.gd, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i", label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i387.ph, i64 1
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i"
  %i.gf = icmp samesign ugt i8 %i.ga, -17
  %spec.select.v.i = select i1 %i.gf, i64 4, i64 3
  %spec.select.i401 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i387.ph, i64 %spec.select.v.i
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i

_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i", %bb.aw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i"
  %.sroa.0.0.i = phi ptr [ %i.gc, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i" ], [ %i.ge, %bb.aw ], [ %spec.select.i401, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i" ] ; 11 uses
  %i.gg = icmp eq ptr %.sroa.0.0.i, %i.fz
  br i1 %i.gg, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i
  %i.gh = getelementptr inbounds i8, ptr %i.fz, i64 -1 ; 3 uses
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !6121, !noalias !6123, !noundef !4
  %i.gj = icmp sgt i8 %i.gi, -1
  br i1 %i.gj, label %bb.az, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i": ; preds = %bb.ax
  %i.gk = icmp ne ptr %.sroa.0.0.i, %i.gh
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds i8, ptr %i.fz, i64 -2 ; 3 uses
  %i.gm = load i8, ptr %i.gl, align 1, !alias.scope !6121, !noalias !6123, !noundef !4
  %i.gn = icmp slt i8 %i.gm, -64
  br i1 %i.gn, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i", label %bb.az

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i"
  %i.go = icmp ne ptr %.sroa.0.0.i, %i.gl
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds i8, ptr %i.fz, i64 -3 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !alias.scope !6121, !noalias !6123, !noundef !4
  %i.gr = icmp slt i8 %i.gq, -64
  %i.gs = getelementptr inbounds i8, ptr %i.fz, i64 -4
  %spec.select8.i = select i1 %i.gr, ptr %i.gs, ptr %i.gp
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.2326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.2326.0..sroa_idx, align 8
  br label %bb.r

bb.az:                                            ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i", %bb.ax, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i
  %.sroa.10.2.i = phi ptr [ %i.fz, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i ], [ %i.gh, %bb.ax ], [ %spec.select8.i, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i" ], [ %i.gl, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.gt = ptrtoint ptr %.sroa.10.2.i to i64
  %i.gu = ptrtoint ptr %.sroa.0.0.i to i64
  %i.gv = sub nuw i64 %i.gt, %i.gu                ; 6 uses
  switch i64 %i.gv, label %bb.bd [
    i64 0, label %.loopexit
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gw = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !6124, !noalias !6125, !noundef !4
  switch i8 %i.gw, label %.lr.ph.split.us.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.bb:                                            ; preds = %bb.bd
  %i.gx = icmp ult i64 %i.gv, 17
  br i1 %i.gx, label %.lr.ph.split.us.i.preheader, label %.preheader57.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.be, %bb.ba, %bb.bb
  %.sroa.01.170.us.i.ph = phi ptr [ %i.hh, %bb.be ], [ %.sroa.0.0.i, %bb.bb ], [ %.sroa.0.0.i, %bb.ba ]
  %.sroa.16.169.us.i.ph = phi i64 [ %i.hi, %bb.be ], [ %i.gv, %bb.bb ], [ 1, %bb.ba ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.bc
  %.sroa.01.170.us.i = phi ptr [ %i.he, %bb.bc ], [ %.sroa.01.170.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i = phi i64 [ %i.hd, %bb.bc ], [ %.sroa.16.169.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.017.168.us.i = phi i64 [ %i.hg, %bb.bc ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.gy = load i8, ptr %.sroa.01.170.us.i, align 1, !alias.scope !6124, !noalias !6125, !noundef !4
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, -48                  ; 2 uses
  %i.hb = icmp ult i32 %i.ha, 10
  br i1 %i.hb, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %.lr.ph.split.us.i
  %i.hc = mul i64 %.sroa.017.168.us.i, 10
  %i.hd = add i64 %.sroa.16.169.us.i, -1          ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i, i64 1
  %i.hf = zext nneg i32 %i.ha to i64
  %i.hg = add i64 %i.hc, %i.hf                    ; 2 uses
  %.not51.us.i = icmp eq i64 %i.hd, 0
  br i1 %.not51.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph.split.us.i

bb.bd:                                            ; preds = %bb.az
  %.pr.i = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !6124, !noalias !6125
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.be, label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
  %i.hi = add i64 %i.gv, -1                       ; 2 uses
  %i.hj = icmp ult i64 %i.gv, 18
  br i1 %i.hj, label %.lr.ph.split.us.i.preheader, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.be, %bb.bb
  %.sroa.16.0.ph.i = phi i64 [ %i.hi, %bb.be ], [ %i.gv, %bb.bb ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.hh, %bb.be ], [ %.sroa.0.0.i, %bb.bb ]
  %.not.us.i652 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i652, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.preheader57.split.us.i:                          ; preds = %bb.bf
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i655, i64 1
  %i.hl = add i64 %.sroa.16.0.us.i654, -1         ; 2 uses
  %.not.us.i = icmp eq i64 %i.hl, 0
  br i1 %.not.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i, %.preheader57.split.us.i
  %.sroa.01.0.us.i655 = phi ptr [ %i.hk, %.preheader57.split.us.i ], [ %.sroa.01.0.ph.i, %.preheader57.i ] ; 2 uses
  %.sroa.16.0.us.i654 = phi i64 [ %i.hl, %.preheader57.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader57.i ]
  %.sroa.017.0.us.i653 = phi i64 [ %i.hu, %.preheader57.split.us.i ], [ 0, %.preheader57.i ]
  %i.hm = load i8, ptr %.sroa.01.0.us.i655, align 1, !alias.scope !6124, !noalias !6125, !noundef !4
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, -48                  ; 2 uses
  %i.hp = icmp ult i32 %i.ho, 10
  br i1 %i.hp, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph
  %i.hq = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i653, i64 10) ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hq, 0       ; 2 uses
  %i.hs = extractvalue { i64, i1 } %i.hq, 1
  %i.ht = zext nneg i32 %i.ho to i64
  %i.hu = add i64 %i.hr, %i.ht                    ; 3 uses
  %.not50.us.i = icmp ult i64 %i.hu, %i.hr
  %or.cond = select i1 %i.hs, i1 true, i1 %.not50.us.i
  br i1 %or.cond, label %.loopexit, label %.preheader57.split.us.i

.loopexit:                                        ; preds = %bb.bf, %.lr.ph, %.lr.ph.split.us.i, %bb.ba, %bb.ba, %bb.az
  %.sroa.2.0.ph = phi i8 [ 1, %bb.ba ], [ 1, %bb.ba ], [ 0, %bb.az ], [ 1, %.lr.ph.split.us.i ], [ 1, %.lr.ph ], [ 2, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %.sroa.2.0.ph, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4332.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6126
  store ptr @31, ptr %i.b, align 8, !noalias !6127
  %.sroa.4464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4464.0..sroa_idx, align 8, !noalias !6127
  %.sroa.5465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.5465.0..sroa_idx, align 8, !noalias !6127
  %.sroa.6466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6466.0..sroa_idx, align 8, !noalias !6127
  %.sroa.7467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7467.0..sroa_idx, align 8, !noalias !6127
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4208.0..sroa_idx, align 8
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5209.0..sroa_idx, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 746, ptr %.sroa.6210.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.r

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit": ; preds = %.preheader57.split.us.i, %bb.bc, %.preheader57.i
  %.sroa.9.0494 = phi i64 [ %i.hg, %bb.bc ], [ 0, %.preheader57.i ], [ %i.hu, %.preheader57.split.us.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0212)
  call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %.sroa.0212, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %.sroa.4.1.i)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0212, i64 24, i1 false)
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0494, ptr %.sroa.4213.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0212)
  br label %bb.q

bb.bg:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409", %bb.q, %bb.r
  ret void

bb.bh:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.hw = icmp slt i64 %i.bf, 0
  br i1 %i.hw, label %bb.bi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.bh
  %i.hx = icmp eq i64 %i.bf, 0
  br i1 %i.hx, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6128
  %i.hy = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bf, i64 noundef range(i64 1, 9) 1) #38, !noalias !6128 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.bi, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.bi:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.bh
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.bh ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6129
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.hy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.bg, i64 %i.bf, i1 false), !noalias !6130
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.ia, align 8
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %.sroa.4219.0..sroa_idx, align 8
  %.sroa.4219.sroa.4.0..sroa.4219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4219.sroa.4.0..sroa.4219.0..sroa_idx.sroa_idx, align 8
  %.sroa.4219.sroa.5.0..sroa.4219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bf, ptr %.sroa.4219.sroa.5.0..sroa.4219.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.bg

bb.bj:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.ib = icmp slt i64 %2, 0
  br i1 %i.ib, label %bb.bk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404", !prof !17

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404": ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread", %bb.bj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6131
  %i.ic = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !6131 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %bb.bk, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409"

bb.bk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404", %bb.bj
  %.sroa.4.0.ph.i.i408 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404" ], [ 0, %bb.bj ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i408, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6132
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404"
  %.sroa.10.0.i.i405 = phi ptr [ %i.ic, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404" ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i405, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !6133
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ie, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.4221.sroa.4.0..sroa.4221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i405, ptr %.sroa.4221.sroa.4.0..sroa.4221.0..sroa_idx.sroa_idx, align 8
  %.sroa.4221.sroa.5.0..sroa.4221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4221.sroa.5.0..sroa.4221.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs_core..sys..kernel..Type$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hccd23a94311a103cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
end_hunk_6
begin_hunk_7_@"_ZN98_$LT$procfs_core..cgroups..ProcessCGroups$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h2536e5239d20d3bbE":bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h7fe1f9b3e1141dffE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val11 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val12 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h6d24c4f13aa6abb1E(i64 %.val11, i64 %.val12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7648)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7649, !noalias !7650, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i", !prof !10

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h5ca77d7f43e090c2E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i" unwind label %bb.k ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !7647, !noalias !7651, !nonnull !4, !noundef !4 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i = load i64, ptr %i.i, align 8, !alias.scope !7647, !noalias !7651, !noundef !4 ; 4 uses
  %i.j = lshr i64 %i.d, 57
  %i.k = trunc nuw nsw i64 %i.j to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !7648, !noalias !7652 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !7648, !noalias !7652 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i"
  %.pn.i.i = phi i64 [ %i.d, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i" ], [ %i.am, %bb.e ]
  %.sroa.6.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i" ], [ %.sroa.6.120.i.i, %bb.e ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i" ], [ %.sroa.01.122.i.i, %bb.e ]
  %i.n = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h142fc6163a1eb1c1E.exit.i" ], [ %i.al, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !7653 ; 3 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not25.i.i = icmp eq i16 %i.q, 0
  br i1 %.not25.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.thread.i"
  %.sroa.05.026.i.i = phi i16 [ %i.ab, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.thread.i" ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.0.017.i.i, %i.s
  %i.u = and i64 %i.t, %.val7.i
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [48 x i8], ptr %.val.i, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -32
  %.val4.i.i = load i64, ptr %i.x, align 8, !noalias !7654, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i, %.val4.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.thread.i", !prof !11

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.i": ; preds = %.lr.ph.i.i
  %i.y = getelementptr i8, ptr %i.w, i64 -40
  %.val3.i.i = load ptr, ptr %i.y, align 8, !noalias !7654, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val3.i.i, i64 %.val1.i.i.i), !alias.scope !7655, !noalias !7654
  %i.z = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.thread.i", !prof !12

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.thread.i", %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.d, !prof !10

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.thread.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.i", %.lr.ph.i.i
  %i.aa = add i16 %.sroa.05.026.i.i, -1
  %i.ab = and i16 %i.aa, %.sroa.05.026.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i, zeroinitializer
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ad, 0      ; 2 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ad, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %.sroa.6.0.i.i.i = select i1 %.not.not.i.not.i.i, i64 undef, i64 %i.af
  %i.ag = add i64 %.sroa.6.0.i.i.i, %.sroa.0.017.i.i
  %i.ah = and i64 %i.ag, %.val7.i
  br i1 %.not.not.i.not.i.i, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %._crit_edge.i.i
  %.sroa.6.121.i.i = phi i64 [ %i.ah, %bb.d ], [ %.sroa.6.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.01.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.6.120.i.i = phi i64 [ %.sroa.6.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.al = add i64 %i.n, 16                        ; 2 uses
  %i.am = add i64 %i.al, %.sroa.0.017.i.i
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.6.121.i.i
  %i.ao = load i8, ptr %i.an, align 1, !noalias !7648, !noundef !4 ; 2 uses
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %bb.j, !prof !10

bb.g:                                             ; preds = %bb.f
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !7648
  %i.aq = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ar = bitcast <16 x i1> %i.aq to i16          ; 2 uses
  %i.as = icmp ne i16 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ar, i1 true)
  %i.au = zext nneg i16 %i.at to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.au
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !7656
  br label %bb.j

bb.h:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h96e3c6e158ed0816E.exit.i"
  %i.av = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.val9 = load i64, ptr %2, align 8              ; 2 uses
  %i.aw = icmp eq i64 %.val9, 0
  br i1 %i.aw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val9, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.i, %bb.h, %bb.j
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi i8 [ %.pre, %bb.g ], [ %i.ao, %bb.f ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.au, %bb.g ], [ %.sroa.6.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7657)
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.ba = and i8 %i.ax, 1
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bd = and i64 %i.bc, %.val7.i
  store i8 %i.k, ptr %i.az, align 1, !noalias !7656
  %i.be = getelementptr i8, ptr %.val.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16
  store i8 %i.k, ptr %i.bf, align 1, !noalias !7656
  %i.bg = load <2 x i64>, ptr %i.e, align 8, !alias.scope !7657, !noalias !7658
  %i.bh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bb, i64 0
  %i.bi = sub <2 x i64> %i.bg, %i.bh
  store <2 x i64> %i.bi, ptr %i.e, align 8, !alias.scope !7657, !noalias !7658
  %i.bj = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bk = getelementptr inbounds [48 x i8], ptr %.val.i, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !7657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775807, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.k:                                             ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %.val13 = load i64, ptr %3, align 8, !range !14, !noundef !4 ; 2 uses
  %switch = icmp sgt i64 %.val13, 0
  br i1 %switch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val14 = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val13, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %bb.m

.critedge:                                        ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.bm

bb.m:                                             ; preds = %bb.k, %bb.l
  %.val = load i64, ptr %2, align 8               ; 2 uses
  %i.bo = icmp eq i64 %.val, 0
  br i1 %i.bo, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val8 = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %.critedge
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 49) %2, ptr noundef %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val13 = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = add i64 %.val14, 1                       ; 7 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, label %.lr.ph.i

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val13, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not9.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod40 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.i = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.29 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val13, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val13, i64 %.29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val13, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.17 = phi i64 [ %.sroa.0.1, %bb.l ], [ 1, %._crit_edge.i ] ; 3 uses
  %.sroa.0.06 = phi i64 [ %.sroa.0.17, %bb.l ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.06
  %i.y = load i8, ptr %i.x, align 1, !noundef !4
  %.not = icmp eq i8 %i.y, -128
  br i1 %.not, label %bb.c, label %bb.l

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.z = lshr i64 %.pre13, 3
  %i.aa = mul nuw i64 %i.z, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.aa, %._crit_edge.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ]
  %i.ab = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17he54fe5d713f70050E.exit.thread20 ] ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 8
  %.sroa.06.0 = select i1 %i.ac, i64 %i.ab, i64 %.pre-phi
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = sub i64 %.sroa.06.0, %i.ae
  store i64 %i.ag, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg9 = mul i64 %2, %.neg
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 %.neg9 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.ai = invoke noundef i64 %.40.val(ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hac341a09afc61b7cE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #39
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val12 = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %.sroa.0.04.i = and i64 %.val12, %i.ai          ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.04.i
  %.sroa.0.0.copyload.i35.i = load <16 x i8>, ptr %i.ak, align 1, !noalias !7661
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.not.i.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not.not.i.not6.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !28

.lr.ph.i16:                                       ; preds = %bb.f, %.lr.ph.i16
  %.sroa.0.07.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i16 ], [ %.sroa.0.04.i, %bb.f ]
  %i.an = phi i64 [ %i.ao, %.lr.ph.i16 ], [ 0, %bb.f ]
  %i.ao = add i64 %i.an, 16                       ; 2 uses
  %i.ap = add i64 %i.ao, %.sroa.0.07.i
  %.sroa.0.0.i = and i64 %i.ap, %.val12           ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i3.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !7661
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.not.i.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.not.i.not.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !29

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.04.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.am, %bb.f ], [ %i.as, %.lr.ph.i16 ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %.val12                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !4
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.g, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit, !prof !10

bb.g:                                             ; preds = %._crit_edge.i15
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = icmp ne i16 %i.bb, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.be = zext nneg i16 %i.bd to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit: ; preds = %bb.g, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.be, %bb.g ], [ %i.aw, %._crit_edge.i15 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.04.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.04.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val12
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !9

bb.h:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %.neg10 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg11 = mul i64 %2, %.neg10
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg11 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !4
  %i.bm = lshr i64 %i.ai, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val12
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit
  %i.bu = lshr i64 %i.ai, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val12, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !4
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
end_hunk_7
