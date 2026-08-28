Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_authz-bed056875ae764eb.influxdb3_authz.7fb45a575f2b25fb-cgu.0?download=true
inline.NumInlined: 312
inline.NumDeleted: 143
begin_hunk_0_@_RNCNvXsI_CsaXLCtUcOqO5_15influxdb3_authzNtB7_18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer9authorize0B7_:bb.a

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %i.g, align 8, !range !317, !noundef !4 ; 3 uses
  %i.z = icmp eq i64 %i.y, -2
  br i1 %i.z, label %bb.l, label %bb.m

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit, %bb.l
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.i, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 2, ptr %0, align 8
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = load <2 x i64>, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.val = load ptr, ptr %i.x, align 8             ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 56
  %.val6 = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.ac = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtB4_6marker4SendEL_EEEB32_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtB4_6marker4SendEL_EEEB32_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !7, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #19
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtB4_6marker4SendEL_EEEB32_.exit: ; preds = %bb.p, %bb.o
  %.not.i = icmp eq i64 %i.y, -1
  br i1 %.not.i, label %bb.s, label %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_.exit

_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtB4_6marker4SendEL_EEEB32_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.y, ptr %i.f, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x i64> %i.aa, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXs_CsaXLCtUcOqO5_15influxdb3_authzNtNtCs21s4ZTvHFSd_5authz14iox_authorizer5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtB4_18AuthenticatorErrorE4from(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.ad unwind label %bb.ac

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtB4_6marker4SendEL_EEEB32_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 -1, ptr %i.d, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !324
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.as, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.s
  %i.at = load i64, ptr %i.a, align 8, !range !14, !noalias !324, !noundef !4
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !241, !noalias !324, !noundef !4 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.au, label %bb.t, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i, !prof !242

bb.t:                                             ; preds = %.noexc
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !324
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #22
          to label %.noexc11 unwind label %bb.y

.noexc11:                                         ; preds = %bb.t
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i: ; preds = %.noexc
  %i.az = load ptr, ptr %i.ax, align 8, !noalias !324, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp samesign ule i64 %i.as, %i.aw
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !324
  store i64 %i.aw, ptr %i.b, align 8, !noalias !324
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.az, ptr %i.bb, align 8, !noalias !324
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.as
  %i.be = icmp eq i64 %i.aw, 0
  br i1 %i.be, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i, %bb.v
  %.sroa.014.040.i.i = phi ptr [ %i.bk, %bb.v ], [ %i.aq, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i ] ; 5 uses
  %.sroa.7.039.i.i = phi i64 [ %i.bj, %bb.v ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i ] ; 3 uses
  %.sroa.10.038.i.i = phi i64 [ %i.bf, %bb.v ], [ %i.aw, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i ]
  %i.bf = add i64 %.sroa.10.038.i.i, -1           ; 2 uses
  %i.bg = icmp eq ptr %.sroa.014.040.i.i, %i.bd
  br i1 %i.bg, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !noalias !324
  %i.bh = load i64, ptr %.sroa.014.040.i.i, align 8, !range !14, !alias.scope !327, !noalias !330, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.014.040.i.i, i64 8
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %bb.v unwind label %bb.x, !noalias !332

bb.v:                                             ; preds = %bb.u
  %i.bj = add nuw nsw i64 %.sroa.7.039.i.i, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.014.040.i.i, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.014.040.i.i, i64 32
  %i.bm = load i8, ptr %i.bl, align 8, !range !333, !alias.scope !327, !noalias !330, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, i64 24, i1 false), !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !noalias !324
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %.sroa.7.039.i.i ; 3 uses
  store i64 %i.bh, ptr %i.bn, align 8, !noalias !332
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.i.i, i64 24, i1 false), !noalias !332
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i8 %i.bm, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i.i)
  %i.bo = icmp eq i64 %i.bf, 0
  br i1 %i.bo, label %.loopexit, label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !332
  unreachable

bb.x:                                             ; preds = %bb.u
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.039.i.i, ptr %i.bc, align 8, !noalias !324
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionEECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.aa unwind label %bb.w, !noalias !332

bb.y:                                             ; preds = %bb.t, %bb.s
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.v, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i
  store i64 %i.as, ptr %i.bc, align 8, !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !324
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !334, !noalias !338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaXLCtUcOqO5_15influxdb3_authz.exit.i, %bb.ad, %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  br label %common.ret

bb.z:                                             ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.body

bb.aa:                                            ; preds = %bb.y, %bb.x
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.bq, %bb.y ], [ %lpad.loopexit.i.i, %bb.x ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef align 8 dereferenceable(24) %i.d) #21
          to label %bb.z unwind label %bb.ab

bb.ab:                                            ; preds = %bb.i, %bb.aj, %bb.aa
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

.body:                                            ; preds = %bb.r, %bb.q, %bb.ac, %bb.i, %bb.d, %bb.z
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body13, %bb.z ], [ %i.bx, %bb.ac ], [ %i.r, %bb.d ], [ %i.v, %bb.i ], [ %i.ai, %bb.q ], [ %i.ai, %bb.r ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.bv = load i8, ptr %i.bu, align 1, !range !340, !noundef !4
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.aj, label %.body14

bb.ac:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.body

bb.ad:                                            ; preds = %_RNvXsp_NtCs4NRVxsYgnAr_4core6resultINtB5_6ResultNtCsbFlE7Gjht9i_12influxdb3_id7TokenIdNtCsaXLCtUcOqO5_15influxdb3_authz18AuthenticatorErrorENtNtNtB7_3ops9try_trait3Try6branchB1o_.exit
  store i64 1, ptr %i.h, align 8, !alias.scope !341, !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 65
  %i.bz = load i8, ptr %i.by, align 1, !range !340, !noundef !4
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cb = load i64, ptr %1, align 8, !range !9, !alias.scope !346, !noundef !4
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaXLCtUcOqO5_15influxdb3_authz.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %.body14 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaXLCtUcOqO5_15influxdb3_authz.exit.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz.exit unwind label %bb.ai

.body14:                                          ; preds = %bb.ai, %bb.ag, %bb.aj, %.body
  %.pn4 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn.pn, %bb.aj ], [ %i.cf, %bb.ai ], [ %i.cd, %bb.ag ]
  store i8 2, ptr %i.i, align 8
  resume { ptr, i32 } %.pn4

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsaXLCtUcOqO5_15influxdb3_authz.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body14

bb.aj:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef align 8 dereferenceable(24) %1) #21
          to label %.body14 unwind label %bb.ab
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsN_CsaXLCtUcOqO5_15influxdb3_authzNtB7_19NoAuthAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !78, !noundef !4
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXsN_CsaXLCtUcOqO5_15influxdb3_authzNtB7_19NoAuthAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer9authorize0B7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427.i.i = alloca [24 x i8], align 8      ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !78, !noundef !4
  switch i8 %i.g, label %default.unreachable11 [
    i8 0, label %bb.b
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

default.unreachable11:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !355
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.k, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !range !14, !noalias !355, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !241, !noalias !355, !noundef !4 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i, !prof !242

bb.c:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.p, align 8, !noalias !355
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #22
          to label %.noexc4 unwind label %bb.h

.noexc4:                                          ; preds = %bb.c
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i: ; preds = %.noexc
  %i.r = load ptr, ptr %i.p, align 8, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp samesign ule i64 %i.k, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  store i64 %i.o, ptr %i.b, align 8, !noalias !355
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %i.t, align 8, !noalias !355
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.k
  %i.w = icmp eq i64 %i.o, 0
  br i1 %i.w, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i, %bb.e
  %.sroa.014.040.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i ] ; 5 uses
  %.sroa.7.039.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i ] ; 3 uses
  %.sroa.10.038.i.i = phi i64 [ %i.x, %bb.e ], [ %i.o, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i ]
  %i.x = add i64 %.sroa.10.038.i.i, -1            ; 2 uses
  %i.y = icmp eq ptr %.sroa.014.040.i.i, %i.v
  br i1 %i.y, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i), !noalias !355
  %i.z = load i64, ptr %.sroa.014.040.i.i, align 8, !range !14, !alias.scope !358, !noalias !361, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.040.i.i, i64 8
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.5.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa)
          to label %bb.e unwind label %bb.g, !noalias !363

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw nsw i64 %.sroa.7.039.i.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.040.i.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.040.i.i, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !range !333, !alias.scope !358, !noalias !361, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, i64 24, i1 false), !noalias !355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i), !noalias !355
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %.sroa.7.039.i.i ; 3 uses
  store i64 %i.z, ptr %i.af, align 8, !noalias !363
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.i.i, i64 24, i1 false), !noalias !363
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i8 %i.ae, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !noalias !363
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i.i)
  %i.ag = icmp eq i64 %i.x, 0
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !363
  unreachable

bb.g:                                             ; preds = %bb.d
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.039.i.i, ptr %i.u, align 8, !noalias !355
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs21s4ZTvHFSd_5authz10permission10PermissionEECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.n unwind label %bb.f, !noalias !363

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.e, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaXLCtUcOqO5_15influxdb3_authz.exit.i.i
  store i64 %i.k, ptr %i.u, align 8, !noalias !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !355
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
end_hunk_0
begin_hunk_1_@_RNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe0B6_:bb.a
  store ptr %i.i, ptr %i.gz, align 8, !noalias !378
  %i.ha = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr @15, ptr %i.ha, align 8, !noalias !378
  %i.hb = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.fo, ptr %i.hb, align 8, !noalias !378
  %i.hc = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store ptr @16, ptr %i.hc, align 8, !noalias !378
  store i64 1, ptr %i.m, align 8, !alias.scope !430, !noalias !433
  %.sroa.4.0..sroa_idx.i77.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i77.i.i, align 8, !alias.scope !430, !noalias !433
  %.sroa.5.0..sroa_idx.i78.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 5, ptr %.sroa.5.0..sroa_idx.i78.i.i, align 8, !alias.scope !430, !noalias !433
  %i.hd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.gr, ptr %i.hd, align 8, !alias.scope !430, !noalias !433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !378
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.gf, ptr noundef nonnull %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %bb.bz unwind label %bb.by, !noalias !382

bb.by:                                            ; preds = %bb.bx
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !378
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !378
  br label %bb.bw

bb.ca:                                            ; preds = %bb.by, %bb.bu, %bb.bs
  %.pn32.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.he, %bb.by ], [ %i.gp, %bb.bu ], [ %i.gj, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !378
  br label %.body.i.i

bb.cb:                                            ; preds = %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2E_14iox_authorizer5ErrorEB4k_E00B1C_B3u_B3H_B4k_E00B1L_.exit.i.i, %bb.bw, %bb.bq, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !378
  %i.hf = load i64, ptr %i.fm, align 8, !noalias !378, !noundef !4
  %i.hg = load i32, ptr %i.fn, align 8, !range !436, !noalias !378, !noundef !4
  invoke void @_RNvNtNtCseCDlJsl44RV_5tokio4time5sleep5sleep(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.h, i64 noundef %i.hf, i32 noundef %i.hg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
          to label %bb.ci unwind label %bb.ch, !noalias !382

bb.cc:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !378
  %i.hh = load ptr, ptr @_RNvNCNvMs0_CsegCbah0zZ22_7backoffNtB9_7Backoff23retry_some_with_backoff010___CALLSITE, align 8, !noalias !378, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !378
  store ptr @11, ptr %i.q, align 8, !noalias !378
  %i.hj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 99 to ptr), ptr %i.hj, align 8, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !378
  store ptr %i.ef, ptr %i.p, align 8, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !378
  %.val61.i.i = load i64, ptr %i.fm, align 8, !noalias !378, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 %.val61.i.i, ptr %i.o, align 8, !noalias !378
  store ptr %i.q, ptr %i.r, align 8, !noalias !378
  %i.hl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @12, ptr %i.hl, align 8, !noalias !378
  %i.hm = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.p, ptr %i.hm, align 8, !noalias !378
  %i.hn = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr @13, ptr %i.hn, align 8, !noalias !378
  %i.ho = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.hk, ptr %i.ho, align 8, !noalias !378
  %i.hp = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr @14, ptr %i.hp, align 8, !noalias !378
  %i.hq = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.o, ptr %i.hq, align 8, !noalias !378
  %i.hr = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr @15, ptr %i.hr, align 8, !noalias !378
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.fo, ptr %i.hs, align 8, !noalias !378
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr @16, ptr %i.ht, align 8, !noalias !378
  store i64 1, ptr %i.s, align 8, !noalias !378
  %.sroa.9102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.r, ptr %.sroa.9102.0..sroa_idx.i.i, align 8, !noalias !378
  %.sroa.10103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 5, ptr %.sroa.10103.0..sroa_idx.i.i, align 8, !noalias !378
  %.sroa.11104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.hi, ptr %.sroa.11104.0..sroa_idx.i.i, align 8, !noalias !378
  invoke void @_RNvMNtCs4BfJs7E7SEE_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc83.i.i unwind label %bb.cg, !noalias !382

.noexc83.i.i:                                     ; preds = %bb.cc
  %i.hu = load atomic i8, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !437
  %i.hv = icmp eq i8 %i.hu, 0
  br i1 %i.hv, label %bb.cd, label %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2E_14iox_authorizer5ErrorEB4k_E00B1C_B3u_B3H_B4k_E00B1L_.exit.i.i

bb.cd:                                            ; preds = %.noexc83.i.i
  %i.hw = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !437 ; 2 uses
  %i.hx = icmp ult i64 %i.hw, 6
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp samesign ugt i64 %i.hw, 1
  br i1 %i.hy, label %bb.ce, label %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2E_14iox_authorizer5ErrorEB4k_E00B1C_B3u_B3H_B4k_E00B1L_.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.hz = load ptr, ptr @_RNvNCNvMs0_CsegCbah0zZ22_7backoffNtB9_7Backoff23retry_some_with_backoff010___CALLSITE, align 8, !noalias !437, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !437
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !382, !nonnull !4, !noundef !4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.id = load i64, ptr %i.ic, align 8, !noalias !382, !noundef !4
  store i64 2, ptr %i.b, align 8, !noalias !437
  %.sroa.3.0..sroa_idx.i81.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ib, ptr %.sroa.3.0..sroa_idx.i81.i.i, align 8, !noalias !437
  %.sroa.5.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.id, ptr %.sroa.5.0..sroa_idx.i82.i.i, align 8, !noalias !437
  %i.ie = invoke { ptr, ptr } @_RNvCsbKm4k1ctY99_3log6logger()
          to label %.noexc84.i.i unwind label %bb.cg, !noalias !382 ; 2 uses

.noexc84.i.i:                                     ; preds = %bb.ce
  %i.if = extractvalue { ptr, ptr } %i.ie, 0      ; 2 uses
  %i.ig = extractvalue { ptr, ptr } %i.ie, 1      ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !invariant.load !4, !noalias !382, !nonnull !4
  %i.ij = invoke noundef zeroext i1 %i.ii(ptr noundef %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc85.i.i unwind label %bb.cg, !noalias !382, !inline_history !440

.noexc85.i.i:                                     ; preds = %.noexc84.i.i
  br i1 %i.ij, label %bb.cf, label %.noexc86.i.i

bb.cf:                                            ; preds = %.noexc85.i.i
  invoke void @_RNvNtCsjXURJ4PNQnW_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hz, ptr noundef nonnull %i.if, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ig, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc86.i.i unwind label %bb.cg, !noalias !382

.noexc86.i.i:                                     ; preds = %bb.cf, %.noexc85.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !437
  br label %_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2E_14iox_authorizer5ErrorEB4k_E00B1C_B3u_B3H_B4k_E00B1L_.exit.i.i

bb.cg:                                            ; preds = %bb.cf, %.noexc84.i.i, %bb.ce, %bb.cc
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !378
  br label %.body.i.i

_RNCNCINvMs0_CsegCbah0zZ22_7backoffNtBa_7Backoff23retry_some_with_backoffNCNCINvB6_18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1E_00lEINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtB2E_14iox_authorizer5ErrorEB4k_E00B1C_B3u_B3H_B4k_E00B1L_.exit.i.i: ; preds = %.noexc86.i.i, %bb.cd, %.noexc83.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !378
  br label %bb.cb

bb.ch:                                            ; preds = %bb.cb
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !378
  br label %.body.i.i

bb.ci:                                            ; preds = %bb.cb
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.im, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !378
  br label %bb.p

.body.i.i:                                        ; preds = %bb.ch, %bb.cg, %bb.ca, %bb.bm, %bb.bk, %bb.bh, %bb.bd, %bb.y, %bb.w, %bb.o
  %i.in = phi ptr [ %i.eb, %bb.bd ], [ %i.eb, %bb.cg ], [ %i.eb, %bb.ca ], [ %i.eb, %bb.bk ], [ %i.eb, %bb.bh ], [ %i.eb, %bb.bm ], [ %i.eb, %bb.ch ], [ %i.bo, %bb.o ], [ %i.bo, %bb.y ], [ %i.bo, %bb.w ]
  %i.io = phi ptr [ %i.ec, %bb.bd ], [ %i.ec, %bb.cg ], [ %i.ec, %bb.ca ], [ %i.ec, %bb.bk ], [ %i.ec, %bb.bh ], [ %i.ec, %bb.bm ], [ %i.ec, %bb.ch ], [ %i.bp, %bb.o ], [ %i.bp, %bb.y ], [ %i.bp, %bb.w ]
  %i.ip = phi ptr [ %i.ed, %bb.bd ], [ %i.ed, %bb.cg ], [ %i.ed, %bb.ca ], [ %i.ed, %bb.bk ], [ %i.ed, %bb.bh ], [ %i.ed, %bb.bm ], [ %i.ed, %bb.ch ], [ %i.bq, %bb.o ], [ %i.bq, %bb.y ], [ %i.bq, %bb.w ]
  %.pn46.pn.i.i = phi { ptr, i32 } [ %i.fh, %bb.bd ], [ %i.ik, %bb.cg ], [ %.pn32.pn.pn.pn.pn.i.i, %bb.ca ], [ %i.fw, %bb.bk ], [ %i.fk, %bb.bh ], [ %i.fy, %bb.bm ], [ %i.il, %bb.ch ], [ %i.bn, %bb.o ], [ %i.cg, %bb.y ], [ %i.cc, %bb.w ]
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz14iox_authorizer5ErrorECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.iq) #21
          to label %.body70.i.i unwind label %bb.cj, !noalias !382

bb.cj:                                            ; preds = %.body.i.i, %.body64.i.i, %bb.o
  %i.ir = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !382
  unreachable

.thread.i:                                        ; preds = %bb.bb, %bb.q
  %i.is = phi ptr [ %i.eb, %bb.bb ], [ %i.bo, %bb.q ]
  %i.it = phi ptr [ %i.ec, %bb.bb ], [ %i.bp, %bb.q ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.bb ], [ 4, %bb.q ]
  store i8 %.sink.i.ph.i, ptr %i.it, align 8, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.0.sroa.3.i.i)
  br label %bb.co

bb.ck:                                            ; preds = %bb.bf
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %.sroa.595.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %.sroa.595.0.copyload.i.i = load i32, ptr %.sroa.595.0..sroa_idx.i.i, align 8, !noalias !382
  %.sroa.094.0.copyload.i.i = load i64, ptr %i.iu, align 8, !noalias !382
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.ef, align 8, !noalias !378 ; 2 uses
  %.sroa.423.sroa.0.0.copyload.i.i = load i64, ptr %i.eg, align 8, !noalias !378
  %.sroa.715.56.insert.ext.i.i = zext nneg i32 %.sroa.595.0.copyload.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.927, ptr noundef nonnull align 8 dereferenceable(32) %i.ej, i64 32, i1 false)
  store i8 1, ptr %i.ec, align 8, !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.sroa.0.sroa.3.i.i)
  %i.iv = icmp eq i64 %.sroa.022.0.copyload.i.i, -3
  br i1 %i.iv, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %.thread, %bb.ck
  %.sroa.715.1.i.i46 = phi i64 [ undef, %.thread ], [ %.sroa.715.56.insert.ext.i.i, %bb.ck ]
  %.sroa.010.1.i.i45 = phi i64 [ -2, %.thread ], [ %.sroa.022.0.copyload.i.i, %bb.ck ] ; 2 uses
  %.sroa.613.1.i.i44 = phi i64 [ undef, %.thread ], [ %.sroa.094.0.copyload.i.i, %bb.ck ] ; 2 uses
  %.sroa.412.sroa.0.0.i.i43 = phi i64 [ -1, %.thread ], [ %.sroa.423.sroa.0.0.copyload.i.i, %bb.ck ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs0_CsegCbah0zZ22_7backoffNtBK_7Backoff23retry_some_with_backoffNCNCINvBG_18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB2e_00lEINtNtB4_6result6ResultuNtNtB3e_14iox_authorizer5ErrorEB4E_E00B2c_B44_B4h_B4E_E0EB2l_(ptr noundef nonnull align 8 %i.ed)
          to label %bb.cp unwind label %bb.cm, !noalias !377

bb.cm:                                            ; preds = %bb.cl
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.cn:                                            ; preds = %.body.i
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !377
  unreachable

common.ret:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit, %bb.co
  %storemerge = phi i8 [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit ], [ 3, %bb.co ]
  store i8 %storemerge, ptr %i.t, align 8
  ret void

bb.co:                                            ; preds = %bb.ck, %.thread.i
  %i.iy = phi ptr [ %i.eb, %bb.ck ], [ %i.is, %.thread.i ]
  store i8 3, ptr %i.iy, align 8, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cp:                                            ; preds = %bb.cl
  store i8 1, ptr %i.eb, align 8, !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.927, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.927)
  %.not.i = icmp eq i64 %.sroa.010.1.i.i45, -2
  br i1 %.not.i, label %bb.cu, label %bb.cq, !prof !441

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !442
  store i64 %.sroa.010.1.i.i45, ptr %i.a, align 8, !noalias !446
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.412.sroa.0.0.i.i43, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !446
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.613.1.i.i44, ptr %.sroa.631.0..sroa_idx, align 8, !noalias !446
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.715.1.i.i46, ptr %.sroa.732.0..sroa_idx, align 8, !noalias !446
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22
          to label %bb.cs unwind label %bb.cr, !noalias !442

bb.cr:                                            ; preds = %bb.cq
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = load i64, ptr %i.a, align 8, !range !8, !alias.scope !447, !noalias !442, !noundef !4
  %.not.i.i14 = icmp eq i64 %i.ja, -1
  %.sink.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel = select i1 %.not.i.i14, ptr %.sroa.3.0..sroa_idx, ptr %i.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs21s4ZTvHFSd_5authz14iox_authorizer5ErrorECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(48) %.sink.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs0_CsegCbah0zZ22_7backoffNtBK_7Backoff18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1F_00lEINtNtB4_6result6ResultuNtNtB2F_14iox_authorizer5ErrorEB45_E0EB1M_.exit unwind label %bb.ct, !noalias !442

bb.cs:                                            ; preds = %bb.cq
  unreachable

bb.ct:                                            ; preds = %bb.cr
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !442
  unreachable

bb.cu:                                            ; preds = %bb.cp
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.jc, align 8, !noundef !4 ; 4 uses
  %i.jd = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.jd, align 8           ; 6 uses
  %i.je = icmp eq ptr %.val, null
  br i1 %i.je, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  %i.jf = load ptr, ptr %.val6, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  invoke void %i.jf(ptr noundef nonnull %.val)
          to label %bb.cx unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.jg = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jj = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !range !7, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.jh, i64 noundef range(i64 1, 536870913) %i.jk) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit

bb.cz:                                            ; preds = %bb.cw
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %.body17, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jp = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.jq = load i64, ptr %i.jp, align 8, !range !7, !invariant.load !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.jn, i64 noundef range(i64 1, 536870913) %i.jq) #19
  br label %.body17

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsegCbah0zZ22_7backoff7BackoffECsaXLCtUcOqO5_15influxdb3_authz.exit: ; preds = %bb.cy, %bb.cx, %bb.cu
  store i64 %.sroa.412.sroa.0.0.i.i43, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.613.1.i.i44, ptr %.sroa.334.0..sroa_idx, align 8
  br label %common.ret

bb.db:                                            ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs0_CsegCbah0zZ22_7backoffNtBK_7Backoff18retry_with_backoffNCNCNvYNtCsaXLCtUcOqO5_15influxdb3_authz18TokenAuthenticatorNtNtCs21s4ZTvHFSd_5authz10authorizer10Authorizer5probe00INCNCB1F_00lEINtNtB4_6result6ResultuNtNtB2F_14iox_authorizer5ErrorEB45_E0EB1M_.exit
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_CsaXLCtUcOqO5_15influxdb3_authzNtB5_9TokenInfo15set_permissions(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCsaXLCtUcOqO5_15influxdb3_authz10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsaXLCtUcOqO5_15influxdb3_authz10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCsaXLCtUcOqO5_15influxdb3_authz10PermissionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsaXLCtUcOqO5_15influxdb3_authz10PermissionEEB19_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCsaXLCtUcOqO5_15influxdb3_authz10PermissionEEB19_.exit: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCsaXLCtUcOqO5_15influxdb3_authz11permissionsNtB7_18ResourceIdentifier27build_resource_ids_for_type(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, i8 noundef range(i8 0, 4) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 384307168202282326) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !range !7, !invariant.load !4
  %i.e = add nsw i64 %i.d, -1
  %i.f = and i64 %i.e, -16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.j(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.h, i8 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !450
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_EEB1d_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_EEB1d_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.n = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !455
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_EEB1d_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_EEB1d_.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_EEB1d_.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCsaXLCtUcOqO5_15influxdb3_authz11permissions24ResourceNameToIdProviderEL_EEB1d_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCsaXLCtUcOqO5_15influxdb3_authz11permissionsNtB7_7Actions22build_actions_for_type(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i8 noundef range(i8 0, 4) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [1 x i8], align 1                 ; 2 uses
  store i8 %1, ptr %i.i, align 1
  switch i8 %1, label %default.unreachable43 [
    i8 0, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.f
    i8 1, label %bb.g
  ]

default.unreachable43:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMsb_NtCsaXLCtUcOqO5_15influxdb3_authz11permissionsNtB7_15DatabaseActions3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  %i.j = load i64, ptr %i.h, align 8, !range !460, !noundef !4 ; 2 uses
  %.not36 = icmp eq i64 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  br i1 %.not36, label %bb.n, label %bb.m

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.idx.i = mul nuw nsw i64 %3, 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.017.i, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.02.017.i = phi ptr [ %i.o, %bb.d ], [ %2, %bb.c ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.017.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !461, !noalias !464, !noundef !4
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.e, label %bb.p

bb.e:                                             ; preds = %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.017.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !461, !noalias !464, !nonnull !4, !noundef !4
  %i.v = load i32, ptr %i.u, align 1
  %i.w = icmp ne i32 %i.v, 1684104562
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 3, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !466
  store i64 0, ptr %i.c, align 8, !noalias !466
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !466
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !466
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.aa, align 8, !noalias !466
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i37, align 4, !noalias !466
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !466
  store ptr %i.c, ptr %i.b, align 8, !noalias !466
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @96, ptr %i.ab, align 8, !noalias !466
  %i.ac = invoke noundef zeroext i1 @_RNvXs_NtCsaXLCtUcOqO5_15influxdb3_authz11permissionsNtB6_12ResourceTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !470

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaXLCtUcOqO5_15influxdb3_authz(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %bb.l unwind label %bb.k, !noalias !466

bb.i:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.j, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtCsaXLCtUcOqO5_15influxdb3_authz12ResourceTypeNtB5_12SpecToString14spec_to_stringBz_.exit, !prof !242

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #22
          to label %.noexc.i unwind label %bb.h, !noalias !466

end_hunk_1
