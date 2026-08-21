Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.02?download=true
inline.NumInlined: 5987
inline.NumDeleted: 1935
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB7_7Assists3addReNCNvNtNtB9_8handlers31generate_documentation_template31generate_documentation_template0E0B9_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !225, !noalias !5122, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h, !prof !226

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.t, align 8, !noalias !5122
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #29
          to label %bb.av unwind label %bb.az, !noalias !5122

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.t, align 8, !noalias !5122, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5122
  store i8 46, ptr %i.v, align 1, !noalias !5122
  store i64 %i.s, ptr %i.h, align 8, !noalias !5122
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.v, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !5122
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !5122
  %i.x = load i64, ptr %i.i, align 8, !range !84, !noalias !5122, !noundef !4
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !5122
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i unwind label %bb.j, !noalias !5122

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.thread.i unwind label %bb.k, !noalias !5122

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !5122
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %.body.i, !noalias !5122

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !5122
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !5122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %i.k, align 8, !noalias !5122
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 7 uses
  store ptr %i.m, ptr %i.aa, align 8, !noalias !5122
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 16 uses
  store i64 1, ptr %i.ab, align 8, !noalias !5122
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5122
  invoke void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template14panics_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload)
          to label %bb.n unwind label %bb.m, !noalias !5122

bb.m:                                             ; preds = %bb.au, %bb.al, %bb.ak, %bb.ab, %bb.z, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists.exit.i
  %i.ah = load i64, ptr %i.g, align 8, !range !84, !noalias !5122, !noundef !4
  %.not34.i = icmp eq i64 %i.ah, -1
  br i1 %.not34.i, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5122
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.loopexit.i, !noalias !5122

.loopexit.i:                                      ; preds = %bb.ar, %bb.an, %bb.ah, %bb.ad, %bb.v, %bb.o
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body40.i

.body40.i:                                        ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body41.i = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #26
          to label %bb.ay unwind label %bb.aw, !noalias !5122

bb.p:                                             ; preds = %bb.o
  %i.ai = load i64, ptr %i.a, align 8, !range !224, !noalias !5122, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.q, label %bb.r, !prof !226

bb.q:                                             ; preds = %bb.ao, %bb.ae, %bb.p
  %i.ak = load i64, ptr %i.ac, align 8, !range !225, !noalias !5122, !noundef !4
  %i.al = load i64, ptr %i.ad, align 8, !noalias !5122
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.al) #29
          to label %bb.av unwind label %.loopexit.split-lp.i, !noalias !5122

bb.r:                                             ; preds = %bb.p
  %i.am = load i64, ptr %i.ac, align 8, !range !3192, !noalias !5122, !noundef !4
  %i.an = load ptr, ptr %i.ad, align 8, !noalias !5122, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5122
  store i64 %i.am, ptr %i.e, align 8, !noalias !5122
  store ptr %i.an, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !5122
  store i64 0, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !5122
  %i.ao = load i64, ptr %i.ab, align 8, !alias.scope !5126, !noalias !5129, !noundef !4 ; 3 uses
  %i.ap = load i64, ptr %i.k, align 8, !range !3192, !alias.scope !5126, !noalias !5129, !noundef !4
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.v unwind label %bb.t, !noalias !5129

bb.t:                                             ; preds = %bb.aq, %bb.ag, %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %.body40.i unwind label %bb.u, !noalias !5122

bb.u:                                             ; preds = %bb.t
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !5122
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.at = load ptr, ptr %i.aa, align 8, !alias.scope !5126, !noalias !5129, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5122
  %i.av = add i64 %i.ao, 1
  store i64 %i.av, ptr %i.ab, align 8, !alias.scope !5126, !noalias !5129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5122
  %i.aw = load ptr, ptr %i.ae, align 8, !noalias !5122, !nonnull !4, !noundef !4
  %i.ax = load i64, ptr %i.af, align 8, !noalias !5122, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ax)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !5122

.noexc.i:                                         ; preds = %bb.v
  %i.ay = load i64, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122, !noundef !4 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 384307168202282326
  call void @llvm.assume(i1 %i.az)
  %.not.i42.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i42.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc.i
  %i.ba = load ptr, ptr %i.aa, align 8, !alias.scope !5131, !noalias !5122, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.ay
  %i.bc = mul nuw nsw i64 %i.ax, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.aw, i64 %i.bc, i1 false), !noalias !5122
  %.pre.i.i = load i64, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc.i
  %i.bd = phi i64 [ %.pre.i.i, %bb.w ], [ %i.ay, %.noexc.i ]
  %i.be = add i64 %i.bd, %i.ax
  store i64 %i.be, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122
  store i64 0, ptr %i.af, align 8, !noalias !5122
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.z unwind label %bb.y, !noalias !5122

bb.y:                                             ; preds = %bb.at, %bb.aj, %bb.x
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ay unwind label %bb.aa, !noalias !5122

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.i unwind label %bb.m, !noalias !5122

bb.aa:                                            ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !5122
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5122
  br label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5122
  invoke void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template14panics_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload)
          to label %bb.ac unwind label %bb.m, !noalias !5122

bb.ac:                                            ; preds = %bb.ab
  %i.bh = load i64, ptr %i.g, align 8, !range !84, !noalias !5122, !noundef !4
  %.not34.1.i = icmp eq i64 %i.bh, -1
  br i1 %.not34.1.i, label %bb.al, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5122
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ae unwind label %.loopexit.i, !noalias !5122

bb.ae:                                            ; preds = %bb.ad
  %i.bi = load i64, ptr %i.a, align 8, !range !224, !noalias !5122, !noundef !4
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %bb.q, label %bb.af, !prof !226

bb.af:                                            ; preds = %bb.ae
  %i.bk = load i64, ptr %i.ac, align 8, !range !3192, !noalias !5122, !noundef !4
  %i.bl = load ptr, ptr %i.ad, align 8, !noalias !5122, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5122
  store i64 %i.bk, ptr %i.e, align 8, !noalias !5122
  store ptr %i.bl, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !5122
  store i64 0, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !5122
  %i.bm = load i64, ptr %i.ab, align 8, !alias.scope !5126, !noalias !5129, !noundef !4 ; 3 uses
  %i.bn = load i64, ptr %i.k, align 8, !range !3192, !alias.scope !5126, !noalias !5129, !noundef !4
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ah unwind label %bb.t, !noalias !5129

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bp = load ptr, ptr %i.aa, align 8, !alias.scope !5126, !noalias !5129, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5122
  %i.br = add i64 %i.bm, 1
  store i64 %i.br, ptr %i.ab, align 8, !alias.scope !5126, !noalias !5129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5122
  %i.bs = load ptr, ptr %i.ae, align 8, !noalias !5122, !nonnull !4, !noundef !4
  %i.bt = load i64, ptr %i.af, align 8, !noalias !5122, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.bt)
          to label %.noexc.1.i unwind label %.loopexit.i, !noalias !5122

.noexc.1.i:                                       ; preds = %bb.ah
  %i.bu = load i64, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122, !noundef !4 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 384307168202282326
  call void @llvm.assume(i1 %i.bv)
  %.not.i42.1.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i42.1.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc.1.i
  %i.bw = load ptr, ptr %i.aa, align 8, !alias.scope !5131, !noalias !5122, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bu
  %i.by = mul nuw nsw i64 %i.bt, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr nonnull readonly align 8 %i.bs, i64 %i.by, i1 false), !noalias !5122
  %.pre.i.1.i = load i64, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.noexc.1.i
  %i.bz = phi i64 [ %.pre.i.1.i, %bb.ai ], [ %i.bu, %.noexc.1.i ]
  %i.ca = add i64 %i.bz, %i.bt
  store i64 %i.ca, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122
  store i64 0, ptr %i.af, align 8, !noalias !5122
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ak unwind label %bb.y, !noalias !5122

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.1.i unwind label %bb.m, !noalias !5122

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.1.i: ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5122
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.1.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5122
  invoke void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template14panics_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload)
          to label %bb.am unwind label %bb.m, !noalias !5122

bb.am:                                            ; preds = %bb.al
  %i.cb = load i64, ptr %i.g, align 8, !range !84, !noalias !5122, !noundef !4
  %.not34.2.i = icmp eq i64 %i.cb, -1
  br i1 %.not34.2.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template31generate_documentation_template0B7_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5122
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ao unwind label %.loopexit.i, !noalias !5122

bb.ao:                                            ; preds = %bb.an
  %i.cc = load i64, ptr %i.a, align 8, !range !224, !noalias !5122, !noundef !4
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.q, label %bb.ap, !prof !226

bb.ap:                                            ; preds = %bb.ao
  %i.ce = load i64, ptr %i.ac, align 8, !range !3192, !noalias !5122, !noundef !4
  %i.cf = load ptr, ptr %i.ad, align 8, !noalias !5122, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5122
  store i64 %i.ce, ptr %i.e, align 8, !noalias !5122
  store ptr %i.cf, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !5122
  store i64 0, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !5122
  %i.cg = load i64, ptr %i.ab, align 8, !alias.scope !5126, !noalias !5129, !noundef !4 ; 3 uses
  %i.ch = load i64, ptr %i.k, align 8, !range !3192, !alias.scope !5126, !noalias !5129, !noundef !4
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCscAsMj0W7j8b_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ar unwind label %bb.t, !noalias !5129

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cj = load ptr, ptr %i.aa, align 8, !alias.scope !5126, !noalias !5129, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5122
  %i.cl = add i64 %i.cg, 1
  store i64 %i.cl, ptr %i.ab, align 8, !alias.scope !5126, !noalias !5129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5122
  %i.cm = load ptr, ptr %i.ae, align 8, !noalias !5122, !nonnull !4, !noundef !4
  %i.cn = load i64, ptr %i.af, align 8, !noalias !5122, !noundef !4 ; 4 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.cn)
          to label %.noexc.2.i unwind label %.loopexit.i, !noalias !5122

.noexc.2.i:                                       ; preds = %bb.ar
  %i.co = load i64, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122, !noundef !4 ; 3 uses
  %i.cp = icmp ult i64 %i.co, 384307168202282326
  call void @llvm.assume(i1 %i.cp)
  %.not.i42.2.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i42.2.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.noexc.2.i
  %i.cq = load ptr, ptr %i.aa, align 8, !alias.scope !5131, !noalias !5122, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %i.co
  %i.cs = mul nuw nsw i64 %i.cn, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cr, ptr nonnull readonly align 8 %i.cm, i64 %i.cs, i1 false), !noalias !5122
  %.pre.i.2.i = load i64, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc.2.i
  %i.ct = phi i64 [ %.pre.i.2.i, %bb.as ], [ %i.co, %.noexc.2.i ]
  %i.cu = add i64 %i.ct, %i.cn
  store i64 %i.cu, ptr %i.ab, align 8, !alias.scope !5131, !noalias !5122
  store i64 0, ptr %i.af, align 8, !noalias !5122
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.au unwind label %bb.y, !noalias !5122

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.2.i unwind label %bb.m, !noalias !5122

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.2.i: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5122
  br label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template31generate_documentation_template0B7_.exit

bb.av:                                            ; preds = %bb.q, %bb.g
  unreachable

bb.aw:                                            ; preds = %bb.az, %bb.ay, %.body40.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !5122
  unreachable

bb.ax:                                            ; preds = %bb.ay, %.body.thread.i
  %.pn37.pn.i = phi { ptr, i32 } [ %.pn37.i, %.body.thread.i ], [ %.pn.pn.ph.i, %bb.ay ]
  resume { ptr, i32 } %.pn37.pn.i

bb.ay:                                            ; preds = %bb.y, %.body40.i, %bb.m
  %.pn.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body41.i, %.body40.i ], [ %i.ag, %bb.m ], [ %i.bf, %bb.y ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #26
          to label %bb.ax unwind label %bb.aw, !noalias !5122

bb.az:                                            ; preds = %bb.g, %bb.e
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #26
          to label %.body.thread.i unwind label %bb.aw, !noalias !5122

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template31generate_documentation_template0B7_.exit: ; preds = %bb.am, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECsiU5vK8fN4ZC_11ide_assists.exit.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %i.cw = load i32, ptr %.sroa.5.sroa.4.0.copyload, align 4, !noalias !5122, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !5122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.cx = load i8, ptr %.sroa.5.sroa.5.0.copyload, align 1, !noalias !5122, !noundef !4
  call void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template24documentation_from_lines(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i8 noundef %i.cx), !noalias !5122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5122
  call void @_RNvMs2_NtCs6oosyzwIepl_6ide_db9text_editNtB5_15TextEditBuilder6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !noalias !5134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5122
  ret void

bb.ba:                                            ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #31
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs_NtCsiU5vK8fN4ZC_11ide_assists14assist_contextNtB7_7Assists3addReNCNvNtNtB9_8handlers31replace_named_generic_with_impl31replace_named_generic_with_impl0E0B9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(216) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [144 x i8], align 8               ; 12 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !align !3068, !noundef !4 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  store ptr null, ptr %i.h, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.av, label %bb.b, !prof !226

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5135
  invoke void @_RNvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_19SourceChangeBuilder11make_editor(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.copyload)
          to label %bb.d unwind label %.thread.i, !noalias !5139

bb.c:                                             ; preds = %.thread60.i
  br i1 %.sroa.011.165.i, label %bb.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsiU5vK8fN4ZC_11ide_assists.exit.i

.thread.i:                                        ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %.val33.i = load ptr, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !5139, !nonnull !4, !noundef !4
  %i.j = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes16GenericParamListECsiU5vK8fN4ZC_11ide_assists(ptr nonnull %.val33.i)
          to label %bb.e unwind label %.split.thread.i, !noalias !5139 ; 6 uses

.noexc52.i:                                       ; preds = %bb.ap, %bb.ao
  br i1 %.sroa.010.2.i, label %.thread60.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEECsiU5vK8fN4ZC_11ide_assists.exit.i

.split.thread.i:                                  ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.x, %bb.d
  %.sroa.011.2.ph.i = phi i1 [ true, %bb.d ], [ true, %bb.x ], [ false, %bb.af ], [ false, %bb.ag ], [ false, %bb.ai ], [ false, %bb.ak ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread60.i

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5135
  store ptr %i.j, ptr %i.f, align 8, !noalias !5135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5135
  %i.k = invoke noundef nonnull ptr @_RNvXsaT_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_16GenericParamListNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.i unwind label %bb.h, !noalias !5139 ; 4 uses

.body.i:                                          ; preds = %bb.ae, %bb.aa, %bb.u, %bb.t, %bb.p, %bb.m, %bb.l, %bb.h
  %.pn20.i = phi { ptr, i32 } [ %i.ah, %bb.u ], [ %lpad.thr_comm72.i, %bb.ae ], [ %lpad.thr_comm.split-lp73.i, %bb.p ], [ %i.p, %bb.h ], [ %i.v, %bb.m ], [ %i.v, %bb.l ], [ %i.ah, %bb.t ], [ %i.av, %bb.aa ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noalias !5139, !noundef !4
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4, !noalias !5139
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %.thread60.i

bb.g:                                             ; preds = %.body.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.j) #27
          to label %.thread60.i unwind label %bb.y, !noalias !5139

end_hunk_0
begin_hunk_1_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24introduce_named_lifetime21insert_lifetime_param

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24introduce_named_lifetime32insert_new_generic_param_list_fn(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24introduce_named_lifetimeNtB2_13NeedsLifetime11to_position(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24introduce_named_lifetime33insert_new_generic_param_list_imp(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringNtNtB8_9token_ext8IsString19text_without_quotesCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2z_5slice4iter4IterTNtB15_4NamebEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_let_else_to_match25convert_let_else_to_matchs1_00EE9from_iterB44_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory10expr_tupleINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB7_9generated5nodes4ExprEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsm_NtCshzWfHUSfYae_4core5arrayANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8MatchArmj2_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitBy_ENCINvMB1I_B1F_10wrap_mut_1By_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_let_else_to_match25convert_let_else_to_matchs1_0s_0E0EB33_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbSS6DM8SDEO_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NamebEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_let_else_to_match25convert_let_else_to_matchs1_0s0_0ENtB2o_3PatEB3r_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory9tuple_patINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB7_9generated5nodes3PatEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_match_to_let_else15rename_variable(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), i64 noundef range(i64 0, 18), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs9GitHPCrz2Q_5rowan3apiINtB4_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_returnNtB2_9ElseBlock16make_early_block(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB16_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1V_11SyntaxTokenB2h_EEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB48_7flatten7FlatMapINtNtB48_9enumerate9EnumerateINtNtB48_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtB2l_3ast9generated5nodes4ExprENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25convert_to_guarded_return25if_expr_to_guarded_returns1_00EEIB44_INtNtB4c_6option8IntoIterB11_EINtB1V_21SyntaxElementChildrenB2h_EENCB79_s_0EINtNtB48_10take_while9TakeWhileINtNtB48_4skip4SkipB9p_ENCB79_s0_0EEE9from_iterB7h_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(184)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7LetStmtNtNtB8_4edit11AstNodeEdit6indentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25destructure_tuple_binding27destructure_tuple_edit_impl(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_default_from_new21generate_default_impl(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 15), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtNtNtCsjJXvCMGntp8_6syntax3ast4make3ext17field_from_identsARej2_ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB6_13SemanticsImpl6sourceNtB8_8FunctionECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtCs6oosyzwIepl_6ide_db14path_transformNtB2_13PathTransform5apply(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory10expr_await(ptr noundef nonnull align 8, i64 noundef range(i64 0, 37), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsa1_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_2FnNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory5impl_INtNtCshzWfHUSfYae_4core6option6OptionNtNtNtB7_9generated5nodes4AttrEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noundef, ptr noundef, ptr noundef, i64 noundef range(i64 0, 15), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemNtNtB8_4edit11AstNodeEdit6indentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25generate_getter_or_setter19build_source_change(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25replace_if_let_with_match13make_else_arm(ptr noundef nonnull align 8, ptr noundef nonnull align 8, i64 noundef range(i64 -1, 37), ptr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 230584300921369396)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25replace_if_let_with_match27match_scrutinee_needs_paren(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory14match_arm_listINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1H_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTINtNtB1L_6option6OptionNtNtNtB7_9generated5nodes3PatEIB3B_NtB3Z_4ExprENtB3Z_9BlockExprEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25replace_if_let_with_match25replace_if_let_with_matchs_00EINtNtNtB1L_5array4iter8IntoIterNtB3Z_8MatchArmKj1_EEEB5a_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprNtNtB8_4edit11AstNodeEdit6dedentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25replace_if_let_with_match13is_empty_expr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25replace_method_eager_lazy12into_closure(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers25replace_method_eager_lazy9into_call(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBL_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1A_11SyntaxTokenB1V_EEE14extend_trustedINtNtNtCshzWfHUSfYae_4core5array4iter8IntoIterBG_Kj3_EECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26convert_range_for_to_while17process_loop_body(ptr noundef nonnull, ptr noundef, ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers26destructure_struct_binding31destructure_struct_binding_impl(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory14path_from_text(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers27generate_blanket_trait_impl9this_name(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers27generate_blanket_trait_impl9has_sized(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers27generate_blanket_trait_impl11apply_sized(ptr noundef nonnull align 8, i1 noundef zeroext, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory10type_param(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory18generic_param_listANtNtNtB7_9generated5nodes12GenericParamj1_ECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers27generate_blanket_trait_impl9cfg_attrsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes5TraitEB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory10impl_traitINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtB7_11AstChildrenNtNtNtB7_9generated5nodes4AttrENCINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers27generate_blanket_trait_impl9cfg_attrsNtB2N_5TraitE0EEB3p_(ptr noundef nonnull align 8, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef range(i64 0, 15), ptr noundef, i64 noundef range(i64 0, 15), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB6_19SourceChangeBuilder18add_tabstop_beforeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(216), i64 noundef range(i64 0, 15), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers27generate_from_impl_for_enum15build_from_impl(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory10block_exprINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB7_9generated5nodes4StmtEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef range(i64 -1, 37), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory13expr_for_loop(ptr noundef nonnull align 8, i64 noundef range(i64 0, 18), ptr noundef, i64 noundef range(i64 0, 37), ptr noundef, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers28convert_iter_for_each_to_for28is_ref_and_impls_iter_method(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers28convert_iter_for_each_to_for15impls_core_iter(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory13untyped_param(ptr noundef nonnull align 8, i64 noundef range(i64 0, 18), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory12expr_closureANtNtNtB7_9generated5nodes5Paramj1_ECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, i64 noundef, i64 noundef range(i64 0, 37), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes7VariantENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30add_explicit_enum_discriminant24add_variant_discriminant(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30convert_comment_from_or_to_doc22relevant_line_comments(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_7flatten7FlatMapIB3_INtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30convert_comment_from_or_to_doc14comment_to_doc00ENtNtNtBb_3str4iter5LinesNCB2H_s_0ENCB2H_s0_0ENtCscFGNKo4Sl5v_9itertools9Itertools4joinB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(168), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_9enumerate9EnumerateNtNtNtBb_3str4iter5LinesENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30convert_comment_from_or_to_doc14comment_to_doc0s1_0ENtCscFGNKo4Sl5v_9itertools9Itertools4joinB1R_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_7flatten7FlatMapIB3_INtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens7CommentENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30convert_comment_from_or_to_doc14doc_to_comment00ENtNtNtBb_3str4iter5LinesNCB2H_s_0ENCB2H_s0_0ENtCscFGNKo4Sl5v_9itertools9Itertools4joinB2P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(176), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB7_9enumerate9EnumerateNtNtNtBb_3str4iter5LinesENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30convert_comment_from_or_to_doc14doc_to_comment0s1_0ENtCscFGNKo4Sl5v_9itertools9Itertools4joinB1R_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB2Q_9generated5nodes12GenericParamEINtNtB20_6option6OptionB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter00EE9from_iterB4L_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtB3_13NameGenerator14new_with_namesINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter30introduce_named_type_parameter0s_0EEB3y_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs6oosyzwIepl_6ide_db14syntax_helpers12suggest_nameNtB2_13NameGenerator25for_impl_trait_as_generic(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers30introduce_named_type_parameter18non_default_bounds(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXskn_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_9TypeParamNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_NtNtCsjJXvCMGntp8_6syntax13syntax_editor5editsNtB8_12SyntaxEditor17add_generic_paramNtNtNtNtBa_3ast9generated5nodes2FnECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 3), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template24documentation_from_lines(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template20introduction_builder(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_documentation_template14panics_builder(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2E_5slice4iter4IterNtNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31generate_enum_projection_method6MethodENCNCNvB3M_31generate_enum_projection_methods1_0s_0EE9from_iterB3Q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsfx_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4PathNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_derive_with_manual_impl19impl_def_from_trait(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef, i32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_derive_with_manual_impl16update_attribute(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsbb_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ImplNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils19generate_trait_impl(ptr noundef nonnull align 8, i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef range(i64 0, 15), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB6_19SourceChangeBuilder23add_placeholder_snippetNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9MacroCallECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB6_19SourceChangeBuilder18add_tabstop_beforeNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9AssocItemECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(216), i64 noundef range(i64 0, 4), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_19SourceChangeBuilder23add_tabstop_after_token(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtB17_11AstChildrenB11_ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_named_generic_with_impl31replace_named_generic_with_impl00EE9from_iterB40_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory18generic_param_listINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtB7_9generated5nodes12GenericParamEECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory15type_bound_text(ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory15type_bound_listANtNtNtB7_9generated5nodes9TypeBoundj1_ECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory15impl_trait_type(ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_qualified_name_with_use13shorten_paths(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers31replace_qualified_name_with_use17drop_generic_args(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB4_13SyntaxFactory11path_concat(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvXs1H_Cs8Xq8PKFYOms_3hirNtB6_4EnumNtB6_8HasCrate5krate(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsg_Cs8Xq8PKFYOms_3hirNtB5_11EnumVariant4name(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMse_Cs8Xq8PKFYOms_3hirNtB5_4Enum6module(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir6ModuleuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant18process_references(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB16_11syntax_node12RustLanguageEINtNtCshzWfHUSfYae_4core6option6OptionTNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEEENtNtNtNtB3i_4iter6traits8iterator8Iterator4folduNCINvNvB5D_8for_each4callBX_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant32extract_struct_from_enum_variant0s_0E0EB71_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs_Cs83ee1IJTiSq_6eitherINtB5_6EitherRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordFieldListRNtBG_14TupleFieldListE6eitherNvYBE_NtBK_7AstNode6syntaxNvYB1J_B2i_6syntaxRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtBM_11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists(i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs8Xq8PKFYOms_3hir9semantics14SemanticsScopeE3zipBI_ECsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvYINtCs83ee1IJTiSq_6either6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordFieldListNtBz_14TupleFieldListENtNtBD_4edit11AstNodeEdit12reset_indentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXCs83ee1IJTiSq_6eitherINtB2_6EitherNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes15RecordFieldListNtBC_14TupleFieldListENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant24collect_variant_comments(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant17create_struct_def(ptr noundef nonnull align 8, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsv_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes7Variant11parent_enum(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtNtB8_4edit11AstNodeEdit6indentCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4EnumNtNtB8_6traits8HasAttrs5attrsCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBZ_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1O_11SyntaxTokenB29_EEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjJXvCMGntp8_6syntax13syntax_editorNtB2_12SyntaxEditor26insert_all_with_whitespace(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant14update_variant(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterTNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB16_11syntax_node12RustLanguageEINtNtCshzWfHUSfYae_4core6option6OptionTNtNtNtCs6oosyzwIepl_6ide_db7imports10insert_use11ImportScopeNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEEENtNtNtNtB3i_4iter6traits8iterator8Iterator4folduNCINvNvB5D_8for_each4callBX_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers32extract_struct_from_enum_variant32extract_struct_from_enum_variant00E0EB71_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory16generic_arg_listANtNtNtB7_9generated5nodes10GenericArgj1_ECsiU5vK8fN4ZC_11ide_assists(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers33generate_single_field_struct_from20make_adt_constructor(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance), i64, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes6StructNtNtB8_6traits8HasAttrs5attrsCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtNtNtCsjJXvCMGntp8_6syntax3ast14syntax_factory12constructorsNtB5_13SyntaxFactory10impl_traitINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtB7_11AstChildrenNtNtNtB7_9generated5nodes4AttrENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers33generate_single_field_struct_from33generate_single_field_struct_froms0_0s_0EEB3q_(ptr noundef nonnull align 8, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i64 noundef range(i64 0, 15), ptr noundef, i64 noundef range(i64 0, 15), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs8_NtNtCsjJXvCMGntp8_6syntax13syntax_editor5editsNtNtNtNtB9_3ast9generated5nodes4Impl41get_or_create_assoc_item_list_with_editor(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplNtNtB8_4edit11AstNodeEdit19indent_with_mappingCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers34convert_nested_function_to_closure13has_semicolon(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers34generate_default_from_enum_variant12default_impl(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs_Cs83ee1IJTiSq_6eitherINtB5_6EitherRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ImplRNtBG_5TraitE6eitherNvYBE_NtBK_7AstNode6syntaxNvYB1x_B1W_6syntaxRINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtBM_11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists(i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct20add_tuple_struct_def(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct26replace_body_return_values(ptr noundef nonnull align 8, i64 noundef range(i64 0, 37), ptr noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers35convert_tuple_return_type_to_struct14replace_usages(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_named_struct_to_tuple_struct21edit_field_referencesINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1I_9generated5nodes11RecordFieldEEB6_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_named_struct_to_tuple_struct22edit_struct_references(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_named_struct_to_tuple_struct15edit_struct_def(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_tuple_struct_to_named_struct14generate_namesINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1B_9generated5nodes10TupleFieldEEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_tuple_struct_to_named_struct21edit_field_referencesINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1I_9generated5nodes10TupleFieldEEB6_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_tuple_struct_to_named_struct22edit_struct_references(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(216), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers36convert_tuple_struct_to_named_struct15edit_struct_def(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes3PatENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMsM_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes9TokenTree22token_trees_and_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtB16_3api11SyntaxTokenNtNtB20_11syntax_node12RustLanguageEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters4skip4SkipINtNtB4q_10filter_map9FilterMapINtB2S_21SyntaxElementChildrenB3f_ENCNvMsM_NtB1Y_8node_extB1S_22token_trees_and_tokens0EEE9from_iterCsiU5vK8fN4ZC_11ide_assists(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers38extract_expressions_from_format_string16format_str_index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecRSINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtB18_3api11SyntaxTokenNtNtB22_11syntax_node12RustLanguageEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB4w_5slice4iter5SplitB13_NCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers38extract_expressions_from_format_string38extract_expressions_from_format_strings_00ENCB5J_s_0EE9from_iterB5R_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBL_3api11SyntaxTokenNtNtB1F_11syntax_node12RustLanguageEEE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6cloned6ClonedINtNtNtB3U_5slice4iter4IterBG_EEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_CsjJXvCMGntp8_6syntaxNtNtNtNtB5_3ast9generated5nodes4Expr5parse(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs_CsjJXvCMGntp8_6syntaxINtB4_5ParseNtNtNtNtB4_3ast9generated5nodes4ExprE11syntax_nodeCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtCsiU5vK8fN4ZC_11ide_assists5utils14tt_from_syntax(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatNtB6_7Display3fmtCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
