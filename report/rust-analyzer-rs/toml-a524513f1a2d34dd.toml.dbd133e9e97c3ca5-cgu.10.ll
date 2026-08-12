inline.NumInlined: 84
inline.NumDeleted: 41
begin_hunk_0_@_RNvNtNtNtCsiS54oC2UhYT_4toml2de6parser5value9on_scalar:bb.a

bb.k:                                             ; preds = %bb.v, %bb.h
  %i.ah = load i64, ptr %i.g, align 8, !range !25, !alias.scope !57, !noundef !22
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsiS54oC2UhYT_4toml.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit.i: ; preds = %bb.l
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsiS54oC2UhYT_4toml.exit

bb.o:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.f, align 8, !range !60, !noundef !22
  %i.am = trunc nuw i32 %i.al to i1
  br i1 %i.am, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !61
  store i64 0, ptr %i.c, align 8, !noalias !61
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !61
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.ao, align 8, !noalias !61
  store ptr %i.c, ptr %i.b, align 8, !noalias !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @26, ptr %i.ap, align 8, !noalias !61
  %i.aq = invoke noundef zeroext i1 @_RNvXsc_NtCsgRbK8lkcR4h_13toml_datetime8datetimeNtB5_18DatetimeParseErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.r unwind label %bb.q, !noalias !65

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #11
          to label %.body unwind label %bb.t, !noalias !65

bb.r:                                             ; preds = %bb.p
  br i1 %i.aq, label %bb.s, label %bb.w, !prof !12

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #12
          to label %.noexc.i unwind label %bb.q, !noalias !65

.noexc.i:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !65
  unreachable

bb.u:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.09.sroa.0.0.copyload = load i32, ptr %i.at, align 4
  %.sroa.09.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.09.sroa.3.0.copyload = load i64, ptr %.sroa.09.sroa.3.0..sroa_idx, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.au = load <2 x i16>, ptr %.sroa.310.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.516.sroa.0.0.copyload = load i16, ptr %.sroa.516.0..sroa_idx, align 4
  %.sroa.516.sroa.3.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %.sroa.516.sroa.3.0.copyload = load i32, ptr %.sroa.516.sroa.3.0..sroa.516.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %.sroa.6.0 = phi i16 [ undef, %bb.x ], [ %.sroa.6.0.copyload, %bb.u ]
  %.sroa.516.sroa.0.0 = phi i16 [ 0, %bb.x ], [ %.sroa.516.sroa.0.0.copyload, %bb.u ]
  %.sroa.516.sroa.3.0 = phi i32 [ undef, %bb.x ], [ %.sroa.516.sroa.3.0.copyload, %bb.u ]
  %.sroa.09.sroa.0.0 = phi i32 [ 2, %bb.x ], [ %.sroa.09.sroa.0.0.copyload, %bb.u ]
  %.sroa.09.sroa.3.0 = phi i64 [ undef, %bb.x ], [ %.sroa.09.sroa.3.0.copyload, %bb.u ]
  %i.av = phi <2 x i16> [ <i16 2, i16 undef>, %bb.x ], [ %i.au, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.l, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.ax, align 8
  store i8 4, ptr %0, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.09.sroa.0.0, ptr %.sroa.431.0..sroa_idx, align 4
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.09.sroa.3.0, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i16> %i.av, ptr %.sroa.633.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sroa.516.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i32 %.sroa.516.sroa.3.0, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %.sroa.6.0, ptr %.sroa.10.0..sroa_idx, align 2
  br label %bb.k

bb.w:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !61
  store i64 0, ptr %i.d, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 1, ptr %i.ba, align 8
  store i64 %i.l, ptr %.sroa.545.0..sroa_idx46, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.n, ptr %.sroa.549.0..sroa_idx, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !22, !nonnull !22
  invoke void %i.bc(ptr noundef nonnull %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d)
          to label %bb.x unwind label %bb.d

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECsiS54oC2UhYT_4toml.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml.exit.i, %bb.k, %bb.g, %bb.j, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.y:                                             ; preds = %.body
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer12serialize_i8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [3 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !66
  %i.g = icmp slt i8 %2, 0
  br i1 %i.g, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !66
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !66
  %i.h = load i64, ptr %i.c, align 8, !range !21, !noalias !66, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !66, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %.noexc15.i, label %bb.b, !prof !12

.noexc15.i:                                       ; preds = %.noexc.i
  %i.m = load i64, ptr %i.l, align 8, !noalias !66
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14, !noalias !66
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !66
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !66
  %i.n = load i64, ptr %i.b, align 8, !range !21, !noalias !66, !noundef !22
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !23, !noalias !66, !noundef !22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %.noexc17.i, label %bb.d, !prof !12

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !66
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #14, !noalias !66
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.l, align 8, !noalias !66, !nonnull !22, !noundef !22
  %i.u = icmp ugt i64 %i.k, 2
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !66
  store i64 %i.k, ptr %i.d, align 8, !noalias !66
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !66
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !66
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i8 [ %i.z, %bb.e ], [ %2, %bb.b ]
  %i.v = invoke { ptr, i64 } @_RNvMs0_NtNtNtCshzWfHUSfYae_4core3fmt3num3imph4__fmt(i8 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.e, i64 noundef 3)
          to label %bb.f unwind label %bb.i, !noalias !66 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.w = load ptr, ptr %i.r, align 8, !noalias !66, !nonnull !22, !noundef !22
  %i.x = icmp ugt i64 %i.q, 3
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !66
  store i64 %i.q, ptr %i.d, align 8, !noalias !66
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !66
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !66
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !66

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !69, !noalias !66, !nonnull !22, !noundef !22
  store i8 45, ptr %i.y, align 1, !noalias !66
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !69, !noalias !66
  %i.z = sub i8 0, %2
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.aa = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.v, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab)
          to label %.noexc20.i unwind label %bb.i, !noalias !66

.noexc20.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !72, !noalias !66, !noundef !22 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !72, !noalias !66, !nonnull !22, !noundef !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.aa, i64 %i.ab, i1 false), !noalias !66
  %.pre.i.i = load i64, ptr %i.ac, align 8, !alias.scope !72, !noalias !66
  br label %_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #11
          to label %bb.h unwind label %bb.j, !noalias !66

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !66
  unreachable

_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.aj = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ad, %.noexc20.i ]
  %i.ak = add i64 %i.aj, %i.ab
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !72, !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66
  %i.al = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !75
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !75
  %i.am = load i64, ptr %i.a, align 8, !range !21, !noalias !75, !noundef !22
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !23, !noalias !75, !noundef !22 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.l, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !75
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #14, !noalias !75
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.k
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !75, !nonnull !22, !noundef !22 ; 2 uses
  %i.at = icmp ugt i64 %i.ap, 37
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !88
  store i64 %i.ap, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs1G_NtCsbSS6DM8SDEO_5alloc6stringaNtB6_12SpecToString14spec_to_string.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer12serialize_u8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = call { ptr, i64 } @_RNvMs0_NtNtNtCshzWfHUSfYae_4core3fmt3num3imph4__fmt(i8 noundef %2, ptr noalias nofree noundef nonnull %i.c, i64 noundef 3) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !21, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !89
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !89
  %i.q = load i64, ptr %i.a, align 8, !range !21, !noalias !89, !noundef !22
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !89, !noundef !22 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8, !noalias !89
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #14, !noalias !89
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !noalias !89, !nonnull !22, !noundef !22 ; 2 uses
  %i.x = icmp ugt i64 %i.t, 37
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !102
  store i64 %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_i16(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [5 x i8], align 1                 ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !103
  %i.g = icmp slt i16 %2, 0
  br i1 %i.g, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !103
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !103
  %i.h = load i64, ptr %i.c, align 8, !range !21, !noalias !103, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !103, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %.noexc15.i, label %bb.b, !prof !12

.noexc15.i:                                       ; preds = %.noexc.i
  %i.m = load i64, ptr %i.l, align 8, !noalias !103
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14, !noalias !103
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !103
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !103
  %i.n = load i64, ptr %i.b, align 8, !range !21, !noalias !103, !noundef !22
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !23, !noalias !103, !noundef !22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %.noexc17.i, label %bb.d, !prof !12

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !103
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #14, !noalias !103
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.l, align 8, !noalias !103, !nonnull !22, !noundef !22
  %i.u = icmp ugt i64 %i.k, 4
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !103
  store i64 %i.k, ptr %i.d, align 8, !noalias !103
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !103
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i16 [ %i.z, %bb.e ], [ %2, %bb.b ]
  %i.v = invoke { ptr, i64 } @_RNvMs5_NtNtNtCshzWfHUSfYae_4core3fmt3num3impt4__fmt(i16 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.e, i64 noundef 5)
          to label %bb.f unwind label %bb.i, !noalias !103 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.w = load ptr, ptr %i.r, align 8, !noalias !103, !nonnull !22, !noundef !22
  %i.x = icmp ugt i64 %i.q, 5
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !103
  store i64 %i.q, ptr %i.d, align 8, !noalias !103
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !103
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !103
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !103

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !106, !noalias !103, !nonnull !22, !noundef !22
  store i8 45, ptr %i.y, align 1, !noalias !103
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !106, !noalias !103
  %i.z = sub i16 0, %2
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.aa = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.v, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab)
          to label %.noexc20.i unwind label %bb.i, !noalias !103

.noexc20.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !109, !noalias !103, !noundef !22 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !109, !noalias !103, !nonnull !22, !noundef !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.aa, i64 %i.ab, i1 false), !noalias !103
  %.pre.i.i = load i64, ptr %i.ac, align 8, !alias.scope !109, !noalias !103
  br label %_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #11
          to label %bb.h unwind label %bb.j, !noalias !103

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !103
  unreachable

_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.aj = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ad, %.noexc20.i ]
  %i.ak = add i64 %i.aj, %i.ab
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !109, !noalias !103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !103
  %i.al = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !112
  %i.am = load i64, ptr %i.a, align 8, !range !21, !noalias !112, !noundef !22
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !23, !noalias !112, !noundef !22 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.l, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !112
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #14, !noalias !112
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.k
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !112, !nonnull !22, !noundef !22 ; 2 uses
  %i.at = icmp ugt i64 %i.ap, 37
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !125
  store i64 %i.ap, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs1I_NtCsbSS6DM8SDEO_5alloc6stringsNtB6_12SpecToString14spec_to_string.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_i32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [10 x i8], align 1                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !126
  %i.g = icmp slt i32 %2, 0
  br i1 %i.g, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !126
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 10, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !126
  %i.h = load i64, ptr %i.c, align 8, !range !21, !noalias !126, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !126, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %.noexc15.i, label %bb.b, !prof !12

.noexc15.i:                                       ; preds = %.noexc.i
  %i.m = load i64, ptr %i.l, align 8, !noalias !126
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14, !noalias !126
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !126
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !126
  %i.n = load i64, ptr %i.b, align 8, !range !21, !noalias !126, !noundef !22
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !23, !noalias !126, !noundef !22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %.noexc17.i, label %bb.d, !prof !12

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !126
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #14, !noalias !126
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.l, align 8, !noalias !126, !nonnull !22, !noundef !22
  %i.u = icmp ugt i64 %i.k, 9
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !126
  store i64 %i.k, ptr %i.d, align 8, !noalias !126
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !126
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !126
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i32 [ %i.z, %bb.e ], [ %2, %bb.b ]
  %i.v = invoke { ptr, i64 } @_RNvMsa_NtNtNtCshzWfHUSfYae_4core3fmt3num3impm4__fmt(i32 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.e, i64 noundef 10)
          to label %bb.f unwind label %bb.i, !noalias !126 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.w = load ptr, ptr %i.r, align 8, !noalias !126, !nonnull !22, !noundef !22
  %i.x = icmp ugt i64 %i.q, 10
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !126
  store i64 %i.q, ptr %i.d, align 8, !noalias !126
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !126
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !126
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !126

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !126, !nonnull !22, !noundef !22
  store i8 45, ptr %i.y, align 1, !noalias !126
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !129, !noalias !126
  %i.z = sub i32 0, %2
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.aa = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.v, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab)
          to label %.noexc20.i unwind label %bb.i, !noalias !126

.noexc20.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !132, !noalias !126, !noundef !22 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !132, !noalias !126, !nonnull !22, !noundef !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.aa, i64 %i.ab, i1 false), !noalias !126
  %.pre.i.i = load i64, ptr %i.ac, align 8, !alias.scope !132, !noalias !126
  br label %_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #11
          to label %bb.h unwind label %bb.j, !noalias !126

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !126
  unreachable

_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.aj = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ad, %.noexc20.i ]
  %i.ak = add i64 %i.aj, %i.ab
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !132, !noalias !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !126
  %i.al = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !135
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !135
  %i.am = load i64, ptr %i.a, align 8, !range !21, !noalias !135, !noundef !22
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !23, !noalias !135, !noundef !22 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.l, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !135
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #14, !noalias !135
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.k
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !135, !nonnull !22, !noundef !22 ; 2 uses
  %i.at = icmp ugt i64 %i.ap, 37
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !148
  store i64 %i.ap, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs1K_NtCsbSS6DM8SDEO_5alloc6stringlNtB6_12SpecToString14spec_to_string.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_i64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [19 x i8], align 1                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !149
  %i.g = icmp slt i64 %2, 0
  br i1 %i.g, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !149
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 19, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !149
  %i.h = load i64, ptr %i.c, align 8, !range !21, !noalias !149, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !149, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %.noexc15.i, label %bb.b, !prof !12

.noexc15.i:                                       ; preds = %.noexc.i
  %i.m = load i64, ptr %i.l, align 8, !noalias !149
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14, !noalias !149
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !149
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !149
  %i.n = load i64, ptr %i.b, align 8, !range !21, !noalias !149, !noundef !22
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !23, !noalias !149, !noundef !22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %.noexc17.i, label %bb.d, !prof !12

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !149
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #14, !noalias !149
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.l, align 8, !noalias !149, !nonnull !22, !noundef !22
  %i.u = icmp ugt i64 %i.k, 18
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !149
  store i64 %i.k, ptr %i.d, align 8, !noalias !149
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !149
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i64 [ %i.z, %bb.e ], [ %2, %bb.b ]
  %i.v = invoke { ptr, i64 } @_RNvMsf_NtNtNtCshzWfHUSfYae_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.e, i64 noundef 19)
          to label %bb.f unwind label %bb.i, !noalias !149 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.w = load ptr, ptr %i.r, align 8, !noalias !149, !nonnull !22, !noundef !22
  %i.x = icmp ugt i64 %i.q, 19
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !149
  store i64 %i.q, ptr %i.d, align 8, !noalias !149
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !149
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !149
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !149

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !152, !noalias !149, !nonnull !22, !noundef !22
  store i8 45, ptr %i.y, align 1, !noalias !149
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !152, !noalias !149
  %i.z = sub i64 0, %2
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.aa = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.v, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab)
          to label %.noexc20.i unwind label %bb.i, !noalias !149

.noexc20.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !155, !noalias !149, !noundef !22 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !155, !noalias !149, !nonnull !22, !noundef !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.aa, i64 %i.ab, i1 false), !noalias !149
  %.pre.i.i = load i64, ptr %i.ac, align 8, !alias.scope !155, !noalias !149
  br label %_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #11
          to label %bb.h unwind label %bb.j, !noalias !149

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !149
  unreachable

_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.aj = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ad, %.noexc20.i ]
  %i.ak = add i64 %i.aj, %i.ab
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !155, !noalias !149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !149
  %i.al = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !158
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !158
  %i.am = load i64, ptr %i.a, align 8, !range !21, !noalias !158, !noundef !22
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !23, !noalias !158, !noundef !22 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.l, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !158
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #14, !noalias !158
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.k
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !158, !nonnull !22, !noundef !22 ; 2 uses
  %i.at = icmp ugt i64 %i.ap, 37
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !171
  store i64 %i.ap, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs1M_NtCsbSS6DM8SDEO_5alloc6stringxNtB6_12SpecToString14spec_to_string.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyReECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !172
  %i.c = load i64, ptr %i.a, align 8, !range !21, !noalias !172, !noundef !22
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !23, !noalias !172, !noundef !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.c, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !noalias !172
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #14, !noalias !172
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !noalias !172, !nonnull !22, !noundef !22 ; 2 uses
  %i.j = icmp ugt i64 %i.f, 37
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !185
  store i64 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_u16(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [5 x i8], align 1                 ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = call { ptr, i64 } @_RNvMs5_NtNtNtCshzWfHUSfYae_4core3fmt3num3impt4__fmt(i16 noundef %2, ptr noalias nofree noundef nonnull %i.c, i64 noundef 5) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !21, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !186
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !186
  %i.q = load i64, ptr %i.a, align 8, !range !21, !noalias !186, !noundef !22
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !186, !noundef !22 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8, !noalias !186
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #14, !noalias !186
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !noalias !186, !nonnull !22, !noundef !22 ; 2 uses
  %i.x = icmp ugt i64 %i.t, 37
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !199
  store i64 %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_u32(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [10 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = call { ptr, i64 } @_RNvMsa_NtNtNtCshzWfHUSfYae_4core3fmt3num3impm4__fmt(i32 noundef %2, ptr noalias nofree noundef nonnull %i.c, i64 noundef 10) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !21, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !200
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !200
  %i.q = load i64, ptr %i.a, align 8, !range !21, !noalias !200, !noundef !22
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !200, !noundef !22 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8, !noalias !200
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #14, !noalias !200
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !noalias !200, !nonnull !22, !noundef !22 ; 2 uses
  %i.x = icmp ugt i64 %i.t, 37
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !213
  store i64 %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer13serialize_u64(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [20 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = call { ptr, i64 } @_RNvMsf_NtNtNtCshzWfHUSfYae_4core3fmt3num3impy4__fmt(i64 noundef %2, ptr noalias nofree noundef nonnull %i.c, i64 noundef 20) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !21, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !214
  %i.q = load i64, ptr %i.a, align 8, !range !21, !noalias !214, !noundef !22
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !214, !noundef !22 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8, !noalias !214
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #14, !noalias !214
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !noalias !214, !nonnull !22, !noundef !22 ; 2 uses
  %i.x = icmp ugt i64 %i.t, 37
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !227
  store i64 %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_bool(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %. = select i1 %2, i64 4, i64 5                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %., i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !21, !noundef !22
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !23, !noundef !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %.2 = select i1 %2, ptr @12, ptr @11
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !228, !noundef !22 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.n = icmp samesign ule i64 %., %i.k
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.m, ptr noundef nonnull align 1 dereferenceable(4) %.2, i64 %., i1 false)
  store i64 %i.k, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %., ptr %.sroa.6.0..sroa_idx, align 8
  %i.o = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !229
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !229
  %i.p = load i64, ptr %i.a, align 8, !range !21, !noalias !229, !noundef !22
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !23, !noalias !229, !noundef !22 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.q, label %bb.e, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.t, align 8, !noalias !229
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #14, !noalias !229
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.d
  %i.v = load ptr, ptr %i.t, align 8, !noalias !229, !nonnull !22, !noundef !22 ; 2 uses
  %i.w = icmp ugt i64 %i.s, 37
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.v, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !242
  store i64 %i.s, ptr %0, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_char(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %2, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %2, 2048
  %i.e = trunc i32 %2 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %2, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %2, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %2, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %2 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !243
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !243
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !243
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %2, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !243
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !243
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !243
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !243
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !243
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !243
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !243
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyReECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i)
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !246
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !246
  %i.ad = load i64, ptr %i.a, align 8, !range !21, !noalias !246, !noundef !22
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !23, !noalias !246, !noundef !22 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.i, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !246
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #14, !noalias !246
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !246, !nonnull !22, !noundef !22 ; 2 uses
  %i.ak = icmp ugt i64 %i.ag, 37
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.aj, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !259
  store i64 %i.ag, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  store i64 -1, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_i128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i128 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [39 x i8], align 1                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !260
  %i.g = icmp slt i128 %2, 0
  br i1 %i.g, label %.noexc16.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !260
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 39, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !260
  %i.h = load i64, ptr %i.c, align 8, !range !21, !noalias !260, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noalias !260, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.i, label %.noexc15.i, label %bb.b, !prof !12

.noexc15.i:                                       ; preds = %.noexc.i
  %i.m = load i64, ptr %i.l, align 8, !noalias !260
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14, !noalias !260
  unreachable

.noexc16.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 40, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !260
  %i.n = load i64, ptr %i.b, align 8, !range !21, !noalias !260, !noundef !22
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !23, !noalias !260, !noundef !22 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.o, label %.noexc17.i, label %bb.d, !prof !12

.noexc17.i:                                       ; preds = %.noexc16.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !260
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #14, !noalias !260
  unreachable

bb.b:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.l, align 8, !noalias !260, !nonnull !22, !noundef !22
  %i.u = icmp ugt i64 %i.k, 38
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !260
  store i64 %i.k, ptr %i.d, align 8, !noalias !260
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !260
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !260
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.012.0.i = phi i128 [ %i.z, %bb.e ], [ %2, %bb.b ]
  %i.v = invoke { ptr, i64 } @_RNvMs0_NtNtCshzWfHUSfYae_4core3fmt3numo4__fmt(i128 noundef %.sroa.012.0.i, ptr noalias nofree noundef nonnull %i.e, i64 noundef 39)
          to label %bb.f unwind label %bb.i, !noalias !260 ; 2 uses

bb.d:                                             ; preds = %.noexc16.i
  %i.w = load ptr, ptr %i.r, align 8, !noalias !260, !nonnull !22, !noundef !22
  %i.x = icmp ugt i64 %i.q, 39
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  store i64 %i.q, ptr %i.d, align 8, !noalias !260
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.w, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !260
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !260
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %bb.e unwind label %bb.i, !noalias !260

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !260, !nonnull !22, !noundef !22
  store i8 45, ptr %i.y, align 1, !noalias !260
  store i64 1, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !263, !noalias !260
  %i.z = sub i128 0, %2
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.aa = extractvalue { ptr, i64 } %i.v, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.v, 1       ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.ab)
          to label %.noexc20.i unwind label %bb.i, !noalias !260

.noexc20.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !266, !noalias !260, !noundef !22 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit, label %bb.g

bb.g:                                             ; preds = %.noexc20.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !266, !noalias !260, !nonnull !22, !noundef !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %i.aa, i64 %i.ab, i1 false), !noalias !260
  %.pre.i.i = load i64, ptr %i.ac, align 8, !alias.scope !266, !noalias !260
  br label %_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit

bb.h:                                             ; preds = %bb.i
  resume { ptr, i32 } %lpad.thr_comm.split-lp.i

bb.i:                                             ; preds = %bb.f, %bb.d, %bb.c
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #11
          to label %bb.h unwind label %bb.j, !noalias !260

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #13, !noalias !260
  unreachable

_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit: ; preds = %.noexc20.i, %bb.g
  %i.aj = phi i64 [ %.pre.i.i, %bb.g ], [ %i.ad, %.noexc20.i ]
  %i.ak = add i64 %i.aj, %i.ab
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !266, !noalias !260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !260
  %i.al = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.al, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !269
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !269
  %i.am = load i64, ptr %i.a, align 8, !range !21, !noalias !269, !noundef !22
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !23, !noalias !269, !noundef !22 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.an, label %bb.l, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !269
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #14, !noalias !269
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.k
  %i.as = load ptr, ptr %i.aq, align 8, !noalias !269, !nonnull !22, !noundef !22 ; 2 uses
  %i.at = icmp ugt i64 %i.ap, 37
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.as, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !282
  store i64 %i.ap, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvXs1Q_NtCsbSS6DM8SDEO_5alloc6stringnNtB6_12SpecToString14spec_to_string.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer14serialize_u128(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i128 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [39 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = call { ptr, i64 } @_RNvMs0_NtNtCshzWfHUSfYae_4core3fmt3numo4__fmt(i128 noundef %2, ptr noalias nofree noundef nonnull %i.c, i64 noundef 39) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !21, !noundef !22
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !23, !noundef !22 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyB3_ECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.p, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !283
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !283
  %i.q = load i64, ptr %i.a, align 8, !range !21, !noalias !283, !noundef !22
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !23, !noalias !283, !noundef !22 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8, !noalias !283
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #14, !noalias !283
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !noalias !283, !nonnull !22, !noundef !22 ; 2 uses
  %i.x = icmp ugt i64 %i.t, 37
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !296
  store i64 %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtNtCsiS54oC2UhYT_4toml3ser5value3keyNtB2_13KeySerializerNtNtCsjQbM3MYDIrM_10serde_core3ser10Serializer22serialize_unit_variant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, i32 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = tail call noundef zeroext i1 @_RINvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCskGmdErwHfLz_11toml_writer5write9TomlWrite3keyReECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !297
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !297
  %i.c = load i64, ptr %i.a, align 8, !range !21, !noalias !297, !noundef !22
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !23, !noalias !297, !noundef !22 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.c, label %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !noalias !297
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #14, !noalias !297
  unreachable

_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.g, align 8, !noalias !297, !nonnull !22, !noundef !22 ; 2 uses
  %i.j = icmp ugt i64 %i.f, 37
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !310
  store i64 %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtNtCsiS54oC2UhYT_4toml3ser8document8strategyNtB5_21SerializationStrategyNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_5ErrorNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !22, !noundef !22
  %.val = load i8, ptr %i.a, align 1, !range !311, !noundef !22 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsiS54oC2UhYT_4toml, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsiS54oC2UhYT_4toml.20, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_5ErrorNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.c = load i64, ptr %0, align 8, !range !315, !alias.scope !312, !noalias !316, !noundef !22 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 4
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.b, align 8, !noalias !318
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 15, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  br label %_RNvXs9_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 15), !noalias !312
  br label %_RNvXs9_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 12), !noalias !312
  br label %_RNvXs9_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 11), !noalias !312
  br label %_RNvXs9_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  store ptr %0, ptr %i.a, align 8, !noalias !318
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  br label %_RNvXs9_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit

_RNvXs9_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsiS54oC2UhYT_4toml(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %..i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB5_10ErrorInnerNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !315, !noundef !22 ; 2 uses
  %i.d = xor i64 %i.c, -9223372036854775808
  %i.e = icmp slt i64 %i.c, 0
  %i.f = select i1 %i.e, i64 %i.d, i64 4
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !22
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 22, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 24, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 29, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !22, !noundef !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !22
  %i.p = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCsiS54oC2UhYT_4toml, ptr %.sroa.43.0..sroa_idx, align 8
  %i.q = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !22, !align !53, !noundef !22
  %i.t = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s, ptr noundef nonnull @15, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %1, align 8, !nonnull !22, !noundef !22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !22, !align !53, !noundef !22
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !22, !nonnull !22
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 21) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.t, %bb.h ], [ %i.z, %bb.i ], [ %i.p, %bb.g ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !319, !noundef !22 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !319, !nonnull !22, !noundef !22
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
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !319, !nonnull !22, !noundef !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !319
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !322
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !325, !noalias !322, !noundef !22 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !325, !noalias !322, !nonnull !22, !noundef !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !325, !noalias !322
  br label %_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !325, !noalias !322
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsiS54oC2UhYT_4toml3ser5errorNtB4_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtBR_3fmt5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !332
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 38, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !332
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noalias !332, !noundef !22
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !23, !noalias !332, !noundef !22 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RINvMNtNtCsiS54oC2UhYT_4toml3ser5errorNtB3_5Error3newReEB7_.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !332
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #14, !noalias !332
  unreachable

_RINvMNtNtCsiS54oC2UhYT_4toml3ser5errorNtB3_5Error3newReEB7_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !332, !nonnull !22, !noundef !22 ; 2 uses
  %i.i = icmp ugt i64 %i.e, 37
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(38) @31, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !341
  store i64 %i.e, ptr %0, align 8, !alias.scope !329, !noalias !342
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !329, !noalias !342
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.55.0..sroa_idx.i, align 8, !alias.scope !329, !noalias !342
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsjQbM3MYDIrM_10serde_core6format3BufNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCsiS54oC2UhYT_4toml(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !343
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !343
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !343
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !343
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !343
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !343
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !343
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !343
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !343
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !343
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ab = call noundef zeroext i1 @_RNvXs_NtCsjQbM3MYDIrM_10serde_core6formatNtB4_3BufNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsjQbM3MYDIrM_10serde_core6format3BufNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtQNtNtCsjQbM3MYDIrM_10serde_core6format3BufNtB4_12SpecWriteFmt14spec_write_fmtCsiS54oC2UhYT_4toml.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !346
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsiS54oC2UhYT_4toml(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRhNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 5) i8 @_RINvXsf_NtCsiS54oC2UhYT_4toml5valueNtB6_5ValueNtNtCsjQbM3MYDIrM_10serde_core3ser9Serialize9serializeNtNtNtNtB8_3ser8document8strategy9WalkValueEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRaNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRtNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRsNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRmNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRlNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRyNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRxNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRoNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRnNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRbNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRfNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRdNtB6_7Display3fmtCsiS54oC2UhYT_4toml(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCskGmdErwHfLz_11toml_writer6stringNtB2_17TomlStringBuilder3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCskGmdErwHfLz_11toml_writer6stringNtB2_17TomlStringBuilder10as_default(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCskGmdErwHfLz_11toml_writer6string16write_toml_valueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsiS54oC2UhYT_4toml(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 -1, 4), i1 noundef zeroext, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsiS54oC2UhYT_4toml(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiS54oC2UhYT_4toml(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsiS54oC2UhYT_4toml2de6parser12inline_table15on_inline_table(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCsiS54oC2UhYT_4toml2de6parser5array8on_array(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtCsa5zhLZWy8nm_11toml_parser6sourceRNtNtNtB7_6parser5event5EventNtB5_11SourceIndex3get(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsa5zhLZWy8nm_11toml_parser7decoderINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENtB5_13StringBuilder5clear(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsa5zhLZWy8nm_11toml_parser7decoderINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENtB5_13StringBuilder8push_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCsa5zhLZWy8nm_11toml_parser7decoderINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweENtB5_13StringBuilder9push_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0
end_hunk_0
