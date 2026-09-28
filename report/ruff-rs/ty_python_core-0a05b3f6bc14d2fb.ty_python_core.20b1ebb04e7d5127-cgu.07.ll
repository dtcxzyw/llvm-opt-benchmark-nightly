Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.07?download=true
inline.NumInlined: 1156
inline.NumDeleted: 548
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs4_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_8Bindings5merge:bb.a
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.634.0.copyload = load i64, ptr %.sroa.634.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %i.w = icmp ugt i64 %.sroa.0.0.copyload30, 2    ; 3 uses
  %.sink9.i.i = select i1 %i.w, i64 %.sroa.634.0.copyload, i64 %.sroa.0.0.copyload30
  %spec.select = select i1 %i.w, i64 %.sroa.0.0.copyload30, i64 0
  %spec.select208 = select i1 %i.w, i64 0, i64 %.sroa.634.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.042.0.copyload = load i64, ptr %i.x, align 8 ; 3 uses
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.644.0.copyload = load i64, ptr %.sroa.644.0..sroa_idx, align 8
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.647.0.copyload = load i64, ptr %.sroa.647.0..sroa_idx, align 8 ; 2 uses
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.850.0.copyload = load i64, ptr %.sroa.850.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.y = icmp ugt i64 %.sroa.042.0.copyload, 2    ; 3 uses
  %.sink9.i.i13 = select i1 %i.y, i64 %.sroa.647.0.copyload, i64 %.sroa.042.0.copyload
  %.sroa.042.0 = select i1 %i.y, i64 %.sroa.042.0.copyload, i64 0
  %.sroa.647.0 = select i1 %i.y, i64 0, i64 %.sroa.647.0.copyload
  store i64 %.sroa.042.0, ptr %i.f, align 8, !alias.scope !1301
  %.sroa.644.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.644.0.copyload, ptr %.sroa.644.0..sroa_idx45, align 8, !alias.scope !1301
  %.sroa.647.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.647.0, ptr %.sroa.647.0..sroa_idx48, align 8, !alias.scope !1301
  %.sroa.850.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.850.0.copyload, ptr %.sroa.850.0..sroa_idx51, align 8, !alias.scope !1301
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 0, ptr %i.z, align 8, !alias.scope !1302, !noalias !1300
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sink9.i.i13, ptr %i.aa, align 8, !alias.scope !1302, !noalias !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  store i64 1, ptr %i.c, align 8, !alias.scope !1305, !noalias !1306
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1307, !noalias !1308
  %.sroa.4237.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.4237.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !1307, !noalias !1308
  %.sroa.5238.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %spec.select208, ptr %.sroa.5238.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !1307, !noalias !1308
  %.sroa.6239.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.8.0.copyload, ptr %.sroa.6239.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !1307, !noalias !1308
  %.sroa.7240.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %.sroa.7240.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !1307, !noalias !1308
  %.sroa.8241.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sink9.i.i, ptr %.sroa.8241.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !alias.scope !1307, !noalias !1308
  invoke void @_RINvNtCs6Wt4yPw39th_9itertools8adaptors8put_backINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuse4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEEB2g_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.f unwind label %bb.h, !noalias !1303

bb.e:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools8adaptors7PutBackINtNtNtNtB4_4iter8adapters4fuse4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEEEB2B_(ptr noalias noundef align 8 dereferenceable(72) %i.d) #36
          to label %bb.af unwind label %bb.g, !noalias !1303

bb.f:                                             ; preds = %.else
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1303
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx.i3.i, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !1309
  store i64 1, ptr %i.a, align 8, !alias.scope !1310, !noalias !1311
  invoke void @_RINvNtCs6Wt4yPw39th_9itertools8adaptors8put_backINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuse4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEEB2g_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.i unwind label %bb.e, !noalias !1303

bb.g:                                             ; preds = %bb.h, %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37, !noalias !1303
  unreachable

bb.h:                                             ; preds = %.else
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f) #36
          to label %bb.af unwind label %bb.g, !noalias !1309

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1303
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %.promoted = load i32, ptr %i.af, align 8
  %.promoted209 = load i32, ptr %i.ag, align 8
  %i.ah = load i64, ptr %i.e, align 8, !range !12
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ugt i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4
  %.sink10.i.i.i.i = select i1 %i.ao, ptr %i.aq, ptr %i.ap
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60 ; 2 uses
  %.sroa.519.i.sroa.9.0..sroa.519.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !range !12
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp ugt i64 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4
  %.sink10.i.i.i16.i = select i1 %i.az, ptr %i.bb, ptr %i.ba
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 132 ; 2 uses
  %.sroa.4.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  %.sroa.4.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted210 = load i64, ptr %i.aj, align 8
  %.sroa.519.0..sroa_idx.i.promoted = load i32, ptr %.sroa.519.0..sroa_idx.i, align 4
  %.sroa.519.i.sroa.9.0..sroa.519.0..sroa_idx.i.sroa_idx.promoted = load i64, ptr %.sroa.519.i.sroa.9.0..sroa.519.0..sroa_idx.i.sroa_idx, align 8
  %.promoted217 = load i64, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i.promoted = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.4.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.promoted = load i32, ptr %.sroa.4.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.4.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx.promoted = load i32, ptr %.sroa.4.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.ab, %bb.i
  %.sroa.4.i.sroa.10.0.copyload100226 = phi i32 [ %.sroa.4.i.sroa.10.0.copyload100224, %bb.ab ], [ %.sroa.4.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx.promoted, %bb.i ] ; 5 uses
  %.sroa.4.i.sroa.9.0.copyload94223 = phi i32 [ %.sroa.4.i.sroa.9.0.copyload94221, %bb.ab ], [ %.sroa.4.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx.promoted, %bb.i ] ; 5 uses
  %.sroa.4.i.sroa.0.0.copyload88220 = phi i32 [ %.sroa.4.i.sroa.0.0.copyload88218, %bb.ab ], [ %.sroa.4.0..sroa_idx.i.promoted, %bb.i ] ; 5 uses
  %i.bd = phi i64 [ %i.cf, %bb.ab ], [ %.promoted217, %bb.i ] ; 5 uses
  %.sroa.519.i.sroa.9.0.copyload146216 = phi i64 [ %.sroa.519.i.sroa.9.0.copyload146214, %bb.ab ], [ %.sroa.519.i.sroa.9.0..sroa.519.0..sroa_idx.i.sroa_idx.promoted, %bb.i ] ; 5 uses
  %.sroa.519.i.sroa.0.0.copyload144213 = phi i32 [ %.sroa.519.i.sroa.0.0.copyload144211, %bb.ab ], [ %.sroa.519.0..sroa_idx.i.promoted, %bb.i ] ; 5 uses
  %i.be = phi i64 [ %i.bl, %bb.ab ], [ %.promoted210, %bb.i ] ; 5 uses
  %i.bf = phi i32 [ %i.cg, %bb.ab ], [ %.promoted209, %bb.i ]
  %i.bg = phi i32 [ %i.ch, %bb.ab ], [ %.promoted, %bb.i ]
  %i.bh = trunc nuw i32 %i.bg to i1
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.af, align 8
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp ne i64 %i.be, %i.al
  %or.cond.not = select i1 %i.ai, i1 %i.bi, i1 false
  br i1 %or.cond.not, label %bb.m, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bj = add i64 %i.be, 1                        ; 2 uses
  store i64 %i.bj, ptr %i.aj, align 8
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i.i, i64 %i.be ; 2 uses
  %.sroa.519.i.sroa.0.0.copyload143 = load i32, ptr %i.bk, align 4
  %.sroa.519.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %.sroa.519.i.sroa.9.0.copyload145 = load i64, ptr %.sroa.519.i.sroa.9.0..sroa_idx, align 4
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bl = phi i64 [ %i.be, %bb.k ], [ %i.be, %bb.l ], [ %i.bj, %bb.m ]
  %.sroa.519.i.sroa.0.0 = phi i32 [ %.sroa.519.i.sroa.0.0.copyload144213, %bb.k ], [ undef, %bb.l ], [ %.sroa.519.i.sroa.0.0.copyload143, %bb.m ] ; 6 uses
  %.sroa.519.i.sroa.9.0 = phi i64 [ %.sroa.519.i.sroa.9.0.copyload146216, %bb.k ], [ undef, %bb.l ], [ %.sroa.519.i.sroa.9.0.copyload145, %bb.m ] ; 8 uses
  %.sroa.0.0.i = phi i1 [ true, %bb.k ], [ false, %bb.l ], [ true, %bb.m ] ; 2 uses
  %i.bm = trunc nuw i32 %i.bf to i1
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit.i
  store i32 0, ptr %i.ag, align 8
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i

bb.o:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit.i
  %i.bn = icmp ne i64 %i.bd, %i.aw
  %or.cond228.not = select i1 %i.at, i1 %i.bn, i1 false
  br i1 %or.cond228.not, label %bb.p, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i.thread

bb.p:                                             ; preds = %bb.o
  %i.bo = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.bo, ptr %i.au, align 8
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %.sink10.i.i.i16.i, i64 %i.bd ; 3 uses
  %.sroa.4.i.sroa.0.0.copyload87 = load i32, ptr %i.bp, align 4
  %.sroa.4.i.sroa.9.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.4.i.sroa.9.0.copyload93 = load i32, ptr %.sroa.4.i.sroa.9.0..sroa_idx92, align 4
  %.sroa.4.i.sroa.10.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.4.i.sroa.10.0.copyload99 = load i32, ptr %.sroa.4.i.sroa.10.0..sroa_idx98, align 4
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i: ; preds = %bb.p, %bb.n
  %i.bq = phi i64 [ %i.bd, %bb.n ], [ %i.bo, %bb.p ] ; 4 uses
  %.sroa.4.i.sroa.10.0 = phi i32 [ %.sroa.4.i.sroa.10.0.copyload100226, %bb.n ], [ %.sroa.4.i.sroa.10.0.copyload99, %bb.p ] ; 5 uses
  %.sroa.4.i.sroa.9.0 = phi i32 [ %.sroa.4.i.sroa.9.0.copyload94223, %bb.n ], [ %.sroa.4.i.sroa.9.0.copyload93, %bb.p ] ; 5 uses
  %.sroa.4.i.sroa.0.0 = phi i32 [ %.sroa.4.i.sroa.0.0.copyload88220, %bb.n ], [ %.sroa.4.i.sroa.0.0.copyload87, %bb.p ] ; 5 uses
  br i1 %.sroa.0.0.i, label %bb.q, label %.thread262

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i.thread: ; preds = %bb.o
  br i1 %.sroa.0.0.i, label %bb.s, label %_RNvXs5_NtCs6Wt4yPw39th_9itertools10merge_joinINtB5_7MergeByINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EBV_INtB5_11MergeFuncLRNCNvMs4_B1x_NtB1x_8Bindings5merge0NtNtCs4NRVxsYgnAr_4core3cmp8OrderingEENtNtNtNtB3F_4iter6traits8iterator8Iterator4nextB1B_.exit

bb.q:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i
  %i.br = and i32 %.sroa.519.i.sroa.0.0, 2147483647
  %i.bs = and i32 %.sroa.4.i.sroa.0.0, 2147483647
  %i.bt = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %i.br, i32 %i.bs)
  switch i8 %i.bt, label %bb.r [
    i8 -1, label %bb.t
    i8 0, label %bb.w
    i8 1, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i.thread
  %.sroa.519.i.sroa.9.4.extract.trunc = trunc i64 %.sroa.519.i.sroa.9.0 to i32
  %.sroa.519.i.sroa.9.8.extract.shift = lshr i64 %.sroa.519.i.sroa.9.0, 32
  %.sroa.519.i.sroa.9.8.extract.trunc = trunc nuw i64 %.sroa.519.i.sroa.9.8.extract.shift to i32
  br label %.thread262

bb.t:                                             ; preds = %bb.q
  %.sroa.519.i.sroa.9.4.extract.trunc151 = trunc i64 %.sroa.519.i.sroa.9.0 to i32
  %.sroa.519.i.sroa.9.8.extract.shift156 = lshr i64 %.sroa.519.i.sroa.9.0, 32
  %.sroa.519.i.sroa.9.8.extract.trunc157 = trunc nuw i64 %.sroa.519.i.sroa.9.8.extract.shift156 to i32
  store i32 %.sroa.4.i.sroa.0.0, ptr %.sroa.4.0..sroa_idx.i, align 4
  store i32 %.sroa.4.i.sroa.9.0, ptr %.sroa.4.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8
  store i32 %.sroa.4.i.sroa.10.0, ptr %.sroa.4.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx, align 4
  store i32 1, ptr %i.ag, align 8
  br label %.thread262

bb.u:                                             ; preds = %bb.q
  store i32 %.sroa.519.i.sroa.0.0, ptr %.sroa.519.0..sroa_idx.i, align 4
  store i64 %.sroa.519.i.sroa.9.0, ptr %.sroa.519.i.sroa.9.0..sroa.519.0..sroa_idx.i.sroa_idx, align 8
  store i32 1, ptr %i.af, align 8
  br label %.thread262

bb.v:                                             ; preds = %bb.ac, %bb.z, %bb.x, %bb.w
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools10merge_join7MergeByINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EB1o_INtBE_11MergeFuncLRNCNvMs4_B20_NtB20_8Bindings5merge0NtNtB4_3cmp8OrderingEEEB24_(ptr noalias noundef align 8 dereferenceable(144) %i.e) #36
          to label %bb.af unwind label %bb.ad

_RNvXs5_NtCs6Wt4yPw39th_9itertools10merge_joinINtB5_7MergeByINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EBV_INtB5_11MergeFuncLRNCNvMs4_B1x_NtB1x_8Bindings5merge0NtNtCs4NRVxsYgnAr_4core3cmp8OrderingEENtNtNtNtB3F_4iter6traits8iterator8Iterator4nextB1B_.exit: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i.thread
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs6Wt4yPw39th_9itertools10merge_join7MergeByINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EB1o_INtBE_11MergeFuncLRNCNvMs4_B20_NtB20_8Bindings5merge0NtNtB4_3cmp8OrderingEEEB24_(ptr noalias noundef align 8 dereferenceable(144) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.w:                                             ; preds = %bb.q
  %.sroa.519.i.sroa.9.4.extract.trunc149 = trunc i64 %.sroa.519.i.sroa.9.0 to i32
  %i.bv = invoke noundef i32 @_RNvMs1_NtCs2O29vuvTAEJ_14ty_python_core21narrowing_constraintsNtB5_27NarrowingConstraintsBuilder17add_or_constraint(ptr noalias noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %.sroa.519.i.sroa.9.4.extract.trunc149, i32 noundef %.sroa.4.i.sroa.9.0)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %.sroa.519.i.sroa.9.8.extract.shift153 = lshr i64 %.sroa.519.i.sroa.9.0, 32
  %.sroa.519.i.sroa.9.8.extract.trunc154 = trunc nuw i64 %.sroa.519.i.sroa.9.8.extract.shift153 to i32
  %i.bw = invoke noundef i32 @_RNvMs3_NtCs2O29vuvTAEJ_14ty_python_core24reachability_constraintsNtB5_30ReachabilityConstraintsBuilder17add_or_constraint(ptr noalias noundef nonnull align 8 dereferenceable(176) %3, i32 noundef %.sroa.519.i.sroa.9.8.extract.trunc154, i32 noundef %.sroa.4.i.sroa.10.0)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  %i.bx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1312, !noalias !1313, !noundef !4 ; 2 uses
  %i.by = icmp ugt i64 %i.bx, 2                   ; 2 uses
  %i.bz = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !1312, !noalias !1313, !nonnull !4
  %.sink9.i.i16 = select i1 %i.by, ptr %i.bz, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx
  %.sink8.idx.i.i17 = select i1 %i.by, i64 16, i64 0
  %.sink8.i.i18 = getelementptr inbounds nuw i8, ptr %.sroa.5.0..sroa_idx, i64 %.sink8.idx.i.i17 ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 2)
  %i.ca = load i64, ptr %.sink8.i.i18, align 8, !alias.scope !1314, !noalias !1315, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %.sink.i.i
  br i1 %i.cb, label %bb.z, label %bb.aa, !prof !7

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.z
  %i.cc = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !1314, !noalias !1315, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.bc, align 8, !alias.scope !1314, !noalias !1315
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc, %bb.y
  %i.cd = phi i64 [ %.pre.i, %.noexc ], [ %i.ca, %bb.y ]
  %.sroa.01.0.i = phi ptr [ %i.bc, %.noexc ], [ %.sink8.i.i18, %bb.y ]
  %.sroa.0.0.i19 = phi ptr [ %i.cc, %.noexc ], [ %.sink9.i.i16, %bb.y ]
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i19, i64 %i.cd ; 2 uses
  store i32 %.sroa.519.i.sroa.0.0, ptr %i.ce, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28, %bb.aa
  %.sink269 = phi ptr [ %i.cu, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %i.ce, %bb.aa ] ; 2 uses
  %.sroa.9.sroa.7.0.ph190.sink = phi i32 [ %.sroa.9.sroa.7.0.ph190, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %i.bv, %bb.aa ]
  %.sroa.9.sroa.8.0.ph188.sink = phi i32 [ %.sroa.9.sroa.8.0.ph188, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %i.bw, %bb.aa ]
  %.sroa.01.0.i24.sink268 = phi ptr [ %.sroa.01.0.i24, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %.sroa.01.0.i, %bb.aa ] ; 2 uses
  %i.cf = phi i64 [ %i.ck, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %i.bq, %bb.aa ]
  %.sroa.4.i.sroa.10.0.copyload100224 = phi i32 [ %.sroa.4.i.sroa.10.0.copyload100225, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %.sroa.4.i.sroa.10.0.copyload100226, %bb.aa ]
  %.sroa.4.i.sroa.9.0.copyload94221 = phi i32 [ %.sroa.4.i.sroa.9.0.copyload94222, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %.sroa.4.i.sroa.9.0.copyload94223, %bb.aa ]
  %.sroa.4.i.sroa.0.0.copyload88218 = phi i32 [ %.sroa.4.i.sroa.0.0.copyload88219, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %.sroa.4.i.sroa.0.0.copyload88220, %bb.aa ]
  %.sroa.519.i.sroa.9.0.copyload146214 = phi i64 [ %.sroa.519.i.sroa.9.0.copyload146215, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %.sroa.519.i.sroa.9.0.copyload146216, %bb.aa ]
  %.sroa.519.i.sroa.0.0.copyload144211 = phi i32 [ %.sroa.519.i.sroa.0.0.copyload144212, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ %.sroa.519.i.sroa.0.0.copyload144213, %bb.aa ]
  %i.cg = phi i32 [ %i.cl, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ 0, %bb.aa ]
  %i.ch = phi i32 [ %i.cm, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28 ], [ 0, %bb.aa ]
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink269, i64 4
  store i32 %.sroa.9.sroa.7.0.ph190.sink, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sink269, i64 8
  store i32 %.sroa.9.sroa.8.0.ph188.sink, ptr %.sroa.581.0..sroa_idx, align 4
  %i.ci = load i64, ptr %.sroa.01.0.i24.sink268, align 8, !noalias !4, !noundef !4
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %.sroa.01.0.i24.sink268, align 8, !noalias !4
  br label %bb.j

.thread262:                                       ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i, %bb.u, %bb.s, %bb.t
  %i.ck = phi i64 [ %i.bd, %bb.s ], [ %i.bq, %bb.t ], [ %i.bq, %bb.u ], [ %i.bq, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.4.i.sroa.10.0.copyload100225 = phi i32 [ %.sroa.4.i.sroa.10.0.copyload100226, %bb.s ], [ %.sroa.4.i.sroa.10.0, %bb.t ], [ %.sroa.4.i.sroa.10.0.copyload100226, %bb.u ], [ %.sroa.4.i.sroa.10.0.copyload100226, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.4.i.sroa.9.0.copyload94222 = phi i32 [ %.sroa.4.i.sroa.9.0.copyload94223, %bb.s ], [ %.sroa.4.i.sroa.9.0, %bb.t ], [ %.sroa.4.i.sroa.9.0.copyload94223, %bb.u ], [ %.sroa.4.i.sroa.9.0.copyload94223, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.4.i.sroa.0.0.copyload88219 = phi i32 [ %.sroa.4.i.sroa.0.0.copyload88220, %bb.s ], [ %.sroa.4.i.sroa.0.0, %bb.t ], [ %.sroa.4.i.sroa.0.0.copyload88220, %bb.u ], [ %.sroa.4.i.sroa.0.0.copyload88220, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.519.i.sroa.9.0.copyload146215 = phi i64 [ %.sroa.519.i.sroa.9.0.copyload146216, %bb.s ], [ %.sroa.519.i.sroa.9.0.copyload146216, %bb.t ], [ %.sroa.519.i.sroa.9.0, %bb.u ], [ %.sroa.519.i.sroa.9.0.copyload146216, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.519.i.sroa.0.0.copyload144212 = phi i32 [ %.sroa.519.i.sroa.0.0.copyload144213, %bb.s ], [ %.sroa.519.i.sroa.0.0.copyload144213, %bb.t ], [ %.sroa.519.i.sroa.0.0, %bb.u ], [ %.sroa.519.i.sroa.0.0.copyload144213, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %i.cl = phi i32 [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.u ], [ 0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %i.cm = phi i32 [ 0, %bb.s ], [ 0, %bb.t ], [ 1, %bb.u ], [ 0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.9.sroa.0.0.ph192 = phi i32 [ %.sroa.519.i.sroa.0.0, %bb.s ], [ %.sroa.519.i.sroa.0.0, %bb.t ], [ %.sroa.4.i.sroa.0.0, %bb.u ], [ %.sroa.4.i.sroa.0.0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.9.sroa.7.0.ph190 = phi i32 [ %.sroa.519.i.sroa.9.4.extract.trunc, %bb.s ], [ %.sroa.519.i.sroa.9.4.extract.trunc151, %bb.t ], [ %.sroa.4.i.sroa.9.0, %bb.u ], [ %.sroa.4.i.sroa.9.0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %.sroa.9.sroa.8.0.ph188 = phi i32 [ %.sroa.519.i.sroa.9.8.extract.trunc, %bb.s ], [ %.sroa.519.i.sroa.9.8.extract.trunc157, %bb.t ], [ %.sroa.4.i.sroa.10.0, %bb.u ], [ %.sroa.4.i.sroa.10.0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEINtB5_8FuseImplBY_E4nextB1E_.exit17.i ]
  %i.cn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1316, !noalias !1317, !noundef !4 ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 2                   ; 2 uses
  %i.cp = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !1316, !noalias !1317, !nonnull !4
  %.sink9.i.i20 = select i1 %i.co, ptr %i.cp, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx
  %.sink8.idx.i.i21 = select i1 %i.co, i64 16, i64 0
  %.sink8.i.i22 = getelementptr inbounds nuw i8, ptr %.sroa.5.0..sroa_idx, i64 %.sink8.idx.i.i21 ; 2 uses
  %.sink.i.i23 = call i64 @llvm.umax.i64(i64 %i.cn, i64 2)
  %i.cq = load i64, ptr %.sink8.i.i22, align 8, !alias.scope !1318, !noalias !1319, !noundef !4 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %.sink.i.i23
  br i1 %i.cr, label %bb.ac, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28, !prof !7

bb.ac:                                            ; preds = %.thread262
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E21reserve_one_uncheckedBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx)
          to label %.noexc27 unwind label %bb.v

.noexc27:                                         ; preds = %bb.ac
  %i.cs = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !alias.scope !1318, !noalias !1319, !nonnull !4, !noundef !4
  %.pre.i26 = load i64, ptr %i.bc, align 8, !alias.scope !1318, !noalias !1319
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_E4pushBO_.exit28: ; preds = %.thread262, %.noexc27
  %i.ct = phi i64 [ %.pre.i26, %.noexc27 ], [ %i.cq, %.thread262 ]
  %.sroa.01.0.i24 = phi ptr [ %i.bc, %.noexc27 ], [ %.sink8.i.i22, %.thread262 ]
  %.sroa.0.0.i25 = phi ptr [ %i.cs, %.noexc27 ], [ %.sink9.i.i20, %.thread262 ]
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25, i64 %i.ct ; 2 uses
  store i32 %.sroa.9.sroa.0.0.ph192, ptr %i.cu, align 4
  br label %bb.ab

bb.ad:                                            ; preds = %.thread, %bb.ae, %bb.v
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.ae:                                            ; preds = %bb.c, %bb.a
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEB1h_(ptr noalias noundef align 8 dereferenceable(32) %i.cx) #36
          to label %.thread unwind label %bb.ad

bb.af:                                            ; preds = %bb.e, %bb.h, %bb.v, %.thread
  %.pn.pn.pn161 = phi { ptr, i32 } [ %i.cw, %.thread ], [ %i.bu, %bb.v ], [ %i.ab, %bb.e ], [ %i.ad, %bb.h ]
  resume { ptr, i32 } %.pn.pn.pn161

.thread:                                          ; preds = %bb.ae
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_state11LiveBindingj2_EEB1h_(ptr noalias noundef align 8 dereferenceable(32) %i.cy) #36
          to label %bb.af unwind label %bb.ad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvMs4_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_8Bindings7unbound(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 4), (8, 28)) %0, i32 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %.sroa.64.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNvMs4_NtNtCs2O29vuvTAEJ_14ty_python_core7use_def11place_stateNtB5_8Bindings8as_slice(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1323, !noalias !1324, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1323, !noalias !1324, !nonnull !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1323, !noalias !1324
  %.sink10.i = select i1 %i.c, ptr %i.e, ptr %i.d
  %.sink9.i = select i1 %i.c, i64 %i.g, i64 %i.b
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sink10.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %.sink9.i, 1
  ret { ptr, i64 } %i.i
}

end_hunk_0
