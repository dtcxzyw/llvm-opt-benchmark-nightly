Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/build_script_build.build_script_build.319306946da73053-cgu.0?download=true
inline.NumInlined: 124
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs4fSK0KeF0ad_18build_script_build4main:bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bq)
  call void @_RNvCs1mz4BA98KdY_17fish_build_helper7env_var(ptr nonnull sret([24 x i8]) align 8 %i.bn, ptr nonnull @45, i64 4)
  %i.gi = load i64, ptr %i.bn, align 8
  %.not.i4 = icmp eq i64 %i.gi, -1
  br i1 %.not.i4, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @46) #15
  unreachable

bb.cn:                                            ; preds = %bb.co
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bo) #9
          to label %common.resume unwind label %bb.ed

bb.co:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.val21 = load ptr, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.val22 = load i64, ptr %i.gl, align 8
  invoke void @_RNvCskLYWf4FTVoC_6rsconf13set_env_value(ptr nonnull @44, i64 17, ptr %.val21, i64 %.val22)
          to label %bb.cp unwind label %bb.cn

bb.cp:                                            ; preds = %bb.co
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bo)
  call void @_RNvCs1mz4BA98KdY_17fish_build_helper7env_var(ptr nonnull sret([24 x i8]) align 8 %i.bl, ptr nonnull @48, i64 7)
  %i.gm = load i64, ptr %i.bl, align 8
  %.not.i = icmp eq i64 %i.gm, -1
  br i1 %.not.i, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @49) #15
  unreachable

bb.cr:                                            ; preds = %bb.cs
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bm) #9
          to label %common.resume unwind label %bb.ed

bb.cs:                                            ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.val19 = load ptr, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.val20 = load i64, ptr %i.gp, align 8
  invoke void @_RNvCskLYWf4FTVoC_6rsconf13set_env_value(ptr nonnull @47, i64 13, ptr %.val19, i64 %.val20)
          to label %bb.ct unwind label %bb.cr

bb.ct:                                            ; preds = %bb.cs
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvMsi_NtCsaL1QbXo9JQH_3std7processNtB6_7Command3newReECskfouyF4kJzn_2cc(ptr nonnull sret([200 x i8]) align 8 %i.i, ptr nonnull @24, i64 30), !noalias !78
  invoke void @_RNvMsi_NtCsaL1QbXo9JQH_3std7processNtB5_7Command6output(ptr nonnull sret([56 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.cv unwind label %bb.cu, !noalias !78

.body4.i:                                         ; preds = %.body.i32, %bb.cx, %bb.cu
  %.pn2.i = phi { ptr, i32 } [ %.pn.i33, %.body.i32 ], [ %i.gq, %bb.cu ], [ %i.gv, %bb.cx ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.i) #9
          to label %common.resume unwind label %bb.dp, !noalias !78

bb.cu:                                            ; preds = %bb.do, %bb.ct
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !78
  %i.gr = load i64, ptr %i.j, align 8, !noalias !78
  %i.gs = icmp eq i64 %i.gr, -1
  br i1 %i.gs, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.gt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !78
  store ptr %i.gu, ptr %i.g, align 8, !noalias !78
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @54, i64 43, ptr nonnull %i.g, ptr nonnull align 8 @53, ptr nonnull align 8 @25) #13
          to label %bb.cy unwind label %bb.cx, !noalias !78

bb.cx:                                            ; preds = %bb.cw
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.g) #9
          to label %.body4.i unwind label %bb.cz, !noalias !78

bb.cy:                                            ; preds = %bb.cw
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !78
  unreachable

bb.da:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !78
  %i.gx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !79
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !79 ; 2 uses
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr %i.gy, i64 %i.ha)
          to label %bb.dc unwind label %bb.db, !noalias !79

bb.db:                                            ; preds = %bb.da
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.l) #9
          to label %.body.i32 unwind label %bb.dd, !noalias !79

bb.dc:                                            ; preds = %bb.da
  %i.hc = load i64, ptr %i.f, align 8, !noalias !79
  %i.hd = trunc nuw i64 %i.hc to i1
  br i1 %i.hd, label %bb.df, label %.thread.i

.thread.i:                                        ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !78
  br label %bb.dl

bb.dd:                                            ; preds = %bb.db
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !79
  unreachable

.body.i32:                                        ; preds = %bb.dk, %bb.dh, %bb.de, %bb.db
  %.pn.i33 = phi { ptr, i32 } [ %i.hm, %bb.dk ], [ %i.hb, %bb.db ], [ %i.hg, %bb.de ], [ %i.hk, %bb.dh ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.hf) #9
          to label %.body4.i unwind label %bb.dp, !noalias !78

bb.de:                                            ; preds = %bb.dn
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i32

bb.df:                                            ; preds = %bb.dc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.hi = load <2 x i64>, ptr %i.hh, align 8, !noalias !79
  %i.hj = load i64, ptr %i.hh, align 8, !noalias !79
  %.sroa.014.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !79 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !78
  %.not.i.i = icmp eq i64 %.sroa.014.0.copyload.i, -1
  br i1 %.not.i.i, label %bb.dl, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store i64 %.sroa.014.0.copyload.i, ptr %i.h, align 8, !noalias !78
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !78
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store <2 x i64> %i.hi, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !78
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @54, i64 43, ptr nonnull %i.h, ptr nonnull align 8 @56, ptr nonnull align 8 @26) #13
          to label %bb.di unwind label %bb.dh, !noalias !78

bb.dh:                                            ; preds = %bb.dg
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string13FromUtf8ErrorECskfouyF4kJzn_2cc(ptr nonnull align 8 %i.h) #9
          to label %.body.i32 unwind label %bb.dj, !noalias !78

bb.di:                                            ; preds = %bb.dg
  unreachable

bb.dj:                                            ; preds = %bb.dh
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !78
  unreachable

bb.dk:                                            ; preds = %.loopexit.i
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.m) #9
          to label %.body.i32 unwind label %bb.dp, !noalias !78

bb.dl:                                            ; preds = %bb.df, %.thread.i
  %.sroa.4.sroa.4.0.i = phi i64 [ %i.hj, %bb.df ], [ %i.ha, %.thread.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.0.i, i64 16, i1 false), !noalias !78
  %.sroa.4.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.4.sroa.4.0.i, ptr %.sroa.4.sroa.4.0..sroa_idx.i, align 8, !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !78
  %i.hn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i = load ptr, ptr %i.hn, align 8, !noalias !78 ; 2 uses
  %.not7.i.i = icmp eq i64 %.sroa.4.sroa.4.0.i, 0
  br i1 %.not7.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dl, %bb.dm
  %.sroa.6.08.i.i = phi i64 [ %1, %bb.dm ], [ %.sroa.4.sroa.4.0.i, %bb.dl ] ; 3 uses
  %0 = getelementptr i8, ptr %.val.i, i64 %.sroa.6.08.i.i
  %i.ho = getelementptr i8, ptr %0, i64 -1
  %i.hp = load i8, ptr %i.ho, align 1, !noalias !78
  switch i8 %i.hp, label %.loopexit.i [
    i8 9, label %bb.dm
    i8 10, label %bb.dm
    i8 12, label %bb.dm
    i8 13, label %bb.dm
    i8 32, label %bb.dm
  ]

bb.dm:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %1 = add i64 %.sroa.6.08.i.i, -1                ; 2 uses
  %.not.i9.i = icmp eq i64 %1, 0
  br i1 %.not.i9.i, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %bb.dm, %.lr.ph.i.i, %bb.dl
  %.sroa.6.0.lcssa.i.i = phi i64 [ 0, %bb.dl ], [ %.sroa.6.08.i.i, %.lr.ph.i.i ], [ 0, %bb.dm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78
  invoke void @_RINvXs_NvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr %.val.i, i64 %.sroa.6.0.lcssa.i.i) #14
          to label %bb.dn unwind label %bb.dk, !noalias !78

bb.dn:                                            ; preds = %.loopexit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.m)
          to label %bb.do unwind label %bb.de, !noalias !78

bb.do:                                            ; preds = %bb.dn
  %i.hq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.hq)
          to label %bb.dr unwind label %bb.cu, !noalias !78

bb.dp:                                            ; preds = %bb.dk, %.body.i32, %.body4.i
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10, !noalias !78
  unreachable

bb.dq:                                            ; preds = %bb.dr
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bk) #9
          to label %common.resume unwind label %bb.ed

bb.dr:                                            ; preds = %bb.do
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std7process7CommandECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.i), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val17 = load ptr, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val18 = load i64, ptr %i.hu, align 8
  invoke void @_RNvCskLYWf4FTVoC_6rsconf13set_env_value(ptr nonnull @50, i64 18, ptr %.val17, i64 %.val18)
          to label %bb.ds unwind label %bb.dq

bb.ds:                                            ; preds = %bb.dr
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @51, ptr %i.d, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 5, ptr %i.hv, align 8
  %i.hw = call { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertReINtB2_5AsRefNtNtCsaL1QbXo9JQH_3std4path4PathE6as_refCs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.d) #14 ; 2 uses
  %i.hx = extractvalue { ptr, i64 } %i.hw, 0
  %i.hy = extractvalue { ptr, i64 } %i.hw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.hx, i64 %i.hy)
  %i.hz = load i64, ptr %i.c, align 8
  %i.ia = trunc nuw i64 %i.hz to i1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ie = load i64, ptr %i.id, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i1.i.i = icmp eq ptr %i.ic, null
  %.not.i.i.i34 = select i1 %i.ia, i1 true, i1 %.not.i1.i.i
  br i1 %.not.i.i.i34, label %bb.dt, label %_RINvCs1mz4BA98KdY_17fish_build_helper32rebuild_if_embedded_path_changedReECs4fSK0KeF0ad_18build_script_build.exit

bb.dt:                                            ; preds = %bb.ds
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr nonnull align 8 @1) #15
  unreachable

_RINvCs1mz4BA98KdY_17fish_build_helper32rebuild_if_embedded_path_changedReECs4fSK0KeF0ad_18build_script_build.exit: ; preds = %bb.ds
  call void @_RNvCskLYWf4FTVoC_6rsconf23rebuild_if_path_changed(ptr nonnull %i.ic, i64 %i.ie)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvMs3_CskfouyF4kJzn_2ccNtB5_5Build3new(ptr nonnull sret([488 x i8]) align 8 %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.bg, ptr noundef nonnull align 8 dereferenceable(488) %i.bj, i64 488, i1 false)
  call void @_RNvMs1_CskLYWf4FTVoC_6rsconfNtB5_6Target8new_from(ptr nonnull sret([520 x i8]) align 8 %i.bh, ptr nonnull align 8 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  %i.if = load i64, ptr %i.bh, align 8
  %i.ig = icmp eq i64 %i.if, 2
  br i1 %i.ig, label %bb.du, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtCskLYWf4FTVoC_6rsconf6TargetNtNtNtB4_2io5error5ErrorE6unwrapCs4fSK0KeF0ad_18build_script_build.exit

bb.du:                                            ; preds = %_RINvCs1mz4BA98KdY_17fish_build_helper32rebuild_if_embedded_path_changedReECs4fSK0KeF0ad_18build_script_build.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8
  store ptr %i.ii, ptr %i.bf, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @54, i64 43, ptr nonnull %i.bf, ptr nonnull align 8 @53, ptr nonnull align 8 @52) #13
          to label %bb.dw unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.bf) #9
          to label %common.resume unwind label %bb.dx

bb.dw:                                            ; preds = %bb.du
  unreachable

bb.dx:                                            ; preds = %bb.dv
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #10
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtCskLYWf4FTVoC_6rsconf6TargetNtNtNtB4_2io5error5ErrorE6unwrapCs4fSK0KeF0ad_18build_script_build.exit: ; preds = %_RINvCs1mz4BA98KdY_17fish_build_helper32rebuild_if_embedded_path_changedReECs4fSK0KeF0ad_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.bi, ptr noundef nonnull align 8 dereferenceable(520) %i.bh, i64 520, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  invoke void @_RNvMs1_CskLYWf4FTVoC_6rsconfNtB5_6Target11set_verbose(ptr nonnull align 8 %i.bi, i1 zeroext true)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %.noexc57, %.noexc56, %.noexc55, %.noexc54, %_RNCNvCs4fSK0KeF0ad_18build_script_build11detect_cfgss4_0B3_.exit.i, %.critedge.i.i, %.noexc51, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs4fSK0KeF0ad_18build_script_build.exit6.thread.i.i, %.noexc49, %.noexc48, %.noexc47, %_RNCNvCs4fSK0KeF0ad_18build_script_build11detect_cfgss2_0B3_.exit.i, %bb.ea, %.noexc44, %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.thread.i.i, %.noexc42, %.noexc41, %.noexc40, %.noexc39, %.noexc38, %.noexc37, %.noexc36, %bb.dz, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtCskLYWf4FTVoC_6rsconf6TargetNtNtNtB4_2io5error5ErrorE6unwrapCs4fSK0KeF0ad_18build_script_build.exit
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskLYWf4FTVoC_6rsconf6TargetECs4fSK0KeF0ad_18build_script_build(ptr align 8 %i.bi) #9
          to label %common.resume unwind label %bb.ed

bb.dz:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtCskLYWf4FTVoC_6rsconf6TargetNtNtNtB4_2io5error5ErrorE6unwrapCs4fSK0KeF0ad_18build_script_build.exit
  invoke void @_RNvCskLYWf4FTVoC_6rsconf11declare_cfg(ptr nonnull inttoptr (i64 1 to ptr), i64 0, i1 zeroext false)
          to label %.noexc36 unwind label %bb.dy

.noexc36:                                         ; preds = %bb.dz
  %i.im = invoke zeroext i1 @_RNvCs1mz4BA98KdY_17fish_build_helper18target_os_is_apple()
          to label %.noexc37 unwind label %bb.dy

.noexc37:                                         ; preds = %.noexc36
  invoke void @_RNvCskLYWf4FTVoC_6rsconf11declare_cfg(ptr nonnull @15, i64 5, i1 zeroext %i.im)
          to label %.noexc38 unwind label %bb.dy

.noexc38:                                         ; preds = %.noexc37
  %i.in = invoke zeroext i1 @_RNvCs1mz4BA98KdY_17fish_build_helper16target_os_is_bsd()
          to label %.noexc39 unwind label %bb.dy

.noexc39:                                         ; preds = %.noexc38
  invoke void @_RNvCskLYWf4FTVoC_6rsconf11declare_cfg(ptr nonnull @16, i64 3, i1 zeroext %i.in)
          to label %.noexc40 unwind label %bb.dy

.noexc40:                                         ; preds = %.noexc39
  %i.io = invoke zeroext i1 @_RNvCs1mz4BA98KdY_17fish_build_helper19target_os_is_cygwin()
          to label %.noexc41 unwind label %bb.dy

.noexc41:                                         ; preds = %.noexc40
  invoke void @_RNvCskLYWf4FTVoC_6rsconf11declare_cfg(ptr nonnull @17, i64 6, i1 zeroext %i.io)
          to label %.noexc42 unwind label %bb.dy

.noexc42:                                         ; preds = %.noexc41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvCs1mz4BA98KdY_17fish_build_helper9target_os(ptr nonnull sret([24 x i8]) align 8 %i.b)
          to label %.noexc43 unwind label %bb.dy

.noexc43:                                         ; preds = %.noexc42
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val2.i.i = load i64, ptr %i.ip, align 8
  %i.iq = icmp eq i64 %.val2.i.i, 6
  br i1 %i.iq, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.i.i, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.i.i: ; preds = %.noexc43
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i35 = load ptr, ptr %i.ir, align 8      ; 2 uses
  %i.is = load i32, ptr %.val.i.i35, align 1
  %i.it = xor i32 %i.is, 1651795310
  %i.iu = getelementptr i8, ptr %.val.i.i35, i64 4
  %i.iv = load i16, ptr %i.iu, align 1
  %i.iw = zext i16 %i.iv to i32
  %i.ix = xor i32 %i.iw, 25715
  %i.iy = or i32 %i.it, %i.ix
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.ea, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.thread.i.i

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.thread.i.i: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.i.i, %.noexc43
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.b)
          to label %.noexc44 unwind label %bb.dy

.noexc44:                                         ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.thread.i.i
  %i.jc = invoke zeroext i1 @_RNvMs1_CskLYWf4FTVoC_6rsconfNtB5_6Target10has_header(ptr nonnull align 8 %i.bi, ptr nonnull @7, i64 13)
          to label %_RNCNvCs4fSK0KeF0ad_18build_script_build11detect_cfgss2_0B3_.exit.i unwind label %bb.dy

bb.ea:                                            ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eqCs4fSK0KeF0ad_18build_script_build.exit.i.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5ILFtGS3mP9_15find_msvc_tools(ptr nonnull align 8 %i.b)
          to label %_RNCNvCs4fSK0KeF0ad_18build_script_build11detect_cfgss2_0B3_.exit.i unwind label %bb.dy

_RNCNvCs4fSK0KeF0ad_18build_script_build11detect_cfgss2_0B3_.exit.i: ; preds = %bb.ea, %.noexc44
  %.sroa.0.0.i.i = phi i1 [ %i.jc, %.noexc44 ], [ false, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvCskLYWf4FTVoC_6rsconf11declare_cfg(ptr nonnull @18, i64 12, i1 zeroext %.sroa.0.0.i.i)
          to label %.noexc47 unwind label %bb.dy

.noexc47:                                         ; preds = %_RNCNvCs4fSK0KeF0ad_18build_script_build11detect_cfgss2_0B3_.exit.i
  %i.jd = invoke zeroext i1 @_RNvMs1_CskLYWf4FTVoC_6rsconfNtB5_6Target10has_symbol(ptr nonnull align 8 %i.bi, ptr nonnull @8, i64 12)
          to label %.noexc48 unwind label %bb.dy

.noexc48:                                         ; preds = %.noexc47
  invoke void @_RNvCskLYWf4FTVoC_6rsconf11declare_cfg(ptr nonnull @19, i64 17, i1 zeroext %i.jd)
          to label %.noexc49 unwind label %bb.dy

.noexc49:                                         ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvCs1mz4BA98KdY_17fish_build_helper9target_os(ptr nonnull sret([24 x i8]) align 8 %i.a)
end_hunk_0
