Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_join-0f4b036acf194488.uu_join.c1c2d3e8a40262c4-cgu.0?download=true
inline.NumInlined: 595
inline.NumDeleted: 361
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCsgDnTRHLCOsi_7uu_join15parse_separator:bb.a
bb.v:                                             ; preds = %thread-pre-split.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  %i.cs = add nsw i64 %i.r, -1
  br label %bb.ab

bb.w:                                             ; preds = %thread-pre-split.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 1 ; 2 uses
  %i.cu = add nsw i64 %i.r, -1                    ; 3 uses
  %i.cv = icmp samesign ult i64 %i.r, 17
  br i1 %i.cv, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.w
  %.not103137.i = icmp eq i64 %i.cu, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.w, %bb.z
  %.sroa.0.1136.i = phi ptr [ %i.cw, %bb.z ], [ %i.ct, %bb.w ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.cx, %bb.z ], [ %i.cu, %bb.w ]
  %.sroa.084.0134.i = phi i64 [ %i.di, %bb.z ], [ 0, %bb.w ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.cx = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.cy = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cz = extractvalue { i64, i1 } %i.cy, 0
  %i.da = extractvalue { i64, i1 } %i.cy, 1
  br i1 %i.da, label %.loopexit, label %bb.x, !prof !10

bb.x:                                             ; preds = %.lr.ph.i
  %i.db = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !639, !noundef !4
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -48                  ; 2 uses
  %i.de = icmp ult i32 %i.dd, 10
  br i1 %i.de, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cz, i64 %i.df) ; 2 uses
  %i.dh = extractvalue { i64, i1 } %i.dg, 1
  br i1 %i.dh, label %.loopexit, label %bb.z, !prof !10

bb.z:                                             ; preds = %bb.y
  %i.di = extractvalue { i64, i1 } %i.dg, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.cx, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.aa
  %.sroa.0.2140.i = phi ptr [ %i.dp, %bb.aa ], [ %i.ct, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.do, %bb.aa ], [ %i.cu, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.dr, %bb.aa ], [ 0, %.preheader114.i ]
  %i.dj = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !639, !noundef !4
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %i.dk, -48                  ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 10
  br i1 %i.dm, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %.lr.ph141.i
  %i.dn = mul i64 %.sroa.084.2138.i, 10
  %i.do = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.dq = zext nneg i32 %i.dl to i64
  %i.dr = sub i64 %i.dn, %i.dq                    ; 2 uses
  %.not103.i = icmp eq i64 %i.do, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.ab:                                            ; preds = %bb.u, %bb.v, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.cs, %bb.v ], [ %i.r, %thread-pre-split.i ], [ %i.r, %bb.u ] ; 4 uses
  %.sroa.0.0.i29 = phi ptr [ %i.cr, %bb.v ], [ %i.co, %thread-pre-split.i ], [ %i.co, %bb.u ] ; 2 uses
  %i.ds = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.ds, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.ab
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.ab, %bb.ae
  %.sroa.0.3145.i = phi ptr [ %i.dt, %bb.ae ], [ %.sroa.0.0.i29, %bb.ab ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.du, %bb.ae ], [ %.sroa.26.0.i, %bb.ab ]
  %.sroa.084.3143.i = phi i64 [ %i.ef, %bb.ae ], [ 0, %bb.ab ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.du = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.dv = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dw = extractvalue { i64, i1 } %i.dv, 0
  %i.dx = extractvalue { i64, i1 } %i.dv, 1
  br i1 %i.dx, label %.loopexit, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %.preheader111.i
  %i.dy = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !639, !noundef !4
  %i.dz = zext i8 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, -48                  ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.ec = zext nneg i32 %i.ea to i64
  %i.ed = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dw, i64 %i.ec) ; 2 uses
  %i.ee = extractvalue { i64, i1 } %i.ed, 1
  br i1 %i.ee, label %.loopexit, label %bb.ae, !prof !10

bb.ae:                                            ; preds = %bb.ad
  %i.ef = extractvalue { i64, i1 } %i.ed, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.du, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.af
  %.sroa.0.4149.i = phi ptr [ %i.em, %bb.af ], [ %.sroa.0.0.i29, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.el, %bb.af ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.eo, %bb.af ], [ 0, %.preheader.i ]
  %i.eg = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !639, !noundef !4
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nsw i32 %i.eh, -48                  ; 2 uses
  %i.ej = icmp ult i32 %i.ei, 10
  br i1 %i.ej, label %bb.af, label %.loopexit

bb.af:                                            ; preds = %.lr.ph150.i
  %i.ek = mul i64 %.sroa.084.4147.i, 10
  %i.el = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.en = zext nneg i32 %i.ei to i64
  %i.eo = add i64 %i.ek, %i.en                    ; 2 uses
  %.not105.i = icmp eq i64 %i.el, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.y, %bb.x, %.lr.ph141.i, %.preheader111.i, %bb.ac, %bb.ad, %.lr.ph150.i, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.r) #23
  %i.ep = load i8, ptr %i.f, align 8, !range !14, !noundef !4
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.ah, label %bb.ai

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.z, %bb.aa, %bb.ae, %bb.af, %.preheader.i, %.preheader114.i
  %.sroa.156.0 = phi i64 [ %i.dr, %bb.aa ], [ 0, %.preheader114.i ], [ %i.eo, %bb.af ], [ 0, %.preheader.i ], [ %i.ef, %bb.ae ], [ %i.di, %bb.z ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, i64 noundef %.sroa.156.0) #24
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !640
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

bb.ah:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.r, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.co, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.r, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 30, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit

bb.ai:                                            ; preds = %.loopexit
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.es = load double, ptr %i.er, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, double noundef %i.es) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !641
  %i.et = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #24, !noalias !641 ; 4 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.aj, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit30, !prof !10

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #27, !noalias !641
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit30: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgDnTRHLCOsi_7uu_join.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  store i32 1, ptr %.sroa.413.0..sroa_idx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.et, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @44, ptr %i.ew, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgDnTRHLCOsi_7uu_join16get_field_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, i64 noundef range(i64 0, 2) %1, i64 %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [20 x i8], align 1                ; 4 uses
  %i.c = alloca [20 x i8], align 1                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  %i.j = trunc nuw i64 %1 to i1
  %5 = trunc nuw i64 %3 to i1                     ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp ne i64 %2, %4
  %or.cond.not = select i1 %5, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %bb.as

bb.c:                                             ; preds = %bb.a
  br i1 %5, label %bb.as, label %bb.at

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.k = add i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.k, ptr noalias nofree noundef nonnull %i.c, i64 noundef 20) #24 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 16 uses
  %.not.i = icmp slt i64 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit143

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.e
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !656
  %i.p = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.n, i64 noundef range(i64 1, 9) 1) #24, !noalias !656 ; 18 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.d ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.n) #27
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.m, i64 %i.n, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %cond136 = icmp eq i64 %i.n, 1
  %i.r = load i8, ptr %i.p, align 1, !alias.scope !657 ; 2 uses
  br i1 %cond136, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.r, label %bb.o [
    i8 43, label %.loopexit143
    i8 45, label %.loopexit143
  ]

thread-pre-split.i:                               ; preds = %bb.g
  switch i8 %i.r, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %thread-pre-split.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.t = add nsw i64 %i.n, -1
  br label %bb.o

bb.j:                                             ; preds = %thread-pre-split.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.v = add nsw i64 %i.n, -1                     ; 3 uses
  %i.w = icmp samesign ult i64 %i.n, 17
  br i1 %i.w, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.j
  %.not103137.i = icmp eq i64 %i.v, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.x, %bb.m ], [ %i.u, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.y, %bb.m ], [ %i.v, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.aj, %bb.m ], [ 0, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.y = add nsw i64 %.sroa.26.1135.i, -1         ; 2 uses
  %i.z = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 0
  %i.ab = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.ab, label %.loopexit143, label %bb.k, !prof !10

bb.k:                                             ; preds = %.lr.ph.i
  %i.ac = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !657, !noundef !4
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -48                  ; 2 uses
  %i.af = icmp ult i32 %i.ae, 10
  br i1 %i.af, label %bb.l, label %.loopexit143

bb.l:                                             ; preds = %bb.k
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aa, i64 %i.ag) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %.loopexit143, label %bb.m, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.y, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.n
  %.sroa.0.2140.i = phi ptr [ %i.aq, %bb.n ], [ %i.u, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ap, %bb.n ], [ %i.v, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.as, %bb.n ], [ 0, %.preheader114.i ]
  %i.ak = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !657, !noundef !4
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.n, label %.loopexit143

bb.n:                                             ; preds = %.lr.ph141.i
  %i.ao = mul i64 %.sroa.084.2138.i, 10
  %i.ap = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.ar = zext nneg i32 %i.am to i64
  %i.as = sub i64 %i.ao, %i.ar                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ap, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.o:                                             ; preds = %bb.h, %bb.i, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.t, %bb.i ], [ %i.n, %thread-pre-split.i ], [ %i.n, %bb.h ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.s, %bb.i ], [ %i.p, %thread-pre-split.i ], [ %i.p, %bb.h ] ; 2 uses
  %i.at = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.at, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.o
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i = phi ptr [ %i.au, %bb.r ], [ %.sroa.0.0.i, %bb.o ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.av, %bb.r ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.084.3143.i = phi i64 [ %i.bg, %bb.r ], [ 0, %bb.o ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.av = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.aw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 0
  %i.ay = extractvalue { i64, i1 } %i.aw, 1
  br i1 %i.ay, label %.loopexit143, label %bb.p, !prof !10

bb.p:                                             ; preds = %.preheader111.i
  %i.az = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !657, !noundef !4
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -48                  ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 10
  br i1 %i.bc, label %bb.q, label %.loopexit143

bb.q:                                             ; preds = %bb.p
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ax, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %.loopexit143, label %bb.r, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.bg = extractvalue { i64, i1 } %i.be, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.av, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.0.4149.i = phi ptr [ %i.bn, %bb.s ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bm, %bb.s ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bp, %bb.s ], [ 0, %.preheader.i ]
  %i.bh = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !657, !noundef !4
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.s, label %.loopexit143

bb.s:                                             ; preds = %.lr.ph150.i
  %i.bl = mul i64 %.sroa.084.4147.i, 10
  %i.bm = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bo = zext nneg i32 %i.bj to i64
  %i.bp = add i64 %i.bl, %i.bo                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bm, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit143:                                     ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i, %bb.h, %bb.h, %.thread
  %.ph = phi ptr [ %i.p, %.preheader111.i ], [ %i.p, %.lr.ph141.i ], [ %i.p, %.lr.ph150.i ], [ %i.p, %bb.h ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.p, %bb.h ], [ %i.p, %bb.q ], [ %i.p, %bb.p ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %i.p, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.n) #23
  %i.bq = load i8, ptr %i.h, align 8, !range !14, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.v, label %bb.w

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i, %.preheader114.i
  %.sroa.1567.0 = phi i64 [ %i.as, %bb.n ], [ 0, %.preheader114.i ], [ %i.bp, %bb.s ], [ 0, %.preheader.i ], [ %i.bg, %bb.r ], [ %i.aj, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsgDnTRHLCOsi_7uu_join(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 6, i64 noundef %.sroa.1567.0) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.bs = phi ptr [ %.ph, %bb.v ], [ %.ph, %bb.w ], [ %i.p, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.09.0.not = phi i1 [ true, %bb.v ], [ false, %bb.w ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.bt = add i64 %4, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bu = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.bt, ptr noalias nofree noundef nonnull %i.b, i64 noundef 20) #24 ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 0
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1      ; 16 uses
  %.not.i23 = icmp slt i64 %i.bw, 0
  br i1 %.not.i23, label %bb.x, label %bb.u, !prof !19

end_hunk_0
