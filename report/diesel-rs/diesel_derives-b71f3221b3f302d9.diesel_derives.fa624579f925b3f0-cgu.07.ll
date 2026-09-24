Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-b71f3221b3f302d9.diesel_derives.fa624579f925b3f0-cgu.07?download=true
inline.NumInlined: 965
inline.NumDeleted: 282
begin_hunk_0_@_RNvXs4_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_9FieldAttrNtNtCshMFl0SviwmK_3syn5parse5Parse5parse:bb.a
  %.sroa.528.sroa.7.0..sroa.528.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.528.sroa.7.0..sroa.528.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11269.0..sroa_idx, i64 7, i1 false)
  store i64 22, ptr %0, align 8
  store ptr %.sroa.0262.0.copyload, ptr %.sroa.528.0..sroa_idx, align 8
  store i64 %.sroa.7264.0.copyload, ptr %.sroa.528.sroa.5.0..sroa.528.0..sroa_idx.sroa_idx, align 8
  %.sroa.528.sroa.6.0..sroa.528.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.9266.0.copyload, ptr %.sroa.528.sroa.6.0..sroa.528.0..sroa_idx.sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.gj, ptr %.sroa.629.0..sroa_idx, align 8
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.gl, ptr %.sroa.730.0..sroa_idx, align 4
  br label %bb.as

bb.cc:                                            ; preds = %bb.s
  %i.go = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gp = icmp eq i8 %.sroa.9258.0.copyload, 2
  %i.gq = icmp eq i64 %.sroa.7256.0.copyload, 0
  %or.cond334 = select i1 %i.gp, i1 true, i1 %i.gq
  br i1 %or.cond334, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit189, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0254.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0254.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7256.0.copyload, i64 noundef 1) #13, !noalias !2276
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit189

bb.ce:                                            ; preds = %bb.s
  %i.gr = load i64, ptr %i.k, align 8, !range !20, !noundef !14 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, -1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, ptr noundef nonnull align 8 dereferenceable(24) %i.gt, i64 24, i1 false)
  br i1 %i.gs, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.gv = icmp eq i8 %.sroa.9258.0.copyload, 2
  %i.gw = icmp eq i64 %.sroa.7256.0.copyload, 0
  %or.cond335 = select i1 %i.gv, i1 true, i1 %i.gw
  br i1 %or.cond335, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit240, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0254.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0254.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7256.0.copyload, i64 noundef 1) #13, !noalias !2277
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit240

bb.ch:                                            ; preds = %bb.ce
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5121.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.622, i64 24, i1 false)
  %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11261.0..sroa_idx, i64 7, i1 false)
  store i64 21, ptr %0, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0254.0.copyload, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.618.sroa.5.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.7256.0.copyload, ptr %.sroa.618.sroa.5.0..sroa.618.0..sroa_idx.sroa_idx, align 8
  %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.9258.0.copyload, ptr %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  br label %bb.as

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit240: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit234

bb.ci:                                            ; preds = %bb.q
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gy = icmp eq i8 %.sroa.9.0.copyload, 2
  %i.gz = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond336 = select i1 %i.gy, i1 true, i1 %i.gz
  br i1 %or.cond336, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit189, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7.0.copyload, i64 noundef 1) #13, !noalias !2278
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit189

bb.ck:                                            ; preds = %bb.q
  %i.ha = load i64, ptr %i.l, align 8, !range !20, !noundef !14 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, -1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.hb, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.he = icmp eq i8 %.sroa.9.0.copyload, 2
  %i.hf = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond337 = select i1 %i.he, i1 true, i1 %i.hf
  br i1 %or.cond337, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit246, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7.0.copyload, i64 noundef 1) #13, !noalias !2279
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit246

bb.cn:                                            ; preds = %bb.ck
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx, i64 7, i1 false)
  store i64 20, ptr %0, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ha, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.7.0.copyload, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.9.0.copyload, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.as

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit246: ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit234

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i194, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit, %bb.ak, %bb.al, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i200, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit249: ; preds = %bb.av, %bb.at, %bb.cp, %bb.co, %.body.thread, %bb.h
  %.pn182310 = phi { ptr, i32 } [ %i.eq, %bb.av ], [ %.pn182311, %bb.cp ], [ %.pn, %bb.h ], [ %.pn182311, %.body.thread ], [ %.pn182311, %bb.co ], [ %i.eo, %bb.at ]
  resume { ptr, i32 } %.pn182310

.body.thread:                                     ; preds = %bb.ai, %bb.d, %.body, %bb.h
  %.pn182311 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body ], [ %.pn, %bb.h ], [ %i.w, %bb.d ], [ %i.dy, %bb.ai ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.hh = load i8, ptr %i.hg, align 8, !range !13, !alias.scope !2282, !noundef !14
  %i.hi = icmp eq i8 %i.hh, 2
  br i1 %i.hi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit249, label %bb.co

bb.co:                                            ; preds = %.body.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i.i247 = load i64, ptr %i.hj, align 8, !alias.scope !2282, !noundef !14 ; 2 uses
  %i.hk = icmp eq i64 %.val1.i.i247, 0
  br i1 %i.hk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit249, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val.i.i248 = load ptr, ptr %i.o, align 8, !alias.scope !2282, !nonnull !14, !noundef !14
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i248, i64 noundef range(i64 1, 0) %.val1.i.i247, i64 noundef 1) #13, !noalias !2282
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit249
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXs5_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_9FieldAttrNtB5_9MySpanned4span(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0) unnamed_addr #1 {
switch.lookup:
  %i.a = load i64, ptr %0, align 8, !range !31, !noundef !14 ; 2 uses
  %i.b = add nsw i64 %i.a, -17
  %i.c = icmp samesign ugt i64 %i.a, 16
  %i.d = select i1 %i.c, i64 %i.b, i64 10
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvXs5_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_9FieldAttrNtB5_9MySpanned4span, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.f = tail call noundef i32 @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i32 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_10StructAttrNtNtCshMFl0SviwmK_3syn5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [56 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [224 x i8], align 8               ; 7 uses
  %.sroa.6188 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.11534 = alloca [7 x i8], align 1         ; 5 uses
  %i.x = alloca [176 x i8], align 8               ; 7 uses
  %.sroa.6179 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.11526 = alloca [7 x i8], align 1         ; 5 uses
  %.sroa.5134 = alloca [19 x i8], align 1         ; 2 uses
  %i.y = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.6152.sroa.8 = alloca [19 x i8], align 1  ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 9 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.6122 = alloca [24 x i8], align 8         ; 6 uses
  %.sroa.11518 = alloca [7 x i8], align 1         ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.5115 = alloca [24 x i8], align 8         ; 7 uses
  %.sroa.11510 = alloca [7 x i8], align 1         ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %.sroa.11502 = alloca [7 x i8], align 1         ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.11494 = alloca [7 x i8], align 1         ; 5 uses
  %i.ah = alloca [104 x i8], align 8              ; 7 uses
  %.sroa.673 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.11486 = alloca [7 x i8], align 1         ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.11478 = alloca [7 x i8], align 1         ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.11470 = alloca [7 x i8], align 1         ; 5 uses
  %i.ak = alloca [80 x i8], align 8               ; 7 uses
  %.sroa.623 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.11462 = alloca [7 x i8], align 1         ; 5 uses
  %i.al = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.613 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.11 = alloca [7 x i8], align 1            ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 19 uses
  %i.an = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 62 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @_RNvXNtNtCshMFl0SviwmK_3syn5ident7parsingNtCsf5uYjtxkodL_11proc_macro25IdentNtNtB6_5parse5Parse5parse(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.an, ptr noundef nonnull align 8 %1)
  %i.ap = load i64, ptr %i.an, align 8, !range !21, !noundef !14
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2480
  store i64 0, ptr %i.u, align 8, !noalias !2480
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2480
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2480
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 1610612768, ptr %i.at, align 8, !noalias !2480
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !2480
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !2480
  store ptr %i.u, ptr %i.t, align 8, !noalias !2480
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @88, ptr %i.au, align 8, !noalias !2480
  %i.av = invoke noundef zeroext i1 @_RNvXsE_Csf5uYjtxkodL_11proc_macro2NtB5_5IdentNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.e unwind label %bb.d, !noalias !2481

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #15
          to label %.body.thread unwind label %bb.g, !noalias !2481

bb.e:                                             ; preds = %bb.c
  br i1 %i.av, label %bb.f, label %bb.i, !prof !32

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #17
          to label %.noexc.i unwind label %bb.d, !noalias !2481

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2481
  unreachable

bb.h:                                             ; preds = %.body375
  br i1 %.sroa.0199.2, label %.body.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450

.body.thread545:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.de
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !2482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2480
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !14, !noundef !14 ; 29 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !14
  switch i64 %i.bb, label %bb.bm [
    i64 9, label %bb.j
    i64 14, label %bb.n
    i64 10, label %bb.p
    i64 8, label %bb.r
    i64 27, label %bb.t
    i64 18, label %bb.v
    i64 11, label %bb.ab
    i64 13, label %bb.aq
    i64 17, label %bb.bh
    i64 15, label %bb.bl
  ]

bb.j:                                             ; preds = %bb.i
  %i.bc = load i64, ptr %i.az, align 1
  %i.bd = xor i64 %i.bc, 8386097666549311329
  %i.be = getelementptr i8, ptr %i.az, i64 8
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i64
  %i.bh = xor i64 %i.bg, 101
  %i.bi = or i64 %i.bd, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  store i64 17, ptr %0, align 8
  br label %bb.ca

bb.l:                                             ; preds = %bb.j
  %i.bm = load i64, ptr %i.az, align 1
  %i.bn = xor i64 %i.bm, 7312272889233043310
  %i.bo = getelementptr i8, ptr %i.az, i64 8
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i64
  %i.br = xor i64 %i.bq, 100
  %i.bs = or i64 %i.bn, %i.br
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.m, label %bb.bm

bb.m:                                             ; preds = %bb.l
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  store i64 18, ptr %0, align 8
  br label %bb.ca

bb.n:                                             ; preds = %bb.i
  %i.bw = load i64, ptr %i.az, align 1
  %i.bx = xor i64 %i.bw, 6876547383412551526
  %i.by = getelementptr i8, ptr %i.az, i64 6
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = xor i64 %i.bz, 7311146985130844014
  %i.cb = or i64 %i.bx, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.o, label %bb.bm

bb.o:                                             ; preds = %bb.n
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  store i64 19, ptr %0, align 8
  br label %bb.ca

bb.p:                                             ; preds = %bb.i
  %i.cf = load i64, ptr %i.az, align 1
  %i.cg = xor i64 %i.cf, 7020653758331904372
  %i.ch = getelementptr i8, ptr %i.az, i64 8
  %i.ci = load i16, ptr %i.ch, align 1
  %i.cj = zext i16 %i.ci to i64
  %i.ck = xor i64 %i.cj, 25965
  %i.cl = or i64 %i.cg, %i.ck
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %.sroa.0.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util8parse_eqNtNtCshMFl0SviwmK_3syn4path4PathEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.al, ptr noundef nonnull align 8 %1)
          to label %bb.gd unwind label %bb.gb

bb.r:                                             ; preds = %bb.i
  %i.cp = load i64, ptr %i.az, align 1
  %i.cq = icmp ne i64 %i.cp, 7309475735946424691
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.s, label %bb.bm

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11462)
  %.sroa.0455.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7457.0.copyload = load i64, ptr %.sroa.7457.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9459.0.copyload = load i8, ptr %.sroa.9459.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11462, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11462.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.623)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util8parse_eqNtNtCshMFl0SviwmK_3syn2ty8TypePathEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.ak, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 14)
          to label %bb.fx unwind label %bb.fv

bb.t:                                             ; preds = %bb.i
  %i.ct = load i128, ptr %i.az, align 1
  %i.cu = xor i128 %i.ct, 134773193230416394876946600486884438644
  %i.cv = getelementptr i8, ptr %i.az, i64 11
  %i.cw = load i128, ptr %i.cv, align 1
  %i.cx = xor i128 %i.cw, 134861724528728665166869748917173449569
  %i.cy = or i128 %i.cu, %i.cx
  %i.cz = icmp ne i128 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.u, label %bb.bm

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11470)
  %.sroa.0463.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7465.0.copyload = load i64, ptr %.sroa.7465.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9467.0.copyload = load i8, ptr %.sroa.9467.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11470, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11470.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util8parse_eqNtNtCshMFl0SviwmK_3syn3lit7LitBoolEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aj, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 34)
          to label %bb.fr unwind label %bb.fp

bb.v:                                             ; preds = %bb.i
  %i.dc = load i128, ptr %i.az, align 1
  %i.dd = xor i128 %i.dc, 156092764131560397119692818414662152820
  %i.de = getelementptr i8, ptr %i.az, i64 16
  %i.df = load i16, ptr %i.de, align 1
  %i.dg = zext i16 %i.df to i128
  %i.dh = xor i128 %i.dg, 27756
  %i.di = or i128 %i.dd, %i.dh
  %i.dj = icmp ne i128 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.w, label %bb.bm

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11478)
  %.sroa.0471.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7473.0.copyload = load i64, ptr %.sroa.7473.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9475.0.copyload = load i8, ptr %.sroa.9475.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11478, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11478.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util8parse_eqNtNtCshMFl0SviwmK_3syn3lit7LitBoolEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ai, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 25)
          to label %bb.fl unwind label %bb.fj

bb.x:                                             ; preds = %bb.p
  %i.dm = load i64, ptr %i.az, align 1
  %i.dn = xor i64 %i.dm, 6877954779938317666
  %i.do = getelementptr i8, ptr %i.az, i64 8
  %i.dp = load i16, ptr %i.do, align 1
  %i.dq = zext i16 %i.dp to i64
  %i.dr = xor i64 %i.dq, 28532
  %i.ds = or i64 %i.dn, %i.dr
  %i.dt = icmp ne i64 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11486)
  %.sroa.0479.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7481.0.copyload = load i64, ptr %.sroa.7481.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9483.0.copyload = load i8, ptr %.sroa.9483.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11486, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11486.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.673)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util11parse_parenNtNtNtB4_7parsers10belongs_to9BelongsToEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.ah, ptr noundef nonnull align 8 %1)
          to label %bb.ff unwind label %bb.fd

bb.z:                                             ; preds = %bb.x
  %i.dw = load i64, ptr %i.az, align 1
  %i.dx = xor i64 %i.dw, 8751724895252216173
  %i.dy = getelementptr i8, ptr %i.az, i64 8
  %i.dz = load i16, ptr %i.dy, align 1
  %i.ea = zext i16 %i.dz to i64
  %i.eb = xor i64 %i.ea, 25968
  %i.ec = or i64 %i.dx, %i.eb
  %i.ed = icmp ne i64 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.aa, label %bb.bj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11494)
  %.sroa.0487.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7489.0.copyload = load i64, ptr %.sroa.7489.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9491.0.copyload = load i8, ptr %.sroa.9491.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11494, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11494.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util11parse_parenNtNtNtB4_7parsers10mysql_type9MysqlTypeEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef nonnull align 8 %1)
          to label %bb.ez unwind label %bb.ex

bb.ab:                                            ; preds = %bb.i
  %i.eg = load i64, ptr %i.az, align 1
  %i.eh = xor i64 %i.eg, 8385532581846479219
  %i.ei = getelementptr i8, ptr %i.az, i64 3
  %i.ej = load i64, ptr %i.ei, align 1
  %i.ek = xor i64 %i.ej, 7309475735945966697
  %i.el = or i64 %i.eh, %i.ek
  %i.em = icmp ne i64 %i.el, 0
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.ac, label %bb.bf

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11502)
  %.sroa.0495.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7497.0.copyload = load i64, ptr %.sroa.7497.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9499.0.copyload = load i8, ptr %.sroa.9499.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11502, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11502.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @39, ptr %i.s, align 8, !noalias !2483
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 25, ptr %i.ep, align 8, !noalias !2483
  %i.eq = invoke noundef zeroext i1 @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer8is_empty(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.er

.noexc:                                           ; preds = %bb.ac
  br i1 %i.eq, label %.split.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2483
  invoke void @_RNvNtCshMFl0SviwmK_3syn5group12parse_parens(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noundef nonnull align 8 %1)
          to label %.noexc321 unwind label %bb.er

.noexc321:                                        ; preds = %bb.ad
  %i.er = load i64, ptr %i.n, align 8, !range !21, !noalias !2483, !noundef !14
  %i.es = trunc nuw i64 %i.er to i1
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.es, label %bb.ae, label %bb.af

.split.i:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2483
  %i.eu = invoke noundef i32 @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer4span(ptr noundef nonnull align 8 %1)
          to label %.noexc322 unwind label %bb.er

.noexc322:                                        ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2483
  store ptr %i.s, ptr %i.p, align 8, !noalias !2483
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2483
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @0, ptr noundef nonnull %i.p)
          to label %.noexc323 unwind label %bb.er

.noexc323:                                        ; preds = %.noexc322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2483
  invoke void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, i32 noundef %i.eu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %.noexc324 unwind label %bb.er

.noexc324:                                        ; preds = %.noexc323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2483
  br label %bb.et

bb.ae:                                            ; preds = %.noexc321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2483
  br label %bb.et

bb.af:                                            ; preds = %.noexc321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.et, i64 32, i1 false), !noalias !2483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2483
  invoke void @_RNvXs_NtNtCsluMP4ekZjHw_14diesel_derives7parsers11sqlite_typeNtB4_10SqliteTypeNtNtCshMFl0SviwmK_3syn5parse5Parse5parse(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %i.o)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %bb.ak unwind label %bb.ah, !noalias !2483

bb.ah:                                            ; preds = %bb.ag
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %i.ex = load ptr, ptr %i.ew, align 8, !alias.scope !2487, !noalias !2483, !noundef !14 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %.body326, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = load i64, ptr %i.ex, align 8, !noalias !2488, !noundef !14
  %i.fa = add i64 %i.ez, -1                       ; 2 uses
  store i64 %i.fa, ptr %i.ex, align 8, !noalias !2488
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.aj, label %.body326

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ew)
          to label %.body326 unwind label %bb.an, !noalias !2483

bb.ak:                                            ; preds = %bb.ag
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !2492, !noalias !2483, !noundef !14 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ff = load i64, ptr %i.fd, align 8, !noalias !2493, !noundef !14
  %i.fg = add i64 %i.ff, -1                       ; 2 uses
  store i64 %i.fg, ptr %i.fd, align 8, !noalias !2493
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.er

bb.an:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2483
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2483
  br label %bb.et

bb.ao:                                            ; preds = %bb.af
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.o) #15
          to label %.body326 unwind label %bb.ap, !noalias !2483

bb.ap:                                            ; preds = %bb.ao
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2483
  unreachable

bb.aq:                                            ; preds = %bb.i
  %i.fl = load i64, ptr %i.az, align 1
  %i.fm = xor i64 %i.fl, 8315178075670409072
  %i.fn = getelementptr i8, ptr %i.az, i64 5
  %i.fo = load i64, ptr %i.fn, align 1
  %i.fp = xor i64 %i.fo, 7309475735946880370
  %i.fq = or i64 %i.fm, %i.fp
  %i.fr = icmp ne i64 %i.fq, 0
  %i.fs = zext i1 %i.fr to i32
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ar, label %bb.bm

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11510)
  %.sroa.0503.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7505.0.copyload = load i64, ptr %.sroa.7505.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9507.0.copyload = load i8, ptr %.sroa.9507.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11510, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11510.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @82, ptr %i.m, align 8, !noalias !2494
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 46, ptr %i.fu, align 8, !noalias !2494
  %i.fv = invoke noundef zeroext i1 @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer8is_empty(ptr noundef nonnull align 8 %1)
          to label %.noexc333 unwind label %bb.el

.noexc333:                                        ; preds = %bb.ar
  br i1 %i.fv, label %.split.i331, label %bb.as

bb.as:                                            ; preds = %.noexc333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2494
  invoke void @_RNvNtCshMFl0SviwmK_3syn5group12parse_parens(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noundef nonnull align 8 %1)
          to label %.noexc334 unwind label %bb.el

.noexc334:                                        ; preds = %bb.as
  %i.fw = load i64, ptr %i.h, align 8, !range !21, !noalias !2494, !noundef !14
  %i.fx = trunc nuw i64 %i.fw to i1
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.fx, label %bb.at, label %bb.au

.split.i331:                                      ; preds = %.noexc333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2494
  %i.fz = invoke noundef i32 @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer4span(ptr noundef nonnull align 8 %1)
          to label %.noexc335 unwind label %bb.el

.noexc335:                                        ; preds = %.split.i331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2494
  store ptr %i.m, ptr %i.j, align 8, !noalias !2494
  %.sroa.43.0..sroa_idx.i332 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.43.0..sroa_idx.i332, align 8, !noalias !2494
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @0, ptr noundef nonnull %i.j)
          to label %.noexc336 unwind label %bb.el

.noexc336:                                        ; preds = %.noexc335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2494
  invoke void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, i32 noundef %i.fz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc337 unwind label %bb.el

.noexc337:                                        ; preds = %.noexc336
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2494
  br label %.thread587

bb.at:                                            ; preds = %.noexc334
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, ptr noundef nonnull align 8 dereferenceable(24) %i.fy, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2494
  br label %.thread587

bb.au:                                            ; preds = %.noexc334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fy, i64 32, i1 false), !noalias !2494
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2494
  invoke void @_RNvXs_NtNtCsluMP4ekZjHw_14diesel_derives7parsers13postgres_typeNtB4_12PostgresTypeNtNtCshMFl0SviwmK_3syn5parse5Parse5parse(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noundef nonnull align 8 %i.i)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.az unwind label %bb.aw, !noalias !2494

bb.aw:                                            ; preds = %bb.av
  %i.gc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !2498, !noalias !2494, !noundef !14 ; 3 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %.body339, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gg = load i64, ptr %i.ge, align 8, !noalias !2499, !noundef !14
  %i.gh = add i64 %i.gg, -1                       ; 2 uses
  store i64 %i.gh, ptr %i.ge, align 8, !noalias !2499
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.ay, label %.body339

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gd)
          to label %.body339 unwind label %bb.bc, !noalias !2494

bb.az:                                            ; preds = %bb.av
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !2503, !noalias !2494, !noundef !14 ; 3 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.en, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gm = load i64, ptr %i.gk, align 8, !noalias !2504, !noundef !14
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gk, align 8, !noalias !2504
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.bb, label %bb.en

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gj)
          to label %bb.en unwind label %bb.el

bb.bc:                                            ; preds = %bb.ay
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2494
  unreachable

bb.bd:                                            ; preds = %bb.au
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.i) #15
          to label %.body339 unwind label %bb.be, !noalias !2494

bb.be:                                            ; preds = %bb.bd
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2494
  unreachable

bb.bf:                                            ; preds = %bb.ab
  %i.gs = load i64, ptr %i.az, align 1
  %i.gt = xor i64 %i.gs, 6879655668558164592
  %i.gu = getelementptr i8, ptr %i.az, i64 3
  %i.gv = load i64, ptr %i.gu, align 1
  %i.gw = xor i64 %i.gv, 8747515909040660845
  %i.gx = or i64 %i.gt, %i.gw
  %i.gy = icmp ne i64 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11518)
  %.sroa.0511.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7513.0.copyload = load i64, ptr %.sroa.7513.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9515.0.copyload = load i8, ptr %.sroa.9515.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11518, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11518.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util16parse_paren_listNtCsf5uYjtxkodL_11proc_macro25IdentINvNtCshMFl0SviwmK_3syn5token5CommaNtNtB1z_9lookahead11TokenMarkerEEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ad, ptr noundef nonnull align 8 %1)
          to label %bb.eh unwind label %bb.ef

bb.bh:                                            ; preds = %bb.i
  %i.hb = load i128, ptr %i.az, align 1
  %i.hc = xor i128 %i.hb, 146741679610607414669569751522105190499
  %i.hd = getelementptr i8, ptr %i.az, i64 16
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = zext i8 %i.he to i128
  %i.hg = xor i128 %i.hf, 100
  %i.hh = or i128 %i.hc, %i.hg
  %i.hi = icmp ne i128 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer4fork(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noundef nonnull align 8 %1)
          to label %bb.cn unwind label %bb.bo

bb.bj:                                            ; preds = %bb.z
  %i.hl = load i64, ptr %i.az, align 1
  %i.hm = xor i64 %i.hl, 7310874224643760482
  %i.hn = getelementptr i8, ptr %i.az, i64 8
  %i.ho = load i16, ptr %i.hn, align 1
  %i.hp = zext i16 %i.ho to i64
  %i.hq = xor i64 %i.hp, 31090
  %i.hr = or i64 %i.hm, %i.hq
  %i.hs = icmp ne i64 %i.hr, 0
  %i.ht = zext i1 %i.hs to i32
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11526)
  %.sroa.0519.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7521.0.copyload = load i64, ptr %.sroa.7521.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9523.0.copyload = load i8, ptr %.sroa.9523.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11526, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11526.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util8parse_eqNtNtCshMFl0SviwmK_3syn4expr4ExprEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(176) %i.x, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 71)
          to label %bb.cj unwind label %bb.ch

bb.bl:                                            ; preds = %bb.i
  %i.hv = load i64, ptr %i.az, align 1
  %i.hw = xor i64 %i.hv, 7310874224643760482
  %i.hx = getelementptr i8, ptr %i.az, i64 7
  %i.hy = load i64, ptr %i.hx, align 1
  %i.hz = xor i64 %i.hy, 7309475735947276901
  %i.ia = or i64 %i.hw, %i.hz
  %i.ib = icmp ne i64 %i.ia, 0
  %i.ic = zext i1 %i.ib to i32
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bh, %bb.bf, %bb.aq, %bb.v, %bb.t, %bb.r, %bb.n, %bb.l, %bb.i, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvNtCsluMP4ekZjHw_14diesel_derives4util17unknown_attribute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @77, i64 noundef 15)
          to label %bb.bp unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11534)
  %.sroa.0527.0.copyload = load ptr, ptr %i.ao, align 8 ; 5 uses
  %.sroa.7529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7529.0.copyload = load i64, ptr %.sroa.7529.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.9531.0.copyload = load i8, ptr %.sroa.9531.0..sroa_idx, align 8 ; 3 uses
  %.sroa.11534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11534, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11534.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6188)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util8parse_eqNtNtCshMFl0SviwmK_3syn2ty4TypeEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(224) %i.w, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 81)
          to label %bb.bw unwind label %bb.bu

.body375:                                         ; preds = %bb.gc, %bb.gb, %bb.fw, %bb.fv, %bb.fq, %bb.fp, %bb.fk, %bb.fj, %bb.fe, %bb.fd, %bb.ey, %bb.ex, %bb.es, %.body326, %bb.em, %.body339, %bb.eg, %bb.ef, %bb.dq, %bb.dr, %bb.ds, %bb.dx, %bb.df, %bb.dg, %bb.dh, %bb.ci, %bb.ch, %bb.bv, %bb.bu, %bb.bo, %bb.cx, %.body371
  %.sroa.0199.2 = phi i1 [ false, %bb.ci ], [ false, %bb.fw ], [ false, %bb.fq ], [ false, %bb.fk ], [ false, %bb.fe ], [ false, %bb.ey ], [ false, %bb.es ], [ false, %bb.em ], [ false, %bb.eg ], [ true, %bb.dq ], [ true, %bb.cx ], [ true, %.body371 ], [ false, %bb.bv ], [ true, %bb.bo ], [ true, %bb.df ], [ false, %bb.bu ], [ false, %bb.gc ], [ false, %bb.ch ], [ false, %bb.fd ], [ true, %bb.dh ], [ true, %bb.dg ], [ true, %bb.dx ], [ true, %bb.ds ], [ true, %bb.dr ], [ false, %bb.ef ], [ false, %bb.gb ], [ false, %.body339 ], [ false, %bb.fp ], [ false, %.body326 ], [ false, %bb.fv ], [ false, %bb.ex ], [ false, %bb.fj ]
  %.pn = phi { ptr, i32 } [ %i.jb, %bb.ci ], [ %i.od, %bb.fw ], [ %i.nt, %bb.fq ], [ %i.nj, %bb.fk ], [ %i.na, %bb.fe ], [ %i.mr, %bb.ey ], [ %eh.lpad-body327, %bb.es ], [ %eh.lpad-body340, %bb.em ], [ %i.lq, %bb.eg ], [ %i.ks, %bb.dq ], [ %i.jp, %bb.cx ], [ %eh.lpad-body372, %.body371 ], [ %i.in, %bb.bv ], [ %i.ie, %bb.bo ], [ %i.jw, %bb.df ], [ %i.in, %bb.bu ], [ %i.om, %bb.gc ], [ %i.jb, %bb.ch ], [ %i.na, %bb.fd ], [ %i.jw, %bb.dh ], [ %i.jw, %bb.dg ], [ %i.lg, %bb.dx ], [ %i.ks, %bb.ds ], [ %i.ks, %bb.dr ], [ %i.lq, %bb.ef ], [ %i.om, %bb.gb ], [ %eh.lpad-body340, %.body339 ], [ %i.nt, %bb.fp ], [ %eh.lpad-body327, %.body326 ], [ %i.od, %bb.fv ], [ %i.mr, %bb.ex ], [ %i.nj, %bb.fj ] ; 2 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am) #15
          to label %bb.h unwind label %bb.cg

bb.bo:                                            ; preds = %bb.dv, %.noexc385, %.noexc384, %.split.i380, %bb.dm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit, %bb.dk, %bb.da, %bb.cz, %bb.cv, %bb.cu, %bb.bm, %bb.bi
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body375

bb.bp:                                            ; preds = %bb.bm
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %.body.thread unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.bp
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit unwind label %.body.thread545

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ij = load i8, ptr %i.ii, align 8, !range !13, !alias.scope !2507, !noundef !14
  %i.ik = icmp eq i8 %i.ij, 2
  br i1 %i.ik, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i.i = load i64, ptr %i.il, align 8, !alias.scope !2507, !noundef !14 ; 2 uses
  %i.im = icmp eq i64 %.val1.i.i, 0
  br i1 %i.im, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !2507, !nonnull !14, !noundef !14
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #13, !noalias !2507
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.bu:                                            ; preds = %bb.bn
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = icmp eq i8 %.sroa.9531.0.copyload, 2
  %i.ip = icmp eq i64 %.sroa.7529.0.copyload, 0
  %or.cond = select i1 %i.io, i1 true, i1 %i.ip
  br i1 %or.cond, label %.body375, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0527.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0527.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7529.0.copyload, i64 noundef 1) #13, !noalias !2508
  br label %.body375

bb.bw:                                            ; preds = %bb.bn
  %i.iq = load i64, ptr %i.w, align 8, !range !29, !noundef !14 ; 2 uses
  %i.ir = icmp eq i64 %i.iq, -1
  %i.is = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6188, ptr noundef nonnull align 8 dereferenceable(24) %i.is, i64 24, i1 false)
  br i1 %i.ir, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6188, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.iu = icmp eq i8 %.sroa.9531.0.copyload, 2
  %i.iv = icmp eq i64 %.sroa.7529.0.copyload, 0
  %or.cond548 = select i1 %i.iu, i1 true, i1 %i.iv
  br i1 %or.cond548, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit350, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0527.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0527.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7529.0.copyload, i64 noundef 1) #13, !noalias !2509
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit350

bb.bz:                                            ; preds = %bb.bw
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.6197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.6197.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.5283.0..sroa_idx, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5196.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6188, i64 24, i1 false)
  %.sroa.7198.sroa.7.0..sroa.7198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7198.sroa.7.0..sroa.7198.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11534, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11534)
  store i64 %i.iq, ptr %0, align 8
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %.sroa.0527.0.copyload, ptr %.sroa.7198.0..sroa_idx, align 8
  %.sroa.7198.sroa.5.0..sroa.7198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %.sroa.7529.0.copyload, ptr %.sroa.7198.sroa.5.0..sroa.7198.0..sroa_idx.sroa_idx, align 8
  %.sroa.7198.sroa.6.0..sroa.7198.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %.sroa.9531.0.copyload, ptr %.sroa.7198.sroa.6.0..sroa.7198.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.gg, %bb.ga, %bb.fu, %bb.fo, %bb.fi, %bb.fc, %bb.ew, %bb.eq, %bb.ek, %bb.dc, %bb.cm, %bb.bz, %bb.o, %bb.m, %bb.k
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i352 unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450 unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i352: ; preds = %bb.ca
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit350: ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11534)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6188)
  br label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit447, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit441, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit435, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit429, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit423, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit417, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit411, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit405, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit399, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit370, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit350
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i359 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i359: ; preds = %bb.cd
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.cg:                                            ; preds = %bb.cx, %.body371, %.body375
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ch:                                            ; preds = %bb.bk
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = icmp eq i8 %.sroa.9523.0.copyload, 2
  %i.jd = icmp eq i64 %.sroa.7521.0.copyload, 0
  %or.cond549 = select i1 %i.jc, i1 true, i1 %i.jd
  br i1 %or.cond549, label %.body375, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0519.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7521.0.copyload, i64 noundef 1) #13, !noalias !2510
  br label %.body375

bb.cj:                                            ; preds = %bb.bk
  %i.je = load i64, ptr %i.x, align 8, !range !28, !noundef !14 ; 2 uses
  %i.jf = icmp eq i64 %i.je, -1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6179, ptr noundef nonnull align 8 dereferenceable(24) %i.jg, i64 24, i1 false)
  br i1 %i.jf, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6179, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.ji = icmp eq i8 %.sroa.9523.0.copyload, 2
  %i.jj = icmp eq i64 %.sroa.7521.0.copyload, 0
  %or.cond550 = select i1 %i.ji, i1 true, i1 %i.jj
  br i1 %or.cond550, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit370, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0519.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0519.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7521.0.copyload, i64 noundef 1) #13, !noalias !2511
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit370

bb.cm:                                            ; preds = %bb.cj
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.5174.sroa.6.0..sroa.5174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5174.sroa.6.0..sroa.5174.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.5280.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %.sroa.5174.sroa.5.0..sroa.5174.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5174.sroa.5.0..sroa.5174.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6179, i64 24, i1 false)
  %.sroa.6175.sroa.7.0..sroa.6175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6175.sroa.7.0..sroa.6175.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11526, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11526)
  store i64 30, ptr %0, align 8
  %.sroa.5174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.je, ptr %.sroa.5174.0..sroa_idx, align 8
  %.sroa.6175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.0519.0.copyload, ptr %.sroa.6175.0..sroa_idx, align 8
  %.sroa.6175.sroa.5.0..sroa.6175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.7521.0.copyload, ptr %.sroa.6175.sroa.5.0..sroa.6175.0..sroa_idx.sroa_idx, align 8
  %.sroa.6175.sroa.6.0..sroa.6175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 %.sroa.9523.0.copyload, ptr %.sroa.6175.sroa.6.0..sroa.6175.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6179)
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit370: ; preds = %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11526)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6179)
  br label %bb.cd

bb.cn:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util11parse_parenNtNtB4_5attrs23DisabledCheckForBackendEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %i.ab)
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.cq
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body371

.body371:                                         ; preds = %bb.cs, %bb.co
  %eh.lpad-body372 = phi { ptr, i32 } [ %i.jk, %bb.co ], [ %i.jn, %bb.cs ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.ab) #15
          to label %.body375 unwind label %bb.cg

bb.cp:                                            ; preds = %bb.cn
  %i.jl = load i64, ptr %i.ac, align 8, !range !20, !noundef !14
  %i.jm = icmp eq i64 %i.jl, -1
  br i1 %i.jm, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsluMP4ekZjHw_14diesel_derives5attrs23DisabledCheckForBackendNtNtCshMFl0SviwmK_3syn5error5ErrorEEB11_(ptr noalias noundef align 8 dereferenceable(24) %i.ac)
          to label %bb.cu unwind label %bb.co

bb.cr:                                            ; preds = %bb.cp
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCshMFl0SviwmK_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorECsluMP4ekZjHw_14diesel_derives.exit.i unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body371 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorECsluMP4ekZjHw_14diesel_derives.exit.i: ; preds = %bb.cr
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCshMFl0SviwmK_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsluMP4ekZjHw_14diesel_derives5attrs23DisabledCheckForBackendNtNtCshMFl0SviwmK_3syn5error5ErrorEEB11_.exit unwind label %bb.co

bb.cu:                                            ; preds = %bb.cq
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.ab)
          to label %bb.cv unwind label %bb.bo

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer4fork(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.z, ptr noundef nonnull align 8 %1)
          to label %bb.cw unwind label %bb.bo

bb.cw:                                            ; preds = %bb.cv
  invoke fastcc void @_RINvNtCsluMP4ekZjHw_14diesel_derives4util11parse_parenNtNtB4_5attrs23DisabledCheckForBackendEB4_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %i.z)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.z) #15
          to label %.body375 unwind label %bb.cg

bb.cy:                                            ; preds = %bb.cw
  %i.jq = load i64, ptr %i.aa, align 8, !range !20, !noundef !14 ; 2 uses
  %.not = icmp eq i64 %i.jq, -1
  %i.jr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.js = load i32, ptr %i.jr, align 8            ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ju = load i8, ptr %i.jt, align 4             ; 2 uses
  br i1 %.not, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.sroa.6260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6264.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6260.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.jq, ptr %i.jv, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.js, ptr %.sroa.4262.0..sroa_idx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ju, ptr %.sroa.5263.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.z)
          to label %bb.dd unwind label %bb.bo

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.z)
          to label %bb.db unwind label %bb.bo

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.eb, %bb.db
  %.sroa.0126.0 = phi i64 [ -1, %bb.db ], [ %.pr, %bb.eb ]
  %.sroa.3128.0 = phi i32 [ %i.js, %bb.db ], [ %.sroa.4266.0.copyload, %bb.eb ]
  %.sroa.4131.0 = phi i8 [ %i.ju, %bb.db ], [ %.sroa.5267.0.copyload, %bb.eb ]
  %.sroa.8172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8172.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  store i64 29, ptr %0, align 8
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0126.0, ptr %.sroa.4168.0..sroa_idx, align 8
  %.sroa.5169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.3128.0, ptr %.sroa.5169.0..sroa_idx, align 8
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.4131.0, ptr %.sroa.6170.0..sroa_idx, align 4
  %.sroa.7171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.7171.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5134, i64 19, i1 false)
  br label %bb.ca

bb.dd:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.de

bb.de:                                            ; preds = %bb.ea, %bb.dd
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.ec unwind label %.body.thread545

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsluMP4ekZjHw_14diesel_derives5attrs23DisabledCheckForBackendNtNtCshMFl0SviwmK_3syn5error5ErrorEEB11_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorECsluMP4ekZjHw_14diesel_derives.exit.i
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.di unwind label %bb.df

bb.df:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsluMP4ekZjHw_14diesel_derives5attrs23DisabledCheckForBackendNtNtCshMFl0SviwmK_3syn5error5ErrorEEB11_.exit
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  call void @llvm.experimental.noalias.scope.decl(metadata !2513)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %i.jy = load ptr, ptr %i.jx, align 8, !alias.scope !2515, !noundef !14 ; 3 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %.body375, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ka = load i64, ptr %i.jy, align 8, !noalias !2516, !noundef !14
  %i.kb = add i64 %i.ka, -1                       ; 2 uses
  store i64 %i.kb, ptr %i.jy, align 8, !noalias !2516
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.dh, label %.body375

bb.dh:                                            ; preds = %bb.dg
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jx)
          to label %.body375 unwind label %bb.dl

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsluMP4ekZjHw_14diesel_derives5attrs23DisabledCheckForBackendNtNtCshMFl0SviwmK_3syn5error5ErrorEEB11_.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  call void @llvm.experimental.noalias.scope.decl(metadata !2519)
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !2520, !noundef !14 ; 3 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.kg = load i64, ptr %i.ke, align 8, !noalias !2521, !noundef !14
  %i.kh = add i64 %i.kg, -1                       ; 2 uses
  store i64 %i.kh, ptr %i.ke, align 8, !noalias !2521
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %bb.dk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit unwind label %bb.bo

bb.dl:                                            ; preds = %bb.dh
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %bb.dj, %bb.di, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6152.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @80, ptr %i.g, align 8, !noalias !2522
  %i.kk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 14, ptr %i.kk, align 8, !noalias !2522
  %i.kl = invoke noundef zeroext i1 @_RNvMs9_NtCshMFl0SviwmK_3syn5parseNtB5_11ParseBuffer8is_empty(ptr noundef nonnull align 8 %1)
          to label %.noexc382 unwind label %bb.bo

.noexc382:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit
  br i1 %i.kl, label %.split.i380, label %bb.dm

bb.dm:                                            ; preds = %.noexc382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2522
  invoke void @_RNvNtCshMFl0SviwmK_3syn5group12parse_parens(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %1)
          to label %.noexc383 unwind label %bb.bo

end_hunk_0
begin_hunk_1_@_RNvXs6_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_10StructAttrNtNtCshMFl0SviwmK_3syn5parse5Parse5parse:bb.a
          to label %.noexc384 unwind label %bb.bo

.noexc384:                                        ; preds = %.split.i380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2522
  store ptr %i.g, ptr %i.d, align 8, !noalias !2522
  %.sroa.43.0..sroa_idx.i381 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsluMP4ekZjHw_14diesel_derives, ptr %.sroa.43.0..sroa_idx.i381, align 8, !noalias !2522
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @0, ptr noundef nonnull %i.d)
          to label %.noexc385 unwind label %bb.bo

.noexc385:                                        ; preds = %.noexc384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2522
  invoke void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i32 noundef %i.kp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc386 unwind label %bb.bo

.noexc386:                                        ; preds = %.noexc385
  %i.kq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2522
  br label %.thread

bb.dn:                                            ; preds = %.noexc383
  %i.kr = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kr, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2522
  br label %.thread

bb.do:                                            ; preds = %.noexc383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.ko, i64 32, i1 false), !noalias !2522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2522
  invoke void @_RNvMNtCshMFl0SviwmK_3syn10punctuatedINtB2_10PunctuatedNtNtB4_2ty8TypePathNtNtB4_5token5CommaE21parse_terminated_withCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.y, ptr noundef nonnull align 8 %i.c, ptr noundef nonnull @_RNvXs9_NtNtCshMFl0SviwmK_3syn2ty7parsingNtB7_8TypePathNtNtB9_5parse5Parse5parse)
          to label %bb.dp unwind label %bb.dx

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvXNtCshMFl0SviwmK_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.dt unwind label %bb.dq, !noalias !2522

bb.dq:                                            ; preds = %bb.dp
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  %i.ku = load ptr, ptr %i.kt, align 8, !alias.scope !2526, !noalias !2522, !noundef !14 ; 3 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %.body375, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kw = load i64, ptr %i.ku, align 8, !noalias !2527, !noundef !14
  %i.kx = add i64 %i.kw, -1                       ; 2 uses
  store i64 %i.kx, ptr %i.ku, align 8, !noalias !2527
  %i.ky = icmp eq i64 %i.kx, 0
  br i1 %i.ky, label %bb.ds, label %.body375

bb.ds:                                            ; preds = %bb.dr
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %.body375 unwind label %bb.dw, !noalias !2522

bb.dt:                                            ; preds = %bb.dp
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2528)
  call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !2531, !noalias !2522, !noundef !14 ; 3 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lc = load i64, ptr %i.la, align 8, !noalias !2532, !noundef !14
  %i.ld = add i64 %i.lc, -1                       ; 2 uses
  store i64 %i.ld, ptr %i.la, align 8, !noalias !2532
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCshMFl0SviwmK_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kz)
          to label %bb.dz unwind label %bb.bo

bb.dw:                                            ; preds = %bb.ds
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2522
  unreachable

bb.dx:                                            ; preds = %bb.do
  %i.lg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives(ptr noalias noundef align 8 dereferenceable(32) %i.c) #15
          to label %.body375 unwind label %bb.dy, !noalias !2522

bb.dy:                                            ; preds = %bb.dx
  %i.lh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #16, !noalias !2522
  unreachable

.thread:                                          ; preds = %bb.dn, %.noexc386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dt, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2522
  %.pr = load i64, ptr %i.y, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.li = icmp eq i64 %.pr, -1
  br i1 %i.li, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.thread, %bb.dz
  %i.lj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.0272.0.copyload = load i32, ptr %i.lj, align 8
  %.sroa.4273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.4273.0.copyload = load i8, ptr %.sroa.4273.0..sroa_idx, align 4
  %.sroa.5274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6152.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5274.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5277.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6152.sroa.8, i64 19, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0272.0.copyload, ptr %i.lk, align 8
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.4273.0.copyload, ptr %.sroa.4276.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6152.sroa.8)
  br label %bb.de

bb.eb:                                            ; preds = %bb.dz
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4266.0.copyload = load i32, ptr %.sroa.4266.0..sroa_idx, align 8
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.5267.0.copyload = load i8, ptr %.sroa.5267.0..sroa_idx, align 4
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6152.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6268.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.5134, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.6152.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6152.sroa.8)
  br label %bb.dc

bb.ec:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.lm = load i8, ptr %i.ll, align 8, !range !13, !alias.scope !2535, !noundef !14
  %i.ln = icmp eq i8 %i.lm, 2
  br i1 %i.ln, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i.i391 = load i64, ptr %i.lo, align 8, !alias.scope !2535, !noundef !14 ; 2 uses
  %i.lp = icmp eq i64 %.val1.i.i391, 0
  br i1 %i.lp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.val.i.i392 = load ptr, ptr %i.ao, align 8, !alias.scope !2535, !nonnull !14, !noundef !14
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i392, i64 noundef range(i64 1, 0) %.val1.i.i391, i64 noundef 1) #13, !noalias !2535
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit

bb.ef:                                            ; preds = %bb.bg
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lr = icmp eq i8 %.sroa.9515.0.copyload, 2
  %i.ls = icmp eq i64 %.sroa.7513.0.copyload, 0
  %or.cond551 = select i1 %i.lr, i1 true, i1 %i.ls
  br i1 %or.cond551, label %.body375, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0511.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0511.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7513.0.copyload, i64 noundef 1) #13, !noalias !2536
  br label %.body375

bb.eh:                                            ; preds = %bb.bg
  %i.lt = load i64, ptr %i.ad, align 8, !range !20, !noundef !14 ; 2 uses
  %i.lu = icmp eq i64 %i.lt, -1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6122, ptr noundef nonnull align 8 dereferenceable(24) %i.lv, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br i1 %i.lu, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6122, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.lx = icmp eq i8 %.sroa.9515.0.copyload, 2
  %i.ly = icmp eq i64 %.sroa.7513.0.copyload, 0
  %or.cond552 = select i1 %i.lx, i1 true, i1 %i.ly
  br i1 %or.cond552, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit399, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0511.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0511.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7513.0.copyload, i64 noundef 1) #13, !noalias !2537
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit399

bb.ek:                                            ; preds = %bb.eh
  %.sroa.5117.sroa.5.0..sroa.5117.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5117.sroa.5.0..sroa.5117.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6122, i64 24, i1 false)
  %.sroa.6118.sroa.7.0..sroa.6118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6118.sroa.7.0..sroa.6118.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11518, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11518)
  store i64 28, ptr %0, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lt, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.0511.0.copyload, ptr %.sroa.6118.0..sroa_idx, align 8
  %.sroa.6118.sroa.5.0..sroa.6118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.7513.0.copyload, ptr %.sroa.6118.sroa.5.0..sroa.6118.0..sroa_idx.sroa_idx, align 8
  %.sroa.6118.sroa.6.0..sroa.6118.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %.sroa.9515.0.copyload, ptr %.sroa.6118.sroa.6.0..sroa.6118.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6122)
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit399: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6122)
  br label %bb.cd

bb.el:                                            ; preds = %bb.bb, %.noexc336, %.noexc335, %.split.i331, %bb.as, %bb.ar
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %.body339

.body339:                                         ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.bd, %bb.el
  %eh.lpad-body340 = phi { ptr, i32 } [ %i.lz, %bb.el ], [ %i.gc, %bb.aw ], [ %i.gc, %bb.ay ], [ %i.gc, %bb.ax ], [ %i.gq, %bb.bd ] ; 2 uses
  %i.ma = icmp eq i8 %.sroa.9507.0.copyload, 2
  %i.mb = icmp eq i64 %.sroa.7505.0.copyload, 0
  %or.cond553 = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %or.cond553, label %.body375, label %bb.em

bb.em:                                            ; preds = %.body339
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0503.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0503.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7505.0.copyload, i64 noundef 1) #13, !noalias !2538
  br label %.body375

.thread587:                                       ; preds = %bb.at, %.noexc337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.eo

bb.en:                                            ; preds = %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2494
  %.pre = load i64, ptr %i.ae, align 8, !range !21
  %i.mc = trunc nuw i64 %.pre to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.mc, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %.thread587, %bb.en
  %i.md = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5115, ptr noundef nonnull align 8 dereferenceable(24) %i.md, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.me, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5115, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.mf = icmp eq i8 %.sroa.9507.0.copyload, 2
  %i.mg = icmp eq i64 %.sroa.7505.0.copyload, 0
  %or.cond554 = select i1 %i.mf, i1 true, i1 %i.mg
  br i1 %or.cond554, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit405, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0503.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0503.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7505.0.copyload, i64 noundef 1) #13, !noalias !2539
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit405

bb.eq:                                            ; preds = %bb.en
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5115, ptr noundef nonnull align 8 dereferenceable(24) %i.mh, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5111.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5115, i64 24, i1 false)
  %.sroa.6112.sroa.7.0..sroa.6112.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6112.sroa.7.0..sroa.6112.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11510, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11510)
  store i64 27, ptr %0, align 8
  %.sroa.6112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.0503.0.copyload, ptr %.sroa.6112.0..sroa_idx, align 8
  %.sroa.6112.sroa.5.0..sroa.6112.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7505.0.copyload, ptr %.sroa.6112.sroa.5.0..sroa.6112.0..sroa_idx.sroa_idx, align 8
  %.sroa.6112.sroa.6.0..sroa.6112.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %.sroa.9507.0.copyload, ptr %.sroa.6112.sroa.6.0..sroa.6112.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5115)
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit405: ; preds = %bb.ep, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11510)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5115)
  br label %bb.cd

bb.er:                                            ; preds = %bb.am, %.noexc323, %.noexc322, %.split.i, %bb.ad, %bb.ac
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %.body326

.body326:                                         ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ao, %bb.er
  %eh.lpad-body327 = phi { ptr, i32 } [ %i.mi, %bb.er ], [ %i.ev, %bb.ah ], [ %i.ev, %bb.aj ], [ %i.ev, %bb.ai ], [ %i.fj, %bb.ao ] ; 2 uses
  %i.mj = icmp eq i8 %.sroa.9499.0.copyload, 2
  %i.mk = icmp eq i64 %.sroa.7497.0.copyload, 0
  %or.cond555 = select i1 %i.mj, i1 true, i1 %i.mk
  br i1 %or.cond555, label %.body375, label %bb.es

bb.es:                                            ; preds = %.body326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0495.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0495.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7497.0.copyload, i64 noundef 1) #13, !noalias !2540
  br label %.body375

bb.et:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5parse11ParseBufferECsluMP4ekZjHw_14diesel_derives.exit.i, %bb.ae, %.noexc324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ml = load i64, ptr %i.af, align 8, !range !20, !noundef !14 ; 2 uses
  %.not309 = icmp eq i64 %i.ml, -1
  %i.mm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8            ; 2 uses
  br i1 %.not309, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.5247.0.copyload = load i64, ptr %.sroa.5247.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ml, ptr %i.mo, align 8
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.mn, ptr %.sroa.4249.0..sroa_idx, align 8
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5247.0.copyload, ptr %.sroa.5250.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.mp = icmp eq i8 %.sroa.9499.0.copyload, 2
  %i.mq = icmp eq i64 %.sroa.7497.0.copyload, 0
  %or.cond556 = select i1 %i.mp, i1 true, i1 %i.mq
  br i1 %or.cond556, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit411, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0495.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0495.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7497.0.copyload, i64 noundef 1) #13, !noalias !2541
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit411

bb.ew:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.697.sroa.7.0..sroa.697.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697.sroa.7.0..sroa.697.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11502, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11502)
  store i64 26, ptr %0, align 8
  %.sroa.596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mn, ptr %.sroa.596.0..sroa_idx, align 8
  %.sroa.697.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0495.0.copyload, ptr %.sroa.697.0..sroa_idx, align 8
  %.sroa.697.sroa.5.0..sroa.697.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7497.0.copyload, ptr %.sroa.697.sroa.5.0..sroa.697.0..sroa_idx.sroa_idx, align 8
  %.sroa.697.sroa.6.0..sroa.697.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.9499.0.copyload, ptr %.sroa.697.sroa.6.0..sroa.697.0..sroa_idx.sroa_idx, align 8
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit411: ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11502)
  br label %bb.cd

bb.ex:                                            ; preds = %bb.aa
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ms = icmp eq i8 %.sroa.9491.0.copyload, 2
  %i.mt = icmp eq i64 %.sroa.7489.0.copyload, 0
  %or.cond557 = select i1 %i.ms, i1 true, i1 %i.mt
  br i1 %or.cond557, label %.body375, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0487.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0487.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7489.0.copyload, i64 noundef 1) #13, !noalias !2542
  br label %.body375

bb.ez:                                            ; preds = %bb.aa
  %i.mu = load i64, ptr %i.ag, align 8, !range !20, !noundef !14 ; 2 uses
  %.not313 = icmp eq i64 %i.mu, -1
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8            ; 2 uses
  br i1 %.not313, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.5238.0.copyload = load i64, ptr %.sroa.5238.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mu, ptr %i.mx, align 8
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.mw, ptr %.sroa.4240.0..sroa_idx, align 8
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5238.0.copyload, ptr %.sroa.5241.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.my = icmp eq i8 %.sroa.9491.0.copyload, 2
  %i.mz = icmp eq i64 %.sroa.7489.0.copyload, 0
  %or.cond558 = select i1 %i.my, i1 true, i1 %i.mz
  br i1 %or.cond558, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit417, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0487.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0487.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7489.0.copyload, i64 noundef 1) #13, !noalias !2543
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit417

bb.fc:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.sroa.682.sroa.7.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.682.sroa.7.0..sroa.682.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11494, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11494)
  store i64 25, ptr %0, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.mw, ptr %.sroa.581.0..sroa_idx, align 8
  %.sroa.682.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0487.0.copyload, ptr %.sroa.682.0..sroa_idx, align 8
  %.sroa.682.sroa.5.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7489.0.copyload, ptr %.sroa.682.sroa.5.0..sroa.682.0..sroa_idx.sroa_idx, align 8
  %.sroa.682.sroa.6.0..sroa.682.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.9491.0.copyload, ptr %.sroa.682.sroa.6.0..sroa.682.0..sroa_idx.sroa_idx, align 8
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit417: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11494)
  br label %bb.cd

bb.fd:                                            ; preds = %bb.y
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nb = icmp eq i8 %.sroa.9483.0.copyload, 2
  %i.nc = icmp eq i64 %.sroa.7481.0.copyload, 0
  %or.cond559 = select i1 %i.nb, i1 true, i1 %i.nc
  br i1 %or.cond559, label %.body375, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0479.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0479.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7481.0.copyload, i64 noundef 1) #13, !noalias !2544
  br label %.body375

bb.ff:                                            ; preds = %bb.y
  %i.nd = load i64, ptr %i.ah, align 8, !range !20, !noundef !14 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, -1
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673, ptr noundef nonnull align 8 dereferenceable(24) %i.nf, i64 24, i1 false)
  br i1 %i.ne, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.nh = icmp eq i8 %.sroa.9483.0.copyload, 2
  %i.ni = icmp eq i64 %.sroa.7481.0.copyload, 0
  %or.cond560 = select i1 %i.nh, i1 true, i1 %i.ni
  br i1 %or.cond560, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit423, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0479.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0479.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7481.0.copyload, i64 noundef 1) #13, !noalias !2545
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit423

bb.fi:                                            ; preds = %bb.ff
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.568.sroa.6.0..sroa.568.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.568.sroa.6.0..sroa.568.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5232.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.sroa.568.sroa.5.0..sroa.568.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.568.sroa.5.0..sroa.568.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.673, i64 24, i1 false)
  %.sroa.669.sroa.7.0..sroa.669.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.669.sroa.7.0..sroa.669.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11486, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11486)
  store i64 24, ptr %0, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nd, ptr %.sroa.568.0..sroa_idx, align 8
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sroa.0479.0.copyload, ptr %.sroa.669.0..sroa_idx, align 8
  %.sroa.669.sroa.5.0..sroa.669.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.7481.0.copyload, ptr %.sroa.669.sroa.5.0..sroa.669.0..sroa_idx.sroa_idx, align 8
  %.sroa.669.sroa.6.0..sroa.669.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sroa.9483.0.copyload, ptr %.sroa.669.sroa.6.0..sroa.669.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673)
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit423: ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11486)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.673)
  br label %bb.cd

bb.fj:                                            ; preds = %bb.w
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nk = icmp eq i8 %.sroa.9475.0.copyload, 2
  %i.nl = icmp eq i64 %.sroa.7473.0.copyload, 0
  %or.cond561 = select i1 %i.nk, i1 true, i1 %i.nl
  br i1 %or.cond561, label %.body375, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0471.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0471.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7473.0.copyload, i64 noundef 1) #13, !noalias !2546
  br label %.body375

bb.fl:                                            ; preds = %bb.w
  %i.nm = load i64, ptr %i.ai, align 8, !range !20, !noundef !14 ; 2 uses
  %.not314 = icmp eq i64 %i.nm, -1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.no = load i32, ptr %i.nn, align 8            ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.nq = load i8, ptr %i.np, align 4             ; 2 uses
  br i1 %.not314, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 13
  %.sroa.6229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6229.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6225.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nm, ptr %2, align 8
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.no, ptr %.sroa.4227.0..sroa_idx, align 8
  %.sroa.5228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.nq, ptr %.sroa.5228.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  %i.nr = icmp eq i8 %.sroa.9475.0.copyload, 2
  %i.ns = icmp eq i64 %.sroa.7473.0.copyload, 0
  %or.cond562 = select i1 %i.nr, i1 true, i1 %i.ns
  br i1 %or.cond562, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit429, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0471.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0471.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7473.0.copyload, i64 noundef 1) #13, !noalias !2547
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit429

bb.fo:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.sroa.549.sroa.7.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.549.sroa.7.0..sroa.549.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11478, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11478)
  store i64 23, ptr %0, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0471.0.copyload, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7473.0.copyload, ptr %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.sroa.6.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.9475.0.copyload, ptr %.sroa.549.sroa.6.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.no, ptr %.sroa.650.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.nq, ptr %.sroa.751.0..sroa_idx, align 4
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit429: ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11478)
  br label %bb.cd

bb.fp:                                            ; preds = %bb.u
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = icmp eq i8 %.sroa.9467.0.copyload, 2
  %i.nv = icmp eq i64 %.sroa.7465.0.copyload, 0
  %or.cond563 = select i1 %i.nu, i1 true, i1 %i.nv
  br i1 %or.cond563, label %.body375, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0463.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0463.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7465.0.copyload, i64 noundef 1) #13, !noalias !2548
  br label %.body375

bb.fr:                                            ; preds = %bb.u
  %i.nw = load i64, ptr %i.aj, align 8, !range !20, !noundef !14 ; 2 uses
  %.not315 = icmp eq i64 %i.nw, -1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ny = load i32, ptr %i.nx, align 8            ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.oa = load i8, ptr %i.nz, align 4             ; 2 uses
  br i1 %.not315, label %bb.fu, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.sroa.6213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 13
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6217.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6213.0..sroa_idx, i64 11, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nw, ptr %3, align 8
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ny, ptr %.sroa.4215.0..sroa_idx, align 8
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.oa, ptr %.sroa.5216.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  %i.ob = icmp eq i8 %.sroa.9467.0.copyload, 2
  %i.oc = icmp eq i64 %.sroa.7465.0.copyload, 0
  %or.cond564 = select i1 %i.ob, i1 true, i1 %i.oc
  br i1 %or.cond564, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit435, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0463.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0463.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7465.0.copyload, i64 noundef 1) #13, !noalias !2549
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit435

bb.fu:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.sroa.531.sroa.7.0..sroa.531.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.531.sroa.7.0..sroa.531.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11470, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11470)
  store i64 22, ptr %0, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0463.0.copyload, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7465.0.copyload, ptr %.sroa.531.sroa.5.0..sroa.531.0..sroa_idx.sroa_idx, align 8
  %.sroa.531.sroa.6.0..sroa.531.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.9467.0.copyload, ptr %.sroa.531.sroa.6.0..sroa.531.0..sroa_idx.sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ny, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.oa, ptr %.sroa.733.0..sroa_idx, align 4
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit435: ; preds = %bb.ft, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11470)
  br label %bb.cd

bb.fv:                                            ; preds = %bb.s
  %i.od = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oe = icmp eq i8 %.sroa.9459.0.copyload, 2
  %i.of = icmp eq i64 %.sroa.7457.0.copyload, 0
  %or.cond565 = select i1 %i.oe, i1 true, i1 %i.of
  br i1 %or.cond565, label %.body375, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0455.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0455.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7457.0.copyload, i64 noundef 1) #13, !noalias !2550
  br label %.body375

bb.fx:                                            ; preds = %bb.s
  %i.og = load i64, ptr %i.ak, align 8, !range !20, !noundef !14 ; 2 uses
  %i.oh = icmp eq i64 %i.og, -1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623, ptr noundef nonnull align 8 dereferenceable(24) %i.oi, i64 24, i1 false)
  br i1 %i.oh, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oj, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.ok = icmp eq i8 %.sroa.9459.0.copyload, 2
  %i.ol = icmp eq i64 %.sroa.7457.0.copyload, 0
  %or.cond566 = select i1 %i.ok, i1 true, i1 %i.ol
  br i1 %or.cond566, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit441, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0455.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0455.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7457.0.copyload, i64 noundef 1) #13, !noalias !2551
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit441

bb.ga:                                            ; preds = %bb.fx
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.518.sroa.6.0..sroa.518.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5205.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.518.sroa.5.0..sroa.518.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.623, i64 24, i1 false)
  %.sroa.619.sroa.7.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.619.sroa.7.0..sroa.619.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11462, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11462)
  store i64 21, ptr %0, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.og, ptr %.sroa.518.0..sroa_idx, align 8
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.0455.0.copyload, ptr %.sroa.619.0..sroa_idx, align 8
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.7457.0.copyload, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx, align 8
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %.sroa.9459.0.copyload, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623)
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit441: ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11462)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.623)
  br label %bb.cd

bb.gb:                                            ; preds = %bb.q
  %i.om = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.on = icmp eq i8 %.sroa.9.0.copyload, 2
  %i.oo = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond567 = select i1 %i.on, i1 true, i1 %i.oo
  br i1 %or.cond567, label %.body375, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7.0.copyload, i64 noundef 1) #13, !noalias !2552
  br label %.body375

bb.gd:                                            ; preds = %bb.q
  %i.op = load i64, ptr %i.al, align 8, !range !20, !noundef !14 ; 2 uses
  %i.oq = icmp eq i64 %i.op, -1
  %i.or = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 24, i1 false)
  br i1 %i.oq, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.os, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  %i.ot = icmp eq i8 %.sroa.9.0.copyload, 2
  %i.ou = icmp eq i64 %.sroa.7.0.copyload, 0
  %or.cond568 = select i1 %i.ot, i1 true, i1 %i.ou
  br i1 %or.cond568, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit447, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.7.0.copyload, i64 noundef 1) #13, !noalias !2553
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit447

bb.gg:                                            ; preds = %bb.gd
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.sroa.6.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5202.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.sroa.5.0..sroa.510.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613, i64 24, i1 false)
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 20, ptr %0, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.op, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.7.0.copyload, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %.sroa.9.0.copyload, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.ca

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit447: ; preds = %bb.gf, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  br label %bb.cd

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i359, %bb.ec, %bb.ed, %bb.ee, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsluMP4ekZjHw_14diesel_derives.exit.i352, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsluMP4ekZjHw_14diesel_derives.exit, %bb.bs, %bb.bt, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450: ; preds = %bb.ce, %bb.cb, %bb.gi, %bb.gh, %.body.thread, %bb.h
  %.pn319535 = phi { ptr, i32 } [ %i.iy, %bb.ce ], [ %.pn319536, %bb.gi ], [ %.pn, %bb.h ], [ %.pn319536, %.body.thread ], [ %.pn319536, %bb.gh ], [ %i.iw, %bb.cb ]
  resume { ptr, i32 } %.pn319535

.body.thread:                                     ; preds = %bb.bq, %bb.d, %.body.thread545, %bb.h
  %.pn319536 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread545 ], [ %.pn, %bb.h ], [ %i.aw, %bb.d ], [ %i.ig, %bb.bq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ow = load i8, ptr %i.ov, align 8, !range !13, !alias.scope !2556, !noundef !14
  %i.ox = icmp eq i8 %i.ow, 2
  br i1 %i.ox, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450, label %bb.gh

bb.gh:                                            ; preds = %.body.thread
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i.i448 = load i64, ptr %i.oy, align 8, !alias.scope !2556, !noundef !14 ; 2 uses
  %i.oz = icmp eq i64 %.val1.i.i448, 0
  br i1 %i.oz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.val.i.i449 = load ptr, ptr %i.ao, align 8, !alias.scope !2556, !nonnull !14, !noundef !14
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i449, i64 noundef range(i64 1, 0) %.val1.i.i448, i64 noundef 1) #13, !noalias !2556
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro25IdentECsluMP4ekZjHw_14diesel_derives.exit450
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_RNvXs7_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_10StructAttrNtB5_9MySpanned4span(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %0) unnamed_addr #1 {
switch.lookup:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !14 ; 2 uses
  %i.b = add nsw i64 %i.a, -17
  %i.c = icmp samesign ugt i64 %i.a, 16
  %i.d = select i1 %i.c, i64 %i.b, i64 14
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvXs7_NtCsluMP4ekZjHw_14diesel_derives5attrsNtB5_10StructAttrNtB5_9MySpanned4span, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %i.f = tail call noundef i32 @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident4span(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  ret i32 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCscI6d9CVNmLh_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write10write_char(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2559, !noundef !14 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !2559, !nonnull !14, !noundef !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2559, !nonnull !14, !noundef !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !2559
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  tail call void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsluMP4ekZjHw_14diesel_derives(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !2565
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2566, !noalias !2565, !noundef !14 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !2566, !noalias !2565, !nonnull !14, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !2566, !noalias !2565
  br label %_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs40k4W9msRzi_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !2566, !noalias !2565
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsluMP4ekZjHw_14diesel_derives10deprecated15impl_deprecatedNtNtB8_5attrs9FieldAttrNtB6_15ParseDeprecated16parse_deprecated(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.642 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.11256 = alloca [7 x i8], align 1         ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.618 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.11 = alloca [7 x i8], align 1            ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [8 x i8], align 8                 ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 19 uses
  %i.aa = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvXNtNtCshMFl0SviwmK_3syn5ident7parsingNtCsf5uYjtxkodL_11proc_macro25IdentNtNtB6_5parse5Parse5parse(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aa, ptr noundef nonnull align 8 %1)
end_hunk_1
